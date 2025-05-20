
package Paws::CostOptimizationHub::ListRecommendationSummariesResponse;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currencyCode' );
  has EstimatedTotalDedupedSavings => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'estimatedTotalDedupedSavings' );
  has GroupBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupBy' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CostOptimizationHub::RecommendationSummary]', traits => ['NameInRequest'], request_name => 'items' );
  has Metrics => (is => 'ro', isa => 'Paws::CostOptimizationHub::SummaryMetricsResult', traits => ['NameInRequest'], request_name => 'metrics' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ListRecommendationSummariesResponse

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

The currency code used for the recommendation.


=head2 EstimatedTotalDedupedSavings => Num

The total overall savings for the aggregated view.


=head2 GroupBy => Str

The dimension used to group the recommendations by.


=head2 Items => ArrayRef[L<Paws::CostOptimizationHub::RecommendationSummary>]

A list of all savings recommendations.


=head2 Metrics => L<Paws::CostOptimizationHub::SummaryMetricsResult>

The results or descriptions for the additional metrics, based on
whether the metrics were or were not requested.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;