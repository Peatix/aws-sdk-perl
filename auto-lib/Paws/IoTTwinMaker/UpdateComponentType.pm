
package Paws::IoTTwinMaker::UpdateComponentType;
  use Moose;
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'componentTypeId', required => 1);
  has ComponentTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeName');
  has CompositeComponentTypes => (is => 'ro', isa => 'Paws::IoTTwinMaker::CompositeComponentTypesRequest', traits => ['NameInRequest'], request_name => 'compositeComponentTypes');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExtendsFrom => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'extendsFrom');
  has Functions => (is => 'ro', isa => 'Paws::IoTTwinMaker::FunctionsRequest', traits => ['NameInRequest'], request_name => 'functions');
  has IsSingleton => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isSingleton');
  has PropertyDefinitions => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyDefinitionsRequest', traits => ['NameInRequest'], request_name => 'propertyDefinitions');
  has PropertyGroups => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyGroupsRequest', traits => ['NameInRequest'], request_name => 'propertyGroups');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponentType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/component-types/{componentTypeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::UpdateComponentTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateComponentType - Arguments for method UpdateComponentType on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponentType on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method UpdateComponentType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponentType.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $UpdateComponentTypeResponse = $iottwinmaker->UpdateComponentType(
      ComponentTypeId         => 'MyComponentTypeId',
      WorkspaceId             => 'MyId',
      ComponentTypeName       => 'MyComponentTypeName',    # OPTIONAL
      CompositeComponentTypes => {
        'MyName' => {
          ComponentTypeId => 'MyComponentTypeId',          # min: 1, max: 256
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      ExtendsFrom => [
        'MyComponentTypeId', ...         # min: 1, max: 256
      ],    # OPTIONAL
      Functions => {
        'MyName' => {
          ImplementedBy => {
            IsNative => 1,    # OPTIONAL
            Lambda   => {
              Arn => 'MyLambdaArn',    # min: 20, max: 2048

            },    # OPTIONAL
          },    # OPTIONAL
          RequiredProperties => [
            'MyName', ...    # min: 1, max: 256
          ],    # OPTIONAL
          Scope => 'ENTITY',    # values: ENTITY, WORKSPACE; OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      IsSingleton         => 1,    # OPTIONAL
      PropertyDefinitions => {
        'MyName' => {
          Configuration => {
            'MyName' => 'MyValue',    # key: min: 1, max: 256
          },    # OPTIONAL
          DataType => {
            Type => 'RELATIONSHIP'
            , # values: RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
            AllowedValues => [
              {
                BooleanValue => 1,                 # OPTIONAL
                DoubleValue  => 1,                 # OPTIONAL
                Expression   => 'MyExpression',    # min: 1, max: 316; OPTIONAL
                IntegerValue => 1,                 # OPTIONAL
                ListValue    => <DataValueList>,
                LongValue    => 1,                 # OPTIONAL
                MapValue     => {
                  'MyString' => <DataValue>,       # key: min: 1, max: 256
                },    # max: 50; OPTIONAL
                RelationshipValue => {
                  TargetComponentName => 'MyName',    # min: 1, max: 256
                  TargetEntityId => 'MyEntityId',   # min: 1, max: 128; OPTIONAL
                },    # OPTIONAL
                StringValue => 'MyString',    # min: 1, max: 256
              },
              ...
            ],    # max: 50; OPTIONAL
            NestedType   => <DataType>,
            Relationship => {
              RelationshipType      => 'MyString',            # min: 1, max: 256
              TargetComponentTypeId => 'MyComponentTypeId',   # min: 1, max: 256
            },    # OPTIONAL
            UnitOfMeasure => 'MyString',    # min: 1, max: 256
          },    # OPTIONAL
          DefaultValue => {
            BooleanValue => 1,                 # OPTIONAL
            DoubleValue  => 1,                 # OPTIONAL
            Expression   => 'MyExpression',    # min: 1, max: 316; OPTIONAL
            IntegerValue => 1,                 # OPTIONAL
            ListValue    => <DataValueList>,
            LongValue    => 1,                 # OPTIONAL
            MapValue     => {
              'MyString' => <DataValue>,       # key: min: 1, max: 256
            },    # max: 50; OPTIONAL
            RelationshipValue => {
              TargetComponentName => 'MyName',      # min: 1, max: 256
              TargetEntityId      => 'MyEntityId',  # min: 1, max: 128; OPTIONAL
            },    # OPTIONAL
            StringValue => 'MyString',    # min: 1, max: 256
          },
          DisplayName        => 'MyPropertyDisplayName',    # max: 256; OPTIONAL
          IsExternalId       => 1,                          # OPTIONAL
          IsRequiredInEntity => 1,                          # OPTIONAL
          IsStoredExternally => 1,                          # OPTIONAL
          IsTimeSeries       => 1,                          # OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      PropertyGroups => {
        'MyName' => {
          GroupType     => 'TABULAR',    # values: TABULAR; OPTIONAL
          PropertyNames => [
            'MyName', ...                # min: 1, max: 256
          ],    # OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn             = $UpdateComponentTypeResponse->Arn;
    my $ComponentTypeId = $UpdateComponentTypeResponse->ComponentTypeId;
    my $State           = $UpdateComponentTypeResponse->State;
    my $WorkspaceId     = $UpdateComponentTypeResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::UpdateComponentTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/UpdateComponentType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentTypeId => Str

The ID of the component type.



=head2 ComponentTypeName => Str

The component type name.



=head2 CompositeComponentTypes => L<Paws::IoTTwinMaker::CompositeComponentTypesRequest>

This is an object that maps strings to C<compositeComponentTypes> of
the C<componentType>. C<CompositeComponentType> is referenced by
C<componentTypeId>.



=head2 Description => Str

The description of the component type.



=head2 ExtendsFrom => ArrayRef[Str|Undef]

Specifies the component type that this component type extends.



=head2 Functions => L<Paws::IoTTwinMaker::FunctionsRequest>

An object that maps strings to the functions in the component type.
Each string in the mapping must be unique to this object.



=head2 IsSingleton => Bool

A Boolean value that specifies whether an entity can have more than one
component of this type.



=head2 PropertyDefinitions => L<Paws::IoTTwinMaker::PropertyDefinitionsRequest>

An object that maps strings to the property definitions in the
component type. Each string in the mapping must be unique to this
object.



=head2 PropertyGroups => L<Paws::IoTTwinMaker::PropertyGroupsRequest>

The property groups.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponentType in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

