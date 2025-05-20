
package Paws::Finspace::ListKxClusterNodesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxNode]', traits => ['NameInRequest'], request_name => 'nodes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxClusterNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 Nodes => ArrayRef[L<Paws::Finspace::KxNode>]

A list of nodes associated with the cluster.


=head2 _request_id => Str


=cut

