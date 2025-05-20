
package Paws::MemoryDB::CreateMultiRegionClusterResponse;
  use Moose;
  has MultiRegionCluster => (is => 'ro', isa => 'Paws::MemoryDB::MultiRegionCluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateMultiRegionClusterResponse

=head1 ATTRIBUTES


=head2 MultiRegionCluster => L<Paws::MemoryDB::MultiRegionCluster>

Details about the newly created multi-Region cluster.


=head2 _request_id => Str


=cut

1;