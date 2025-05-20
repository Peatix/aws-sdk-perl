
package Paws::NetworkManager::StartOrganizationServiceAccessUpdateResponse;
  use Moose;
  has OrganizationStatus => (is => 'ro', isa => 'Paws::NetworkManager::OrganizationStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::StartOrganizationServiceAccessUpdateResponse

=head1 ATTRIBUTES


=head2 OrganizationStatus => L<Paws::NetworkManager::OrganizationStatus>

The status of the service access update request for an Amazon Web
Services Organization.


=head2 _request_id => Str


=cut

