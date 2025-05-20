
package Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGenerationResponse;
  use Moose;
  has GenerationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GenerationSummary]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGenerationResponse

=head1 ATTRIBUTES


=head2 GenerationSummaryList => ArrayRef[L<Paws::CostExplorer::GenerationSummary>]

The list of historical recommendation generations.


=head2 NextPageToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;