
package Paws::MigrationHubOrchestrator::StartWorkflow;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflow/{id}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::StartMigrationWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::StartWorkflow - Arguments for method StartWorkflow on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartWorkflow on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method StartWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartWorkflow.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $StartMigrationWorkflowResponse =
      $migrationhub -orchestrator->StartWorkflow(
      Id => 'MyMigrationWorkflowId',

      );

    # Results:
    my $Arn           = $StartMigrationWorkflowResponse->Arn;
    my $Id            = $StartMigrationWorkflowResponse->Id;
    my $LastStartTime = $StartMigrationWorkflowResponse->LastStartTime;
    my $Status        = $StartMigrationWorkflowResponse->Status;
    my $StatusMessage = $StartMigrationWorkflowResponse->StatusMessage;

# Returns a L<Paws::MigrationHubOrchestrator::StartMigrationWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/StartWorkflow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the migration workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartWorkflow in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

