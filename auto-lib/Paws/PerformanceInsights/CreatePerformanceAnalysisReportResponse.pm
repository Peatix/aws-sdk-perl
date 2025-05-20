
package Paws::PerformanceInsights::CreatePerformanceAnalysisReportResponse;
  use Moose;
  has AnalysisReportId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::CreatePerformanceAnalysisReportResponse

=head1 ATTRIBUTES


=head2 AnalysisReportId => Str

A unique identifier for the created analysis report.


=head2 _request_id => Str


=cut

1;