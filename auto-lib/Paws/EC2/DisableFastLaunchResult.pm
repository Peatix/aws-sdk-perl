
package Paws::EC2::DisableFastLaunchResult;
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

Paws::EC2::DisableFastLaunchResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The ID of the image for which Windows fast launch was disabled.


=head2 LaunchTemplate => L<Paws::EC2::FastLaunchLaunchTemplateSpecificationResponse>

The launch template that was used to launch Windows instances from
pre-provisioned snapshots.


=head2 MaxParallelLaunches => Int

The maximum number of instances that Amazon EC2 can launch at the same
time to create pre-provisioned snapshots for Windows fast launch.


=head2 OwnerId => Str

The owner of the Windows AMI for which Windows fast launch was
disabled.


=head2 ResourceType => Str

The pre-provisioning resource type that must be cleaned after turning
off Windows fast launch for the Windows AMI. Supported values include:
C<snapshot>.

Valid values are: C<"snapshot">
=head2 SnapshotConfiguration => L<Paws::EC2::FastLaunchSnapshotConfigurationResponse>

Parameters that were used for Windows fast launch for the Windows AMI
before Windows fast launch was disabled. This informs the clean-up
process.


=head2 State => Str

The current state of Windows fast launch for the specified Windows AMI.

Valid values are: C<"enabling">, C<"enabling-failed">, C<"enabled">, C<"enabled-failed">, C<"disabling">, C<"disabling-failed">
=head2 StateTransitionReason => Str

The reason that the state changed for Windows fast launch for the
Windows AMI.


=head2 StateTransitionTime => Str

The time that the state changed for Windows fast launch for the Windows
AMI.


=head2 _request_id => Str


=cut

