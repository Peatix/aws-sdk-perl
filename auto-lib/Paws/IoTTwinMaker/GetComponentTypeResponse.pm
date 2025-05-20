
package Paws::IoTTwinMaker::GetComponentTypeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeId', required => 1);
  has ComponentTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeName');
  has CompositeComponentTypes => (is => 'ro', isa => 'Paws::IoTTwinMaker::CompositeComponentTypesResponse', traits => ['NameInRequest'], request_name => 'compositeComponentTypes');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExtendsFrom => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'extendsFrom');
  has Functions => (is => 'ro', isa => 'Paws::IoTTwinMaker::FunctionsResponse', traits => ['NameInRequest'], request_name => 'functions');
  has IsAbstract => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isAbstract');
  has IsSchemaInitialized => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isSchemaInitialized');
  has IsSingleton => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isSingleton');
  has PropertyDefinitions => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyDefinitionsResponse', traits => ['NameInRequest'], request_name => 'propertyDefinitions');
  has PropertyGroups => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyGroupsResponse', traits => ['NameInRequest'], request_name => 'propertyGroups');
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::Status', traits => ['NameInRequest'], request_name => 'status');
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSource');
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetComponentTypeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the component type.


=head2 B<REQUIRED> ComponentTypeId => Str

The ID of the component type.


=head2 ComponentTypeName => Str

The component type name.


=head2 CompositeComponentTypes => L<Paws::IoTTwinMaker::CompositeComponentTypesResponse>

This is an object that maps strings to C<compositeComponentTypes> of
the C<componentType>. C<CompositeComponentType> is referenced by
C<componentTypeId>.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time when the component type was created.


=head2 Description => Str

The description of the component type.


=head2 ExtendsFrom => ArrayRef[Str|Undef]

The name of the parent component type that this component type extends.


=head2 Functions => L<Paws::IoTTwinMaker::FunctionsResponse>

An object that maps strings to the functions in the component type.
Each string in the mapping must be unique to this object.


=head2 IsAbstract => Bool

A Boolean value that specifies whether the component type is abstract.


=head2 IsSchemaInitialized => Bool

A Boolean value that specifies whether the component type has a schema
initializer and that the schema initializer has run.


=head2 IsSingleton => Bool

A Boolean value that specifies whether an entity can have more than one
component of this type.


=head2 PropertyDefinitions => L<Paws::IoTTwinMaker::PropertyDefinitionsResponse>

An object that maps strings to the property definitions in the
component type. Each string in the mapping must be unique to this
object.


=head2 PropertyGroups => L<Paws::IoTTwinMaker::PropertyGroupsResponse>

The maximum number of results to return at one time. The default is 25.

Valid Range: Minimum value of 1. Maximum value of 250.


=head2 Status => L<Paws::IoTTwinMaker::Status>

The current status of the component type.


=head2 SyncSource => Str

The syncSource of the SyncJob, if this entity was created by a SyncJob.


=head2 B<REQUIRED> UpdateDateTime => Str

The date and time when the component was last updated.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the component type.


=head2 _request_id => Str


=cut

