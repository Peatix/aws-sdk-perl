
package Paws::BedrockAgentRuntime::CreateInvocationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has InvocationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::CreateInvocationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp for when the invocation was created.


=head2 B<REQUIRED> InvocationId => Str

The unique identifier for the invocation.


=head2 B<REQUIRED> SessionId => Str

The unique identifier for the session associated with the invocation.


=head2 _request_id => Str


=cut

