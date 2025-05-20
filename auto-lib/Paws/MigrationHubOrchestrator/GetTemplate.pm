
package Paws::MigrationHubOrchestrator::GetTemplate;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrationworkflowtemplate/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::GetMigrationWorkflowTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetTemplate - Arguments for method GetTemplate on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplate on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method GetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplate.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $GetMigrationWorkflowTemplateResponse =
      $migrationhub -orchestrator->GetTemplate(
      Id => 'MyTemplateId',

      );

    # Results:
    my $CreationTime  = $GetMigrationWorkflowTemplateResponse->CreationTime;
    my $Description   = $GetMigrationWorkflowTemplateResponse->Description;
    my $Id            = $GetMigrationWorkflowTemplateResponse->Id;
    my $Inputs        = $GetMigrationWorkflowTemplateResponse->Inputs;
    my $Name          = $GetMigrationWorkflowTemplateResponse->Name;
    my $Owner         = $GetMigrationWorkflowTemplateResponse->Owner;
    my $Status        = $GetMigrationWorkflowTemplateResponse->Status;
    my $StatusMessage = $GetMigrationWorkflowTemplateResponse->StatusMessage;
    my $Tags          = $GetMigrationWorkflowTemplateResponse->Tags;
    my $TemplateArn   = $GetMigrationWorkflowTemplateResponse->TemplateArn;
    my $TemplateClass = $GetMigrationWorkflowTemplateResponse->TemplateClass;
    my $Tools         = $GetMigrationWorkflowTemplateResponse->Tools;

# Returns a L<Paws::MigrationHubOrchestrator::GetMigrationWorkflowTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/GetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplate in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

