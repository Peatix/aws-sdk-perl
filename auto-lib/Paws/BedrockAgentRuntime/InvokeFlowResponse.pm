
package Paws::BedrockAgentRuntime::InvokeFlowResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-bedrock-flow-execution-id');
  has ResponseStream => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::FlowResponseStream', traits => ['NameInRequest'], request_name => 'responseStream', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ResponseStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::InvokeFlowResponse

=head1 ATTRIBUTES


=head2 ExecutionId => Str

The unique identifier for the current flow execution.


=head2 B<REQUIRED> ResponseStream => L<Paws::BedrockAgentRuntime::FlowResponseStream>

The output of the flow, returned as a stream. If there's an error, the
error is returned.


=head2 _request_id => Str


=cut

