
package Paws::IoTTwinMaker::UpdateEntity;
  use Moose;
  has ComponentUpdates => (is => 'ro', isa => 'Paws::IoTTwinMaker::ComponentUpdatesMapRequest', traits => ['NameInRequest'], request_name => 'componentUpdates');
  has CompositeComponentUpdates => (is => 'ro', isa => 'Paws::IoTTwinMaker::CompositeComponentUpdatesMapRequest', traits => ['NameInRequest'], request_name => 'compositeComponentUpdates');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityId', required => 1);
  has EntityName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityName');
  has ParentEntityUpdate => (is => 'ro', isa => 'Paws::IoTTwinMaker::ParentEntityUpdateRequest', traits => ['NameInRequest'], request_name => 'parentEntityUpdate');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entities/{entityId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::UpdateEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateEntity - Arguments for method UpdateEntity on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEntity on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method UpdateEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEntity.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $UpdateEntityResponse = $iottwinmaker->UpdateEntity(
      EntityId         => 'MyEntityId',
      WorkspaceId      => 'MyId',
      ComponentUpdates => {
        'MyName' => {
          ComponentTypeId => 'MyComponentTypeId',   # min: 1, max: 256; OPTIONAL
          Description     => 'MyDescription',       # max: 2048; OPTIONAL
          PropertyGroupUpdates => {
            'MyName' => {
              GroupType     => 'TABULAR',           # values: TABULAR; OPTIONAL
              PropertyNames => [
                'MyName', ...                       # min: 1, max: 256
              ],    # OPTIONAL
              UpdateType => 'UPDATE', # values: UPDATE, DELETE, CREATE; OPTIONAL
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          PropertyUpdates => {
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
                        TargetComponentName => 'MyName',      # min: 1, max: 256
                        TargetEntityId      => 'MyEntityId',  # min: 1, max: 128
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
                    TargetComponentName => 'MyName',        # min: 1, max: 256
                    TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
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
                  TargetComponentName => 'MyName',        # min: 1, max: 256
                  TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
                },    # OPTIONAL
                StringValue => 'MyString',    # min: 1, max: 256
              },
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          UpdateType => 'CREATE',    # values: CREATE, UPDATE, DELETE; OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      CompositeComponentUpdates => {
        'MyComponentPath' => {
          Description          => 'MyDescription',    # max: 2048; OPTIONAL
          PropertyGroupUpdates => {
            'MyName' => {
              GroupType     => 'TABULAR',    # values: TABULAR; OPTIONAL
              PropertyNames => [
                'MyName', ...                # min: 1, max: 256
              ],    # OPTIONAL
              UpdateType => 'UPDATE', # values: UPDATE, DELETE, CREATE; OPTIONAL
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          PropertyUpdates => {
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
                        TargetComponentName => 'MyName',      # min: 1, max: 256
                        TargetEntityId      => 'MyEntityId',  # min: 1, max: 128
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
                    TargetComponentName => 'MyName',        # min: 1, max: 256
                    TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
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
                  TargetComponentName => 'MyName',        # min: 1, max: 256
                  TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
                },    # OPTIONAL
                StringValue => 'MyString',    # min: 1, max: 256
              },
            },    # key: min: 1, max: 256
          },    # OPTIONAL
          UpdateType => 'CREATE',    # values: CREATE, UPDATE, DELETE; OPTIONAL
        },    # key: min: 1, max: 2048
      },    # OPTIONAL
      Description        => 'MyDescription',    # OPTIONAL
      EntityName         => 'MyEntityName',     # OPTIONAL
      ParentEntityUpdate => {
        UpdateType     => 'UPDATE',              # values: UPDATE, DELETE
        ParentEntityId => 'MyParentEntityId',    # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $State          = $UpdateEntityResponse->State;
    my $UpdateDateTime = $UpdateEntityResponse->UpdateDateTime;

    # Returns a L<Paws::IoTTwinMaker::UpdateEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/UpdateEntity>

=head1 ATTRIBUTES


=head2 ComponentUpdates => L<Paws::IoTTwinMaker::ComponentUpdatesMapRequest>

An object that maps strings to the component updates in the request.
Each string in the mapping must be unique to this object.



=head2 CompositeComponentUpdates => L<Paws::IoTTwinMaker::CompositeComponentUpdatesMapRequest>

This is an object that maps strings to C<compositeComponent> updates in
the request. Each key of the map represents the C<componentPath> of the
C<compositeComponent>.



=head2 Description => Str

The description of the entity.



=head2 B<REQUIRED> EntityId => Str

The ID of the entity.



=head2 EntityName => Str

The name of the entity.



=head2 ParentEntityUpdate => L<Paws::IoTTwinMaker::ParentEntityUpdateRequest>

An object that describes the update request for a parent entity.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the entity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEntity in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

