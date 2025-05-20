
package Paws::MemoryDB::BatchUpdateClusterResponse;
  use Moose;
  has ProcessedClusters => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Cluster]');
  has UnprocessedClusters => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::UnprocessedCluster]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::BatchUpdateClusterResponse

=head1 ATTRIBUTES


=head2 ProcessedClusters => ArrayRef[L<Paws::MemoryDB::Cluster>]

The list of clusters that have been updated.


=head2 UnprocessedClusters => ArrayRef[L<Paws::MemoryDB::UnprocessedCluster>]

The list of clusters where updates have not been applied.


=head2 _request_id => Str


=cut

1;