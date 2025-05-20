
package Paws::EntityResolution::CreateIdNamespace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingWorkflowProperties => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties]', traits => ['NameInRequest'], request_name => 'idMappingWorkflowProperties');
  has IdNamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idNamespaceName', required => 1);
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceInputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idnamespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::CreateIdNamespaceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::CreateIdNamespace - Arguments for method CreateIdNamespace on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdNamespace on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method CreateIdNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdNamespace.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $CreateIdNamespaceOutput = $entityresolution->CreateIdNamespace(
      IdNamespaceName             => 'MyEntityName',
      Type                        => 'SOURCE',
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
      Tags    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $CreateIdNamespaceOutput->CreatedAt;
    my $Description = $CreateIdNamespaceOutput->Description;
    my $IdMappingWorkflowProperties =
      $CreateIdNamespaceOutput->IdMappingWorkflowProperties;
    my $IdNamespaceArn    = $CreateIdNamespaceOutput->IdNamespaceArn;
    my $IdNamespaceName   = $CreateIdNamespaceOutput->IdNamespaceName;
    my $InputSourceConfig = $CreateIdNamespaceOutput->InputSourceConfig;
    my $RoleArn           = $CreateIdNamespaceOutput->RoleArn;
    my $Tags              = $CreateIdNamespaceOutput->Tags;
    my $Type              = $CreateIdNamespaceOutput->Type;
    my $UpdatedAt         = $CreateIdNamespaceOutput->UpdatedAt;

    # Returns a L<Paws::EntityResolution::CreateIdNamespaceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/CreateIdNamespace>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the ID namespace.



=head2 IdMappingWorkflowProperties => ArrayRef[L<Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties>]

Determines the properties of C<IdMappingWorflow> where this
C<IdNamespace> can be used as a C<Source> or a C<Target>.



=head2 B<REQUIRED> IdNamespaceName => Str

The name of the ID namespace.



=head2 InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdNamespaceInputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access the resources defined in this
C<IdNamespace> on your behalf as part of the workflow run.



=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> Type => Str

The type of ID namespace. There are two types: C<SOURCE> and C<TARGET>.

The C<SOURCE> contains configurations for C<sourceId> data that will be
processed in an ID mapping workflow.

The C<TARGET> contains a configuration of C<targetId> to which all
C<sourceIds> will resolve to.

Valid values are: C<"SOURCE">, C<"TARGET">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdNamespace in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

