
package Paws::MemoryDB::DeleteSnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::MemoryDB::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DeleteSnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::MemoryDB::Snapshot>

The snapshot object that has been deleted.


=head2 _request_id => Str


=cut

1;