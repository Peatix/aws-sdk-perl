
package Paws::IoTTwinMaker::GetEntityResponse;
  use Moose;
  has AreAllComponentsReturned => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'areAllComponentsReturned');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Components => (is => 'ro', isa => 'Paws::IoTTwinMaker::ComponentsMap', traits => ['NameInRequest'], request_name => 'components');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId', required => 1);
  has EntityName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityName', required => 1);
  has HasChildEntities => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'hasChildEntities', required => 1);
  has ParentEntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentEntityId', required => 1);
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::Status', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSource');
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetEntityResponse

=head1 ATTRIBUTES


=head2 AreAllComponentsReturned => Bool

This flag notes whether all components are returned in the API
response. The maximum number of components returned is 30.


=head2 B<REQUIRED> Arn => Str

The ARN of the entity.


=head2 Components => L<Paws::IoTTwinMaker::ComponentsMap>

An object that maps strings to the components in the entity. Each
string in the mapping must be unique to this object.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time when the entity was created.


=head2 Description => Str

The description of the entity.


=head2 B<REQUIRED> EntityId => Str

The ID of the entity.


=head2 B<REQUIRED> EntityName => Str

The name of the entity.


=head2 B<REQUIRED> HasChildEntities => Bool

A Boolean value that specifies whether the entity has associated child
entities.


=head2 B<REQUIRED> ParentEntityId => Str

The ID of the parent entity for this entity.


=head2 B<REQUIRED> Status => L<Paws::IoTTwinMaker::Status>

The current status of the entity.


=head2 SyncSource => Str

The syncSource of the sync job, if this entity was created by a sync
job.


=head2 B<REQUIRED> UpdateDateTime => Str

The date and time when the entity was last updated.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.


=head2 _request_id => Str


=cut

