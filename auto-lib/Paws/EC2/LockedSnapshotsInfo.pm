package Paws::EC2::LockedSnapshotsInfo;
  use Moose;
  has CoolOffPeriod => (is => 'ro', isa => 'Int', request_name => 'coolOffPeriod', traits => ['NameInRequest']);
  has CoolOffPeriodExpiresOn => (is => 'ro', isa => 'Str', request_name => 'coolOffPeriodExpiresOn', traits => ['NameInRequest']);
  has LockCreatedOn => (is => 'ro', isa => 'Str', request_name => 'lockCreatedOn', traits => ['NameInRequest']);
  has LockDuration => (is => 'ro', isa => 'Int', request_name => 'lockDuration', traits => ['NameInRequest']);
  has LockDurationStartTime => (is => 'ro', isa => 'Str', request_name => 'lockDurationStartTime', traits => ['NameInRequest']);
  has LockExpiresOn => (is => 'ro', isa => 'Str', request_name => 'lockExpiresOn', traits => ['NameInRequest']);
  has LockState => (is => 'ro', isa => 'Str', request_name => 'lockState', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LockedSnapshotsInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LockedSnapshotsInfo object:

  $service_obj->Method(Att1 => { CoolOffPeriod => $value, ..., SnapshotId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LockedSnapshotsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CoolOffPeriod

=head1 DESCRIPTION

This class has no description

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

If you lock a snapshot that is in the C<pending> state, the lock
duration starts only once the snapshot enters the C<completed> state.


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



=head2 OwnerId => Str

The account ID of the Amazon Web Services account that owns the
snapshot.


=head2 SnapshotId => Str

The ID of the snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
