
package Paws::CostExplorer::GetSavingsPlanPurchaseRecommendationDetailsResponse;
  use Moose;
  has RecommendationDetailData => (is => 'ro', isa => 'Paws::CostExplorer::RecommendationDetailData');
  has RecommendationDetailId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlanPurchaseRecommendationDetailsResponse

=head1 ATTRIBUTES


=head2 RecommendationDetailData => L<Paws::CostExplorer::RecommendationDetailData>

Contains detailed information about a specific Savings Plan
recommendation.


=head2 RecommendationDetailId => Str

The ID that is associated with the Savings Plan recommendation.


=head2 _request_id => Str


=cut

1;