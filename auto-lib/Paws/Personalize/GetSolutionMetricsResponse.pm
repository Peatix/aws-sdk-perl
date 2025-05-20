
package Paws::Personalize::GetSolutionMetricsResponse;
  use Moose;
  has Metrics => (is => 'ro', isa => 'Paws::Personalize::Metrics', traits => ['NameInRequest'], request_name => 'metrics' );
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::GetSolutionMetricsResponse

=head1 ATTRIBUTES


=head2 Metrics => L<Paws::Personalize::Metrics>

The metrics for the solution version. For more information, see
Evaluating a solution version with metrics
(https://docs.aws.amazon.com/personalize/latest/dg/working-with-training-metrics.html).


=head2 SolutionVersionArn => Str

The same solution version ARN as specified in the request.


=head2 _request_id => Str


=cut

1;