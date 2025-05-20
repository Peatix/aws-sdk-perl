
package Paws::Panorama::ListNodesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::Node]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 Nodes => ArrayRef[L<Paws::Panorama::Node>]

A list of nodes.


=head2 _request_id => Str


=cut

