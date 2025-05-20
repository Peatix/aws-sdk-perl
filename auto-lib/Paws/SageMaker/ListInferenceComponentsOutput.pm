
package Paws::SageMaker::ListInferenceComponentsOutput;
  use Moose;
  has InferenceComponents => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::InferenceComponentSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceComponentsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceComponents => ArrayRef[L<Paws::SageMaker::InferenceComponentSummary>]

A list of inference components and their properties that matches any of
the filters you specified in the request.


=head2 NextToken => Str

The token to use in a subsequent request to get the next set of results
following a truncated response.


=head2 _request_id => Str


=cut

1;