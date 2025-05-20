
package Paws::ApplicationMigration::LaunchConfiguration;
  use Moose;
  has BootMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootMode');
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has Ec2LaunchTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ec2LaunchTemplateID');
  has EnableMapAutoTagging => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableMapAutoTagging');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has Licensing => (is => 'ro', isa => 'Paws::ApplicationMigration::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has MapAutoTaggingMpeID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapAutoTaggingMpeID');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PostLaunchActions => (is => 'ro', isa => 'Paws::ApplicationMigration::PostLaunchActions', traits => ['NameInRequest'], request_name => 'postLaunchActions');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::LaunchConfiguration

=head1 ATTRIBUTES


=head2 BootMode => Str

Launch configuration boot mode.

Valid values are: C<"LEGACY_BIOS">, C<"UEFI">, C<"USE_SOURCE">
=head2 CopyPrivateIp => Bool

Copy Private IP during Launch Configuration.


=head2 CopyTags => Bool

Copy Tags during Launch Configuration.


=head2 Ec2LaunchTemplateID => Str

Launch configuration EC2 Launch template ID.


=head2 EnableMapAutoTagging => Bool

Enable map auto tagging.


=head2 LaunchDisposition => Str

Launch disposition for launch configuration.

Valid values are: C<"STOPPED">, C<"STARTED">
=head2 Licensing => L<Paws::ApplicationMigration::Licensing>

Launch configuration OS licensing.


=head2 MapAutoTaggingMpeID => Str

Map auto tagging MPE ID.


=head2 Name => Str

Launch configuration name.


=head2 PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>




=head2 SourceServerID => Str

Launch configuration Source Server ID.


=head2 TargetInstanceTypeRightSizingMethod => Str

Launch configuration Target instance type right sizing method.

Valid values are: C<"NONE">, C<"BASIC">
=head2 _request_id => Str


=cut

