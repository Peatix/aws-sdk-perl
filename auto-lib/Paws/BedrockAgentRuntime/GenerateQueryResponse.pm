
package Paws::BedrockAgentRuntime::GenerateQueryResponse;
  use Moose;
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::GeneratedQuery]', traits => ['NameInRequest'], request_name => 'queries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GenerateQueryResponse

=head1 ATTRIBUTES


=head2 Queries => ArrayRef[L<Paws::BedrockAgentRuntime::GeneratedQuery>]

A list of objects, each of which defines a generated query that can
correspond to the natural language queries.


=head2 _request_id => Str


=cut

