
package Paws::MigrationHubOrchestrator::CreateTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateDescription');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName', required => 1);
  has TemplateSource => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::TemplateSource', traits => ['NameInRequest'], request_name => 'templateSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::CreateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateTemplate - Arguments for method CreateTemplate on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplate on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method CreateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplate.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $CreateTemplateResponse = $migrationhub -orchestrator->CreateTemplate(
      TemplateName   => 'MyCreateTemplateRequestTemplateNameString',
      TemplateSource => {
        WorkflowId => 'MyMigrationWorkflowId',    # min: 1, max: 100; OPTIONAL
      },
      ClientToken => 'MyClientToken',             # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TemplateDescription =>
        'MyCreateTemplateRequestTemplateDescriptionString',    # OPTIONAL
    );

    # Results:
    my $Tags        = $CreateTemplateResponse->Tags;
    my $TemplateArn = $CreateTemplateResponse->TemplateArn;
    my $TemplateId  = $CreateTemplateResponse->TemplateId;

   # Returns a L<Paws::MigrationHubOrchestrator::CreateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/CreateTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Idempotency
(https://smithy.io/2.0/spec/behavior-traits.html#idempotencytoken-trait)
in the Smithy documentation.



=head2 Tags => L<Paws::MigrationHubOrchestrator::TagMap>

The tags to add to the migration workflow template.



=head2 TemplateDescription => Str

A description of the migration workflow template.



=head2 B<REQUIRED> TemplateName => Str

The name of the migration workflow template.



=head2 B<REQUIRED> TemplateSource => L<Paws::MigrationHubOrchestrator::TemplateSource>

The source of the migration workflow template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplate in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

