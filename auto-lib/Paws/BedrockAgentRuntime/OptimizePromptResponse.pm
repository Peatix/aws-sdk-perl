
package Paws::BedrockAgentRuntime::OptimizePromptResponse;
  use Moose;
  has OptimizedPrompt => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::OptimizedPromptStream', traits => ['NameInRequest'], request_name => 'optimizedPrompt', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'OptimizedPrompt');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::OptimizePromptResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> OptimizedPrompt => L<Paws::BedrockAgentRuntime::OptimizedPromptStream>

The prompt after being optimized for the task.


=head2 _request_id => Str


=cut

