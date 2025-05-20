
package Paws::ApplicationMigration::UpdateLaunchConfigurationTemplate;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'associatePublicIpAddress');
  has BootMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootMode');
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has EnableMapAutoTagging => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableMapAutoTagging');
  has LargeVolumeConf => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchTemplateDiskConf', traits => ['NameInRequest'], request_name => 'largeVolumeConf');
  has LaunchConfigurationTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplateID', required => 1);
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has Licensing => (is => 'ro', isa => 'Paws::ApplicationMigration::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has MapAutoTaggingMpeID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapAutoTaggingMpeID');
  has PostLaunchActions => (is => 'ro', isa => 'Paws::ApplicationMigration::PostLaunchActions', traits => ['NameInRequest'], request_name => 'postLaunchActions');
  has SmallVolumeConf => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchTemplateDiskConf', traits => ['NameInRequest'], request_name => 'smallVolumeConf');
  has SmallVolumeMaxSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'smallVolumeMaxSize');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLaunchConfigurationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLaunchConfigurationTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::LaunchConfigurationTemplate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::UpdateLaunchConfigurationTemplate - Arguments for method UpdateLaunchConfigurationTemplate on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLaunchConfigurationTemplate on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method UpdateLaunchConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLaunchConfigurationTemplate.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $LaunchConfigurationTemplate = $mgn->UpdateLaunchConfigurationTemplate(
      LaunchConfigurationTemplateID => 'MyLaunchConfigurationTemplateID',
      AssociatePublicIpAddress      => 1,                # OPTIONAL
      BootMode                      => 'LEGACY_BIOS',    # OPTIONAL
      CopyPrivateIp                 => 1,                # OPTIONAL
      CopyTags                      => 1,                # OPTIONAL
      EnableMapAutoTagging          => 1,                # OPTIONAL
      LargeVolumeConf               => {
        Iops       => 1,    # min: 100, max: 64000; OPTIONAL
        Throughput => 1,    # min: 125, max: 1000; OPTIONAL
        VolumeType =>
          'io1',    # values: io1, io2, gp3, gp2, st1, sc1, standard; OPTIONAL
      },    # OPTIONAL
      LaunchDisposition   => 'STOPPED',           # OPTIONAL
      Licensing           => { OsByol => 1, },    # OPTIONAL
      MapAutoTaggingMpeID => 'MyTagValue',        # OPTIONAL
      PostLaunchActions   => {
        CloudWatchLogGroupName =>
          'MyCloudWatchLogGroupName',             # min: 1, max: 512; OPTIONAL
        Deployment => 'TEST_AND_CUTOVER'
        ,    # values: TEST_AND_CUTOVER, CUTOVER_ONLY, TEST_ONLY; OPTIONAL
        S3LogBucket       => 'MyS3LogBucketName',    # min: 3, max: 63; OPTIONAL
        S3OutputKeyPrefix => 'MyBoundedString',      # max: 256; OPTIONAL
        SsmDocuments      => [
          {
            ActionName         => 'MyBoundedString',      # max: 256; OPTIONAL
            SsmDocumentName    => 'MySsmDocumentName',    # min: 3, max: 172
            ExternalParameters => {
              'MySsmDocumentParameterName' => {
                DynamicPath => 'MyJmesPathString', # min: 1, max: 1011; OPTIONAL
              },    # key: min: 1, max: 1011
            },    # max: 20; OPTIONAL
            MustSucceedForCutover => 1,
            Parameters            => {
              'MySsmDocumentParameterName' => [
                {
                  ParameterName =>
                    'MySsmParameterStoreParameterName',    # min: 1, max: 1011
                  ParameterType => 'STRING',               # values: STRING

                },
                ...
              ],    # key: min: 1, max: 1011, value: max: 10
            },    # max: 20; OPTIONAL
            TimeoutSeconds => 1,    # min: 1; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      SmallVolumeConf => {
        Iops       => 1,    # min: 100, max: 64000; OPTIONAL
        Throughput => 1,    # min: 125, max: 1000; OPTIONAL
        VolumeType =>
          'io1',    # values: io1, io2, gp3, gp2, st1, sc1, standard; OPTIONAL
      },    # OPTIONAL
      SmallVolumeMaxSize                  => 1,         # OPTIONAL
      TargetInstanceTypeRightSizingMethod => 'NONE',    # OPTIONAL
    );

    # Results:
    my $Arn = $LaunchConfigurationTemplate->Arn;
    my $AssociatePublicIpAddress =
      $LaunchConfigurationTemplate->AssociatePublicIpAddress;
    my $BootMode            = $LaunchConfigurationTemplate->BootMode;
    my $CopyPrivateIp       = $LaunchConfigurationTemplate->CopyPrivateIp;
    my $CopyTags            = $LaunchConfigurationTemplate->CopyTags;
    my $Ec2LaunchTemplateID = $LaunchConfigurationTemplate->Ec2LaunchTemplateID;
    my $EnableMapAutoTagging =
      $LaunchConfigurationTemplate->EnableMapAutoTagging;
    my $LargeVolumeConf = $LaunchConfigurationTemplate->LargeVolumeConf;
    my $LaunchConfigurationTemplateID =
      $LaunchConfigurationTemplate->LaunchConfigurationTemplateID;
    my $LaunchDisposition   = $LaunchConfigurationTemplate->LaunchDisposition;
    my $Licensing           = $LaunchConfigurationTemplate->Licensing;
    my $MapAutoTaggingMpeID = $LaunchConfigurationTemplate->MapAutoTaggingMpeID;
    my $PostLaunchActions   = $LaunchConfigurationTemplate->PostLaunchActions;
    my $SmallVolumeConf     = $LaunchConfigurationTemplate->SmallVolumeConf;
    my $SmallVolumeMaxSize  = $LaunchConfigurationTemplate->SmallVolumeMaxSize;
    my $Tags                = $LaunchConfigurationTemplate->Tags;
    my $TargetInstanceTypeRightSizingMethod =
      $LaunchConfigurationTemplate->TargetInstanceTypeRightSizingMethod;

  # Returns a L<Paws::ApplicationMigration::LaunchConfigurationTemplate> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/UpdateLaunchConfigurationTemplate>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

Associate public Ip address.



=head2 BootMode => Str

Launch configuration template boot mode.

Valid values are: C<"LEGACY_BIOS">, C<"UEFI">, C<"USE_SOURCE">

=head2 CopyPrivateIp => Bool

Copy private Ip.



=head2 CopyTags => Bool

Copy tags.



=head2 EnableMapAutoTagging => Bool

Enable map auto tagging.



=head2 LargeVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>

Large volume config.



=head2 B<REQUIRED> LaunchConfigurationTemplateID => Str

Launch Configuration Template ID.



=head2 LaunchDisposition => Str

Launch disposition.

Valid values are: C<"STOPPED">, C<"STARTED">

=head2 Licensing => L<Paws::ApplicationMigration::Licensing>





=head2 MapAutoTaggingMpeID => Str

Launch configuration template map auto tagging MPE ID.



=head2 PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>

Post Launch Action to execute on the Test or Cutover instance.



=head2 SmallVolumeConf => L<Paws::ApplicationMigration::LaunchTemplateDiskConf>

Small volume config.



=head2 SmallVolumeMaxSize => Int

Small volume maximum size.



=head2 TargetInstanceTypeRightSizingMethod => Str

Target instance type right-sizing method.

Valid values are: C<"NONE">, C<"BASIC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLaunchConfigurationTemplate in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

