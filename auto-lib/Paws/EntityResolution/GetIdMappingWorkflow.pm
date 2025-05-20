
package Paws::EntityResolution::GetIdMappingWorkflow;
  use Moose;
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdMappingWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idmappingworkflows/{workflowName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::GetIdMappingWorkflowOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetIdMappingWorkflow - Arguments for method GetIdMappingWorkflow on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdMappingWorkflow on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method GetIdMappingWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdMappingWorkflow.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $GetIdMappingWorkflowOutput = $entityresolution->GetIdMappingWorkflow(
      WorkflowName => 'MyEntityName',

    );

    # Results:
    my $CreatedAt           = $GetIdMappingWorkflowOutput->CreatedAt;
    my $Description         = $GetIdMappingWorkflowOutput->Description;
    my $IdMappingTechniques = $GetIdMappingWorkflowOutput->IdMappingTechniques;
    my $InputSourceConfig   = $GetIdMappingWorkflowOutput->InputSourceConfig;
    my $OutputSourceConfig  = $GetIdMappingWorkflowOutput->OutputSourceConfig;
    my $RoleArn             = $GetIdMappingWorkflowOutput->RoleArn;
    my $Tags                = $GetIdMappingWorkflowOutput->Tags;
    my $UpdatedAt           = $GetIdMappingWorkflowOutput->UpdatedAt;
    my $WorkflowArn         = $GetIdMappingWorkflowOutput->WorkflowArn;
    my $WorkflowName        = $GetIdMappingWorkflowOutput->WorkflowName;

    # Returns a L<Paws::EntityResolution::GetIdMappingWorkflowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/GetIdMappingWorkflow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdMappingWorkflow in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

