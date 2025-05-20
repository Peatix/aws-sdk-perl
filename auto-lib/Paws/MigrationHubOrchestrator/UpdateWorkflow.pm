
package Paws::MigrationHubOrchestrator::UpdateWorkflow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has InputParameters => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StepInputParameters', traits => ['NameInRequest'], request_name => 'inputParameters');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StepTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stepTargets');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflow/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::UpdateMigrationWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::UpdateWorkflow - Arguments for method UpdateWorkflow on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkflow on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method UpdateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkflow.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $UpdateMigrationWorkflowResponse =
      $migrationhub -orchestrator->UpdateWorkflow(
      Id          => 'MyMigrationWorkflowId',
      Description =>
        'MyUpdateMigrationWorkflowRequestDescriptionString',    # OPTIONAL
      InputParameters => {
        'MyStepInputParametersKey' => {
          IntegerValue       => 1,                              # OPTIONAL
          ListOfStringsValue => [
            'MyStringListMember', ...                           # max: 500
          ],    # OPTIONAL
          MapOfStringValue => {
            'MyStringMapKey' =>
              'MyStringMapValue',    # key: min: 1, max: 100, value: max: 100
          },    # OPTIONAL
          StringValue => 'MyStringValue',    # max: 100; OPTIONAL
        },    # key: min: 1, max: 100
      },    # OPTIONAL
      Name        => 'MyUpdateMigrationWorkflowRequestNameString',    # OPTIONAL
      StepTargets => [
        'MyStringListMember', ...                                     # max: 500
      ],    # OPTIONAL
      );

    # Results:
    my $AdsApplicationConfigurationId =
      $UpdateMigrationWorkflowResponse->AdsApplicationConfigurationId;
    my $Arn              = $UpdateMigrationWorkflowResponse->Arn;
    my $CreationTime     = $UpdateMigrationWorkflowResponse->CreationTime;
    my $Description      = $UpdateMigrationWorkflowResponse->Description;
    my $Id               = $UpdateMigrationWorkflowResponse->Id;
    my $LastModifiedTime = $UpdateMigrationWorkflowResponse->LastModifiedTime;
    my $Name             = $UpdateMigrationWorkflowResponse->Name;
    my $Status           = $UpdateMigrationWorkflowResponse->Status;
    my $StepTargets      = $UpdateMigrationWorkflowResponse->StepTargets;
    my $Tags             = $UpdateMigrationWorkflowResponse->Tags;
    my $TemplateId       = $UpdateMigrationWorkflowResponse->TemplateId;
    my $WorkflowInputs   = $UpdateMigrationWorkflowResponse->WorkflowInputs;

# Returns a L<Paws::MigrationHubOrchestrator::UpdateMigrationWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/UpdateWorkflow>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the migration workflow.



=head2 B<REQUIRED> Id => Str

The ID of the migration workflow.



=head2 InputParameters => L<Paws::MigrationHubOrchestrator::StepInputParameters>

The input parameters required to update a migration workflow.



=head2 Name => Str

The name of the migration workflow.



=head2 StepTargets => ArrayRef[Str|Undef]

The servers on which a step will be run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkflow in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

