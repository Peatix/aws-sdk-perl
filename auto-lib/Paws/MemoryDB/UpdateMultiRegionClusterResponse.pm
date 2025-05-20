
package Paws::MemoryDB::UpdateMultiRegionClusterResponse;
  use Moose;
  has MultiRegionCluster => (is => 'ro', isa => 'Paws::MemoryDB::MultiRegionCluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateMultiRegionClusterResponse

=head1 ATTRIBUTES


=head2 MultiRegionCluster => L<Paws::MemoryDB::MultiRegionCluster>

The status of updating the multi-Region cluster.


=head2 _request_id => Str


=cut

1;