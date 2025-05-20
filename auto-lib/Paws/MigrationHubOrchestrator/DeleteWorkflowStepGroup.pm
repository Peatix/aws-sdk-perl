
package Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroup;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkflowStepGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflowstepgroup/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroup - Arguments for method DeleteWorkflowStepGroup on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkflowStepGroup on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method DeleteWorkflowStepGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkflowStepGroup.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $DeleteWorkflowStepGroupResponse =
      $migrationhub -orchestrator->DeleteWorkflowStepGroup(
      Id         => 'MyStepGroupId',
      WorkflowId => 'MyMigrationWorkflowId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/DeleteWorkflowStepGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the step group you want to delete.



=head2 B<REQUIRED> WorkflowId => Str

The ID of the migration workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkflowStepGroup in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

