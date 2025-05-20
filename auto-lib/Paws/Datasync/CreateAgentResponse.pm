
package Paws::Datasync::CreateAgentResponse;
  use Moose;
  has AgentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateAgentResponse

=head1 ATTRIBUTES


=head2 AgentArn => Str

The ARN of the agent that you just activated. Use the ListAgents
(https://docs.aws.amazon.com/datasync/latest/userguide/API_ListAgents.html)
operation to return a list of agents in your Amazon Web Services
account and Amazon Web Services Region.


=head2 _request_id => Str


=cut

1;