
package Paws::MigrationHubOrchestrator::ListTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflowtemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListTemplates - Arguments for method ListTemplates on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplates on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method ListTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplates.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $ListMigrationWorkflowTemplatesResponse =
      $migrationhub -orchestrator->ListTemplates(
      MaxResults => 1,                   # OPTIONAL
      Name       => 'MyTemplateName',    # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $NextToken = $ListMigrationWorkflowTemplatesResponse->NextToken;
    my $TemplateSummary =
      $ListMigrationWorkflowTemplatesResponse->TemplateSummary;

# Returns a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/ListTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that can be returned.



=head2 Name => Str

The name of the template.



=head2 NextToken => Str

The pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplates in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

