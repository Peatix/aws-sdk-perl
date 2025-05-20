
package Paws::BedrockAgentRuntime::GetInvocationStepResponse;
  use Moose;
  has InvocationStep => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InvocationStep', traits => ['NameInRequest'], request_name => 'invocationStep', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GetInvocationStepResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationStep => L<Paws::BedrockAgentRuntime::InvocationStep>

The complete details of the requested invocation step.


=head2 _request_id => Str


=cut

