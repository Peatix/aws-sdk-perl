
package Paws::MigrationHubOrchestrator::GetTemplateStepGroup;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplateStepGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/{templateId}/stepgroups/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::GetTemplateStepGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetTemplateStepGroup - Arguments for method GetTemplateStepGroup on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplateStepGroup on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method GetTemplateStepGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplateStepGroup.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $GetTemplateStepGroupResponse =
      $migrationhub -orchestrator->GetTemplateStepGroup(
      Id         => 'MyStepGroupId',
      TemplateId => 'MyTemplateId',

      );

    # Results:
    my $CreationTime     = $GetTemplateStepGroupResponse->CreationTime;
    my $Description      = $GetTemplateStepGroupResponse->Description;
    my $Id               = $GetTemplateStepGroupResponse->Id;
    my $LastModifiedTime = $GetTemplateStepGroupResponse->LastModifiedTime;
    my $Name             = $GetTemplateStepGroupResponse->Name;
    my $Next             = $GetTemplateStepGroupResponse->Next;
    my $Previous         = $GetTemplateStepGroupResponse->Previous;
    my $Status           = $GetTemplateStepGroupResponse->Status;
    my $TemplateId       = $GetTemplateStepGroupResponse->TemplateId;
    my $Tools            = $GetTemplateStepGroupResponse->Tools;

# Returns a L<Paws::MigrationHubOrchestrator::GetTemplateStepGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/GetTemplateStepGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the step group.



=head2 B<REQUIRED> TemplateId => Str

The ID of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplateStepGroup in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

