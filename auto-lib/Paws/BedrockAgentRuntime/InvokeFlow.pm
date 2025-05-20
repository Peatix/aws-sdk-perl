
package Paws::BedrockAgentRuntime::InvokeFlow;
  use Moose;
  has EnableTrace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableTrace');
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId');
  has FlowAliasIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowAliasIdentifier', required => 1);
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::FlowInput]', traits => ['NameInRequest'], request_name => 'inputs', required => 1);
  has ModelPerformanceConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ModelPerformanceConfiguration', traits => ['NameInRequest'], request_name => 'modelPerformanceConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::InvokeFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::InvokeFlow - Arguments for method InvokeFlow on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeFlow on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method InvokeFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeFlow.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $InvokeFlowResponse = $bedrock -agent-runtime->InvokeFlow(
      FlowAliasIdentifier => 'MyFlowAliasIdentifier',
      FlowIdentifier      => 'MyFlowIdentifier',
      Inputs              => [
        {
          Content => {
            Document => {

            },    # OPTIONAL
          },
          NodeName       => 'MyNodeName',
          NodeInputName  => 'MyNodeInputName',     # OPTIONAL
          NodeOutputName => 'MyNodeOutputName',    # OPTIONAL
        },
        ...
      ],
      EnableTrace                   => 1,                      # OPTIONAL
      ExecutionId                   => 'MyFlowExecutionId',    # OPTIONAL
      ModelPerformanceConfiguration => {
        PerformanceConfig => {
          Latency => 'standard',    # values: standard, optimized; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ExecutionId    = $InvokeFlowResponse->ExecutionId;
    my $ResponseStream = $InvokeFlowResponse->ResponseStream;

    # Returns a L<Paws::BedrockAgentRuntime::InvokeFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/InvokeFlow>

=head1 ATTRIBUTES


=head2 EnableTrace => Bool

Specifies whether to return the trace for the flow or not. Traces track
inputs and outputs for nodes in the flow. For more information, see
Track each step in your prompt flow by viewing its trace in Amazon
Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html).



=head2 ExecutionId => Str

The unique identifier for the current flow execution. If you don't
provide a value, Amazon Bedrock creates the identifier for you.



=head2 B<REQUIRED> FlowAliasIdentifier => Str

The unique identifier of the flow alias.



=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow.



=head2 B<REQUIRED> Inputs => ArrayRef[L<Paws::BedrockAgentRuntime::FlowInput>]

A list of objects, each containing information about an input into the
flow.



=head2 ModelPerformanceConfiguration => L<Paws::BedrockAgentRuntime::ModelPerformanceConfiguration>

Model performance settings for the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeFlow in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

