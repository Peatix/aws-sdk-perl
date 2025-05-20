
package Paws::EC2::ModifySnapshotTierResult;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has TieringStartTime => (is => 'ro', isa => 'Str', request_name => 'tieringStartTime', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySnapshotTierResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 TieringStartTime => Str

The date and time when the archive process was started.


=head2 _request_id => Str


=cut

