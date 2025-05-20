
package Paws::SageMaker::CreateInferenceComponentOutput;
  use Moose;
  has InferenceComponentArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateInferenceComponentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceComponentArn => Str

The Amazon Resource Name (ARN) of the inference component.


=head2 _request_id => Str


=cut

1;