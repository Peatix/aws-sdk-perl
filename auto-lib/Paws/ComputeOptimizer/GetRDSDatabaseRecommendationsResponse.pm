
package Paws::ComputeOptimizer::GetRDSDatabaseRecommendationsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RdsDBRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RDSDBRecommendation]', traits => ['NameInRequest'], request_name => 'rdsDBRecommendations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRDSDatabaseRecommendationsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.


=head2 NextToken => Str

The token to advance to the next page of Amazon RDS recommendations.


=head2 RdsDBRecommendations => ArrayRef[L<Paws::ComputeOptimizer::RDSDBRecommendation>]

An array of objects that describe the Amazon RDS recommendations.


=head2 _request_id => Str


=cut

1;