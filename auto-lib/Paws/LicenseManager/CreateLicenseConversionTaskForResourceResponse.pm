
package Paws::LicenseManager::CreateLicenseConversionTaskForResourceResponse;
  use Moose;
  has LicenseConversionTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseConversionTaskForResourceResponse

=head1 ATTRIBUTES


=head2 LicenseConversionTaskId => Str

The ID of the created license type conversion task.


=head2 _request_id => Str


=cut

1;