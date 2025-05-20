
package Paws::MigrationHubOrchestrator::ListTemplateStepGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplateStepGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templatestepgroups/{templateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListTemplateStepGroups - Arguments for method ListTemplateStepGroups on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplateStepGroups on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method ListTemplateStepGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplateStepGroups.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $ListTemplateStepGroupsResponse =
      $migrationhub -orchestrator->ListTemplateStepGroups(
      TemplateId => 'MyTemplateId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListTemplateStepGroupsResponse->NextToken;
    my $TemplateStepGroupSummary =
      $ListTemplateStepGroupsResponse->TemplateStepGroupSummary;

# Returns a L<Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/ListTemplateStepGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that can be returned.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> TemplateId => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplateStepGroups in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

