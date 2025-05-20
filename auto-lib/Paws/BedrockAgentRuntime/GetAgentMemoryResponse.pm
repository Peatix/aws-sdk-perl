
package Paws::BedrockAgentRuntime::GetAgentMemoryResponse;
  use Moose;
  has MemoryContents => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::Memory]', traits => ['NameInRequest'], request_name => 'memoryContents');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GetAgentMemoryResponse

=head1 ATTRIBUTES


=head2 MemoryContents => ArrayRef[L<Paws::BedrockAgentRuntime::Memory>]

Contains details of the sessions stored in the memory


=head2 NextToken => Str

If the total number of results is greater than the maxItems value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

