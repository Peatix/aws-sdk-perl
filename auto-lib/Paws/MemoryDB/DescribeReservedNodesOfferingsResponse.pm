
package Paws::MemoryDB::DescribeReservedNodesOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedNodesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::ReservedNodesOffering]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeReservedNodesOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords.


=head2 ReservedNodesOfferings => ArrayRef[L<Paws::MemoryDB::ReservedNodesOffering>]

Lists available reserved node offerings.


=head2 _request_id => Str


=cut

1;