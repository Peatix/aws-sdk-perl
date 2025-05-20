
package Paws::ApplicationMigration::LaunchConfigurationTemplate;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associatePublicIpAddress');
  has BootMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootMode');
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has Ec2LaunchTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ec2LaunchTemplateID');
  has EnableMapAutoTagging => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableMapAutoTagging');
  has LargeVolumeConf => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchTemplateDiskConf', traits => ['NameInRequest'], request_name => 'largeVolumeConf');
  has LaunchConfigurationTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplateID', required => 1);
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has Licensing => (is => 'ro', isa => 'Paws::ApplicationMigration::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has MapAutoTaggingMpeID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapAutoTaggingMpeID');
  has PostLaunchActions => (is => 'ro', isa => 'Paws::ApplicationMigration::PostLaunchActions', traits => ['NameInRequest'], request_name => 'postLaunchActions');
  has SmallVolumeConf => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchTemplateDiskConf', traits => ['NameInRequest'], request_name => 'smallVolumeConf');
  has SmallVolumeMaxSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'smallVolumeMaxSize');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::LaunchConfigurationTemplate

=head1 ATTRIBUTES


=head2 Arn => Str

ARN of the Launch Configuration Template.


=head2 AssociatePublicIpAddress => Bool

Associate public Ip address.


=head2 BootMode => Str

Launch configuration template boot mode.

Valid values are: C<"LEGACY_BIOS">, C<"UEFI">, C<"USE_SOURCE">
=head2 CopyPrivateIp => Bool

Copy private Ip.


=head2 CopyTags => Bool

Copy tags.


=head2 Ec2LaunchTemplateID => Str

EC2 launch template ID.


=head2 EnableMapAutoTagging => Bool

Enable map auto tagging.


=head2 LargeVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>

Large volume config.


=head2 B<REQUIRED> LaunchConfigurationTemplateID => Str

ID of the Launch Configuration Template.


=head2 LaunchDisposition => Str

Launch disposition.

Valid values are: C<"STOPPED">, C<"STARTED">
=head2 Licensing => L<Paws::ApplicationMigration::Licensing>




=head2 MapAutoTaggingMpeID => Str

Launch configuration template map auto tagging MPE ID.


=head2 PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>

Post Launch Actions of the Launch Configuration Template.


=head2 SmallVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>

Small volume config.


=head2 SmallVolumeMaxSize => Int

Small volume maximum size.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Tags of the Launch Configuration Template.


=head2 TargetInstanceTypeRightSizingMethod => Str

Target instance type right-sizing method.

Valid values are: C<"NONE">, C<"BASIC">
=head2 _request_id => Str


=cut

