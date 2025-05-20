
package Paws::MemoryDB::PurchaseReservedNodesOfferingResponse;
  use Moose;
  has ReservedNode => (is => 'ro', isa => 'Paws::MemoryDB::ReservedNode');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::PurchaseReservedNodesOfferingResponse

=head1 ATTRIBUTES


=head2 ReservedNode => L<Paws::MemoryDB::ReservedNode>

Represents the output of a C<PurchaseReservedNodesOffering> operation.


=head2 _request_id => Str


=cut

1;