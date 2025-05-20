
package Paws::NetworkManager::ListOrganizationServiceAccessStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationStatus => (is => 'ro', isa => 'Paws::NetworkManager::OrganizationStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListOrganizationServiceAccessStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 OrganizationStatus => L<Paws::NetworkManager::OrganizationStatus>

Displays the status of an Amazon Web Services Organization.


=head2 _request_id => Str


=cut

