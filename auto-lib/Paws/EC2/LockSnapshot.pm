
package Paws::EC2::LockSnapshot;
  use Moose;
  has CoolOffPeriod => (is => 'ro', isa => 'Int');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has LockDuration => (is => 'ro', isa => 'Int');
  has LockMode => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'LockSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::LockSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LockSnapshot - Arguments for method LockSnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method LockSnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method LockSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to LockSnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $LockSnapshotResult = $ec2->LockSnapshot(
      LockMode       => 'compliance',
      SnapshotId     => 'MySnapshotId',
      CoolOffPeriod  => 1,                        # OPTIONAL
      DryRun         => 1,                        # OPTIONAL
      ExpirationDate => '1970-01-01T01:00:00',    # OPTIONAL
      LockDuration   => 1,                        # OPTIONAL
    );

    # Results:
    my $CoolOffPeriod          = $LockSnapshotResult->CoolOffPeriod;
    my $CoolOffPeriodExpiresOn = $LockSnapshotResult->CoolOffPeriodExpiresOn;
    my $LockCreatedOn          = $LockSnapshotResult->LockCreatedOn;
    my $LockDuration           = $LockSnapshotResult->LockDuration;
    my $LockDurationStartTime  = $LockSnapshotResult->LockDurationStartTime;
    my $LockExpiresOn          = $LockSnapshotResult->LockExpiresOn;
    my $LockState              = $LockSnapshotResult->LockState;
    my $SnapshotId             = $LockSnapshotResult->SnapshotId;

    # Returns a L<Paws::EC2::LockSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/LockSnapshot>

=head1 ATTRIBUTES


=head2 CoolOffPeriod => Int

The cooling-off period during which you can unlock the snapshot or
modify the lock settings after locking the snapshot in compliance mode,
in hours. After the cooling-off period expires, you can't unlock or
delete the snapshot, decrease the lock duration, or change the lock
mode. You can increase the lock duration after the cooling-off period
expires.

The cooling-off period is optional when locking a snapshot in
compliance mode. If you are locking the snapshot in governance mode,
omit this parameter.

To lock the snapshot in compliance mode immediately without a
cooling-off period, omit this parameter.

If you are extending the lock duration for a snapshot that is locked in
compliance mode after the cooling-off period has expired, omit this
parameter. If you specify a cooling-period in a such a request, the
request fails.

Allowed values: Min 1, max 72.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExpirationDate => Str

The date and time at which the snapshot lock is to automatically
expire, in the UTC time zone (C<YYYY-MM-DDThh:mm:ss.sssZ>).

You must specify either this parameter or B<LockDuration>, but not
both.



=head2 LockDuration => Int

The period of time for which to lock the snapshot, in days. The
snapshot lock will automatically expire after this period lapses.

You must specify either this parameter or B<ExpirationDate>, but not
both.

Allowed values: Min: 1, max 36500



=head2 B<REQUIRED> LockMode => Str

The mode in which to lock the snapshot. Specify one of the following:

=over

=item *

C<governance> - Locks the snapshot in governance mode. Snapshots locked
in governance mode can't be deleted until one of the following
conditions are met:

=over

=item *

The lock duration expires.

=item *

The snapshot is unlocked by a user with the appropriate permissions.

=back

Users with the appropriate IAM permissions can unlock the snapshot,
increase or decrease the lock duration, and change the lock mode to
C<compliance> at any time.

If you lock a snapshot in C<governance> mode, omit B< CoolOffPeriod>.

=item *

C<compliance> - Locks the snapshot in compliance mode. Snapshots locked
in compliance mode can't be unlocked by any user. They can be deleted
only after the lock duration expires. Users can't decrease the lock
duration or change the lock mode to C<governance>. However, users with
appropriate IAM permissions can increase the lock duration at any time.

If you lock a snapshot in C<compliance> mode, you can optionally
specify B<CoolOffPeriod>.

=back


Valid values are: C<"compliance">, C<"governance">

=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot to lock.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method LockSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

