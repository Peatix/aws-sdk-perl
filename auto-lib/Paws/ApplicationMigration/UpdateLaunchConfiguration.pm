
package Paws::ApplicationMigration::UpdateLaunchConfiguration;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has BootMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootMode');
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has EnableMapAutoTagging => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableMapAutoTagging');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has Licensing => (is => 'ro', isa => 'Paws::ApplicationMigration::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has MapAutoTaggingMpeID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapAutoTaggingMpeID');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PostLaunchActions => (is => 'ro', isa => 'Paws::ApplicationMigration::PostLaunchActions', traits => ['NameInRequest'], request_name => 'postLaunchActions');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLaunchConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLaunchConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::LaunchConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::UpdateLaunchConfiguration - Arguments for method UpdateLaunchConfiguration on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLaunchConfiguration on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method UpdateLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLaunchConfiguration.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $LaunchConfiguration = $mgn->UpdateLaunchConfiguration(
      SourceServerID       => 'MySourceServerID',
      AccountID            => 'MyAccountID',             # OPTIONAL
      BootMode             => 'LEGACY_BIOS',             # OPTIONAL
      CopyPrivateIp        => 1,                         # OPTIONAL
      CopyTags             => 1,                         # OPTIONAL
      EnableMapAutoTagging => 1,                         # OPTIONAL
      LaunchDisposition    => 'STOPPED',                 # OPTIONAL
      Licensing            => { OsByol => 1, },          # OPTIONAL
      MapAutoTaggingMpeID  => 'MyTagValue',              # OPTIONAL
      Name                 => 'MySmallBoundedString',    # OPTIONAL
      PostLaunchActions    => {
        CloudWatchLogGroupName =>
          'MyCloudWatchLogGroupName',    # min: 1, max: 512; OPTIONAL
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
      TargetInstanceTypeRightSizingMethod => 'NONE',    # OPTIONAL
    );

    # Results:
    my $BootMode             = $LaunchConfiguration->BootMode;
    my $CopyPrivateIp        = $LaunchConfiguration->CopyPrivateIp;
    my $CopyTags             = $LaunchConfiguration->CopyTags;
    my $Ec2LaunchTemplateID  = $LaunchConfiguration->Ec2LaunchTemplateID;
    my $EnableMapAutoTagging = $LaunchConfiguration->EnableMapAutoTagging;
    my $LaunchDisposition    = $LaunchConfiguration->LaunchDisposition;
    my $Licensing            = $LaunchConfiguration->Licensing;
    my $MapAutoTaggingMpeID  = $LaunchConfiguration->MapAutoTaggingMpeID;
    my $Name                 = $LaunchConfiguration->Name;
    my $PostLaunchActions    = $LaunchConfiguration->PostLaunchActions;
    my $SourceServerID       = $LaunchConfiguration->SourceServerID;
    my $TargetInstanceTypeRightSizingMethod =
      $LaunchConfiguration->TargetInstanceTypeRightSizingMethod;

    # Returns a L<Paws::ApplicationMigration::LaunchConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/UpdateLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AccountID => Str

Update Launch configuration Account ID.



=head2 BootMode => Str

Update Launch configuration boot mode request.

Valid values are: C<"LEGACY_BIOS">, C<"UEFI">, C<"USE_SOURCE">

=head2 CopyPrivateIp => Bool

Update Launch configuration copy Private IP request.



=head2 CopyTags => Bool

Update Launch configuration copy Tags request.



=head2 EnableMapAutoTagging => Bool

Enable map auto tagging.



=head2 LaunchDisposition => Str

Update Launch configuration launch disposition request.

Valid values are: C<"STOPPED">, C<"STARTED">

=head2 Licensing => L<Paws::ApplicationMigration::Licensing>

Update Launch configuration licensing request.



=head2 MapAutoTaggingMpeID => Str

Launch configuration map auto tagging MPE ID.



=head2 Name => Str

Update Launch configuration name request.



=head2 PostLaunchActions => L<Paws::ApplicationMigration::PostLaunchActions>





=head2 B<REQUIRED> SourceServerID => Str

Update Launch configuration by Source Server ID request.



=head2 TargetInstanceTypeRightSizingMethod => Str

Update Launch configuration Target instance right sizing request.

Valid values are: C<"NONE">, C<"BASIC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLaunchConfiguration in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

