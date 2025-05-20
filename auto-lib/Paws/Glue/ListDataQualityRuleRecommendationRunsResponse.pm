
package Paws::Glue::ListDataQualityRuleRecommendationRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Runs => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityRuleRecommendationRunDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityRuleRecommendationRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 Runs => ArrayRef[L<Paws::Glue::DataQualityRuleRecommendationRunDescription>]

A list of C<DataQualityRuleRecommendationRunDescription> objects.


=head2 _request_id => Str


=cut

1;