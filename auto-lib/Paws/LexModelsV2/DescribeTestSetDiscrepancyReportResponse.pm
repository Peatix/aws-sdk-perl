
package Paws::LexModelsV2::DescribeTestSetDiscrepancyReportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has LastUpdatedDataTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDataTime');
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget', traits => ['NameInRequest'], request_name => 'target');
  has TestSetDiscrepancyRawOutputUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetDiscrepancyRawOutputUrl');
  has TestSetDiscrepancyReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetDiscrepancyReportId');
  has TestSetDiscrepancyReportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetDiscrepancyReportStatus');
  has TestSetDiscrepancyTopErrors => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetDiscrepancyErrors', traits => ['NameInRequest'], request_name => 'testSetDiscrepancyTopErrors');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSetDiscrepancyReportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The time and date of creation for the test set discrepancy report.


=head2 FailureReasons => ArrayRef[Str|Undef]

The failure report for the test set discrepancy report generation
action.


=head2 LastUpdatedDataTime => Str

The date and time of the last update for the test set discrepancy
report.


=head2 Target => L<Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget>

The target bot location for the test set discrepancy report.


=head2 TestSetDiscrepancyRawOutputUrl => Str

Pre-signed Amazon S3 URL to download the test set discrepancy report.


=head2 TestSetDiscrepancyReportId => Str

The unique identifier of the test set discrepancy report to describe.


=head2 TestSetDiscrepancyReportStatus => Str

The status for the test set discrepancy report.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">
=head2 TestSetDiscrepancyTopErrors => L<Paws::LexModelsV2::TestSetDiscrepancyErrors>

The top 200 error results from the test set discrepancy report.


=head2 TestSetId => Str

The test set Id for the test set discrepancy report.


=head2 _request_id => Str


=cut

