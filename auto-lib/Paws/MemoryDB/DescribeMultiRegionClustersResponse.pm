
package Paws::MemoryDB::DescribeMultiRegionClustersResponse;
  use Moose;
  has MultiRegionClusters => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::MultiRegionCluster]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeMultiRegionClustersResponse

=head1 ATTRIBUTES


=head2 MultiRegionClusters => ArrayRef[L<Paws::MemoryDB::MultiRegionCluster>]

A list of multi-Region clusters.


=head2 NextToken => Str

A token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

1;