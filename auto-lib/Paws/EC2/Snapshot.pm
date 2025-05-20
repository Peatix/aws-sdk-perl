
package Paws::EC2::Snapshot;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest',]);
  has CompletionDurationMinutes => (is => 'ro', isa => 'Int', request_name => 'completionDurationMinutes', traits => ['NameInRequest',]);
  has CompletionTime => (is => 'ro', isa => 'Str', request_name => 'completionTime', traits => ['NameInRequest',]);
  has DataEncryptionKeyId => (is => 'ro', isa => 'Str', request_name => 'dataEncryptionKeyId', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest',]);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest',]);
  has FullSnapshotSizeInBytes => (is => 'ro', isa => 'Int', request_name => 'fullSnapshotSizeInBytes', traits => ['NameInRequest',]);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest',]);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest',]);
  has OwnerAlias => (is => 'ro', isa => 'Str', request_name => 'ownerAlias', traits => ['NameInRequest',]);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest',]);
  has RestoreExpiryTime => (is => 'ro', isa => 'Str', request_name => 'restoreExpiryTime', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has SseType => (is => 'ro', isa => 'Str', request_name => 'sseType', traits => ['NameInRequest',]);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest',]);
  has StorageTier => (is => 'ro', isa => 'Str', request_name => 'storageTier', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);
  has TransferType => (is => 'ro', isa => 'Str', request_name => 'transferType', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Snapshot

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone or Local Zone of the snapshot. For example,
C<us-west-1a> (Availability Zone) or C<us-west-2-lax-1a> (Local Zone).


=head2 CompletionDurationMinutes => Int

Only for snapshot copies created with time-based snapshot copy
operations.

The completion duration requested for the time-based snapshot copy
operation.


=head2 CompletionTime => Str

The time stamp when the snapshot was completed.


=head2 DataEncryptionKeyId => Str

The data encryption key identifier for the snapshot. This value is a
unique identifier that corresponds to the data encryption key that was
used to encrypt the original volume or snapshot copy. Because data
encryption keys are inherited by volumes created from snapshots, and
vice versa, if snapshots share the same data encryption key identifier,
then they belong to the same volume/snapshot lineage. This parameter is
only returned by DescribeSnapshots.


=head2 Description => Str

The description for the snapshot.


=head2 Encrypted => Bool

Indicates whether the snapshot is encrypted.


=head2 FullSnapshotSizeInBytes => Int

The full size of the snapshot, in bytes.

This is B<not> the incremental size of the snapshot. This is the full
snapshot size and represents the size of all the blocks that were
written to the source volume at the time the snapshot was created.


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the KMS key that was used to protect
the volume encryption key for the parent volume.


=head2 OutpostArn => Str

The ARN of the Outpost on which the snapshot is stored. For more
information, see Amazon EBS local snapshots on Outposts
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html)
in the I<Amazon EBS User Guide>.


=head2 OwnerAlias => Str

The Amazon Web Services owner alias, from an Amazon-maintained list
(C<amazon>). This is not the user-configured Amazon Web Services
account alias set using the IAM console.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the EBS snapshot.


=head2 Progress => Str

The progress of the snapshot, as a percentage.


=head2 RestoreExpiryTime => Str

Only for archived snapshots that are temporarily restored. Indicates
the date and time when a temporarily restored snapshot will be
automatically re-archived.


=head2 SnapshotId => Str

The ID of the snapshot. Each snapshot receives a unique identifier when
it is created.


=head2 SseType => Str

Reserved for future use.

Valid values are: C<"sse-ebs">, C<"sse-kms">, C<"none">
=head2 StartTime => Str

The time stamp when the snapshot was initiated.


=head2 State => Str

The snapshot state.

Valid values are: C<"pending">, C<"completed">, C<"error">, C<"recoverable">, C<"recovering">
=head2 StateMessage => Str

Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot
copy operation fails (for example, if the proper KMS permissions are
not obtained) this field displays error state details to help you
diagnose why the error occurred. This parameter is only returned by
DescribeSnapshots.


=head2 StorageTier => Str

The storage tier in which the snapshot is stored. C<standard> indicates
that the snapshot is stored in the standard snapshot storage tier and
that it is ready for use. C<archive> indicates that the snapshot is
currently archived and that it must be restored before it can be used.

Valid values are: C<"archive">, C<"standard">
=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the snapshot.


=head2 TransferType => Str

Only for snapshot copies.

Indicates whether the snapshot copy was created with a standard or
time-based snapshot copy operation. Time-based snapshot copy operations
complete within the completion duration specified in the request.
Standard snapshot copy operations are completed on a best-effort basis.

=over

=item *

C<standard> - The snapshot copy was created with a standard snapshot
copy operation.

=item *

C<time-based> - The snapshot copy was created with a time-based
snapshot copy operation.

=back


Valid values are: C<"time-based">, C<"standard">
=head2 VolumeId => Str

The ID of the volume that was used to create the snapshot. Snapshots
created by the CopySnapshot action have an arbitrary volume ID that
should not be used for any purpose.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 _request_id => Str


=cut

