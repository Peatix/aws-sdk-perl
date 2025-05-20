
package Paws::Drs::LaunchConfiguration;
  use Moose;
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has Ec2LaunchTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ec2LaunchTemplateID');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has LaunchIntoInstanceProperties => (is => 'ro', isa => 'Paws::Drs::LaunchIntoInstanceProperties', traits => ['NameInRequest'], request_name => 'launchIntoInstanceProperties');
  has Licensing => (is => 'ro', isa => 'Paws::Drs::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PostLaunchEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'postLaunchEnabled');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::LaunchConfiguration

=head1 ATTRIBUTES


=head2 CopyPrivateIp => Bool

Whether we should copy the Private IP of the Source Server to the
Recovery Instance.


=head2 CopyTags => Bool

Whether we want to copy the tags of the Source Server to the EC2
machine of the Recovery Instance.


=head2 Ec2LaunchTemplateID => Str

The EC2 launch template ID of this launch configuration.


=head2 LaunchDisposition => Str

The state of the Recovery Instance in EC2 after the recovery operation.

Valid values are: C<"STOPPED">, C<"STARTED">
=head2 LaunchIntoInstanceProperties => L<Paws::Drs::LaunchIntoInstanceProperties>

Launch into existing instance properties.


=head2 Licensing => L<Paws::Drs::Licensing>

The licensing configuration to be used for this launch configuration.


=head2 Name => Str

The name of the launch configuration.


=head2 PostLaunchEnabled => Bool

Whether we want to activate post-launch actions for the Source Server.


=head2 SourceServerID => Str

The ID of the Source Server for this launch configuration.


=head2 TargetInstanceTypeRightSizingMethod => Str

Whether Elastic Disaster Recovery should try to automatically choose
the instance type that best matches the OS, CPU, and RAM of your Source
Server.

Valid values are: C<"NONE">, C<"BASIC">, C<"IN_AWS">
=head2 _request_id => Str


=cut

