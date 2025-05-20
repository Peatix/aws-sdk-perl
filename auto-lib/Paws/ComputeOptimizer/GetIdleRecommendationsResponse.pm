
package Paws::ComputeOptimizer::GetIdleRecommendationsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::IdleRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has IdleRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::IdleRecommendation]', traits => ['NameInRequest'], request_name => 'idleRecommendations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetIdleRecommendationsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::IdleRecommendationError>]

An array of objects that describe errors of the request.


=head2 IdleRecommendations => ArrayRef[L<Paws::ComputeOptimizer::IdleRecommendation>]

An array of objects that describe the idle resource recommendations.


=head2 NextToken => Str

The token to advance to the next page of idle resource recommendations.


=head2 _request_id => Str


=cut

1;