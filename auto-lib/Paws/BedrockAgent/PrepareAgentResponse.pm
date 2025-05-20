
package Paws::BedrockAgent::PrepareAgentResponse;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId', required => 1);
  has AgentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentStatus', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentVersion', required => 1);
  has PreparedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preparedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::PrepareAgentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent for which the C<DRAFT> version was
created.


=head2 B<REQUIRED> AgentStatus => Str

The status of the C<DRAFT> version and whether it is ready for use.

Valid values are: C<"CREATING">, C<"PREPARING">, C<"PREPARED">, C<"NOT_PREPARED">, C<"DELETING">, C<"FAILED">, C<"VERSIONING">, C<"UPDATING">
=head2 B<REQUIRED> AgentVersion => Str

The version of the agent.


=head2 B<REQUIRED> PreparedAt => Str

The time at which the C<DRAFT> version of the agent was last prepared.


=head2 _request_id => Str


=cut

