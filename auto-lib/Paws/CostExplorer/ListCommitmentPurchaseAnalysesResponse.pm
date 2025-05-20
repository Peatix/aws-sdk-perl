
package Paws::CostExplorer::ListCommitmentPurchaseAnalysesResponse;
  use Moose;
  has AnalysisSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::AnalysisSummary]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCommitmentPurchaseAnalysesResponse

=head1 ATTRIBUTES


=head2 AnalysisSummaryList => ArrayRef[L<Paws::CostExplorer::AnalysisSummary>]

The list of analyses.


=head2 NextPageToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;