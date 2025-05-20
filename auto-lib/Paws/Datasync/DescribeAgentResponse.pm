
package Paws::Datasync::DescribeAgentResponse;
  use Moose;
  has AgentArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has LastConnectionTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Paws::Datasync::Platform');
  has PrivateLinkConfig => (is => 'ro', isa => 'Paws::Datasync::PrivateLinkConfig');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeAgentResponse

=head1 ATTRIBUTES


=head2 AgentArn => Str

The ARN of the agent.


=head2 CreationTime => Str

The time that the agent was activated
(https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html).


=head2 EndpointType => Str

The type of service endpoint
(https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html)
that your agent is connected to.

Valid values are: C<"PUBLIC">, C<"PRIVATE_LINK">, C<"FIPS">
=head2 LastConnectionTime => Str

The last time that the agent was communicating with the DataSync
service.


=head2 Name => Str

The name of the agent.


=head2 Platform => L<Paws::Datasync::Platform>

The platform-related details about the agent, such as the version
number.


=head2 PrivateLinkConfig => L<Paws::Datasync::PrivateLinkConfig>

The network configuration that the agent uses when connecting to a VPC
service endpoint
(https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#choose-service-endpoint-vpc).


=head2 Status => Str

The status of the agent.

=over

=item *

If the status is C<ONLINE>, the agent is configured properly and ready
to use.

=item *

If the status is C<OFFLINE>, the agent has been out of contact with
DataSync for five minutes or longer. This can happen for a few reasons.
For more information, see What do I do if my agent is offline?
(https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-agents.html#troubleshoot-agent-offline)

=back


Valid values are: C<"ONLINE">, C<"OFFLINE">
=head2 _request_id => Str


=cut

1;