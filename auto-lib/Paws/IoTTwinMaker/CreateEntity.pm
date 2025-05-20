
package Paws::IoTTwinMaker::CreateEntity;
  use Moose;
  has Components => (is => 'ro', isa => 'Paws::IoTTwinMaker::ComponentsMapRequest', traits => ['NameInRequest'], request_name => 'components');
  has CompositeComponents => (is => 'ro', isa => 'Paws::IoTTwinMaker::CompositeComponentsMapRequest', traits => ['NameInRequest'], request_name => 'compositeComponents');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId');
  has EntityName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityName', required => 1);
  has ParentEntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentEntityId');
  has Tags => (is => 'ro', isa => 'Paws::IoTTwinMaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::CreateEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateEntity - Arguments for method CreateEntity on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEntity on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method CreateEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEntity.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $CreateEntityResponse = $iottwinmaker->CreateEntity(
      EntityName  => 'MyEntityName',
      WorkspaceId => 'MyId',
      Components  => {
        'MyName' => {
          ComponentTypeId => 'MyComponentTypeId',   # min: 1, max: 256; OPTIONAL
          Description     => 'MyDescription',       # max: 2048; OPTIONAL
          Properties      => {
            'MyName' => {
              Definition => {
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
                      Expression => 'MyExpression', # min: 1, max: 316; OPTIONAL
                      IntegerValue => 1,                 # OPTIONAL
                      ListValue    => <DataValueList>,
                      LongValue    => 1,                 # OPTIONAL
                      MapValue     => {
                        'MyString' => <DataValue>,       # key: min: 1, max: 256
                      },    # max: 50; OPTIONAL
                      RelationshipValue => {
                        TargetComponentName => 'MyName',    # min: 1, max: 256
                        TargetEntityId      =>
                          'MyEntityId',    # min: 1, max: 128; OPTIONAL
                      },    # OPTIONAL
                      StringValue => 'MyString',    # min: 1, max: 256
                    },
                    ...
                  ],    # max: 50; OPTIONAL
                  NestedType   => <DataType>,
                  Relationship => {
                    RelationshipType      => 'MyString',    # min: 1, max: 256
                    TargetComponentTypeId =>
                      'MyComponentTypeId',    # min: 1, max: 256; OPTIONAL
                  },    # OPTIONAL
                  UnitOfMeasure => 'MyString',    # min: 1, max: 256
                },    # OPTIONAL
                DefaultValue => {
                  BooleanValue => 1,                # OPTIONAL
                  DoubleValue  => 1,                # OPTIONAL
                  Expression   => 'MyExpression',   # min: 1, max: 316; OPTIONAL
                  IntegerValue => 1,                # OPTIONAL
                  ListValue    => <DataValueList>,
                  LongValue    => 1,                # OPTIONAL
                  MapValue     => {
                    'MyString' => <DataValue>,      # key: min: 1, max: 256
                  },    # max: 50; OPTIONAL
                  RelationshipValue => {
                    TargetComponentName => 'MyName',    # min: 1, max: 256
                    TargetEntityId => 'MyEntityId', # min: 1, max: 128; OPTIONAL
                  },    # OPTIONAL
                  StringValue => 'MyString',    # min: 1, max: 256
                },
                DisplayName  => 'MyPropertyDisplayName',    # max: 256; OPTIONAL
                IsExternalId => 1,                          # OPTIONAL
                IsRequiredInEntity => 1,                    # OPTIONAL
                IsStoredExternally => 1,                    # OPTIONAL
                IsTimeSeries       => 1,                    # OPTIONAL
              },    # OPTIONAL
              UpdateType => 'UPDATE'
              ,     # values: UPDATE, DELETE, CREATE, RESET_VALUE; OPTIONAL
              Value => {
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
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          PropertyGroups => {
            'MyName' => {
              GroupType     => 'TABULAR',    # values: TABULAR; OPTIONAL
              PropertyNames => [
                'MyName', ...                # min: 1, max: 256
              ],    # OPTIONAL
              UpdateType => 'UPDATE', # values: UPDATE, DELETE, CREATE; OPTIONAL
            },    # key: min: 1, max: 256
          },    # OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      CompositeComponents => {
        'MyComponentPath' => {
          Description => 'MyDescription',    # max: 2048; OPTIONAL
          Properties  => {
            'MyName' => {
              Definition => {
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
                      Expression => 'MyExpression', # min: 1, max: 316; OPTIONAL
                      IntegerValue => 1,                 # OPTIONAL
                      ListValue    => <DataValueList>,
                      LongValue    => 1,                 # OPTIONAL
                      MapValue     => {
                        'MyString' => <DataValue>,       # key: min: 1, max: 256
                      },    # max: 50; OPTIONAL
                      RelationshipValue => {
                        TargetComponentName => 'MyName',    # min: 1, max: 256
                        TargetEntityId      =>
                          'MyEntityId',    # min: 1, max: 128; OPTIONAL
                      },    # OPTIONAL
                      StringValue => 'MyString',    # min: 1, max: 256
                    },
                    ...
                  ],    # max: 50; OPTIONAL
                  NestedType   => <DataType>,
                  Relationship => {
                    RelationshipType      => 'MyString',    # min: 1, max: 256
                    TargetComponentTypeId =>
                      'MyComponentTypeId',    # min: 1, max: 256; OPTIONAL
                  },    # OPTIONAL
                  UnitOfMeasure => 'MyString',    # min: 1, max: 256
                },    # OPTIONAL
                DefaultValue => {
                  BooleanValue => 1,                # OPTIONAL
                  DoubleValue  => 1,                # OPTIONAL
                  Expression   => 'MyExpression',   # min: 1, max: 316; OPTIONAL
                  IntegerValue => 1,                # OPTIONAL
                  ListValue    => <DataValueList>,
                  LongValue    => 1,                # OPTIONAL
                  MapValue     => {
                    'MyString' => <DataValue>,      # key: min: 1, max: 256
                  },    # max: 50; OPTIONAL
                  RelationshipValue => {
                    TargetComponentName => 'MyName',    # min: 1, max: 256
                    TargetEntityId => 'MyEntityId', # min: 1, max: 128; OPTIONAL
                  },    # OPTIONAL
                  StringValue => 'MyString',    # min: 1, max: 256
                },
                DisplayName  => 'MyPropertyDisplayName',    # max: 256; OPTIONAL
                IsExternalId => 1,                          # OPTIONAL
                IsRequiredInEntity => 1,                    # OPTIONAL
                IsStoredExternally => 1,                    # OPTIONAL
                IsTimeSeries       => 1,                    # OPTIONAL
              },    # OPTIONAL
              UpdateType => 'UPDATE'
              ,     # values: UPDATE, DELETE, CREATE, RESET_VALUE; OPTIONAL
              Value => {
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
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          PropertyGroups => {
            'MyName' => {
              GroupType     => 'TABULAR',    # values: TABULAR; OPTIONAL
              PropertyNames => [
                'MyName', ...                # min: 1, max: 256
              ],    # OPTIONAL
              UpdateType => 'UPDATE', # values: UPDATE, DELETE, CREATE; OPTIONAL
            },    # key: min: 1, max: 256
          },    # OPTIONAL
        },    # key: min: 1, max: 2048
      },    # OPTIONAL
      Description    => 'MyDescription',       # OPTIONAL
      EntityId       => 'MyEntityId',          # OPTIONAL
      ParentEntityId => 'MyParentEntityId',    # OPTIONAL
      Tags           => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateEntityResponse->Arn;
    my $CreationDateTime = $CreateEntityResponse->CreationDateTime;
    my $EntityId         = $CreateEntityResponse->EntityId;
    my $State            = $CreateEntityResponse->State;

    # Returns a L<Paws::IoTTwinMaker::CreateEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/CreateEntity>

=head1 ATTRIBUTES


=head2 Components => L<Paws::IoTTwinMaker::ComponentsMapRequest>

An object that maps strings to the components in the entity. Each
string in the mapping must be unique to this object.



=head2 CompositeComponents => L<Paws::IoTTwinMaker::CompositeComponentsMapRequest>

This is an object that maps strings to C<compositeComponent> updates in
the request. Each key of the map represents the C<componentPath> of the
C<compositeComponent>.



=head2 Description => Str

The description of the entity.



=head2 EntityId => Str

The ID of the entity.



=head2 B<REQUIRED> EntityName => Str

The name of the entity.



=head2 ParentEntityId => Str

The ID of the entity's parent entity.



=head2 Tags => L<Paws::IoTTwinMaker::TagMap>

Metadata that you can use to manage the entity.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the entity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEntity in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

