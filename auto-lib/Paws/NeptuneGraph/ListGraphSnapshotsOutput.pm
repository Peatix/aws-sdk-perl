
package Paws::NeptuneGraph::ListGraphSnapshotsOutput;
  use Moose;
  has GraphSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::NeptuneGraph::GraphSnapshotSummary]', traits => ['NameInRequest'], request_name => 'graphSnapshots', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListGraphSnapshotsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphSnapshots => ArrayRef[L<Paws::NeptuneGraph::GraphSnapshotSummary>]

The requested list of snapshots.


=head2 NextToken => Str

Pagination token used to paginate output.

When this value is provided as input, the service returns results from
where the previous response left off. When this value is present in
output, it indicates that there are more results to retrieve.


=head2 _request_id => Str


=cut

