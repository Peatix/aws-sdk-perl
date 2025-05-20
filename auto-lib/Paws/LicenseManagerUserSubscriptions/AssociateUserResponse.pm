
package Paws::LicenseManagerUserSubscriptions::AssociateUserResponse;
  use Moose;
  has InstanceUserSummary => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::InstanceUserSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::AssociateUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceUserSummary => L<Paws::LicenseManagerUserSubscriptions::InstanceUserSummary>

Metadata that describes the associate user operation.


=head2 _request_id => Str


=cut

