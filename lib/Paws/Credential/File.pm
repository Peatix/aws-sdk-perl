package Paws::Credential::File;
  use Moose;
  use Config::AWS qw/read_file/;
  use File::HomeDir;
  use JSON::MaybeXS qw/decode_json/;
  use Paws::Exception;
  use Paws::Credential::CredProcess;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  has profile => (is => 'ro', default => sub { $ENV{ AWS_DEFAULT_PROFILE } or 'default' });

  has credentials_file => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    if (defined $ENV{AWS_CONFIG_FILE}){
      return $ENV{AWS_CONFIG_FILE};
    } else {
      return $self->path . '/' . $self->file_name;
    }
  });

  has file_name => (is => 'ro', default => sub { 'credentials' });
  has path => (is => 'ro', default => sub {
    return (File::HomeDir->my_home || '') . '/.aws/';
  });

  has _ini_contents => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;
    my $ini_file = $self->credentials_file;
    return {} if (not -e $ini_file);
    my $ini = read_file($ini_file);
    return $ini;
  });

  has _profile => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;

    my $profile = $self->profile;
    return $self->_ini_contents->{ $profile } || {};
  });

  has credential_process => (is => 'ro', isa => 'Paws::Credential::CredProcess|Undef', lazy => 1, default => sub {
    my $self = shift;

    my $process = $self->_profile->{ credential_process };
    return undef if (not defined $process);

    return Paws::Credential::CredProcess->new(
      credential_process => $process,
    );
  });

  sub refresh {
    my $self = shift;

    if (defined $self->credential_process) {
      return $self->credential_process->refresh;
    }

    my $profile = $self->_profile;
    return if (not defined $profile);
    return if (not defined $profile->{ aws_access_key_id });
    return if (not defined $profile->{ aws_secret_access_key });

    return Paws::Credential::Explicit->new(
      access_key => $profile->{ aws_access_key_id },
      secret_key => $profile->{ aws_secret_access_key },
      session_token => $profile->{ aws_session_token },
    );
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::File

=head1 SYNOPSIS

  use Paws::Credential::File;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      credentials_file => '/etc/aws_system_credentials', 
    )
  });
  # will open /etc/aws_system_credentials

  
  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      file_name => 'my_creds', 
    )
  });
  # will open $HOME/.aws/my_creds

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      path => '/etc/',
    )
  });
  # will open /etc/credentials


=head1 DESCRIPTION

The File credential provider is to read credentials from AWS SDK config files

=head2 profile: Str

The section in the ini file where credentials will be looked up:

Defaults to the environment variable C<AWS_DEFAULT_PROFILE>, and if that is not defined, to "default"

=head2 credentials_file: Str

The path of the ini file to open

Defaults to the path + file_name (C<$HOME/.aws/credentials> by default) if the environment variable AWS_CONFIG_FILE doesn't exist

=head2 path: Str

Path to the ini file

Defaults to C<$HOME/.aws>

=head2 file_name: Str

Name of the ini file

Defaults to C<credentials>

=cut
