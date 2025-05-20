
package Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-bedrock-knowledge-base-session-id', required => 1);
  has Stream => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponseOutput', traits => ['NameInRequest'], request_name => 'stream', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Stream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

The session ID.


=head2 B<REQUIRED> Stream => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponseOutput>

A stream of events from the model.


=head2 _request_id => Str


=cut

