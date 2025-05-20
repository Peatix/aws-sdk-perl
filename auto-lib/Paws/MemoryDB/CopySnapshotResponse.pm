
package Paws::MemoryDB::CopySnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::MemoryDB::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CopySnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::MemoryDB::Snapshot>

Represents a copy of an entire cluster as of the time when the snapshot
was taken.


=head2 _request_id => Str


=cut

1;