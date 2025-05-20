
package Paws::LicenseManager::GetLicenseConversionTaskResponse;
  use Moose;
  has DestinationLicenseContext => (is => 'ro', isa => 'Paws::LicenseManager::LicenseConversionContext');
  has EndTime => (is => 'ro', isa => 'Str');
  has LicenseConversionTaskId => (is => 'ro', isa => 'Str');
  has LicenseConversionTime => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has SourceLicenseContext => (is => 'ro', isa => 'Paws::LicenseManager::LicenseConversionContext');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConversionTaskResponse

=head1 ATTRIBUTES


=head2 DestinationLicenseContext => L<Paws::LicenseManager::LicenseConversionContext>

Information about the license type converted to.


=head2 EndTime => Str

Time at which the license type conversion task was completed.


=head2 LicenseConversionTaskId => Str

ID of the license type conversion task.


=head2 LicenseConversionTime => Str

Amount of time to complete the license type conversion.


=head2 ResourceArn => Str

Amazon Resource Names (ARN) of the resources the license conversion
task is associated with.


=head2 SourceLicenseContext => L<Paws::LicenseManager::LicenseConversionContext>

Information about the license type converted from.


=head2 StartTime => Str

Time at which the license type conversion task was started .


=head2 Status => Str

Status of the license type conversion task.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 StatusMessage => Str

The status message for the conversion task.


=head2 _request_id => Str


=cut

1;