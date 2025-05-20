
package Paws::MigrationHubOrchestrator::GetWorkflow;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflow/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::GetMigrationWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetWorkflow - Arguments for method GetWorkflow on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflow on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method GetWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflow.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $GetMigrationWorkflowResponse = $migrationhub -orchestrator->GetWorkflow(
      Id => 'MyMigrationWorkflowId',

    );

    # Results:
    my $AdsApplicationConfigurationId =
      $GetMigrationWorkflowResponse->AdsApplicationConfigurationId;
    my $AdsApplicationName = $GetMigrationWorkflowResponse->AdsApplicationName;
    my $Arn                = $GetMigrationWorkflowResponse->Arn;
    my $CompletedSteps     = $GetMigrationWorkflowResponse->CompletedSteps;
    my $CreationTime       = $GetMigrationWorkflowResponse->CreationTime;
    my $Description        = $GetMigrationWorkflowResponse->Description;
    my $EndTime            = $GetMigrationWorkflowResponse->EndTime;
    my $Id                 = $GetMigrationWorkflowResponse->Id;
    my $LastModifiedTime   = $GetMigrationWorkflowResponse->LastModifiedTime;
    my $LastStartTime      = $GetMigrationWorkflowResponse->LastStartTime;
    my $LastStopTime       = $GetMigrationWorkflowResponse->LastStopTime;
    my $Name               = $GetMigrationWorkflowResponse->Name;
    my $Status             = $GetMigrationWorkflowResponse->Status;
    my $StatusMessage      = $GetMigrationWorkflowResponse->StatusMessage;
    my $Tags               = $GetMigrationWorkflowResponse->Tags;
    my $TemplateId         = $GetMigrationWorkflowResponse->TemplateId;
    my $Tools              = $GetMigrationWorkflowResponse->Tools;
    my $TotalSteps         = $GetMigrationWorkflowResponse->TotalSteps;
    my $WorkflowBucket     = $GetMigrationWorkflowResponse->WorkflowBucket;
    my $WorkflowInputs     = $GetMigrationWorkflowResponse->WorkflowInputs;

# Returns a L<Paws::MigrationHubOrchestrator::GetMigrationWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/GetWorkflow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the migration workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflow in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

