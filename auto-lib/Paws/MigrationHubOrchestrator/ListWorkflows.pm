
package Paws::MigrationHubOrchestrator::ListWorkflows;
  use Moose;
  has AdsApplicationConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'adsApplicationConfigurationName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'templateId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListWorkflows - Arguments for method ListWorkflows on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflows on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method ListWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflows.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $ListMigrationWorkflowsResponse =
      $migrationhub -orchestrator->ListWorkflows(
      AdsApplicationConfigurationName =>
        'MyApplicationConfigurationName',    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      Name       => 'MyString',              # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      Status     => 'CREATING',              # OPTIONAL
      TemplateId => 'MyTemplateId',          # OPTIONAL
      );

    # Results:
    my $MigrationWorkflowSummary =
      $ListMigrationWorkflowsResponse->MigrationWorkflowSummary;
    my $NextToken = $ListMigrationWorkflowsResponse->NextToken;

# Returns a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/ListWorkflows>

=head1 ATTRIBUTES


=head2 AdsApplicationConfigurationName => Str

The name of the application configured in Application Discovery
Service.



=head2 MaxResults => Int

The maximum number of results that can be returned.



=head2 Name => Str

The name of the migration workflow.



=head2 NextToken => Str

The pagination token.



=head2 Status => Str

The status of the migration workflow.

Valid values are: C<"CREATING">, C<"NOT_STARTED">, C<"CREATION_FAILED">, C<"STARTING">, C<"IN_PROGRESS">, C<"WORKFLOW_FAILED">, C<"PAUSED">, C<"PAUSING">, C<"PAUSING_FAILED">, C<"USER_ATTENTION_REQUIRED">, C<"DELETING">, C<"DELETION_FAILED">, C<"DELETED">, C<"COMPLETED">

=head2 TemplateId => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflows in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

