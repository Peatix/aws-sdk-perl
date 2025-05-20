
package Paws::MemoryDB::CreateSnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::MemoryDB::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateSnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::MemoryDB::Snapshot>

The newly-created snapshot.


=head2 _request_id => Str


=cut

1;