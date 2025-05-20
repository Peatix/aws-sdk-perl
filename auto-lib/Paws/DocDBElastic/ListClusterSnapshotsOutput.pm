
package Paws::DocDBElastic::ListClusterSnapshotsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::DocDBElastic::ClusterSnapshotInList]', traits => ['NameInRequest'], request_name => 'snapshots');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListClusterSnapshotsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token provided by a previous request. If this parameter is
specified, the response includes only records beyond this token, up to
the value specified by C<max-results>.

If there is no more data in the responce, the C<nextToken> will not be
returned.


=head2 Snapshots => ArrayRef[L<Paws::DocDBElastic::ClusterSnapshotInList>]

A list of snapshots for a specified elastic cluster.


=head2 _request_id => Str


=cut

