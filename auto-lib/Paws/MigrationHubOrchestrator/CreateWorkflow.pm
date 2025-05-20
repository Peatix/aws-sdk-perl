
package Paws::MigrationHubOrchestrator::CreateWorkflow;
  use Moose;
  has ApplicationConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationConfigurationId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InputParameters => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StepInputParameters', traits => ['NameInRequest'], request_name => 'inputParameters', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has StepTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stepTargets');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StringMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflow/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::CreateMigrationWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateWorkflow - Arguments for method CreateWorkflow on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflow on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method CreateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflow.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $CreateMigrationWorkflowResponse =
      $migrationhub -orchestrator->CreateWorkflow(
      InputParameters => {
        'MyStepInputParametersKey' => {
          IntegerValue       => 1,    # OPTIONAL
          ListOfStringsValue => [
            'MyStringListMember', ...    # max: 500
          ],    # OPTIONAL
          MapOfStringValue => {
            'MyStringMapKey' =>
              'MyStringMapValue',    # key: min: 1, max: 100, value: max: 100
          },    # OPTIONAL
          StringValue => 'MyStringValue',    # max: 100; OPTIONAL
        },    # key: min: 1, max: 100
      },
      Name       => 'MyCreateMigrationWorkflowRequestNameString',
      TemplateId => 'MyCreateMigrationWorkflowRequestTemplateIdString',
      ApplicationConfigurationId =>
        'MyCreateMigrationWorkflowRequestApplicationConfigurationIdString'
      ,                                                         # OPTIONAL
      Description =>
        'MyCreateMigrationWorkflowRequestDescriptionString',    # OPTIONAL
      StepTargets => [
        'MyStringListMember', ...                               # max: 500
      ],    # OPTIONAL
      Tags => {
        'MyStringMapKey' =>
          'MyStringMapValue',    # key: min: 1, max: 100, value: max: 100
      },    # OPTIONAL
      );

    # Results:
    my $AdsApplicationConfigurationId =
      $CreateMigrationWorkflowResponse->AdsApplicationConfigurationId;
    my $Arn            = $CreateMigrationWorkflowResponse->Arn;
    my $CreationTime   = $CreateMigrationWorkflowResponse->CreationTime;
    my $Description    = $CreateMigrationWorkflowResponse->Description;
    my $Id             = $CreateMigrationWorkflowResponse->Id;
    my $Name           = $CreateMigrationWorkflowResponse->Name;
    my $Status         = $CreateMigrationWorkflowResponse->Status;
    my $StepTargets    = $CreateMigrationWorkflowResponse->StepTargets;
    my $Tags           = $CreateMigrationWorkflowResponse->Tags;
    my $TemplateId     = $CreateMigrationWorkflowResponse->TemplateId;
    my $WorkflowInputs = $CreateMigrationWorkflowResponse->WorkflowInputs;

# Returns a L<Paws::MigrationHubOrchestrator::CreateMigrationWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/CreateWorkflow>

=head1 ATTRIBUTES


=head2 ApplicationConfigurationId => Str

The configuration ID of the application configured in Application
Discovery Service.



=head2 Description => Str

The description of the migration workflow.



=head2 B<REQUIRED> InputParameters => L<Paws::MigrationHubOrchestrator::StepInputParameters>

The input parameters required to create a migration workflow.



=head2 B<REQUIRED> Name => Str

The name of the migration workflow.



=head2 StepTargets => ArrayRef[Str|Undef]

The servers on which a step will be run.



=head2 Tags => L<Paws::MigrationHubOrchestrator::StringMap>

The tags to add on a migration workflow.



=head2 B<REQUIRED> TemplateId => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflow in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

