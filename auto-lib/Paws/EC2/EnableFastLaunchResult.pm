
package Paws::EC2::EnableFastLaunchResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::FastLaunchLaunchTemplateSpecificationResponse', request_name => 'launchTemplate', traits => ['NameInRequest',]);
  has MaxParallelLaunches => (is => 'ro', isa => 'Int', request_name => 'maxParallelLaunches', traits => ['NameInRequest',]);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest',]);
  has SnapshotConfiguration => (is => 'ro', isa => 'Paws::EC2::FastLaunchSnapshotConfigurationResponse', request_name => 'snapshotConfiguration', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);
  has StateTransitionReason => (is => 'ro', isa => 'Str', request_name => 'stateTransitionReason', traits => ['NameInRequest',]);
  has StateTransitionTime => (is => 'ro', isa => 'Str', request_name => 'stateTransitionTime', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableFastLaunchResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The image ID that identifies the AMI for which Windows fast launch was
enabled.


=head2 LaunchTemplate => L<Paws::EC2::FastLaunchLaunchTemplateSpecificationResponse>

The launch template that is used when launching Windows instances from
pre-provisioned snapshots.


=head2 MaxParallelLaunches => Int

The maximum number of instances that Amazon EC2 can launch at the same
time to create pre-provisioned snapshots for Windows fast launch.


=head2 OwnerId => Str

The owner ID for the AMI for which Windows fast launch was enabled.


=head2 ResourceType => Str

The type of resource that was defined for pre-provisioning the AMI for
Windows fast launch.

Valid values are: C<"snapshot">
=head2 SnapshotConfiguration => L<Paws::EC2::FastLaunchSnapshotConfigurationResponse>

Settings to create and manage the pre-provisioned snapshots that Amazon
EC2 uses for faster launches from the Windows AMI. This property is
returned when the associated C<resourceType> is C<snapshot>.


=head2 State => Str

The current state of Windows fast launch for the specified AMI.

Valid values are: C<"enabling">, C<"enabling-failed">, C<"enabled">, C<"enabled-failed">, C<"disabling">, C<"disabling-failed">
=head2 StateTransitionReason => Str

The reason that the state changed for Windows fast launch for the AMI.


=head2 StateTransitionTime => Str

The time that the state changed for Windows fast launch for the AMI.


=head2 _request_id => Str


=cut

