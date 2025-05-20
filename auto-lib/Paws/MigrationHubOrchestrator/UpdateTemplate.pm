
package Paws::MigrationHubOrchestrator::UpdateTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has TemplateDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateDescription');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/template/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::UpdateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::UpdateTemplate - Arguments for method UpdateTemplate on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplate on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method UpdateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplate.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $UpdateTemplateResponse = $migrationhub -orchestrator->UpdateTemplate(
      Id                  => 'MyTemplateId',
      ClientToken         => 'MyClientToken',                  # OPTIONAL
      TemplateDescription =>
        'MyUpdateTemplateRequestTemplateDescriptionString',    # OPTIONAL
      TemplateName => 'MyUpdateTemplateRequestTemplateNameString',    # OPTIONAL
    );

    # Results:
    my $Tags        = $UpdateTemplateResponse->Tags;
    my $TemplateArn = $UpdateTemplateResponse->TemplateArn;
    my $TemplateId  = $UpdateTemplateResponse->TemplateId;

   # Returns a L<Paws::MigrationHubOrchestrator::UpdateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/UpdateTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Id => Str

The ID of the request to update a migration workflow template.



=head2 TemplateDescription => Str

The description of the migration workflow template to update.



=head2 TemplateName => Str

The name of the migration workflow template to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplate in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

