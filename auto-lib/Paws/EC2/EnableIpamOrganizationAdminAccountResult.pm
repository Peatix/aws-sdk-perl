
package Paws::EC2::EnableIpamOrganizationAdminAccountResult;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', request_name => 'success', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableIpamOrganizationAdminAccountResult

=head1 ATTRIBUTES


=head2 Success => Bool

The result of enabling the IPAM account.


=head2 _request_id => Str


=cut

