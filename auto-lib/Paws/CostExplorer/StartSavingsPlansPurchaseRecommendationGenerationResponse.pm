
package Paws::CostExplorer::StartSavingsPlansPurchaseRecommendationGenerationResponse;
  use Moose;
  has EstimatedCompletionTime => (is => 'ro', isa => 'Str');
  has GenerationStartedTime => (is => 'ro', isa => 'Str');
  has RecommendationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::StartSavingsPlansPurchaseRecommendationGenerationResponse

=head1 ATTRIBUTES


=head2 EstimatedCompletionTime => Str

The estimated time for when the recommendation generation will
complete.


=head2 GenerationStartedTime => Str

The start time of the recommendation generation.


=head2 RecommendationId => Str

The ID for this specific recommendation.


=head2 _request_id => Str


=cut

1;