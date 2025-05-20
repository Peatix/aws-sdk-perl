
package Paws::BedrockRuntime::InvokeModelWithBidirectionalStream;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamInput', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has ModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeModelWithBidirectionalStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model/{modelId}/invoke-with-bidirectional-stream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::InvokeModelWithBidirectionalStream - Arguments for method InvokeModelWithBidirectionalStream on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeModelWithBidirectionalStream on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method InvokeModelWithBidirectionalStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeModelWithBidirectionalStream.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $InvokeModelWithBidirectionalStreamResponse =
      $bedrock -runtime->InvokeModelWithBidirectionalStream(
      Body => {
        Chunk => {
          Bytes => 'BlobPartBody',    # max: 1000000; OPTIONAL
        },    # OPTIONAL
      },
      ModelId => 'MyInvokeModelIdentifier',

      );

    # Results:
    my $Body = $InvokeModelWithBidirectionalStreamResponse->Body;

# Returns a L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/InvokeModelWithBidirectionalStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamInput>

The prompt and inference parameters in the format specified in the
C<BidirectionalInputPayloadPart> in the header. You must provide the
body in JSON format. To see the format and content of the request and
response bodies for different models, refer to Inference parameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
For more information, see Run inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html)
in the Bedrock User Guide.



=head2 B<REQUIRED> ModelId => Str

The model ID or ARN of the model ID to use. Currently, only
C<amazon.nova-sonic-v1:0> is supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeModelWithBidirectionalStream in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

