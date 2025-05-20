
package Paws::FSX::DeleteSnapshotResponse;
  use Moose;
  has Lifecycle => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteSnapshotResponse

=head1 ATTRIBUTES


=head2 Lifecycle => Str

The lifecycle status of the snapshot. If the C<DeleteSnapshot>
operation is successful, this status is C<DELETING>.

Valid values are: C<"PENDING">, C<"CREATING">, C<"DELETING">, C<"AVAILABLE">
=head2 SnapshotId => Str

The ID of the deleted snapshot.


=head2 _request_id => Str


=cut

1;