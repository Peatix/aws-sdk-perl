
package Paws::LicenseManager::ListReceivedLicensesForOrganizationResponse;
  use Moose;
  has Licenses => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::GrantedLicense]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListReceivedLicensesForOrganizationResponse

=head1 ATTRIBUTES


=head2 Licenses => ArrayRef[L<Paws::LicenseManager::GrantedLicense>]

Lists the licenses the organization has received.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;