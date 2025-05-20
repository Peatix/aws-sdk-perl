
package Paws::MemoryDB::DescribeReservedNodesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::ReservedNode]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeReservedNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords.


=head2 ReservedNodes => ArrayRef[L<Paws::MemoryDB::ReservedNode>]

Returns information about reserved nodes for this account, or about a
specified reserved node.


=head2 _request_id => Str


=cut

1;