package Test04::MockSSO::RoleCredentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Num', required => 1);
  no Moose;

package Test04::MockSSO::GetRoleCredentialsResult;
  use Moose;
  has RoleCredentials => (is => 'ro', isa => 'Test04::MockSSO::RoleCredentials', required => 1);
  no Moose;

package Test04::MockSSO::Service;
  use Moose;

  has call_count => (is => 'rw', isa => 'Int', default => 0);

  sub GetRoleCredentials {
    my ($self, %args) = @_;
    $self->call_count($self->call_count + 1);

    die "AccessToken is required" unless $args{AccessToken};
    die "AccountId is required" unless $args{AccountId};
    die "RoleName is required" unless $args{RoleName};

    my $count = $self->call_count;
    my $expiration = (time + 3600) * 1000;

    return Test04::MockSSO::GetRoleCredentialsResult->new(
      RoleCredentials => Test04::MockSSO::RoleCredentials->new(
        AccessKeyId => "SSOAK${count}",
        SecretAccessKey => "SSOSK${count}",
        SessionToken => "SSOTK${count}",
        Expiration => $expiration,
      ),
    );
  }

  no Moose;

package Test04::MockSSO::ServiceExpiring;
  use Moose;

  has call_count => (is => 'rw', isa => 'Int', default => 0);

  sub GetRoleCredentials {
    my ($self, %args) = @_;
    $self->call_count($self->call_count + 1);

    my $count = $self->call_count;
    my $expiration = (time - 1) * 1000;

    return Test04::MockSSO::GetRoleCredentialsResult->new(
      RoleCredentials => Test04::MockSSO::RoleCredentials->new(
        AccessKeyId => "SSOAK${count}",
        SecretAccessKey => "SSOSK${count}",
        SessionToken => "SSOTK${count}",
        Expiration => $expiration,
      ),
    );
  }

  no Moose;
1;
