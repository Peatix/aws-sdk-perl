
package Paws::BedrockAgent::ListFlowsResponse;
  use Moose;
  has FlowSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowSummary]', traits => ['NameInRequest'], request_name => 'flowSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListFlowsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowSummaries => ArrayRef[L<Paws::BedrockAgent::FlowSummary>]

A list, each member of which contains information about a flow.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

