
package Paws::EntityResolution::UpdateIdMappingWorkflow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingTechniques => (is => 'ro', isa => 'Paws::EntityResolution::IdMappingTechniques', traits => ['NameInRequest'], request_name => 'idMappingTechniques', required => 1);
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingWorkflowInputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingWorkflowOutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdMappingWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idmappingworkflows/{workflowName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::UpdateIdMappingWorkflowOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::UpdateIdMappingWorkflow - Arguments for method UpdateIdMappingWorkflow on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdMappingWorkflow on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method UpdateIdMappingWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdMappingWorkflow.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $UpdateIdMappingWorkflowOutput =
      $entityresolution->UpdateIdMappingWorkflow(
      IdMappingTechniques => {
        IdMappingType      => 'PROVIDER',    # values: PROVIDER, RULE_BASED
        ProviderProperties => {
          ProviderServiceArn => 'MyProviderServiceArn',    # min: 20, max: 255
          IntermediateSourceConfiguration => {
            IntermediateS3Path => 'MyS3Path',              # min: 1, max: 1024

          },    # OPTIONAL
          ProviderConfiguration => {

          },    # OPTIONAL
        },    # OPTIONAL
        RuleBasedProperties => {
          AttributeMatchingModel =>
            'ONE_TO_ONE',    # values: ONE_TO_ONE, MANY_TO_MANY
          RecordMatchingModel => 'ONE_SOURCE_TO_ONE_TARGET'
          ,    # values: ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
          RuleDefinitionType => 'SOURCE',    # values: SOURCE, TARGET
          Rules              => [
            {
              MatchingKeys => [
                'MyAttributeName', ...    # max: 255
              ],    # max: 15
              RuleName => 'MyRuleRuleNameString',    # max: 255

            },
            ...
          ],    # min: 1, max: 25; OPTIONAL
        },    # OPTIONAL
      },
      InputSourceConfig => [
        {
          InputSourceARN =>
            'MyIdMappingWorkflowInputSourceInputSourceARNString',
          SchemaName => 'MyEntityName',    # min: 1, max: 255; OPTIONAL
          Type       => 'SOURCE',          # values: SOURCE, TARGET; OPTIONAL
        },
        ...
      ],
      WorkflowName       => 'MyEntityName',
      Description        => 'MyDescription',    # OPTIONAL
      OutputSourceConfig => [
        {
          OutputS3Path => 'MyS3Path',    # min: 1, max: 1024
          KMSArn       => 'MyKMSArn',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RoleArn => 'MyIdMappingRoleArn',    # OPTIONAL
      );

    # Results:
    my $Description = $UpdateIdMappingWorkflowOutput->Description;
    my $IdMappingTechniques =
      $UpdateIdMappingWorkflowOutput->IdMappingTechniques;
    my $InputSourceConfig  = $UpdateIdMappingWorkflowOutput->InputSourceConfig;
    my $OutputSourceConfig = $UpdateIdMappingWorkflowOutput->OutputSourceConfig;
    my $RoleArn            = $UpdateIdMappingWorkflowOutput->RoleArn;
    my $WorkflowArn        = $UpdateIdMappingWorkflowOutput->WorkflowArn;
    my $WorkflowName       = $UpdateIdMappingWorkflowOutput->WorkflowName;

    # Returns a L<Paws::EntityResolution::UpdateIdMappingWorkflowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/UpdateIdMappingWorkflow>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the workflow.



=head2 B<REQUIRED> IdMappingTechniques => L<Paws::EntityResolution::IdMappingTechniques>

An object which defines the ID mapping technique and any additional
configurations.



=head2 B<REQUIRED> InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowInputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.



=head2 OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowOutputSource>]

A list of C<OutputSource> objects, each of which contains fields
C<OutputS3Path> and C<KMSArn>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access Amazon Web Services resources on your
behalf.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdMappingWorkflow in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

