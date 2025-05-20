
package Paws::CustomerProfiles::CreateSegmentSnapshotResponse;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateSegmentSnapshotResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotId => Str

The unique identifier of the segment snapshot.


=head2 _request_id => Str


=cut

