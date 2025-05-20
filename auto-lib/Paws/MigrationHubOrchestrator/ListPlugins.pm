
package Paws::MigrationHubOrchestrator::ListPlugins;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlugins');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/plugins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::ListPluginsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListPlugins - Arguments for method ListPlugins on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlugins on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method ListPlugins.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlugins.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $ListPluginsResponse = $migrationhub -orchestrator->ListPlugins(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPluginsResponse->NextToken;
    my $Plugins   = $ListPluginsResponse->Plugins;

    # Returns a L<Paws::MigrationHubOrchestrator::ListPluginsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/ListPlugins>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of plugins that can be returned.



=head2 NextToken => Str

The pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlugins in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

