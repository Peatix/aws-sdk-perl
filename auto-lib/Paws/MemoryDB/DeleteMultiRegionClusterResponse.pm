
package Paws::MemoryDB::DeleteMultiRegionClusterResponse;
  use Moose;
  has MultiRegionCluster => (is => 'ro', isa => 'Paws::MemoryDB::MultiRegionCluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DeleteMultiRegionClusterResponse

=head1 ATTRIBUTES


=head2 MultiRegionCluster => L<Paws::MemoryDB::MultiRegionCluster>

Details about the deleted multi-Region cluster.


=head2 _request_id => Str


=cut

1;