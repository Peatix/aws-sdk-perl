
package Paws::Inspector2::GetFindingsReportStatusResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::Inspector2::Destination', traits => ['NameInRequest'], request_name => 'destination');
  has ErrorCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorCode');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::FilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetFindingsReportStatusResponse

=head1 ATTRIBUTES


=head2 Destination => L<Paws::Inspector2::Destination>

The destination of the report.


=head2 ErrorCode => Str

The error code of the report.

Valid values are: C<"INTERNAL_ERROR">, C<"INVALID_PERMISSIONS">, C<"NO_FINDINGS_FOUND">, C<"BUCKET_NOT_FOUND">, C<"INCOMPATIBLE_BUCKET_REGION">, C<"MALFORMED_KMS_KEY">
=head2 ErrorMessage => Str

The error message of the report.


=head2 FilterCriteria => L<Paws::Inspector2::FilterCriteria>

The filter criteria associated with the report.


=head2 ReportId => Str

The ID of the report.


=head2 Status => Str

The status of the report.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"CANCELLED">, C<"FAILED">
=head2 _request_id => Str


=cut

