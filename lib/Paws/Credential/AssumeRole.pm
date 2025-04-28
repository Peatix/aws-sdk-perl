package Paws::Credential::AssumeRole;
  use Moose;
  use DateTime::Format::ISO8601;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  has expiration => (
    is => 'rw',
    isa => 'Int',
    lazy => 1,
    default => sub { 0 }
  );

  has actual_creds => (is => 'rw', isa => 'Paws::Credential::Explicit|Undef');

  sub credentials {
    my $self = shift;
    $self->_refresh;
    return $self->actual_creds;
  }

  has sts_region => (is => 'ro', isa => 'Str|Undef', default => sub { undef });

  has sts => (is => 'ro', isa => 'Paws::STS', lazy => 1, default => sub {
    my $self = shift;
    Paws->service('STS', region => $self->sts_region);
  });

  has DurationSeconds => (is => 'rw', isa => 'Maybe[Int]');
  has Policy => (is => 'rw', isa => 'Maybe[Str]');

  has ExternalId => (is => 'rw', isa => 'Maybe[Str]');
  has RoleArn => (is => 'rw', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'rw', isa => 'Str', required => 1);
  
  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;

    my $result = $self->sts->AssumeRole(
      RoleSessionName => $self->RoleSessionName,
      RoleArn => $self->RoleArn,
      (defined $self->ExternalId) ? (ExternalId => $self->ExternalId) : (),
      (defined $self->DurationSeconds) ? (DurationSeconds => $self->DurationSeconds) : (),
      (defined $self->Policy) ? (Policy => $self->Policy) : (),
    );

    $self->actual_creds(Paws::Credential::Explicit->new(
      access_key => $result->Credentials->AccessKeyId,
      secret_key => $result->Credentials->SecretAccessKey,
      session_token => $result->Credentials->SessionToken,
    ));
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::AssumeRole

=head1 SYNOPSIS

  use Paws::Credential::AssumeRole;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::AssumeRole->new(
      DurationSeconds => 60,
      RoleArn => 'arn:....',
      RoleSessionName => 'MySession',
    )
  });

=head1 DESCRIPTION

The AssumeRole provider is used to obtain temporary credentials with the AssumeRole STS call. These credentials
can further be limited by a Policy document.

Credentials are refreshed with a re-call to STS when they have expired

=head2 DurationSeconds: Int (optional)

The number of seconds for which the credentials will be valid

=head2 Policy: Str (optional)

A string with an IAM policy that gets merged with the roles capabilities

=head2 ExternalId: Str (optional)

A string with the external id of the role

=head2 RoleArn: Str

The arn of the role to be assumed

=head2 RoleSessionName: Str

The name of the session (will appear in CloudTrail logs, for example)

=cut
