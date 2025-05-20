
package Paws::MigrationHubOrchestrator::UpdateWorkflowStep;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::WorkflowStepOutput]', traits => ['NameInRequest'], request_name => 'outputs');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StepActionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepActionType');
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepGroupId', required => 1);
  has StepTarget => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stepTarget');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId', required => 1);
  has WorkflowStepAutomationConfiguration => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration', traits => ['NameInRequest'], request_name => 'workflowStepAutomationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkflowStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflowstep/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::UpdateWorkflowStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::UpdateWorkflowStep - Arguments for method UpdateWorkflowStep on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkflowStep on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method UpdateWorkflowStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkflowStep.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $UpdateWorkflowStepResponse =
      $migrationhub -orchestrator->UpdateWorkflowStep(
      Id          => 'MyStepId',
      StepGroupId => 'MyStepGroupId',
      WorkflowId  => 'MyMigrationWorkflowId',
      Description => 'MyStepDescription',       # OPTIONAL
      Name        => 'MyStepName',              # OPTIONAL
      Next        => [
        'MyStringListMember', ...               # max: 500
      ],    # OPTIONAL
      Outputs => [
        {
          DataType =>
            'STRING', # values: STRING, INTEGER, STRINGLIST, STRINGMAP; OPTIONAL
          Name     => 'MyWorkflowStepOutputName',   # min: 1, max: 100; OPTIONAL
          Required => 1,                            # OPTIONAL
          Value    => {
            IntegerValue      => 1,                 # OPTIONAL
            ListOfStringValue => [
              'MyMaxStringValue', ...               # max: 2048
            ],    # OPTIONAL
            StringValue => 'MyMaxStringValue',    # max: 2048
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Previous => [
        'MyStringListMember', ...    # max: 500
      ],    # OPTIONAL
      Status         => 'AWAITING_DEPENDENCIES',    # OPTIONAL
      StepActionType => 'MANUAL',                   # OPTIONAL
      StepTarget     => [
        'MyStringListMember', ...                   # max: 500
      ],    # OPTIONAL
      WorkflowStepAutomationConfiguration => {
        Command => {
          Linux   => 'MyString',    # OPTIONAL
          Windows => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        RunEnvironment         => 'AWS',    # values: AWS, ONPREMISE; OPTIONAL
        ScriptLocationS3Bucket => 'MyS3Bucket',    # max: 63; OPTIONAL
        ScriptLocationS3Key    => {
          Linux   => 'MyS3Key',                    # max: 1024; OPTIONAL
          Windows => 'MyS3Key',                    # max: 1024; OPTIONAL
        },    # OPTIONAL
        TargetType => 'SINGLE',    # values: SINGLE, ALL, NONE; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Id          = $UpdateWorkflowStepResponse->Id;
    my $Name        = $UpdateWorkflowStepResponse->Name;
    my $StepGroupId = $UpdateWorkflowStepResponse->StepGroupId;
    my $WorkflowId  = $UpdateWorkflowStepResponse->WorkflowId;

# Returns a L<Paws::MigrationHubOrchestrator::UpdateWorkflowStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/UpdateWorkflowStep>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the step.



=head2 B<REQUIRED> Id => Str

The ID of the step.



=head2 Name => Str

The name of the step.



=head2 Next => ArrayRef[Str|Undef]

The next step.



=head2 Outputs => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepOutput>]

The outputs of a step.



=head2 Previous => ArrayRef[Str|Undef]

The previous step.



=head2 Status => Str

The status of the step.

Valid values are: C<"AWAITING_DEPENDENCIES">, C<"SKIPPED">, C<"READY">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"PAUSED">, C<"USER_ATTENTION_REQUIRED">

=head2 StepActionType => Str

The action type of the step. You must run and update the status of a
manual step for the workflow to continue after the completion of the
step.

Valid values are: C<"MANUAL">, C<"AUTOMATED">

=head2 B<REQUIRED> StepGroupId => Str

The ID of the step group.



=head2 StepTarget => ArrayRef[Str|Undef]

The servers on which a step will be run.



=head2 B<REQUIRED> WorkflowId => Str

The ID of the migration workflow.



=head2 WorkflowStepAutomationConfiguration => L<Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration>

The custom script to run tests on the source and target environments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkflowStep in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

