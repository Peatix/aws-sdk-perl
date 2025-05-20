
package Paws::MigrationHubOrchestrator::DeleteTemplate;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/template/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::DeleteTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::DeleteTemplate - Arguments for method DeleteTemplate on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTemplate on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method DeleteTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTemplate.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $DeleteTemplateResponse = $migrationhub -orchestrator->DeleteTemplate(
      Id => 'MyTemplateId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/DeleteTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the request to delete a migration workflow template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTemplate in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

