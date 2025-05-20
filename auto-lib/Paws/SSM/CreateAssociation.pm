
package Paws::SSM::CreateAssociation;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::SSM::AlarmConfiguration');
  has ApplyOnlyAtCronInterval => (is => 'ro', isa => 'Bool');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AutomationTargetParameterName => (is => 'ro', isa => 'Str');
  has CalendarNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has ScheduleOffset => (is => 'ro', isa => 'Int');
  has SyncCompliance => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociation - Arguments for method CreateAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateAssociationResult = $ssm->CreateAssociation(
      Name               => 'MyDocumentARN',
      AlarmConfiguration => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 1
        IgnorePollAlarmFailure => 1,    # OPTIONAL
      },    # OPTIONAL
      ApplyOnlyAtCronInterval       => 1,                      # OPTIONAL
      AssociationName               => 'MyAssociationName',    # OPTIONAL
      AutomationTargetParameterName =>
        'MyAutomationTargetParameterName',                     # OPTIONAL
      CalendarNames      => [ 'MyCalendarNameOrARN', ... ],    # OPTIONAL
      ComplianceSeverity => 'CRITICAL',                        # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion',               # OPTIONAL
      Duration           => 1,                                 # OPTIONAL
      InstanceId         => 'MyInstanceId',                    # OPTIONAL
      MaxConcurrency     => 'MyMaxConcurrency',                # OPTIONAL
      MaxErrors          => 'MyMaxErrors',                     # OPTIONAL
      OutputLocation     => {
        S3Location => {
          OutputS3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
          OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # max: 500; OPTIONAL
          OutputS3Region     => 'MyS3Region',        # min: 3, max: 20; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
      ,                                                # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      ScheduleOffset     => 1,                         # OPTIONAL
      SyncCompliance     => 'AUTO',                    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TargetLocations => [
        {
          Accounts        => [ 'MyAccount', ... ],   # min: 1, max: 50; OPTIONAL
          ExcludeAccounts => [
            'MyExcludeAccount', ...                  # min: 6, max: 68
          ],    # min: 1, max: 5000; OPTIONAL
          ExecutionRoleName =>
            'MyExecutionRoleName',    # min: 1, max: 64; OPTIONAL
          IncludeChildOrganizationUnits => 1,    # OPTIONAL
          Regions => [ 'MyRegion', ... ],        # min: 1, max: 50; OPTIONAL
          TargetLocationAlarmConfiguration => {
            Alarms => [
              {
                Name => 'MyAlarmName',    # min: 1, max: 255

              },
              ...
            ],    # min: 1, max: 1
            IgnorePollAlarmFailure => 1,    # OPTIONAL
          },
          TargetLocationMaxConcurrency => 'MyMaxConcurrency',   # min: 1, max: 7
          TargetLocationMaxErrors      => 'MyMaxErrors',        # min: 1, max: 7
          Targets                      => [
            {
              Key    => 'MyTargetKey',              # min: 1, max: 163; OPTIONAL
              Values => [ 'MyTargetValue', ... ],   # max: 50; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
          TargetsMaxConcurrency => 'MyMaxConcurrency',    # min: 1, max: 7
          TargetsMaxErrors      => 'MyMaxErrors',         # min: 1, max: 7
        },
        ...
      ],    # OPTIONAL
      TargetMaps => [
        {
          'MyTargetMapKey' => [
            'MyTargetMapValue', ...    # min: 1, max: 50
          ],    # key: min: 1, max: 50, value: max: 25
        },
        ...     # min: 1, max: 20
      ],    # OPTIONAL
      Targets => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AssociationDescription =
      $CreateAssociationResult->AssociationDescription;

    # Returns a L<Paws::SSM::CreateAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateAssociation>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>





=head2 ApplyOnlyAtCronInterval => Bool

By default, when you create a new association, the system runs it
immediately after it is created and then according to the schedule you
specified and when target changes are detected. Specify C<true> for
C<ApplyOnlyAtCronInterval>if you want the association to run only
according to the schedule you specified.

For more information, see Understanding when associations are applied
to resources
(https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#state-manager-about-scheduling)
and E<gt>About target updates with Automation runbooks
(https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#runbook-target-updates)
in the I<Amazon Web Services Systems Manager User Guide>.

This parameter isn't supported for rate expressions.



=head2 AssociationName => Str

Specify a descriptive name for the association.



=head2 AutomationTargetParameterName => Str

Choose the parameter that will define how your automation will branch
out. This target is required for associations that use an Automation
runbook and target resources by using rate controls. Automation is a
tool in Amazon Web Services Systems Manager.



=head2 CalendarNames => ArrayRef[Str|Undef]

The names of Amazon Resource Names (ARNs) of the Change Calendar type
documents you want to gate your associations under. The associations
only run when that change calendar is open. For more information, see
Amazon Web Services Systems Manager Change Calendar
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 ComplianceSeverity => Str

The severity level to assign to the association.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"UNSPECIFIED">

=head2 DocumentVersion => Str

The document version you want to associate with the targets. Can be a
specific version or the default version.

State Manager doesn't support running associations that use a new
version of a document if that document is shared from another account.
State Manager always runs the C<default> version of a document if
shared from another account, even though the Systems Manager console
shows that a new version was processed. If you want to run an
association using a new version of a document shared form another
account, you must set the document version to C<default>.



=head2 Duration => Int

The number of hours the association can run before it is canceled.
Duration applies to associations that are currently running, and any
pending and in progress commands on all targets. If a target was taken
offline for the association to run, it is made available again
immediately, without a reboot.

The C<Duration> parameter applies only when both these conditions are
true:

=over

=item *

The association for which you specify a duration is cancelable
according to the parameters of the SSM command document or Automation
runbook associated with this execution.

=item *

The command specifies the C< ApplyOnlyAtCronInterval
(https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateAssociation.html#systemsmanager-CreateAssociation-request-ApplyOnlyAtCronInterval)
> parameter, which means that the association doesn't run immediately
after it is created, but only according to the specified schedule.

=back




=head2 InstanceId => Str

The managed node ID.

C<InstanceId> has been deprecated. To specify a managed node ID for an
association, use the C<Targets> parameter. Requests that include the
parameter C<InstanceID> with Systems Manager documents (SSM documents)
that use schema version 2.0 or later will fail. In addition, if you use
the parameter C<InstanceId>, you can't use the parameters
C<AssociationName>, C<DocumentVersion>, C<MaxErrors>,
C<MaxConcurrency>, C<OutputLocation>, or C<ScheduleExpression>. To use
these parameters, you must use the C<Targets> parameter.



=head2 MaxConcurrency => Str

The maximum number of targets allowed to run the association at the
same time. You can specify a number, for example 10, or a percentage of
the target set, for example 10%. The default value is 100%, which means
all targets run the association at the same time.

If a new managed node starts and attempts to run an association while
Systems Manager is running C<MaxConcurrency> associations, the
association is allowed to run. During the next association interval,
the new managed node will process its association within the limit
specified for C<MaxConcurrency>.



=head2 MaxErrors => Str

The number of errors that are allowed before the system stops sending
requests to run the association on additional targets. You can specify
either an absolute number of errors, for example 10, or a percentage of
the target set, for example 10%. If you specify 3, for example, the
system stops sending requests when the fourth error is received. If you
specify 0, then the system stops sending requests after the first error
is returned. If you run an association on 50 managed nodes and set
C<MaxError> to 10%, then the system stops sending the request when the
sixth error is received.

Executions that are already running an association when C<MaxErrors> is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set C<MaxConcurrency> to 1 so that executions
proceed one at a time.



=head2 B<REQUIRED> Name => Str

The name of the SSM Command document or Automation runbook that
contains the configuration information for the managed node.

You can specify Amazon Web Services-predefined documents, documents you
created, or a document that is shared with you from another Amazon Web
Services account.

For Systems Manager documents (SSM documents) that are shared with you
from other Amazon Web Services accounts, you must specify the complete
SSM document ARN, in the following format:

C<arn:I<partition>:ssm:I<region>:I<account-id>:document/I<document-name>>

For example:

C<arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document>

For Amazon Web Services-predefined documents and SSM documents you
created in your account, you only need to specify the document name.
For example, C<AWS-ApplyPatchBaseline> or C<My-Document>.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An Amazon Simple Storage Service (Amazon S3) bucket where you want to
store the output details of the request.



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters for the runtime configuration of the document.



=head2 ScheduleExpression => Str

A cron expression when the association will be applied to the targets.



=head2 ScheduleOffset => Int

Number of days to wait after the scheduled day to run an association.
For example, if you specified a cron schedule of C<cron(0 0 ? * THU#2
*)>, you could specify an offset of 3 to run the association each
Sunday after the second Thursday of the month. For more information
about cron schedules for associations, see Reference: Cron and rate
expressions for Systems Manager
(https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html)
in the I<Amazon Web Services Systems Manager User Guide>.

To use offsets, you must specify the C<ApplyOnlyAtCronInterval>
parameter. This option tells the system not to run an association
immediately after you create it.



=head2 SyncCompliance => Str

The mode for generating association compliance. You can specify C<AUTO>
or C<MANUAL>. In C<AUTO> mode, the system uses the status of the
association execution to determine the compliance status. If the
association execution runs successfully, then the association is
C<COMPLIANT>. If the association execution doesn't run successfully,
the association is C<NON-COMPLIANT>.

In C<MANUAL> mode, you must specify the C<AssociationId> as a parameter
for the PutComplianceItems API operation. In this case, compliance data
isn't managed by State Manager. It is managed by your direct call to
the PutComplianceItems API operation.

By default, all associations use C<AUTO> mode.

Valid values are: C<"AUTO">, C<"MANUAL">

=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Adds or overwrites one or more tags for a State Manager association.
I<Tags> are metadata that you can assign to your Amazon Web Services
resources. Tags enable you to categorize your resources in different
ways, for example, by purpose, owner, or environment. Each tag consists
of a key and an optional value, both of which you define.



=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

A location is a combination of Amazon Web Services Regions and Amazon
Web Services accounts where you want to run the association. Use this
action to create an association in multiple Regions and multiple
accounts.



=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

A key-value mapping of document parameters to target resources. Both
Targets and TargetMaps can't be specified together.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets for the association. You can target managed nodes by using
tags, Amazon Web Services resource groups, all managed nodes in an
Amazon Web Services account, or individual managed node IDs. You can
target all managed nodes in an Amazon Web Services account by
specifying the C<InstanceIds> key with a value of C<*>. For more
information about choosing targets for an association, see
Understanding targets and rate controls in State Manager associations
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html)
in the I<Amazon Web Services Systems Manager User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

