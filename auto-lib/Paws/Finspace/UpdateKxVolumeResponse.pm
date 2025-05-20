
package Paws::Finspace::UpdateKxVolumeResponse;
  use Moose;
  has AttachedClusters => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxAttachedCluster]', traits => ['NameInRequest'], request_name => 'attachedClusters');
  has AvailabilityZoneIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'availabilityZoneIds');
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has Nas1Configuration => (is => 'ro', isa => 'Paws::Finspace::KxNAS1Configuration', traits => ['NameInRequest'], request_name => 'nas1Configuration');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has VolumeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeArn');
  has VolumeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeName');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxVolumeResponse

=head1 ATTRIBUTES


=head2 AttachedClusters => ArrayRef[L<Paws::Finspace::KxAttachedCluster>]

Specifies the clusters that a volume is attached to.


=head2 AvailabilityZoneIds => ArrayRef[Str|Undef]

The identifier of the availability zones.


=head2 AzMode => Str

The number of availability zones you want to assign per volume.
Currently, FinSpace only supports C<SINGLE> for volumes. This places
dataview in a single AZ.

Valid values are: C<"SINGLE">, C<"MULTI">
=head2 CreatedTimestamp => Str

The timestamp at which the volume was created in FinSpace. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 Description => Str

The description for the volume.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment where you want to update
the volume.


=head2 LastModifiedTimestamp => Str

The last time that the volume was updated in FinSpace. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 Nas1Configuration => L<Paws::Finspace::KxNAS1Configuration>

Specifies the configuration for the Network attached storage (NAS_1)
file system volume.


=head2 Status => Str

The status of the volume.

=over

=item *

CREATING E<ndash> The volume creation is in progress.

=item *

CREATE_FAILED E<ndash> The volume creation has failed.

=item *

ACTIVE E<ndash> The volume is active.

=item *

UPDATING E<ndash> The volume is in the process of being updated.

=item *

UPDATE_FAILED E<ndash> The update action failed.

=item *

UPDATED E<ndash> The volume is successfully updated.

=item *

DELETING E<ndash> The volume is in the process of being deleted.

=item *

DELETE_FAILED E<ndash> The system failed to delete the volume.

=item *

DELETED E<ndash> The volume is successfully deleted.

=back


Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"UPDATING">, C<"UPDATED">, C<"UPDATE_FAILED">, C<"DELETING">, C<"DELETED">, C<"DELETE_FAILED">
=head2 StatusReason => Str

The error message when a failed state occurs.


=head2 VolumeArn => Str

The ARN identifier of the volume.


=head2 VolumeName => Str

A unique identifier for the volume that you want to update.


=head2 VolumeType => Str

The type of file system volume. Currently, FinSpace only supports
C<NAS_1> volume type.

Valid values are: C<"NAS_1">
=head2 _request_id => Str


=cut

