
package Paws::SageMaker::UpdateInferenceExperimentResponse;
  use Moose;
  has InferenceExperimentArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateInferenceExperimentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceExperimentArn => Str

The ARN of the updated inference experiment.


=head2 _request_id => Str


=cut

1;