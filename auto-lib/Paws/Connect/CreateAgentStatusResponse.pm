
package Paws::Connect::CreateAgentStatusResponse;
  use Moose;
  has AgentStatusARN => (is => 'ro', isa => 'Str');
  has AgentStatusId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateAgentStatusResponse

=head1 ATTRIBUTES


=head2 AgentStatusARN => Str

The Amazon Resource Name (ARN) of the agent status.


=head2 AgentStatusId => Str

The identifier of the agent status.


=head2 _request_id => Str


=cut

