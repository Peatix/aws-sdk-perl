
package Paws::MemoryDB::DescribeSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Snapshot]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.


=head2 Snapshots => ArrayRef[L<Paws::MemoryDB::Snapshot>]

A list of snapshots. Each item in the list contains detailed
information about one snapshot.


=head2 _request_id => Str


=cut

1;