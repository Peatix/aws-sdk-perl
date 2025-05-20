
package Paws::ComputeOptimizer::GetECSServiceRecommendationsResponse;
  use Moose;
  has EcsServiceRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceRecommendation]', traits => ['NameInRequest'], request_name => 'ecsServiceRecommendations' );
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetECSServiceRecommendationsResponse

=head1 ATTRIBUTES


=head2 EcsServiceRecommendations => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendation>]

An array of objects that describe the Amazon ECS service
recommendations.


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.


=head2 NextToken => Str

The token to advance to the next page of Amazon ECS service
recommendations.


=head2 _request_id => Str


=cut

1;