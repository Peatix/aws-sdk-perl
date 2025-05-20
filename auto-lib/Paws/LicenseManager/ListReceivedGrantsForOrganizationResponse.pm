
package Paws::LicenseManager::ListReceivedGrantsForOrganizationResponse;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Grant]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListReceivedGrantsForOrganizationResponse

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::LicenseManager::Grant>]

Lists the grants the organization has received.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;