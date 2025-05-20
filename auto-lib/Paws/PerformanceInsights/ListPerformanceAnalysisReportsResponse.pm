
package Paws::PerformanceInsights::ListPerformanceAnalysisReportsResponse;
  use Moose;
  has AnalysisReports => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::AnalysisReportSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListPerformanceAnalysisReportsResponse

=head1 ATTRIBUTES


=head2 AnalysisReports => ArrayRef[L<Paws::PerformanceInsights::AnalysisReportSummary>]

List of reports including the report identifier, start and end time,
creation time, and status.


=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxResults>.


=head2 _request_id => Str


=cut

1;