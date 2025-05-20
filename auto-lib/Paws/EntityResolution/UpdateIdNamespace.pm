
package Paws::EntityResolution::UpdateIdNamespace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingWorkflowProperties => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties]', traits => ['NameInRequest'], request_name => 'idMappingWorkflowProperties');
  has IdNamespaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idNamespaceName', required => 1);
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceInputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idnamespaces/{idNamespaceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::UpdateIdNamespaceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::UpdateIdNamespace - Arguments for method UpdateIdNamespace on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdNamespace on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method UpdateIdNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdNamespace.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $UpdateIdNamespaceOutput = $entityresolution->UpdateIdNamespace(
      IdNamespaceName             => 'MyEntityName',
      Description                 => 'MyDescription',    # OPTIONAL
      IdMappingWorkflowProperties => [
        {
          IdMappingType      => 'PROVIDER',    # values: PROVIDER, RULE_BASED
          ProviderProperties => {
            ProviderServiceArn    => 'MyProviderServiceArn', # min: 20, max: 255
            ProviderConfiguration => {

            },                                               # OPTIONAL
          },    # OPTIONAL
          RuleBasedProperties => {
            AttributeMatchingModel =>
              'ONE_TO_ONE',    # values: ONE_TO_ONE, MANY_TO_MANY; OPTIONAL
            RecordMatchingModels => [
              'ONE_SOURCE_TO_ONE_TARGET',
              ...  # values: ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
            ],    # OPTIONAL
            RuleDefinitionTypes => [
              'SOURCE', ...    # values: SOURCE, TARGET
            ],    # OPTIONAL
            Rules => [
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
        ...
      ],    # OPTIONAL
      InputSourceConfig => [
        {
          InputSourceARN => 'MyIdNamespaceInputSourceInputSourceARNString',
          SchemaName     => 'MyEntityName',    # min: 1, max: 255
        },
        ...
      ],    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $UpdateIdNamespaceOutput->CreatedAt;
    my $Description = $UpdateIdNamespaceOutput->Description;
    my $IdMappingWorkflowProperties =
      $UpdateIdNamespaceOutput->IdMappingWorkflowProperties;
    my $IdNamespaceArn    = $UpdateIdNamespaceOutput->IdNamespaceArn;
    my $IdNamespaceName   = $UpdateIdNamespaceOutput->IdNamespaceName;
    my $InputSourceConfig = $UpdateIdNamespaceOutput->InputSourceConfig;
    my $RoleArn           = $UpdateIdNamespaceOutput->RoleArn;
    my $Type              = $UpdateIdNamespaceOutput->Type;
    my $UpdatedAt         = $UpdateIdNamespaceOutput->UpdatedAt;

    # Returns a L<Paws::EntityResolution::UpdateIdNamespaceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/UpdateIdNamespace>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the ID namespace.



=head2 IdMappingWorkflowProperties => ArrayRef[L<Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties>]

Determines the properties of C<IdMappingWorkflow> where this
C<IdNamespace> can be used as a C<Source> or a C<Target>.



=head2 B<REQUIRED> IdNamespaceName => Str

The name of the ID namespace.



=head2 InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdNamespaceInputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access the resources defined in this
C<IdNamespace> on your behalf as part of a workflow run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdNamespace in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

