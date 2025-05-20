
package Paws::EntityResolution::UpdateMatchingWorkflow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IncrementalRunConfig => (is => 'ro', isa => 'Paws::EntityResolution::IncrementalRunConfig', traits => ['NameInRequest'], request_name => 'incrementalRunConfig');
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::InputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::OutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig', required => 1);
  has ResolutionTechniques => (is => 'ro', isa => 'Paws::EntityResolution::ResolutionTechniques', traits => ['NameInRequest'], request_name => 'resolutionTechniques', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMatchingWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows/{workflowName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::UpdateMatchingWorkflowOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::UpdateMatchingWorkflow - Arguments for method UpdateMatchingWorkflow on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMatchingWorkflow on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method UpdateMatchingWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMatchingWorkflow.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $UpdateMatchingWorkflowOutput =
      $entityresolution->UpdateMatchingWorkflow(
      InputSourceConfig => [
        {
          InputSourceARN     => 'MyInputSourceInputSourceARNString',
          SchemaName         => 'MyEntityName',    # min: 1, max: 255
          ApplyNormalization => 1,                 # OPTIONAL
        },
        ...
      ],
      OutputSourceConfig => [
        {
          Output => [
            {
              Name   => 'MyAttributeName',    # max: 255
              Hashed => 1,                    # OPTIONAL
            },
            ...
          ],    # max: 750
          OutputS3Path       => 'MyS3Path',    # min: 1, max: 1024
          ApplyNormalization => 1,             # OPTIONAL
          KMSArn             => 'MyKMSArn',    # OPTIONAL
        },
        ...
      ],
      ResolutionTechniques => {
        ResolutionType =>
          'RULE_MATCHING',    # values: RULE_MATCHING, ML_MATCHING, PROVIDER
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
          Rules => [
            {
              MatchingKeys => [
                'MyAttributeName', ...    # max: 255
              ],    # max: 15
              RuleName => 'MyRuleRuleNameString',    # max: 255

            },
            ...
          ],    # min: 1, max: 25
          MatchPurpose => 'IDENTIFIER_GENERATION'
          ,     # values: IDENTIFIER_GENERATION, INDEXING; OPTIONAL
        },    # OPTIONAL
      },
      RoleArn              => 'MyString',
      WorkflowName         => 'MyEntityName',
      Description          => 'MyDescription',    # OPTIONAL
      IncrementalRunConfig => {
        IncrementalRunType => 'IMMEDIATE',        # values: IMMEDIATE; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Description = $UpdateMatchingWorkflowOutput->Description;
    my $IncrementalRunConfig =
      $UpdateMatchingWorkflowOutput->IncrementalRunConfig;
    my $InputSourceConfig  = $UpdateMatchingWorkflowOutput->InputSourceConfig;
    my $OutputSourceConfig = $UpdateMatchingWorkflowOutput->OutputSourceConfig;
    my $ResolutionTechniques =
      $UpdateMatchingWorkflowOutput->ResolutionTechniques;
    my $RoleArn      = $UpdateMatchingWorkflowOutput->RoleArn;
    my $WorkflowName = $UpdateMatchingWorkflowOutput->WorkflowName;

    # Returns a L<Paws::EntityResolution::UpdateMatchingWorkflowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/UpdateMatchingWorkflow>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the workflow.



=head2 IncrementalRunConfig => L<Paws::EntityResolution::IncrementalRunConfig>

An object which defines an incremental run type and has only
C<incrementalRunType> as a field.



=head2 B<REQUIRED> InputSourceConfig => ArrayRef[L<Paws::EntityResolution::InputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.



=head2 B<REQUIRED> OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::OutputSource>]

A list of C<OutputSource> objects, each of which contains fields
C<OutputS3Path>, C<ApplyNormalization>, and C<Output>.



=head2 B<REQUIRED> ResolutionTechniques => L<Paws::EntityResolution::ResolutionTechniques>

An object which defines the C<resolutionType> and the
C<ruleBasedProperties>.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to create resources on your behalf as part of
workflow execution.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMatchingWorkflow in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

