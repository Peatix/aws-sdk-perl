
package Paws::BedrockAgentRuntime::InvokeInlineAgentResponse;
  use Moose;
  has Completion => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InlineAgentResponseStream', traits => ['NameInRequest'], request_name => 'completion', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-bedrock-agent-content-type', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-bedrock-agent-session-id', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Completion');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::InvokeInlineAgentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Completion => L<Paws::BedrockAgentRuntime::InlineAgentResponseStream>

The inline agent's response to the user prompt.


=head2 B<REQUIRED> ContentType => Str

The MIME type of the input data in the request. The default value is
application/json.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the session with the agent.


=head2 _request_id => Str


=cut

