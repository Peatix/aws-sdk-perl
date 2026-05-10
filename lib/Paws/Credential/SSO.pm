package Paws::Credential::SSO;
  use Moose;
  use Config::AWS qw/read_file/;
  use Digest::SHA qw/sha1_hex/;
  use File::HomeDir;
  use JSON::MaybeXS qw/decode_json/;
  use Paws::Credential::None;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  has credentials => (is => 'rw', isa => 'Paws::Credential::Explicit|Undef');

  has expiration => (
    is => 'rw',
    isa => 'Int',
    lazy => 1,
    default => sub { 0 }
  );

  has profile => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    $ENV{AWS_PROFILE} // $ENV{AWS_DEFAULT_PROFILE} // 'default';
  });

  has config_file => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    $ENV{AWS_CONFIG_FILE} // ((File::HomeDir->my_home || '') . '/.aws/config');
  });

  has sso_cache_dir => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    (File::HomeDir->my_home || '') . '/.aws/sso/cache';
  });

  has sso_start_url => (is => 'ro', isa => 'Str|Undef', lazy => 1, builder => '_build_from_config_sso_start_url');
  has sso_account_id => (is => 'ro', isa => 'Str|Undef', lazy => 1, builder => '_build_from_config_sso_account_id');
  has sso_role_name => (is => 'ro', isa => 'Str|Undef', lazy => 1, builder => '_build_from_config_sso_role_name');
  has sso_region => (is => 'ro', isa => 'Str|Undef', lazy => 1, builder => '_build_from_config_sso_region');

  has _config_contents => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;
    my $file = $self->config_file;
    return {} if not -e $file;
    return read_file($file);
  });

  has _profile_config => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;
    my $profile = $self->profile;
    return $self->_config_contents->{$profile} || {};
  });

  sub _build_from_config_sso_start_url {
    my $self = shift;
    return $self->_profile_config->{sso_start_url};
  }

  sub _build_from_config_sso_account_id {
    my $self = shift;
    return $self->_profile_config->{sso_account_id};
  }

  sub _build_from_config_sso_role_name {
    my $self = shift;
    return $self->_profile_config->{sso_role_name};
  }

  sub _build_from_config_sso_region {
    my $self = shift;
    return $self->_profile_config->{sso_region};
  }

  has sso => (is => 'ro', isa => 'Object', lazy => 1, default => sub {
    my $self = shift;
    my $region = $self->sso_region // die "sso_region is required: configure it in ~/.aws/config or pass sso_region";
    Paws->service('SSO', region => $region, credentials => Paws::Credential::None->new);
  });

  sub _read_cached_token {
    my $self = shift;
    my $start_url = $self->sso_start_url // die "sso_start_url is required: configure it in ~/.aws/config or pass sso_start_url";
    my $cache_key = sha1_hex($start_url);
    my $cache_file = $self->sso_cache_dir . '/' . $cache_key . '.json';

    if (not -e $cache_file) {
      die "SSO cache file not found path=$cache_file. Run 'aws sso login' to authenticate.";
    }

    open my $fh, '<', $cache_file or die "Cannot open SSO cache file path=$cache_file: $!";
    my $json = do { local $/; <$fh> };
    close $fh;

    my $data = decode_json($json);
    if (not defined $data->{accessToken}) {
      die "SSO cache file missing accessToken path=$cache_file. Run 'aws sso login' to re-authenticate.";
    }

    return $data;
  }

  sub refresh {
    my $self = shift;

    if ($self->credentials && $self->expiration >= time) {
      return $self->credentials;
    }

    my $account_id = $self->sso_account_id // die "sso_account_id is required: configure it in ~/.aws/config or pass sso_account_id";
    my $role_name = $self->sso_role_name // die "sso_role_name is required: configure it in ~/.aws/config or pass sso_role_name";

    my $token_data = $self->_read_cached_token;
    my $access_token = $token_data->{accessToken};

    my $result = $self->sso->GetRoleCredentials(
      AccessToken => $access_token,
      AccountId => $account_id,
      RoleName => $role_name,
    );

    my $role_creds = $result->RoleCredentials;

    $self->credentials(Paws::Credential::Explicit->new(
      access_key => $role_creds->AccessKeyId,
      secret_key => $role_creds->SecretAccessKey,
      session_token => $role_creds->SessionToken,
    ));
    # SSO expiration is an epoch timestamp in milliseconds
    $self->expiration(int($role_creds->Expiration / 1000));

    return $self->credentials;
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::SSO

=head1 SYNOPSIS

  use Paws::Credential::SSO;

  # Using configuration from ~/.aws/config:
  #
  #   [profile my-sso-profile]
  #   sso_start_url = https://my-sso-portal.awsapps.com/start
  #   sso_region = us-east-1
  #   sso_account_id = 123456789012
  #   sso_role_name = MyRole
  #
  # First authenticate with: aws sso login --profile my-sso-profile

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::SSO->new(
      profile => 'my-sso-profile',
    )
  });

  # Or with explicit parameters (no config file needed):
  my $paws = Paws->new(config => {
    credentials => Paws::Credential::SSO->new(
      sso_start_url  => 'https://my-sso-portal.awsapps.com/start',
      sso_region     => 'us-east-1',
      sso_account_id => '123456789012',
      sso_role_name  => 'MyRole',
    )
  });

=head1 DESCRIPTION

The SSO provider obtains temporary credentials using the AWS SSO (IAM Identity Center)
C<GetRoleCredentials> API. It reads the cached SSO access token that was created by
C<aws sso login> and exchanges it for temporary credentials.

The cached access token is located at C<~/.aws/sso/cache/E<lt>sha1E<gt>.json> where the
SHA-1 hash is derived from the C<sso_start_url>.

Credentials are cached and refreshed automatically when they expire. If the SSO access
token itself has expired, you must re-authenticate with C<aws sso login>.

=head2 profile: Str

The AWS config profile to read SSO settings from. Defaults to C<AWS_PROFILE>,
then C<AWS_DEFAULT_PROFILE>, then C<default>.

=head2 config_file: Str

Path to the AWS config file. Defaults to C<AWS_CONFIG_FILE> or C<~/.aws/config>.

=head2 sso_start_url: Str

The SSO portal start URL. Read from the config file profile if not specified.

=head2 sso_region: Str

The AWS region of the SSO portal. Read from the config file profile if not specified.

=head2 sso_account_id: Str

The AWS account ID to obtain credentials for. Read from the config file profile if not specified.

=head2 sso_role_name: Str

The SSO role name to assume. Read from the config file profile if not specified.

=head2 sso_cache_dir: Str

Path to the SSO token cache directory. Defaults to C<~/.aws/sso/cache>.

=cut
