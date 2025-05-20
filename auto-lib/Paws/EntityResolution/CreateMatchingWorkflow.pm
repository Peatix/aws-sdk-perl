
package Paws::EntityResolution::CreateMatchingWorkflow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IncrementalRunConfig => (is => 'ro', isa => 'Paws::EntityResolution::IncrementalRunConfig', traits => ['NameInRequest'], request_name => 'incrementalRunConfig');
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::InputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::OutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig', required => 1);
  has ResolutionTechniques => (is => 'ro', isa => 'Paws::EntityResolution::ResolutionTechniques', traits => ['NameInRequest'], request_name => 'resolutionTechniques', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMatchingWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::CreateMatchingWorkflowOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::CreateMatchingWorkflow - Arguments for method CreateMatchingWorkflow on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMatchingWorkflow on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method CreateMatchingWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMatchingWorkflow.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $CreateMatchingWorkflowOutput =
      $entityresolution->CreateMatchingWorkflow(
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
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Description = $CreateMatchingWorkflowOutput->Description;
    my $IncrementalRunConfig =
      $CreateMatchingWorkflowOutput->IncrementalRunConfig;
    my $InputSourceConfig  = $CreateMatchingWorkflowOutput->InputSourceConfig;
    my $OutputSourceConfig = $CreateMatchingWorkflowOutput->OutputSourceConfig;
    my $ResolutionTechniques =
      $CreateMatchingWorkflowOutput->ResolutionTechniques;
    my $RoleArn      = $CreateMatchingWorkflowOutput->RoleArn;
    my $WorkflowArn  = $CreateMatchingWorkflowOutput->WorkflowArn;
    my $WorkflowName = $CreateMatchingWorkflowOutput->WorkflowName;

    # Returns a L<Paws::EntityResolution::CreateMatchingWorkflowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/CreateMatchingWorkflow>

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



=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow. There can't be multiple C<MatchingWorkflows>
with the same name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMatchingWorkflow in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

