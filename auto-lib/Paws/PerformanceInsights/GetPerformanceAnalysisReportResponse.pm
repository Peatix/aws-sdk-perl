
package Paws::PerformanceInsights::GetPerformanceAnalysisReportResponse;
  use Moose;
  has AnalysisReport => (is => 'ro', isa => 'Paws::PerformanceInsights::AnalysisReport');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetPerformanceAnalysisReportResponse

=head1 ATTRIBUTES


=head2 AnalysisReport => L<Paws::PerformanceInsights::AnalysisReport>

The summary of the performance analysis report created for a time
period.


=head2 _request_id => Str


=cut

1;