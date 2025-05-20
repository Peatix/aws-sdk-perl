
package Paws::NetworkFirewall::ListAnalysisReportsResponse;
  use Moose;
  has AnalysisReports => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::AnalysisReport]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListAnalysisReportsResponse

=head1 ATTRIBUTES


=head2 AnalysisReports => ArrayRef[L<Paws::NetworkFirewall::AnalysisReport>]

The C<id> and C<ReportTime> associated with a requested analysis
report. Does not provide the status of the analysis report.


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 _request_id => Str


=cut

1;