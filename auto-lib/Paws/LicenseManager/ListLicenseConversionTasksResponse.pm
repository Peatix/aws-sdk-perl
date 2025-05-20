
package Paws::LicenseManager::ListLicenseConversionTasksResponse;
  use Moose;
  has LicenseConversionTasks => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseConversionTask]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseConversionTasksResponse

=head1 ATTRIBUTES


=head2 LicenseConversionTasks => ArrayRef[L<Paws::LicenseManager::LicenseConversionTask>]

Information about the license configuration tasks for your account.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;