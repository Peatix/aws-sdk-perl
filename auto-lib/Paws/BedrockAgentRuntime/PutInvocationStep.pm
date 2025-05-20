
package Paws::BedrockAgentRuntime::PutInvocationStep;
  use Moose;
  has InvocationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationIdentifier', required => 1);
  has InvocationStepId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationStepId');
  has InvocationStepTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationStepTime', required => 1);
  has Payload => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InvocationStepPayload', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has SessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInvocationStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sessions/{sessionIdentifier}/invocationSteps/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::PutInvocationStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::PutInvocationStep - Arguments for method PutInvocationStep on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInvocationStep on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method PutInvocationStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInvocationStep.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $PutInvocationStepResponse = $bedrock -agent-runtime->PutInvocationStep(
      InvocationIdentifier => 'MyInvocationIdentifier',
      InvocationStepTime   => '1970-01-01T01:00:00',
      Payload              => {
        ContentBlocks => [
          {
            Image => {
              Format => 'png',    # values: png, jpeg, gif, webp
              Source => {
                Bytes      => 'BlobImageSourceBytesBlob',    # min: 1; OPTIONAL
                S3Location => {
                  Uri => 'MyS3Uri',                          # min: 1, max: 1024

                },    # OPTIONAL
              },

            },    # OPTIONAL
            Text => 'MyBedrockSessionContentBlockTextString', # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },
      SessionIdentifier => 'MySessionIdentifier',
      InvocationStepId  => 'MyUuid',                # OPTIONAL
    );

    # Results:
    my $InvocationStepId = $PutInvocationStepResponse->InvocationStepId;

    # Returns a L<Paws::BedrockAgentRuntime::PutInvocationStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/PutInvocationStep>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationIdentifier => Str

The unique identifier (in UUID format) of the invocation to add the
invocation step to.



=head2 InvocationStepId => Str

The unique identifier of the invocation step in UUID format.



=head2 B<REQUIRED> InvocationStepTime => Str

The timestamp for when the invocation step occurred.



=head2 B<REQUIRED> Payload => L<Paws::BedrockAgentRuntime::InvocationStepPayload>

The payload for the invocation step, including text and images for the
interaction.



=head2 B<REQUIRED> SessionIdentifier => Str

The unique identifier for the session to add the invocation step to.
You can specify either the session's C<sessionId> or its Amazon
Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInvocationStep in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

