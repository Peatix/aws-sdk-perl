package Paws::Credential::AssumeRoleWithSAML;
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

  has sts => (is => 'ro', isa => 'Paws::STS', lazy => 1, default => sub {
    my $self = shift;
    Paws->service('STS', region => $self->sts_region, credentials => Paws::Credential::None->new);
  });

  has DurationSeconds => (is => 'rw', isa => 'Maybe[Int]');
  has Policy => (is => 'rw', isa => 'Maybe[Str]');

  has RoleArn => (is => 'rw', isa => 'Str', required => 1);
  has PrincipalArn => (is => 'rw', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'rw', isa => 'Str', required => 1);

  sub refresh {
    my $self = shift;

    if ( $self->credentials && $self->expiration >= time ) {
      return $self->credentials;
    }

    my $result = $self->sts->AssumeRoleWithSAML(
      RoleArn => $self->RoleArn,
      PrincipalArn => $self->PrincipalArn,
      SAMLAssertion => $self->SAMLAssertion,
      (defined $self->DurationSeconds) ? (DurationSeconds => $self->DurationSeconds) : (),
      (defined $self->Policy) ? (Policy => $self->Policy) : (),
    );

    $self->credentials(Paws::Credential::Explicit->new(
      access_key => $result->Credentials->AccessKeyId,
      secret_key => $result->Credentials->SecretAccessKey,
      session_token => $result->Credentials->SessionToken,
    ));
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);
  }

  no Moose;
1;
