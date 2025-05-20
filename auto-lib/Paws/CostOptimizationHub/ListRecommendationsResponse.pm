
package Paws::CostOptimizationHub::ListRecommendationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CostOptimizationHub::Recommendation]', traits => ['NameInRequest'], request_name => 'items' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ListRecommendationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CostOptimizationHub::Recommendation>]

List of all savings recommendations.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;