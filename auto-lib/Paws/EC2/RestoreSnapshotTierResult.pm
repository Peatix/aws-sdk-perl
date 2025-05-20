
package Paws::EC2::RestoreSnapshotTierResult;
  use Moose;
  has IsPermanentRestore => (is => 'ro', isa => 'Bool', request_name => 'isPermanentRestore', traits => ['NameInRequest',]);
  has RestoreDuration => (is => 'ro', isa => 'Int', request_name => 'restoreDuration', traits => ['NameInRequest',]);
  has RestoreStartTime => (is => 'ro', isa => 'Str', request_name => 'restoreStartTime', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RestoreSnapshotTierResult

=head1 ATTRIBUTES


=head2 IsPermanentRestore => Bool

Indicates whether the snapshot is permanently restored. C<true>
indicates a permanent restore. C<false> indicates a temporary restore.


=head2 RestoreDuration => Int

For temporary restores only. The number of days for which the archived
snapshot is temporarily restored.


=head2 RestoreStartTime => Str

The date and time when the snapshot restore process started.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 _request_id => Str


=cut

