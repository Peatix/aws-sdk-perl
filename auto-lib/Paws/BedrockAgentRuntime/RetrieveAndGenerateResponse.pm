
package Paws::BedrockAgentRuntime::RetrieveAndGenerateResponse;
  use Moose;
  has Citations => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::Citation]', traits => ['NameInRequest'], request_name => 'citations');
  has GuardrailAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailAction');
  has Output => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateOutput', traits => ['NameInRequest'], request_name => 'output', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RetrieveAndGenerateResponse

=head1 ATTRIBUTES


=head2 Citations => ArrayRef[L<Paws::BedrockAgentRuntime::Citation>]

A list of segments of the generated response that are based on sources
in the knowledge base, alongside information about the sources.


=head2 GuardrailAction => Str

Specifies if there is a guardrail intervention in the response.

Valid values are: C<"INTERVENED">, C<"NONE">
=head2 B<REQUIRED> Output => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateOutput>

Contains the response generated from querying the knowledge base.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the session. When you first make a
C<RetrieveAndGenerate> request, Amazon Bedrock automatically generates
this value. You must reuse this value for all subsequent requests in
the same conversational session. This value allows Amazon Bedrock to
maintain context and knowledge from previous interactions. You can't
explicitly set the C<sessionId> yourself.


=head2 _request_id => Str


=cut

