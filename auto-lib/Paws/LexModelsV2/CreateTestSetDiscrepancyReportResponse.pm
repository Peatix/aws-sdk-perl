
package Paws::LexModelsV2::CreateTestSetDiscrepancyReportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget', traits => ['NameInRequest'], request_name => 'target');
  has TestSetDiscrepancyReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetDiscrepancyReportId');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateTestSetDiscrepancyReportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The creation date and time for the test set discrepancy report.


=head2 Target => L<Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget>

The target bot for the test set discrepancy report.


=head2 TestSetDiscrepancyReportId => Str

The unique identifier of the test set discrepancy report to describe.


=head2 TestSetId => Str

The test set Id for the test set discrepancy report.


=head2 _request_id => Str


=cut

