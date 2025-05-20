
package Paws::SageMaker::QueryLineageResponse;
  use Moose;
  has Edges => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Edge]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Vertices => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Vertex]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::QueryLineageResponse

=head1 ATTRIBUTES


=head2 Edges => ArrayRef[L<Paws::SageMaker::Edge>]

A list of edges that connect vertices in the response.


=head2 NextToken => Str

Limits the number of vertices in the response. Use the C<NextToken> in
a response to to retrieve the next page of results.


=head2 Vertices => ArrayRef[L<Paws::SageMaker::Vertex>]

A list of vertices connected to the start entity(ies) in the lineage
graph.


=head2 _request_id => Str


=cut

1;