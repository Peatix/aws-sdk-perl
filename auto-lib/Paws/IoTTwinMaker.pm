package Paws::IoTTwinMaker;
  use Moose;
  sub service { 'iottwinmaker' }
  sub signing_name { 'iottwinmaker' }
  sub version { '2021-11-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchPutPropertyValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::BatchPutPropertyValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMetadataTransferJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CancelMetadataTransferJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponentType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateComponentType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMetadataTransferJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateMetadataTransferJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScene {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateScene', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::CreateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponentType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::DeleteComponentType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::DeleteEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScene {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::DeleteScene', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::DeleteSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::DeleteWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ExecuteQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponentType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetComponentType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetadataTransferJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetMetadataTransferJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetPricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPropertyValueHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetPropertyValueHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScene {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetScene', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::GetWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListComponentTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetadataTransferJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListMetadataTransferJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScenes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListScenes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSyncJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListSyncJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSyncResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListSyncResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::ListWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComponentType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UpdateComponentType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UpdateEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UpdatePricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScene {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UpdateScene', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTTwinMaker::UpdateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchPutPropertyValues CancelMetadataTransferJob CreateComponentType CreateEntity CreateMetadataTransferJob CreateScene CreateSyncJob CreateWorkspace DeleteComponentType DeleteEntity DeleteScene DeleteSyncJob DeleteWorkspace ExecuteQuery GetComponentType GetEntity GetMetadataTransferJob GetPricingPlan GetPropertyValue GetPropertyValueHistory GetScene GetSyncJob GetWorkspace ListComponents ListComponentTypes ListEntities ListMetadataTransferJobs ListProperties ListScenes ListSyncJobs ListSyncResources ListTagsForResource ListWorkspaces TagResource UntagResource UpdateComponentType UpdateEntity UpdatePricingPlan UpdateScene UpdateWorkspace / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker - Perl Interface to AWS AWS IoT TwinMaker

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTTwinMaker');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

IoT TwinMaker is a service with which you can build operational digital
twins of physical systems. IoT TwinMaker overlays measurements and
analysis from real-world sensors, cameras, and enterprise applications
so you can create data visualizations to monitor your physical factory,
building, or industrial plant. You can use this real-world data to
monitor operations and diagnose and repair errors.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker-2021-11-29>


=head1 METHODS

=head2 BatchPutPropertyValues

=over

=item Entries => ArrayRef[L<Paws::IoTTwinMaker::PropertyValueEntry>]

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::BatchPutPropertyValues>

Returns: a L<Paws::IoTTwinMaker::BatchPutPropertyValuesResponse> instance

Sets values for multiple time series properties.


=head2 CancelMetadataTransferJob

=over

=item MetadataTransferJobId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CancelMetadataTransferJob>

Returns: a L<Paws::IoTTwinMaker::CancelMetadataTransferJobResponse> instance

Cancels the metadata transfer job.


=head2 CreateComponentType

=over

=item ComponentTypeId => Str

=item WorkspaceId => Str

=item [ComponentTypeName => Str]

=item [CompositeComponentTypes => L<Paws::IoTTwinMaker::CompositeComponentTypesRequest>]

=item [Description => Str]

=item [ExtendsFrom => ArrayRef[Str|Undef]]

=item [Functions => L<Paws::IoTTwinMaker::FunctionsRequest>]

=item [IsSingleton => Bool]

=item [PropertyDefinitions => L<Paws::IoTTwinMaker::PropertyDefinitionsRequest>]

=item [PropertyGroups => L<Paws::IoTTwinMaker::PropertyGroupsRequest>]

=item [Tags => L<Paws::IoTTwinMaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateComponentType>

Returns: a L<Paws::IoTTwinMaker::CreateComponentTypeResponse> instance

Creates a component type.


=head2 CreateEntity

=over

=item EntityName => Str

=item WorkspaceId => Str

=item [Components => L<Paws::IoTTwinMaker::ComponentsMapRequest>]

=item [CompositeComponents => L<Paws::IoTTwinMaker::CompositeComponentsMapRequest>]

=item [Description => Str]

=item [EntityId => Str]

=item [ParentEntityId => Str]

=item [Tags => L<Paws::IoTTwinMaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateEntity>

Returns: a L<Paws::IoTTwinMaker::CreateEntityResponse> instance

Creates an entity.


=head2 CreateMetadataTransferJob

=over

=item Destination => L<Paws::IoTTwinMaker::DestinationConfiguration>

=item Sources => ArrayRef[L<Paws::IoTTwinMaker::SourceConfiguration>]

=item [Description => Str]

=item [MetadataTransferJobId => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateMetadataTransferJob>

Returns: a L<Paws::IoTTwinMaker::CreateMetadataTransferJobResponse> instance

Creates a new metadata transfer job.


=head2 CreateScene

=over

=item ContentLocation => Str

=item SceneId => Str

=item WorkspaceId => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [SceneMetadata => L<Paws::IoTTwinMaker::SceneMetadataMap>]

=item [Tags => L<Paws::IoTTwinMaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateScene>

Returns: a L<Paws::IoTTwinMaker::CreateSceneResponse> instance

Creates a scene.


=head2 CreateSyncJob

=over

=item SyncRole => Str

=item SyncSource => Str

=item WorkspaceId => Str

=item [Tags => L<Paws::IoTTwinMaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateSyncJob>

Returns: a L<Paws::IoTTwinMaker::CreateSyncJobResponse> instance

This action creates a SyncJob.


=head2 CreateWorkspace

=over

=item WorkspaceId => Str

=item [Description => Str]

=item [Role => Str]

=item [S3Location => Str]

=item [Tags => L<Paws::IoTTwinMaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::CreateWorkspace>

Returns: a L<Paws::IoTTwinMaker::CreateWorkspaceResponse> instance

Creates a workplace.


=head2 DeleteComponentType

=over

=item ComponentTypeId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::DeleteComponentType>

Returns: a L<Paws::IoTTwinMaker::DeleteComponentTypeResponse> instance

Deletes a component type.


=head2 DeleteEntity

=over

=item EntityId => Str

=item WorkspaceId => Str

=item [IsRecursive => Bool]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::DeleteEntity>

Returns: a L<Paws::IoTTwinMaker::DeleteEntityResponse> instance

Deletes an entity.


=head2 DeleteScene

=over

=item SceneId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::DeleteScene>

Returns: a L<Paws::IoTTwinMaker::DeleteSceneResponse> instance

Deletes a scene.


=head2 DeleteSyncJob

=over

=item SyncSource => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::DeleteSyncJob>

Returns: a L<Paws::IoTTwinMaker::DeleteSyncJobResponse> instance

Delete the SyncJob.


=head2 DeleteWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::DeleteWorkspace>

Returns: a L<Paws::IoTTwinMaker::DeleteWorkspaceResponse> instance

Deletes a workspace.


=head2 ExecuteQuery

=over

=item QueryStatement => Str

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ExecuteQuery>

Returns: a L<Paws::IoTTwinMaker::ExecuteQueryResponse> instance

Run queries to access information from your knowledge graph of entities
within individual workspaces.

The ExecuteQuery action only works with Amazon Web Services Java SDK2
(https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html).
ExecuteQuery will not work with any Amazon Web Services Java SDK
version E<lt> 2.x.


=head2 GetComponentType

=over

=item ComponentTypeId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetComponentType>

Returns: a L<Paws::IoTTwinMaker::GetComponentTypeResponse> instance

Retrieves information about a component type.


=head2 GetEntity

=over

=item EntityId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetEntity>

Returns: a L<Paws::IoTTwinMaker::GetEntityResponse> instance

Retrieves information about an entity.


=head2 GetMetadataTransferJob

=over

=item MetadataTransferJobId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetMetadataTransferJob>

Returns: a L<Paws::IoTTwinMaker::GetMetadataTransferJobResponse> instance

Gets a nmetadata transfer job.


=head2 GetPricingPlan






Each argument is described in detail in: L<Paws::IoTTwinMaker::GetPricingPlan>

Returns: a L<Paws::IoTTwinMaker::GetPricingPlanResponse> instance

Gets the pricing plan.


=head2 GetPropertyValue

=over

=item SelectedProperties => ArrayRef[Str|Undef]

=item WorkspaceId => Str

=item [ComponentName => Str]

=item [ComponentPath => Str]

=item [ComponentTypeId => Str]

=item [EntityId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyGroupName => Str]

=item [TabularConditions => L<Paws::IoTTwinMaker::TabularConditions>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetPropertyValue>

Returns: a L<Paws::IoTTwinMaker::GetPropertyValueResponse> instance

Gets the property values for a component, component type, entity, or
workspace.

You must specify a value for either C<componentName>,
C<componentTypeId>, C<entityId>, or C<workspaceId>.


=head2 GetPropertyValueHistory

=over

=item SelectedProperties => ArrayRef[Str|Undef]

=item WorkspaceId => Str

=item [ComponentName => Str]

=item [ComponentPath => Str]

=item [ComponentTypeId => Str]

=item [EndDateTime => Str]

=item [EndTime => Str]

=item [EntityId => Str]

=item [Interpolation => L<Paws::IoTTwinMaker::InterpolationParameters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderByTime => Str]

=item [PropertyFilters => ArrayRef[L<Paws::IoTTwinMaker::PropertyFilter>]]

=item [StartDateTime => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetPropertyValueHistory>

Returns: a L<Paws::IoTTwinMaker::GetPropertyValueHistoryResponse> instance

Retrieves information about the history of a time series property value
for a component, component type, entity, or workspace.

You must specify a value for C<workspaceId>. For entity-specific
queries, specify values for C<componentName> and C<entityId>. For
cross-entity quries, specify a value for C<componentTypeId>.


=head2 GetScene

=over

=item SceneId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetScene>

Returns: a L<Paws::IoTTwinMaker::GetSceneResponse> instance

Retrieves information about a scene.


=head2 GetSyncJob

=over

=item SyncSource => Str

=item [WorkspaceId => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetSyncJob>

Returns: a L<Paws::IoTTwinMaker::GetSyncJobResponse> instance

Gets the SyncJob.


=head2 GetWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::GetWorkspace>

Returns: a L<Paws::IoTTwinMaker::GetWorkspaceResponse> instance

Retrieves information about a workspace.


=head2 ListComponents

=over

=item EntityId => Str

=item WorkspaceId => Str

=item [ComponentPath => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListComponents>

Returns: a L<Paws::IoTTwinMaker::ListComponentsResponse> instance

This API lists the components of an entity.


=head2 ListComponentTypes

=over

=item WorkspaceId => Str

=item [Filters => ArrayRef[L<Paws::IoTTwinMaker::ListComponentTypesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListComponentTypes>

Returns: a L<Paws::IoTTwinMaker::ListComponentTypesResponse> instance

Lists all component types in a workspace.


=head2 ListEntities

=over

=item WorkspaceId => Str

=item [Filters => ArrayRef[L<Paws::IoTTwinMaker::ListEntitiesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListEntities>

Returns: a L<Paws::IoTTwinMaker::ListEntitiesResponse> instance

Lists all entities in a workspace.


=head2 ListMetadataTransferJobs

=over

=item DestinationType => Str

=item SourceType => Str

=item [Filters => ArrayRef[L<Paws::IoTTwinMaker::ListMetadataTransferJobsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListMetadataTransferJobs>

Returns: a L<Paws::IoTTwinMaker::ListMetadataTransferJobsResponse> instance

Lists the metadata transfer jobs.


=head2 ListProperties

=over

=item EntityId => Str

=item WorkspaceId => Str

=item [ComponentName => Str]

=item [ComponentPath => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListProperties>

Returns: a L<Paws::IoTTwinMaker::ListPropertiesResponse> instance

This API lists the properties of a component.


=head2 ListScenes

=over

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListScenes>

Returns: a L<Paws::IoTTwinMaker::ListScenesResponse> instance

Lists all scenes in a workspace.


=head2 ListSyncJobs

=over

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListSyncJobs>

Returns: a L<Paws::IoTTwinMaker::ListSyncJobsResponse> instance

List all SyncJobs.


=head2 ListSyncResources

=over

=item SyncSource => Str

=item WorkspaceId => Str

=item [Filters => ArrayRef[L<Paws::IoTTwinMaker::SyncResourceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListSyncResources>

Returns: a L<Paws::IoTTwinMaker::ListSyncResourcesResponse> instance

Lists the sync resources.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListTagsForResource>

Returns: a L<Paws::IoTTwinMaker::ListTagsForResourceResponse> instance

Lists all tags associated with a resource.


=head2 ListWorkspaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::ListWorkspaces>

Returns: a L<Paws::IoTTwinMaker::ListWorkspacesResponse> instance

Retrieves information about workspaces in the current account.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::IoTTwinMaker::TagMap>


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::TagResource>

Returns: a L<Paws::IoTTwinMaker::TagResourceResponse> instance

Adds tags to a resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UntagResource>

Returns: a L<Paws::IoTTwinMaker::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateComponentType

=over

=item ComponentTypeId => Str

=item WorkspaceId => Str

=item [ComponentTypeName => Str]

=item [CompositeComponentTypes => L<Paws::IoTTwinMaker::CompositeComponentTypesRequest>]

=item [Description => Str]

=item [ExtendsFrom => ArrayRef[Str|Undef]]

=item [Functions => L<Paws::IoTTwinMaker::FunctionsRequest>]

=item [IsSingleton => Bool]

=item [PropertyDefinitions => L<Paws::IoTTwinMaker::PropertyDefinitionsRequest>]

=item [PropertyGroups => L<Paws::IoTTwinMaker::PropertyGroupsRequest>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UpdateComponentType>

Returns: a L<Paws::IoTTwinMaker::UpdateComponentTypeResponse> instance

Updates information in a component type.


=head2 UpdateEntity

=over

=item EntityId => Str

=item WorkspaceId => Str

=item [ComponentUpdates => L<Paws::IoTTwinMaker::ComponentUpdatesMapRequest>]

=item [CompositeComponentUpdates => L<Paws::IoTTwinMaker::CompositeComponentUpdatesMapRequest>]

=item [Description => Str]

=item [EntityName => Str]

=item [ParentEntityUpdate => L<Paws::IoTTwinMaker::ParentEntityUpdateRequest>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UpdateEntity>

Returns: a L<Paws::IoTTwinMaker::UpdateEntityResponse> instance

Updates an entity.


=head2 UpdatePricingPlan

=over

=item PricingMode => Str

=item [BundleNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UpdatePricingPlan>

Returns: a L<Paws::IoTTwinMaker::UpdatePricingPlanResponse> instance

Update the pricing plan.


=head2 UpdateScene

=over

=item SceneId => Str

=item WorkspaceId => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ContentLocation => Str]

=item [Description => Str]

=item [SceneMetadata => L<Paws::IoTTwinMaker::SceneMetadataMap>]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UpdateScene>

Returns: a L<Paws::IoTTwinMaker::UpdateSceneResponse> instance

Updates a scene.


=head2 UpdateWorkspace

=over

=item WorkspaceId => Str

=item [Description => Str]

=item [Role => Str]

=item [S3Location => Str]


=back

Each argument is described in detail in: L<Paws::IoTTwinMaker::UpdateWorkspace>

Returns: a L<Paws::IoTTwinMaker::UpdateWorkspaceResponse> instance

Updates a workspace.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

