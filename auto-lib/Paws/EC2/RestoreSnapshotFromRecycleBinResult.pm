
package Paws::EC2::RestoreSnapshotFromRecycleBinResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest',]);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest',]);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest',]);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has SseType => (is => 'ro', isa => 'Str', request_name => 'sseType', traits => ['NameInRequest',]);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RestoreSnapshotFromRecycleBinResult

=head1 ATTRIBUTES


=head2 Description => Str

The description for the snapshot.


=head2 Encrypted => Bool

Indicates whether the snapshot is encrypted.


=head2 OutpostArn => Str

The ARN of the Outpost on which the snapshot is stored. For more
information, see Amazon EBS local snapshots on Outposts
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html)
in the I<Amazon EBS User Guide>.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the EBS snapshot.


=head2 Progress => Str

The progress of the snapshot, as a percentage.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 SseType => Str

Reserved for future use.

Valid values are: C<"sse-ebs">, C<"sse-kms">, C<"none">
=head2 StartTime => Str

The time stamp when the snapshot was initiated.


=head2 State => Str

The state of the snapshot.

Valid values are: C<"pending">, C<"completed">, C<"error">, C<"recoverable">, C<"recovering">
=head2 VolumeId => Str

The ID of the volume that was used to create the snapshot.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 _request_id => Str


=cut

