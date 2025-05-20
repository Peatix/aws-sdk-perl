
package Paws::SageMaker::ListInferenceExperimentsResponse;
  use Moose;
  has InferenceExperiments => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::InferenceExperimentSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceExperimentsResponse

=head1 ATTRIBUTES


=head2 InferenceExperiments => ArrayRef[L<Paws::SageMaker::InferenceExperimentSummary>]

List of inference experiments.


=head2 NextToken => Str

The token to use when calling the next page of results.


=head2 _request_id => Str


=cut

1;