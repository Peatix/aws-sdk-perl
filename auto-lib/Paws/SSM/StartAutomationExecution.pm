
package Paws::SSM::StartAutomationExecution;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::SSM::AlarmConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has TargetLocationsURL => (is => 'ro', isa => 'Str');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has TargetParameterName => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAutomationExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartAutomationExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAutomationExecution - Arguments for method StartAutomationExecution on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAutomationExecution on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartAutomationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAutomationExecution.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartAutomationExecutionResult = $ssm->StartAutomationExecution(
      DocumentName       => 'MyDocumentARN',
      AlarmConfiguration => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 1
        IgnorePollAlarmFailure => 1,    # OPTIONAL
      },    # OPTIONAL
      ClientToken     => 'MyIdempotencyToken',    # OPTIONAL
      DocumentVersion => 'MyDocumentVersion',     # OPTIONAL
      MaxConcurrency  => 'MyMaxConcurrency',      # OPTIONAL
      MaxErrors       => 'MyMaxErrors',           # OPTIONAL
      Mode            => 'Auto',                  # OPTIONAL
      Parameters      => {
        'MyAutomationParameterKey' => [
          'MyAutomationParameterValue', ...       # min: 1, max: 512
        ],    # key: min: 1, max: 50, value: max: 50
      },    # OPTIONAL
      Tags => [
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
      TargetLocationsURL => 'MyTargetLocationsURL',    # OPTIONAL
      TargetMaps         => [
        {
          'MyTargetMapKey' => [
            'MyTargetMapValue', ...    # min: 1, max: 50
          ],    # key: min: 1, max: 50, value: max: 25
        },
        ...     # min: 1, max: 20
      ],    # OPTIONAL
      TargetParameterName => 'MyAutomationParameterKey',    # OPTIONAL
      Targets             => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AutomationExecutionId =
      $StartAutomationExecutionResult->AutomationExecutionId;

    # Returns a L<Paws::SSM::StartAutomationExecutionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartAutomationExecution>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>

The CloudWatch alarm you want to apply to your automation.



=head2 ClientToken => Str

User-provided idempotency token. The token must be unique, is case
insensitive, enforces the UUID format, and can't be reused.



=head2 B<REQUIRED> DocumentName => Str

The name of the SSM document to run. This can be a public document or a
custom document. To run a shared document belonging to another account,
specify the document ARN. For more information about how to use shared
documents, see Sharing SSM documents
(https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 DocumentVersion => Str

The version of the Automation runbook to use for this execution.



=head2 MaxConcurrency => Str

The maximum number of targets allowed to run this task in parallel. You
can specify a number, such as 10, or a percentage, such as 10%. The
default value is C<10>.

If both this parameter and the C<TargetLocation:TargetsMaxConcurrency>
are supplied, C<TargetLocation:TargetsMaxConcurrency> takes precedence.



=head2 MaxErrors => Str

The number of errors that are allowed before the system stops running
the automation on additional targets. You can specify either an
absolute number of errors, for example 10, or a percentage of the
target set, for example 10%. If you specify 3, for example, the system
stops running the automation when the fourth error is received. If you
specify 0, then the system stops running the automation on additional
targets after the first error result is returned. If you run an
automation on 50 resources and set max-errors to 10%, then the system
stops running the automation on additional targets when the sixth error
is received.

Executions that are already running an automation when max-errors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set max-concurrency to 1 so the executions proceed
one at a time.

If this parameter and the C<TargetLocation:TargetsMaxErrors> parameter
are both supplied, C<TargetLocation:TargetsMaxErrors> takes precedence.



=head2 Mode => Str

The execution mode of the automation. Valid modes include the
following: Auto and Interactive. The default mode is Auto.

Valid values are: C<"Auto">, C<"Interactive">

=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

A key-value map of execution parameters, which match the declared
parameters in the Automation runbook.



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Optional metadata that you assign to a resource. You can specify a
maximum of five tags for an automation. Tags enable you to categorize a
resource in different ways, such as by purpose, owner, or environment.
For example, you might want to tag an automation to identify an
environment or operating system. In this case, you could specify the
following key-value pairs:

=over

=item *

C<Key=environment,Value=test>

=item *

C<Key=OS,Value=Windows>

=back

The C<Array Members> maximum value is reported as 1000. This number
includes capacity reserved for internal operations. When calling the
C<StartAutomationExecution> action, you can specify a maximum of 5
tags. You can, however, use the AddTagsToResource action to add up to a
total of 50 tags to an existing automation configuration.



=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

A location is a combination of Amazon Web Services Regions and/or
Amazon Web Services accounts where you want to run the automation. Use
this operation to start an automation in multiple Amazon Web Services
Regions and multiple Amazon Web Services accounts. For more
information, see Running automations in multiple Amazon Web Services
Regions and accounts
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 TargetLocationsURL => Str

Specify a publicly accessible URL for a file that contains the
C<TargetLocations> body. Currently, only files in presigned Amazon S3
buckets are supported.



=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

A key-value mapping of document parameters to target resources. Both
Targets and TargetMaps can't be specified together.



=head2 TargetParameterName => Str

The name of the parameter used as the target resource for the
rate-controlled execution. Required if you specify targets.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

A key-value mapping to target resources. Required if you specify
TargetParameterName.

If both this parameter and the C<TargetLocation:Targets> parameter are
supplied, C<TargetLocation:Targets> takes precedence.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAutomationExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

