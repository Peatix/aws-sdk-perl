
package Paws::BedrockAgentRuntime::PutInvocationStepResponse;
  use Moose;
  has InvocationStepId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationStepId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::PutInvocationStepResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationStepId => Str

The unique identifier of the invocation step in UUID format.


=head2 _request_id => Str


=cut

