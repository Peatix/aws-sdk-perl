
package Paws::EC2::VolumeAttachment;
  use Moose;
  has AssociatedResource => (is => 'ro', isa => 'Str', request_name => 'associatedResource', traits => ['NameInRequest',]);
  has AttachTime => (is => 'ro', isa => 'Str', request_name => 'attachTime', traits => ['NameInRequest',]);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest',]);
  has Device => (is => 'ro', isa => 'Str', request_name => 'device', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has InstanceOwningService => (is => 'ro', isa => 'Str', request_name => 'instanceOwningService', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeAttachment

=head1 ATTRIBUTES


=head2 AssociatedResource => Str

The ARN of the Amazon ECS or Fargate task to which the volume is
attached.


=head2 AttachTime => Str

The time stamp when the attachment initiated.


=head2 DeleteOnTermination => Bool

Indicates whether the EBS volume is deleted on instance termination.


=head2 Device => Str

The device name.

If the volume is attached to a Fargate task, this parameter returns
C<null>.


=head2 InstanceId => Str

The ID of the instance.

If the volume is attached to a Fargate task, this parameter returns
C<null>.


=head2 InstanceOwningService => Str

The service principal of Amazon Web Services service that owns the
underlying instance to which the volume is attached.

This parameter is returned only for volumes that are attached to
Fargate tasks.


=head2 State => Str

The attachment state of the volume.

Valid values are: C<"attaching">, C<"attached">, C<"detaching">, C<"detached">, C<"busy">
=head2 VolumeId => Str

The ID of the volume.


=head2 _request_id => Str


=cut

