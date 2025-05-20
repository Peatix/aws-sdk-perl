
package Paws::EC2::LockSnapshotResult;
  use Moose;
  has CoolOffPeriod => (is => 'ro', isa => 'Int', request_name => 'coolOffPeriod', traits => ['NameInRequest',]);
  has CoolOffPeriodExpiresOn => (is => 'ro', isa => 'Str', request_name => 'coolOffPeriodExpiresOn', traits => ['NameInRequest',]);
  has LockCreatedOn => (is => 'ro', isa => 'Str', request_name => 'lockCreatedOn', traits => ['NameInRequest',]);
  has LockDuration => (is => 'ro', isa => 'Int', request_name => 'lockDuration', traits => ['NameInRequest',]);
  has LockDurationStartTime => (is => 'ro', isa => 'Str', request_name => 'lockDurationStartTime', traits => ['NameInRequest',]);
  has LockExpiresOn => (is => 'ro', isa => 'Str', request_name => 'lockExpiresOn', traits => ['NameInRequest',]);
  has LockState => (is => 'ro', isa => 'Str', request_name => 'lockState', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LockSnapshotResult

=head1 ATTRIBUTES


=head2 CoolOffPeriod => Int

The compliance mode cooling-off period, in hours.


=head2 CoolOffPeriodExpiresOn => Str

The date and time at which the compliance mode cooling-off period
expires, in the UTC time zone (C<YYYY-MM-DDThh:mm:ss.sssZ>).


=head2 LockCreatedOn => Str

The date and time at which the snapshot was locked, in the UTC time
zone (C<YYYY-MM-DDThh:mm:ss.sssZ>).


=head2 LockDuration => Int

The period of time for which the snapshot is locked, in days.


=head2 LockDurationStartTime => Str

The date and time at which the lock duration started, in the UTC time
zone (C<YYYY-MM-DDThh:mm:ss.sssZ>).


=head2 LockExpiresOn => Str

The date and time at which the lock will expire, in the UTC time zone
(C<YYYY-MM-DDThh:mm:ss.sssZ>).


=head2 LockState => Str

The state of the snapshot lock. Valid states include:

=over

=item *

C<compliance-cooloff> - The snapshot has been locked in compliance mode
but it is still within the cooling-off period. The snapshot can't be
deleted, but it can be unlocked and the lock settings can be modified
by users with appropriate permissions.

=item *

C<governance> - The snapshot is locked in governance mode. The snapshot
can't be deleted, but it can be unlocked and the lock settings can be
modified by users with appropriate permissions.

=item *

C<compliance> - The snapshot is locked in compliance mode and the
cooling-off period has expired. The snapshot can't be unlocked or
deleted. The lock duration can only be increased by users with
appropriate permissions.

=item *

C<expired> - The snapshot was locked in compliance or governance mode
but the lock duration has expired. The snapshot is not locked and can
be deleted.

=back


Valid values are: C<"compliance">, C<"governance">, C<"compliance-cooloff">, C<"expired">
=head2 SnapshotId => Str

The ID of the snapshot


=head2 _request_id => Str


=cut

