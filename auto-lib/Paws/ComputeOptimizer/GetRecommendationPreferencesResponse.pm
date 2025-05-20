
package Paws::ComputeOptimizer::GetRecommendationPreferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecommendationPreferencesDetails => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendationPreferencesDetail]', traits => ['NameInRequest'], request_name => 'recommendationPreferencesDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRecommendationPreferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to advance to the next page of recommendation
preferences.

This value is null when there are no more pages of recommendation
preferences to return.


=head2 RecommendationPreferencesDetails => ArrayRef[L<Paws::ComputeOptimizer::RecommendationPreferencesDetail>]

An array of objects that describe recommendation preferences.


=head2 _request_id => Str


=cut

1;