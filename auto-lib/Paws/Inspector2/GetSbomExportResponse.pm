
package Paws::Inspector2::GetSbomExportResponse;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorCode');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::ResourceFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');
  has S3Destination => (is => 'ro', isa => 'Paws::Inspector2::Destination', traits => ['NameInRequest'], request_name => 's3Destination');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetSbomExportResponse

=head1 ATTRIBUTES


=head2 ErrorCode => Str

An error code.

Valid values are: C<"INTERNAL_ERROR">, C<"INVALID_PERMISSIONS">, C<"NO_FINDINGS_FOUND">, C<"BUCKET_NOT_FOUND">, C<"INCOMPATIBLE_BUCKET_REGION">, C<"MALFORMED_KMS_KEY">
=head2 ErrorMessage => Str

An error message.


=head2 FilterCriteria => L<Paws::Inspector2::ResourceFilterCriteria>

Contains details about the resource filter criteria used for the
software bill of materials (SBOM) report.


=head2 Format => Str

The format of the software bill of materials (SBOM) report.

Valid values are: C<"CYCLONEDX_1_4">, C<"SPDX_2_3">
=head2 ReportId => Str

The report ID of the software bill of materials (SBOM) report.


=head2 S3Destination => L<Paws::Inspector2::Destination>

Contains details of the Amazon S3 bucket and KMS key used to export
findings


=head2 Status => Str

The status of the software bill of materials (SBOM) report.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"CANCELLED">, C<"FAILED">
=head2 _request_id => Str


=cut

