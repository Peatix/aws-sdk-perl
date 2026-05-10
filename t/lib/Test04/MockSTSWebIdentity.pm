package Test04::MockSTS::Credentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str', required => 1);
  no Moose;

package Test04::MockSTS::AssumeRoleWithWebIdentityResult;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Test04::MockSTS::Credentials', required => 1);
  no Moose;

package Test04::MockSTS::WebIdentity;
  use Moose;
  use DateTime;

  has call_count => (is => 'rw', isa => 'Int', default => 0);

  sub AssumeRoleWithWebIdentity {
    my ($self, %args) = @_;
    $self->call_count($self->call_count + 1);

    die "RoleArn is required" unless $args{RoleArn};
    die "RoleSessionName is required" unless $args{RoleSessionName};
    die "WebIdentityToken is required" unless $args{WebIdentityToken};

    my $count = $self->call_count;
    my $expiration = DateTime->now->add(seconds => 3600)->iso8601 . 'Z';

    return Test04::MockSTS::AssumeRoleWithWebIdentityResult->new(
      Credentials => Test04::MockSTS::Credentials->new(
        AccessKeyId => "WIAK${count}",
        SecretAccessKey => "WISK${count}",
        SessionToken => "WITK${count}",
        Expiration => $expiration,
      ),
    );
  }

  no Moose;

package Test04::MockSTS::WebIdentityExpiring;
  use Moose;
  use DateTime;

  has call_count => (is => 'rw', isa => 'Int', default => 0);

  sub AssumeRoleWithWebIdentity {
    my ($self, %args) = @_;
    $self->call_count($self->call_count + 1);

    my $count = $self->call_count;
    my $expiration = DateTime->now->subtract(seconds => 1)->iso8601 . 'Z';

    return Test04::MockSTS::AssumeRoleWithWebIdentityResult->new(
      Credentials => Test04::MockSTS::Credentials->new(
        AccessKeyId => "WIAK${count}",
        SecretAccessKey => "WISK${count}",
        SessionToken => "WITK${count}",
        Expiration => $expiration,
      ),
    );
  }

  no Moose;
1;
