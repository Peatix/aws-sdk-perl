package Paws::Credential::STS;
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

  has Name => (is => 'rw', isa => 'Str', required => 1);
  has DurationSeconds => (is => 'rw', isa => 'Maybe[Int]');
  has Policy => (is => 'rw', isa => 'Maybe[Str]');

  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;

    my $result = $self->sts->GetFederationToken(
      Name => $self->Name,
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

Paws::Credential::STS

=head1 SYNOPSIS

  use Paws::Credential::STS;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::STS->new(
      sts_region => 'eu-west-1',
      DurationSeconds => 60,
      Name => 'MyName',
    )
  });

=head1 DESCRIPTION

The STS provider is used to obtain temporary credentials with the GetFederationToken STS call. These credentials
can further be limited by a Policy document.

Credentials are refreshed with a re-call to STS when they have expired

=head2 sts_region: Str (optional)

The STS region to attack. Defaults to the global STS region

=head2 sts: Paws::STS object (optional)

A Paws::STS object initialized with some credentials. Defaults to a Paws::STS object initialized with the default
credential provider.

=head2 DurationSeconds: Int (optional)

The number of seconds for which the credentials will be valid

=head2 Policy: Str (optional)

A string with an IAM policy that further restricts the users capabilities

=head2 Name: Str

The name of the session (will appear in CloudTrail logs, for example)

=cut
