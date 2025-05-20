
package Paws::NetworkFirewall::StartAnalysisReportResponse;
  use Moose;
  has AnalysisReportId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::StartAnalysisReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisReportId => Str

The unique ID of the query that ran when you requested an analysis
report.


=head2 _request_id => Str


=cut

1;