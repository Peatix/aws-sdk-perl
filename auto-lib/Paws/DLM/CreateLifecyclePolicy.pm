
package Paws::DLM::CreateLifecyclePolicy;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has CreateInterval => (is => 'ro', isa => 'Int');
  has CrossRegionCopyTargets => (is => 'ro', isa => 'ArrayRef[Paws::DLM::CrossRegionCopyTarget]');
  has DefaultPolicy => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Exclusions => (is => 'ro', isa => 'Paws::DLM::Exclusions');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ExtendDeletion => (is => 'ro', isa => 'Bool');
  has PolicyDetails => (is => 'ro', isa => 'Paws::DLM::PolicyDetails');
  has RetainInterval => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DLM::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::CreateLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateLifecyclePolicy - Arguments for method CreateLifecyclePolicy on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLifecyclePolicy on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method CreateLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLifecyclePolicy.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $CreateLifecyclePolicyResponse = $dlm->CreateLifecyclePolicy(
      Description            => 'MyPolicyDescription',
      ExecutionRoleArn       => 'MyExecutionRoleArn',
      State                  => 'ENABLED',
      CopyTags               => 1,                       # OPTIONAL
      CreateInterval         => 1,                       # OPTIONAL
      CrossRegionCopyTargets => [
        {
          TargetRegion => 'MyTargetRegion',              # max: 16; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DefaultPolicy => 'VOLUME',    # OPTIONAL
      Exclusions    => {
        ExcludeBootVolumes => 1,    # OPTIONAL
        ExcludeTags        => [
          {
            Key   => 'MyString',    # max: 500
            Value => 'MyString',    # max: 500

          },
          ...
        ],    # max: 50; OPTIONAL
        ExcludeVolumeTypes => [ 'MyVolumeTypeValues', ... ],  # max: 6; OPTIONAL
      },    # OPTIONAL
      ExtendDeletion => 1,    # OPTIONAL
      PolicyDetails  => {
        Actions => [
          {
            CrossRegionCopy => [
              {
                EncryptionConfiguration => {
                  Encrypted => 1,
                  CmkArn    => 'MyCmkArn',    # max: 2048; OPTIONAL
                },
                Target     => 'MyTarget',     # max: 2048
                RetainRule => {
                  Interval     => 1,          # min: 1; OPTIONAL
                  IntervalUnit =>
                    'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # max: 3
            Name => 'MyActionName',    # max: 120

          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
        CopyTags               => 1,
        CreateInterval         => 1,    # min: 1
        CrossRegionCopyTargets => [
          {
            TargetRegion => 'MyTargetRegion',    # max: 16; OPTIONAL
          },
          ...
        ],    # max: 3
        EventSource => {
          Type       => 'MANAGED_CWE',    # values: MANAGED_CWE
          Parameters => {
            DescriptionRegex => 'MyDescriptionRegex',    # max: 1000
            EventType        => 'shareSnapshot',         # values: shareSnapshot
            SnapshotOwner    => [
              'MyAwsAccountId', ...                      # min: 12, max: 12
            ],    # max: 50

          },    # OPTIONAL
        },    # OPTIONAL
        Exclusions => {
          ExcludeBootVolumes => 1,    # OPTIONAL
          ExcludeTags        => [
            {
              Key   => 'MyString',    # max: 500
              Value => 'MyString',    # max: 500

            },
            ...
          ],    # max: 50; OPTIONAL
          ExcludeVolumeTypes => [ 'MyVolumeTypeValues', ... ]
          ,     # max: 6; OPTIONAL
        },
        ExtendDeletion => 1,
        Parameters     => {
          ExcludeBootVolume     => 1,    # OPTIONAL
          ExcludeDataVolumeTags => [
            {
              Key   => 'MyString',    # max: 500
              Value => 'MyString',    # max: 500

            },
            ...
          ],    # max: 50; OPTIONAL
          NoReboot => 1,    # OPTIONAL
        },    # OPTIONAL
        PolicyLanguage => 'SIMPLIFIED', # values: SIMPLIFIED, STANDARD; OPTIONAL
        PolicyType     => 'EBS_SNAPSHOT_MANAGEMENT'
        , # values: EBS_SNAPSHOT_MANAGEMENT, IMAGE_MANAGEMENT, EVENT_BASED_POLICY; OPTIONAL
        ResourceLocations => [
          'CLOUD', ...    # values: CLOUD, OUTPOST, LOCAL_ZONE
        ],    # min: 1, max: 1; OPTIONAL
        ResourceType  => 'VOLUME',    # values: VOLUME, INSTANCE; OPTIONAL
        ResourceTypes => [
          'VOLUME', ...               # values: VOLUME, INSTANCE; OPTIONAL
        ],    # min: 1, max: 1; OPTIONAL
        RetainInterval => 1,    # min: 1; OPTIONAL
        Schedules      => [
          {
            ArchiveRule => {
              RetainRule => {
                RetentionArchiveTier => {
                  Count        => 1,    # min: 1, max: 1000; OPTIONAL
                  Interval     => 1,    # min: 1; OPTIONAL
                  IntervalUnit =>
                    'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                },

              },

            },    # OPTIONAL
            CopyTags   => 1,    # OPTIONAL
            CreateRule => {
              CronExpression =>
                'MyCronExpression',    # min: 17, max: 106; OPTIONAL
              Interval     => 1,       # min: 1; OPTIONAL
              IntervalUnit => 'HOURS', # values: HOURS; OPTIONAL
              Location     =>
                'CLOUD',    # values: CLOUD, OUTPOST_LOCAL, LOCAL_ZONE; OPTIONAL
              Scripts => [
                {
                  ExecutionHandler => 'MyExecutionHandler',    # max: 200
                  ExecuteOperationOnScriptFailure => 1,        # OPTIONAL
                  ExecutionHandlerService         => 'AWS_SYSTEMS_MANAGER'
                  ,    # values: AWS_SYSTEMS_MANAGER; OPTIONAL
                  ExecutionTimeout  => 1,    # min: 10, max: 120; OPTIONAL
                  MaximumRetryCount => 1,    # max: 3; OPTIONAL
                  Stages            => [
                    'PRE', ...               # values: PRE, POST
                  ],    # min: 1, max: 2; OPTIONAL
                },
                ...
              ],    # max: 1; OPTIONAL
              Times => [
                'MyTime', ...    # min: 5, max: 5
              ],    # max: 1; OPTIONAL
            },    # OPTIONAL
            CrossRegionCopyRules => [
              {
                Encrypted     => 1,
                CmkArn        => 'MyCmkArn',    # max: 2048; OPTIONAL
                CopyTags      => 1,
                DeprecateRule => {
                  Interval     => 1,            # min: 1; OPTIONAL
                  IntervalUnit =>
                    'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                },    # OPTIONAL
                RetainRule => {
                  Interval     => 1,    # min: 1; OPTIONAL
                  IntervalUnit =>
                    'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                },    # OPTIONAL
                Target       => 'MyTarget',          # max: 2048
                TargetRegion => 'MyTargetRegion',    # max: 16; OPTIONAL
              },
              ...
            ],    # max: 3; OPTIONAL
            DeprecateRule => {
              Count        => 1,    # min: 1, max: 1000; OPTIONAL
              Interval     => 1,    # min: 1; OPTIONAL
              IntervalUnit =>
                'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
            },    # OPTIONAL
            FastRestoreRule => {
              AvailabilityZones => [
                'MyAvailabilityZone', ...    # max: 16
              ],    # min: 1, max: 10
              Count        => 1,    # min: 1, max: 1000; OPTIONAL
              Interval     => 1,    # min: 1; OPTIONAL
              IntervalUnit =>
                'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
            },    # OPTIONAL
            Name       => 'MyScheduleName',    # max: 120; OPTIONAL
            RetainRule => {
              Count        => 1,               # max: 1000; OPTIONAL
              Interval     => 1,               # OPTIONAL
              IntervalUnit =>
                'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
            },    # OPTIONAL
            ShareRules => [
              {
                TargetAccounts => [
                  'MyAwsAccountId', ...    # min: 12, max: 12
                ],    # min: 1
                UnshareInterval     => 1,    # min: 1; OPTIONAL
                UnshareIntervalUnit =>
                  'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
            TagsToAdd => [
              {
                Key   => 'MyString',    # max: 500
                Value => 'MyString',    # max: 500

              },
              ...
            ],    # max: 45; OPTIONAL
            VariableTags => [
              {
                Key   => 'MyString',    # max: 500
                Value => 'MyString',    # max: 500

              },
              ...
            ],    # max: 45; OPTIONAL
          },
          ...
        ],    # min: 1, max: 4; OPTIONAL
        TargetTags => [
          {
            Key   => 'MyString',    # max: 500
            Value => 'MyString',    # max: 500

          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
      },    # OPTIONAL
      RetainInterval => 1,    # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PolicyId = $CreateLifecyclePolicyResponse->PolicyId;

    # Returns a L<Paws::DLM::CreateLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/CreateLifecyclePolicy>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

B<[Default policies only]> Indicates whether the policy should copy
tags from the source resource to the snapshot or AMI. If you do not
specify a value, the default is C<false>.

Default: false



=head2 CreateInterval => Int

B<[Default policies only]> Specifies how often the policy should run
and create snapshots or AMIs. The creation frequency can range from 1
to 7 days. If you do not specify a value, the default is 1.

Default: 1



=head2 CrossRegionCopyTargets => ArrayRef[L<Paws::DLM::CrossRegionCopyTarget>]

B<[Default policies only]> Specifies destination Regions for snapshot
or AMI copies. You can specify up to 3 destination Regions. If you do
not want to create cross-Region copies, omit this parameter.



=head2 DefaultPolicy => Str

B<[Default policies only]> Specify the type of default policy to
create.

=over

=item *

To create a default policy for EBS snapshots, that creates snapshots of
all volumes in the Region that do not have recent backups, specify
C<VOLUME>.

=item *

To create a default policy for EBS-backed AMIs, that creates EBS-backed
AMIs from all instances in the Region that do not have recent backups,
specify C<INSTANCE>.

=back


Valid values are: C<"VOLUME">, C<"INSTANCE">

=head2 B<REQUIRED> Description => Str

A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$
are supported.



=head2 Exclusions => L<Paws::DLM::Exclusions>

B<[Default policies only]> Specifies exclusion parameters for volumes
or instances for which you do not want to create snapshots or AMIs. The
policy will not create snapshots or AMIs for target resources that
match any of the specified exclusion parameters.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used to run the
operations specified by the lifecycle policy.



=head2 ExtendDeletion => Bool

B<[Default policies only]> Defines the snapshot or AMI retention
behavior for the policy if the source volume or instance is deleted, or
if the policy enters the error, disabled, or deleted state.

By default (B<ExtendDeletion=false>):

=over

=item *

If a source resource is deleted, Amazon Data Lifecycle Manager will
continue to delete previously created snapshots or AMIs, up to but not
including the last one, based on the specified retention period. If you
want Amazon Data Lifecycle Manager to delete all snapshots or AMIs,
including the last one, specify C<true>.

=item *

If a policy enters the error, disabled, or deleted state, Amazon Data
Lifecycle Manager stops deleting snapshots and AMIs. If you want Amazon
Data Lifecycle Manager to continue deleting snapshots or AMIs,
including the last one, if the policy enters one of these states,
specify C<true>.

=back

If you enable extended deletion (B<ExtendDeletion=true>), you override
both default behaviors simultaneously.

If you do not specify a value, the default is C<false>.

Default: false



=head2 PolicyDetails => L<Paws::DLM::PolicyDetails>

The configuration details of the lifecycle policy.

If you create a default policy, you can specify the request parameters
either in the request body, or in the PolicyDetails request structure,
but not both.



=head2 RetainInterval => Int

B<[Default policies only]> Specifies how long the policy should retain
snapshots or AMIs before deleting them. The retention period can range
from 2 to 14 days, but it must be greater than the creation frequency
to ensure that the policy retains at least 1 snapshot or AMI at any
given time. If you do not specify a value, the default is 7.

Default: 7



=head2 B<REQUIRED> State => Str

The activation state of the lifecycle policy after creation.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::DLM::TagMap>

The tags to apply to the lifecycle policy during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLifecyclePolicy in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

