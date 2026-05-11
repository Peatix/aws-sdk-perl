package Paws::Credential::WebIdentity;
  use Moose;
  use DateTime::Format::ISO8601;
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

  has sts_region => (is => 'ro', isa => 'Str|Undef', default => sub { undef });

  has sts => (is => 'ro', isa => 'Object', lazy => 1, default => sub {
    my $self = shift;
    Paws->service('STS', region => $self->sts_region, credentials => Paws::Credential::None->new);
  });

  has RoleArn => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    $ENV{AWS_ROLE_ARN} // die "RoleArn is required: set AWS_ROLE_ARN or pass RoleArn";
  });

  has RoleSessionName => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    $ENV{AWS_ROLE_SESSION_NAME} // 'paws-web-identity-session';
  });

  has WebIdentityTokenFile => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    $ENV{AWS_WEB_IDENTITY_TOKEN_FILE} // die "WebIdentityTokenFile is required: set AWS_WEB_IDENTITY_TOKEN_FILE or pass WebIdentityTokenFile";
  });

  has DurationSeconds => (is => 'ro', isa => 'Maybe[Int]');
  has Policy => (is => 'ro', isa => 'Maybe[Str]');

  sub _read_token_file {
    my $self = shift;
    my $file = $self->WebIdentityTokenFile;
    open my $fh, '<', $file or die "Cannot open web identity token file=$file: $!";
    my $token = do { local $/; <$fh> };
    close $fh;
    chomp $token;
    return $token;
  }

  sub refresh {
    my $self = shift;

    if ($self->credentials && $self->expiration >= time) {
      return $self->credentials;
    }

    my $token = $self->_read_token_file;

    my $result = $self->sts->AssumeRoleWithWebIdentity(
      RoleArn => $self->RoleArn,
      RoleSessionName => $self->RoleSessionName,
      WebIdentityToken => $token,
      (defined $self->DurationSeconds) ? (DurationSeconds => $self->DurationSeconds) : (),
      (defined $self->Policy) ? (Policy => $self->Policy) : (),
    );

    $self->credentials(Paws::Credential::Explicit->new(
      access_key => $result->Credentials->AccessKeyId,
      secret_key => $result->Credentials->SecretAccessKey,
      session_token => $result->Credentials->SessionToken,
    ));
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);

    return $self->credentials;
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::WebIdentity

=head1 SYNOPSIS

  use Paws::Credential::WebIdentity;

  # Using environment variables (typical for EKS/IRSA):
  #   AWS_WEB_IDENTITY_TOKEN_FILE=/var/run/secrets/eks.amazonaws.com/serviceaccount/token
  #   AWS_ROLE_ARN=arn:aws:iam::123456789012:role/my-role
  #   AWS_ROLE_SESSION_NAME=my-session  (optional)

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::WebIdentity->new
  });

  # Or with explicit parameters:
  my $paws = Paws->new(config => {
    credentials => Paws::Credential::WebIdentity->new(
      RoleArn => 'arn:aws:iam::123456789012:role/my-role',
      RoleSessionName => 'my-session',
      WebIdentityTokenFile => '/var/run/secrets/token',
      sts_region => 'us-east-1',
    )
  });

=head1 DESCRIPTION

The WebIdentity provider obtains temporary credentials by exchanging a web identity
token for AWS credentials via the C<AssumeRoleWithWebIdentity> STS call. This is the
standard credential mechanism for EKS pods using IAM Roles for Service Accounts (IRSA).

The token file is re-read on each refresh, so rotated tokens are picked up automatically.

Credentials are cached and refreshed automatically when they expire.

=head2 RoleArn: Str

The ARN of the IAM role to assume. Defaults to C<AWS_ROLE_ARN> environment variable.

=head2 RoleSessionName: Str

The name of the session (appears in CloudTrail logs). Defaults to C<AWS_ROLE_SESSION_NAME>
environment variable, or C<paws-web-identity-session> if not set.

=head2 WebIdentityTokenFile: Str

Path to the file containing the OIDC web identity token. Defaults to
C<AWS_WEB_IDENTITY_TOKEN_FILE> environment variable.

=head2 sts_region: Str (optional)

The STS regional endpoint to use. Defaults to the global STS endpoint.

=head2 DurationSeconds: Int (optional)

The duration in seconds for which the credentials will be valid.

=head2 Policy: Str (optional)

An IAM policy in JSON format to further restrict the temporary credentials.

=cut
