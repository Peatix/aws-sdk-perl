
package Paws::BedrockAgent::ListAgentCollaboratorsResponse;
  use Moose;
  has AgentCollaboratorSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::AgentCollaboratorSummary]', traits => ['NameInRequest'], request_name => 'agentCollaboratorSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListAgentCollaboratorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentCollaboratorSummaries => ArrayRef[L<Paws::BedrockAgent::AgentCollaboratorSummary>]

A list of collaborator summaries.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

