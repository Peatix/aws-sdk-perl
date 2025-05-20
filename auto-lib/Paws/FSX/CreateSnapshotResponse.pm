
package Paws::FSX::CreateSnapshotResponse;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::FSX::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateSnapshotResponse

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::FSX::Snapshot>

A description of the snapshot.


=head2 _request_id => Str


=cut

1;