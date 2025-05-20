
package Paws::MemoryDB::DescribeClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Cluster]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::MemoryDB::Cluster>]

A list of clusters


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 _request_id => Str


=cut

1;