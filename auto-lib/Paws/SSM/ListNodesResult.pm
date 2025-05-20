
package Paws::SSM::ListNodesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Node]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListNodesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Nodes => ArrayRef[L<Paws::SSM::Node>]

A list of managed nodes that match the specified filter criteria.


=head2 _request_id => Str


=cut

1;