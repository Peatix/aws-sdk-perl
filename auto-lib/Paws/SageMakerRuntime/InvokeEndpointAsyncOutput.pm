
package Paws::SageMakerRuntime::InvokeEndpointAsyncOutput;
  use Moose;
  has FailureLocation => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-FailureLocation');
  has InferenceId => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-OutputLocation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpointAsyncOutput

=head1 ATTRIBUTES


=head2 FailureLocation => Str

The Amazon S3 URI where the inference failure response payload is
stored.


=head2 InferenceId => Str

Identifier for an inference request. This will be the same as the
C<InferenceId> specified in the input. Amazon SageMaker will generate
an identifier for you if you do not specify one.


=head2 OutputLocation => Str

The Amazon S3 URI where the inference response payload is stored.


=head2 _request_id => Str


=cut

