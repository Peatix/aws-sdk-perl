
package Paws::BedrockAgent::ListAgentActionGroupsResponse;
  use Moose;
  has ActionGroupSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::ActionGroupSummary]', traits => ['NameInRequest'], request_name => 'actionGroupSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListAgentActionGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionGroupSummaries => ArrayRef[L<Paws::BedrockAgent::ActionGroupSummary>]

A list of objects, each of which contains information about an action
group.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

