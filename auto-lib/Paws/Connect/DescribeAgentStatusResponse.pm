
package Paws::Connect::DescribeAgentStatusResponse;
  use Moose;
  has AgentStatus => (is => 'ro', isa => 'Paws::Connect::AgentStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeAgentStatusResponse

=head1 ATTRIBUTES


=head2 AgentStatus => L<Paws::Connect::AgentStatus>

The agent status.


=head2 _request_id => Str


=cut

