
package Paws::MigrationHubOrchestrator::GetTemplateStep;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'stepGroupId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplateStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templatestep/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::GetTemplateStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetTemplateStep - Arguments for method GetTemplateStep on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplateStep on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method GetTemplateStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplateStep.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $GetTemplateStepResponse = $migrationhub -orchestrator->GetTemplateStep(
      Id          => 'MyStepId',
      StepGroupId => 'MyStepGroupId',
      TemplateId  => 'MyTemplateId',

    );

    # Results:
    my $CreationTime   = $GetTemplateStepResponse->CreationTime;
    my $Description    = $GetTemplateStepResponse->Description;
    my $Id             = $GetTemplateStepResponse->Id;
    my $Name           = $GetTemplateStepResponse->Name;
    my $Next           = $GetTemplateStepResponse->Next;
    my $Outputs        = $GetTemplateStepResponse->Outputs;
    my $Previous       = $GetTemplateStepResponse->Previous;
    my $StepActionType = $GetTemplateStepResponse->StepActionType;
    my $StepAutomationConfiguration =
      $GetTemplateStepResponse->StepAutomationConfiguration;
    my $StepGroupId = $GetTemplateStepResponse->StepGroupId;
    my $TemplateId  = $GetTemplateStepResponse->TemplateId;

  # Returns a L<Paws::MigrationHubOrchestrator::GetTemplateStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/GetTemplateStep>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the step.



=head2 B<REQUIRED> StepGroupId => Str

The ID of the step group.



=head2 B<REQUIRED> TemplateId => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplateStep in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

