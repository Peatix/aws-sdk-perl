
package Paws::FSX::UpdateSnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::FSX::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateSnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::FSX::Snapshot>

Returned after a successful C<UpdateSnapshot> operation, describing the
snapshot that you updated.


=head2 _request_id => Str


=cut

1;