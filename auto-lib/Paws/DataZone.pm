package Paws::DataZone;
  use Moose;
  sub service { 'datazone' }
  sub signing_name { 'datazone' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptPredictions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::AcceptPredictions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptSubscriptionRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::AcceptSubscriptionRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddEntityOwner {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::AddEntityOwner', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddPolicyGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::AddPolicyGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateEnvironmentRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::AssociateEnvironmentRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMetadataGenerationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CancelMetadataGenerationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CancelSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateAssetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateAssetRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateAssetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateDataProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataProductRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateDataProductRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateDomainUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateEnvironmentAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateEnvironmentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFormType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateFormType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlossary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateGlossary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlossaryTerm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateGlossaryTerm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateGroupProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateListingChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateListingChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProjectMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateProjectMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProjectProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateProjectProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriptionGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateSubscriptionGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriptionRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateSubscriptionRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriptionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateSubscriptionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::CreateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteAssetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteAssetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteDataProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteDomainUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteEnvironmentAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentBlueprintConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteEnvironmentBlueprintConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteEnvironmentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFormType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteFormType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlossary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteGlossary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlossaryTerm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteGlossaryTerm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProjectMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteProjectMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProjectProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteProjectProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteSubscriptionGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteSubscriptionRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteSubscriptionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTimeSeriesDataPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DeleteTimeSeriesDataPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateEnvironmentRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::DisassociateEnvironmentRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetAssetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetAssetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetDataProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSourceRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetDataSourceRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetDomainUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironmentAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironmentBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentBlueprintConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironmentBlueprintConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironmentCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetEnvironmentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFormType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetFormType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlossary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetGlossary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlossaryTerm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetGlossaryTerm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetGroupProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIamPortalLoginUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetIamPortalLoginUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLineageEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetLineageEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLineageNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetLineageNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetadataGenerationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetMetadataGenerationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProjectProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetProjectProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetSubscriptionGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionRequestDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetSubscriptionRequestDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetSubscriptionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTimeSeriesDataPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetTimeSeriesDataPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::GetUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListAssetFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListAssetRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataProductRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDataProductRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSourceRunActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDataSourceRunActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSourceRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDataSourceRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainUnitsForParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListDomainUnitsForParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntityOwners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEntityOwners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEnvironmentActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentBlueprintConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEnvironmentBlueprintConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEnvironmentBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEnvironmentProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLineageEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListLineageEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLineageNodeHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListLineageNodeHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetadataGenerationRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListMetadataGenerationRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListPolicyGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjectMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListProjectMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjectProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListProjectProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListSubscriptionGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListSubscriptionRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListSubscriptionTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTimeSeriesDataPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::ListTimeSeriesDataPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostLineageEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::PostLineageEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostTimeSeriesDataPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::PostTimeSeriesDataPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEnvironmentBlueprintConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::PutEnvironmentBlueprintConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectPredictions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::RejectPredictions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectSubscriptionRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::RejectSubscriptionRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveEntityOwner {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::RemoveEntityOwner', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePolicyGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::RemovePolicyGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::RevokeSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Search {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::Search', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchGroupProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::SearchGroupProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchListings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::SearchListings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::SearchTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUserProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::SearchUserProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataSourceRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::StartDataSourceRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataGenerationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::StartMetadataGenerationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateAssetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateDomainUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateEnvironmentAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateEnvironmentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlossary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateGlossary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlossaryTerm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateGlossaryTerm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroupProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateGroupProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProjectProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateProjectProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriptionGrantStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateSubscriptionGrantStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriptionRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateSubscriptionRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriptionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateSubscriptionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataZone::UpdateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssetFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListAssetFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllAssetRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetRevisions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListAssetRevisions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConnections(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListConnections(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDataProductRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataProductRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataProductRevisions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDataProductRevisions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDataSourceRunActivities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSourceRunActivities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSourceRunActivities(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDataSourceRunActivities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDataSourceRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSourceRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSourceRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDataSourceRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDataSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSources(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDataSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomains(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDomains(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDomainUnitsForParent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomainUnitsForParent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomainUnitsForParent(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDomainUnitsForParent(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEntityOwners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntityOwners(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEntityOwners(@_, nextToken => $next_result->nextToken);
        push @{ $result->owners }, @{ $next_result->owners };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'owners') foreach (@{ $result->owners });
        $result = $self->ListEntityOwners(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'owners') foreach (@{ $result->owners });
    }

    return undef
  }
  sub ListAllEnvironmentActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnvironmentActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEnvironmentBlueprintConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentBlueprintConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentBlueprintConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnvironmentBlueprintConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEnvironmentBlueprints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentBlueprints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentBlueprints(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnvironmentBlueprints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEnvironmentProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnvironmentProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListJobRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllLineageEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLineageEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLineageEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListLineageEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllLineageNodeHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLineageNodeHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLineageNodeHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->nodes }, @{ $next_result->nodes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'nodes') foreach (@{ $result->nodes });
        $result = $self->ListLineageNodeHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'nodes') foreach (@{ $result->nodes });
    }

    return undef
  }
  sub ListAllMetadataGenerationRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMetadataGenerationRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMetadataGenerationRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListMetadataGenerationRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllNotifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNotifications(@_, nextToken => $next_result->nextToken);
        push @{ $result->notifications }, @{ $next_result->notifications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'notifications') foreach (@{ $result->notifications });
        $result = $self->ListNotifications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'notifications') foreach (@{ $result->notifications });
    }

    return undef
  }
  sub ListAllPolicyGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPolicyGrants(@_, nextToken => $next_result->nextToken);
        push @{ $result->grantList }, @{ $next_result->grantList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'grantList') foreach (@{ $result->grantList });
        $result = $self->ListPolicyGrants(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'grantList') foreach (@{ $result->grantList });
    }

    return undef
  }
  sub ListAllProjectMemberships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjectMemberships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjectMemberships(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListProjectMemberships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllProjectProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjectProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjectProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListProjectProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSubscriptionGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptionGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscriptionGrants(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSubscriptionGrants(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSubscriptionRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptionRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscriptionRequests(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSubscriptionRequests(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscriptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSubscriptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSubscriptionTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptionTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscriptionTargets(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSubscriptionTargets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllTimeSeriesDataPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTimeSeriesDataPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTimeSeriesDataPoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListTimeSeriesDataPoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub SearchAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Search(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->Search(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->Search(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub SearchAllGroupProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchGroupProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchGroupProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->SearchGroupProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub SearchAllListings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchListings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchListings(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->SearchListings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub SearchAllTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->SearchTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub SearchAllUserProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchUserProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchUserProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->SearchUserProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/AcceptPredictions AcceptSubscriptionRequest AddEntityOwner AddPolicyGrant AssociateEnvironmentRole CancelMetadataGenerationRun CancelSubscription CreateAsset CreateAssetFilter CreateAssetRevision CreateAssetType CreateConnection CreateDataProduct CreateDataProductRevision CreateDataSource CreateDomain CreateDomainUnit CreateEnvironment CreateEnvironmentAction CreateEnvironmentProfile CreateFormType CreateGlossary CreateGlossaryTerm CreateGroupProfile CreateListingChangeSet CreateProject CreateProjectMembership CreateProjectProfile CreateRule CreateSubscriptionGrant CreateSubscriptionRequest CreateSubscriptionTarget CreateUserProfile DeleteAsset DeleteAssetFilter DeleteAssetType DeleteConnection DeleteDataProduct DeleteDataSource DeleteDomain DeleteDomainUnit DeleteEnvironment DeleteEnvironmentAction DeleteEnvironmentBlueprintConfiguration DeleteEnvironmentProfile DeleteFormType DeleteGlossary DeleteGlossaryTerm DeleteListing DeleteProject DeleteProjectMembership DeleteProjectProfile DeleteRule DeleteSubscriptionGrant DeleteSubscriptionRequest DeleteSubscriptionTarget DeleteTimeSeriesDataPoints DisassociateEnvironmentRole GetAsset GetAssetFilter GetAssetType GetConnection GetDataProduct GetDataSource GetDataSourceRun GetDomain GetDomainUnit GetEnvironment GetEnvironmentAction GetEnvironmentBlueprint GetEnvironmentBlueprintConfiguration GetEnvironmentCredentials GetEnvironmentProfile GetFormType GetGlossary GetGlossaryTerm GetGroupProfile GetIamPortalLoginUrl GetJobRun GetLineageEvent GetLineageNode GetListing GetMetadataGenerationRun GetProject GetProjectProfile GetRule GetSubscription GetSubscriptionGrant GetSubscriptionRequestDetails GetSubscriptionTarget GetTimeSeriesDataPoint GetUserProfile ListAssetFilters ListAssetRevisions ListConnections ListDataProductRevisions ListDataSourceRunActivities ListDataSourceRuns ListDataSources ListDomains ListDomainUnitsForParent ListEntityOwners ListEnvironmentActions ListEnvironmentBlueprintConfigurations ListEnvironmentBlueprints ListEnvironmentProfiles ListEnvironments ListJobRuns ListLineageEvents ListLineageNodeHistory ListMetadataGenerationRuns ListNotifications ListPolicyGrants ListProjectMemberships ListProjectProfiles ListProjects ListRules ListSubscriptionGrants ListSubscriptionRequests ListSubscriptions ListSubscriptionTargets ListTagsForResource ListTimeSeriesDataPoints PostLineageEvent PostTimeSeriesDataPoints PutEnvironmentBlueprintConfiguration RejectPredictions RejectSubscriptionRequest RemoveEntityOwner RemovePolicyGrant RevokeSubscription Search SearchGroupProfiles SearchListings SearchTypes SearchUserProfiles StartDataSourceRun StartMetadataGenerationRun TagResource UntagResource UpdateAssetFilter UpdateConnection UpdateDataSource UpdateDomain UpdateDomainUnit UpdateEnvironment UpdateEnvironmentAction UpdateEnvironmentProfile UpdateGlossary UpdateGlossaryTerm UpdateGroupProfile UpdateProject UpdateProjectProfile UpdateRule UpdateSubscriptionGrantStatus UpdateSubscriptionRequest UpdateSubscriptionTarget UpdateUserProfile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone - Perl Interface to AWS Amazon DataZone

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DataZone');
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

Amazon DataZone is a data management service that enables you to
catalog, discover, govern, share, and analyze your data. With Amazon
DataZone, you can share and access your data across accounts and
supported regions. Amazon DataZone simplifies your experience across
Amazon Web Services services, including, but not limited to, Amazon
Redshift, Amazon Athena, Amazon Web Services Glue, and Amazon Web
Services Lake Formation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10>


=head1 METHODS

=head2 AcceptPredictions

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [AcceptChoices => ArrayRef[L<Paws::DataZone::AcceptChoice>]]

=item [AcceptRule => L<Paws::DataZone::AcceptRule>]

=item [ClientToken => Str]

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::AcceptPredictions>

Returns: a L<Paws::DataZone::AcceptPredictionsOutput> instance

Accepts automatically generated business-friendly metadata for your
Amazon DataZone assets.


=head2 AcceptSubscriptionRequest

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [AssetScopes => ArrayRef[L<Paws::DataZone::AcceptedAssetScope>]]

=item [DecisionComment => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::AcceptSubscriptionRequest>

Returns: a L<Paws::DataZone::AcceptSubscriptionRequestOutput> instance

Accepts a subscription request to a specific asset.


=head2 AddEntityOwner

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item Owner => L<Paws::DataZone::OwnerProperties>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::AddEntityOwner>

Returns: a L<Paws::DataZone::AddEntityOwnerOutput> instance

Adds the owner of an entity (a domain unit).


=head2 AddPolicyGrant

=over

=item Detail => L<Paws::DataZone::PolicyGrantDetail>

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item PolicyType => Str

=item Principal => L<Paws::DataZone::PolicyGrantPrincipal>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::AddPolicyGrant>

Returns: a L<Paws::DataZone::AddPolicyGrantOutput> instance

Adds a policy grant (an authorization policy) to a specified entity,
including domain units, environment blueprint configurations, or
environment profiles.


=head2 AssociateEnvironmentRole

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item EnvironmentRoleArn => Str


=back

Each argument is described in detail in: L<Paws::DataZone::AssociateEnvironmentRole>

Returns: a L<Paws::DataZone::AssociateEnvironmentRoleOutput> instance

Associates the environment role in Amazon DataZone.


=head2 CancelMetadataGenerationRun

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::CancelMetadataGenerationRun>

Returns: a L<Paws::DataZone::CancelMetadataGenerationRunOutput> instance

Cancels the metadata generation run.


=head2 CancelSubscription

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::CancelSubscription>

Returns: a L<Paws::DataZone::CancelSubscriptionOutput> instance

Cancels the subscription to the specified asset.


=head2 CreateAsset

=over

=item DomainIdentifier => Str

=item Name => Str

=item OwningProjectIdentifier => Str

=item TypeIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ExternalIdentifier => Str]

=item [FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [PredictionConfiguration => L<Paws::DataZone::PredictionConfiguration>]

=item [TypeRevision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateAsset>

Returns: a L<Paws::DataZone::CreateAssetOutput> instance

Creates an asset in Amazon DataZone catalog.


=head2 CreateAssetFilter

=over

=item AssetIdentifier => Str

=item Configuration => L<Paws::DataZone::AssetFilterConfiguration>

=item DomainIdentifier => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateAssetFilter>

Returns: a L<Paws::DataZone::CreateAssetFilterOutput> instance

Creates a data asset filter.


=head2 CreateAssetRevision

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [PredictionConfiguration => L<Paws::DataZone::PredictionConfiguration>]

=item [TypeRevision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateAssetRevision>

Returns: a L<Paws::DataZone::CreateAssetRevisionOutput> instance

Creates a revision of the asset.


=head2 CreateAssetType

=over

=item DomainIdentifier => Str

=item FormsInput => L<Paws::DataZone::FormsInputMap>

=item Name => Str

=item OwningProjectIdentifier => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateAssetType>

Returns: a L<Paws::DataZone::CreateAssetTypeOutput> instance

Creates a custom asset type.


=head2 CreateConnection

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Name => Str

=item [AwsLocation => L<Paws::DataZone::AwsLocation>]

=item [ClientToken => Str]

=item [Description => Str]

=item [Props => L<Paws::DataZone::ConnectionPropertiesInput>]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateConnection>

Returns: a L<Paws::DataZone::CreateConnectionOutput> instance

Creates a new connection. In Amazon DataZone, a connection enables you
to connect your resources (domains, projects, and environments) to
external resources and services.


=head2 CreateDataProduct

=over

=item DomainIdentifier => Str

=item Name => Str

=item OwningProjectIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [Items => ArrayRef[L<Paws::DataZone::DataProductItem>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateDataProduct>

Returns: a L<Paws::DataZone::CreateDataProductOutput> instance

Creates a data product.


=head2 CreateDataProductRevision

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [Items => ArrayRef[L<Paws::DataZone::DataProductItem>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateDataProductRevision>

Returns: a L<Paws::DataZone::CreateDataProductRevisionOutput> instance

Creates a data product revision.


=head2 CreateDataSource

=over

=item DomainIdentifier => Str

=item Name => Str

=item ProjectIdentifier => Str

=item Type => Str

=item [AssetFormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [ClientToken => Str]

=item [Configuration => L<Paws::DataZone::DataSourceConfigurationInput>]

=item [ConnectionIdentifier => Str]

=item [Description => Str]

=item [EnableSetting => Str]

=item [EnvironmentIdentifier => Str]

=item [PublishOnImport => Bool]

=item [Recommendation => L<Paws::DataZone::RecommendationConfiguration>]

=item [Schedule => L<Paws::DataZone::ScheduleConfiguration>]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateDataSource>

Returns: a L<Paws::DataZone::CreateDataSourceOutput> instance

Creates an Amazon DataZone data source.


=head2 CreateDomain

=over

=item DomainExecutionRole => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DomainVersion => Str]

=item [KmsKeyIdentifier => Str]

=item [ServiceRole => Str]

=item [SingleSignOn => L<Paws::DataZone::SingleSignOn>]

=item [Tags => L<Paws::DataZone::Tags>]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateDomain>

Returns: a L<Paws::DataZone::CreateDomainOutput> instance

Creates an Amazon DataZone domain.


=head2 CreateDomainUnit

=over

=item DomainIdentifier => Str

=item Name => Str

=item ParentDomainUnitIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateDomainUnit>

Returns: a L<Paws::DataZone::CreateDomainUnitOutput> instance

Creates a domain unit in Amazon DataZone.


=head2 CreateEnvironment

=over

=item DomainIdentifier => Str

=item EnvironmentProfileIdentifier => Str

=item Name => Str

=item ProjectIdentifier => Str

=item [DeploymentOrder => Int]

=item [Description => Str]

=item [EnvironmentAccountIdentifier => Str]

=item [EnvironmentAccountRegion => Str]

=item [EnvironmentBlueprintIdentifier => Str]

=item [EnvironmentConfigurationId => Str]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateEnvironment>

Returns: a L<Paws::DataZone::CreateEnvironmentOutput> instance

Create an Amazon DataZone environment.


=head2 CreateEnvironmentAction

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Name => Str

=item Parameters => L<Paws::DataZone::ActionParameters>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateEnvironmentAction>

Returns: a L<Paws::DataZone::CreateEnvironmentActionOutput> instance

Creates an action for the environment, for example, creates a console
link for an analytics tool that is available in this environment.


=head2 CreateEnvironmentProfile

=over

=item DomainIdentifier => Str

=item EnvironmentBlueprintIdentifier => Str

=item Name => Str

=item ProjectIdentifier => Str

=item [AwsAccountId => Str]

=item [AwsAccountRegion => Str]

=item [Description => Str]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateEnvironmentProfile>

Returns: a L<Paws::DataZone::CreateEnvironmentProfileOutput> instance

Creates an Amazon DataZone environment profile.


=head2 CreateFormType

=over

=item DomainIdentifier => Str

=item Model => L<Paws::DataZone::Model>

=item Name => Str

=item OwningProjectIdentifier => Str

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateFormType>

Returns: a L<Paws::DataZone::CreateFormTypeOutput> instance

Creates a metadata form type.


=head2 CreateGlossary

=over

=item DomainIdentifier => Str

=item Name => Str

=item OwningProjectIdentifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateGlossary>

Returns: a L<Paws::DataZone::CreateGlossaryOutput> instance

Creates an Amazon DataZone business glossary.


=head2 CreateGlossaryTerm

=over

=item DomainIdentifier => Str

=item GlossaryIdentifier => Str

=item Name => Str

=item [ClientToken => Str]

=item [LongDescription => Str]

=item [ShortDescription => Str]

=item [Status => Str]

=item [TermRelations => L<Paws::DataZone::TermRelations>]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateGlossaryTerm>

Returns: a L<Paws::DataZone::CreateGlossaryTermOutput> instance

Creates a business glossary term.


=head2 CreateGroupProfile

=over

=item DomainIdentifier => Str

=item GroupIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateGroupProfile>

Returns: a L<Paws::DataZone::CreateGroupProfileOutput> instance

Creates a group profile in Amazon DataZone.


=head2 CreateListingChangeSet

=over

=item Action => Str

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item [ClientToken => Str]

=item [EntityRevision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateListingChangeSet>

Returns: a L<Paws::DataZone::CreateListingChangeSetOutput> instance

Publishes a listing (a record of an asset at a given time) or removes a
listing from the catalog.


=head2 CreateProject

=over

=item DomainIdentifier => Str

=item Name => Str

=item [Description => Str]

=item [DomainUnitId => Str]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [ProjectProfileId => Str]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentConfigurationUserParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateProject>

Returns: a L<Paws::DataZone::CreateProjectOutput> instance

Creates an Amazon DataZone project.


=head2 CreateProjectMembership

=over

=item Designation => Str

=item DomainIdentifier => Str

=item Member => L<Paws::DataZone::Member>

=item ProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::CreateProjectMembership>

Returns: a L<Paws::DataZone::CreateProjectMembershipOutput> instance

Creates a project membership in Amazon DataZone.


=head2 CreateProjectProfile

=over

=item DomainIdentifier => Str

=item Name => Str

=item [Description => Str]

=item [DomainUnitIdentifier => Str]

=item [EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateProjectProfile>

Returns: a L<Paws::DataZone::CreateProjectProfileOutput> instance

Creates a project profile.


=head2 CreateRule

=over

=item Action => Str

=item Detail => L<Paws::DataZone::RuleDetail>

=item DomainIdentifier => Str

=item Name => Str

=item Scope => L<Paws::DataZone::RuleScope>

=item Target => L<Paws::DataZone::RuleTarget>

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateRule>

Returns: a L<Paws::DataZone::CreateRuleOutput> instance

Creates a rule in Amazon DataZone. A rule is a formal agreement that
enforces specific requirements across user workflows (e.g., publishing
assets to the catalog, requesting subscriptions, creating projects)
within the Amazon DataZone data portal. These rules help maintain
consistency, ensure compliance, and uphold governance standards in data
management processes. For instance, a metadata enforcement rule can
specify the required information for creating a subscription request or
publishing a data asset to the catalog, ensuring alignment with
organizational standards.


=head2 CreateSubscriptionGrant

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item GrantedEntity => L<Paws::DataZone::GrantedEntityInput>

=item [AssetTargetNames => ArrayRef[L<Paws::DataZone::AssetTargetNameMap>]]

=item [ClientToken => Str]

=item [SubscriptionTargetIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateSubscriptionGrant>

Returns: a L<Paws::DataZone::CreateSubscriptionGrantOutput> instance

Creates a subsscription grant in Amazon DataZone.


=head2 CreateSubscriptionRequest

=over

=item DomainIdentifier => Str

=item RequestReason => Str

=item SubscribedListings => ArrayRef[L<Paws::DataZone::SubscribedListingInput>]

=item SubscribedPrincipals => ArrayRef[L<Paws::DataZone::SubscribedPrincipalInput>]

=item [ClientToken => Str]

=item [MetadataForms => ArrayRef[L<Paws::DataZone::FormInput>]]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateSubscriptionRequest>

Returns: a L<Paws::DataZone::CreateSubscriptionRequestOutput> instance

Creates a subscription request in Amazon DataZone.


=head2 CreateSubscriptionTarget

=over

=item ApplicableAssetTypes => ArrayRef[Str|Undef]

=item AuthorizedPrincipals => ArrayRef[Str|Undef]

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item ManageAccessRole => Str

=item Name => Str

=item SubscriptionTargetConfig => ArrayRef[L<Paws::DataZone::SubscriptionTargetForm>]

=item Type => Str

=item [ClientToken => Str]

=item [Provider => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateSubscriptionTarget>

Returns: a L<Paws::DataZone::CreateSubscriptionTargetOutput> instance

Creates a subscription target in Amazon DataZone.


=head2 CreateUserProfile

=over

=item DomainIdentifier => Str

=item UserIdentifier => Str

=item [ClientToken => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::CreateUserProfile>

Returns: a L<Paws::DataZone::CreateUserProfileOutput> instance

Creates a user profile in Amazon DataZone.


=head2 DeleteAsset

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteAsset>

Returns: a L<Paws::DataZone::DeleteAssetOutput> instance

Deletes an asset in Amazon DataZone.


=head2 DeleteAssetFilter

=over

=item AssetIdentifier => Str

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteAssetFilter>

Returns: nothing

Deletes an asset filter.


=head2 DeleteAssetType

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteAssetType>

Returns: a L<Paws::DataZone::DeleteAssetTypeOutput> instance

Deletes an asset type in Amazon DataZone.


=head2 DeleteConnection

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteConnection>

Returns: a L<Paws::DataZone::DeleteConnectionOutput> instance

Deletes and connection. In Amazon DataZone, a connection enables you to
connect your resources (domains, projects, and environments) to
external resources and services.


=head2 DeleteDataProduct

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteDataProduct>

Returns: a L<Paws::DataZone::DeleteDataProductOutput> instance

Deletes a data product in Amazon DataZone.


=head2 DeleteDataSource

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [ClientToken => Str]

=item [RetainPermissionsOnRevokeFailure => Bool]


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteDataSource>

Returns: a L<Paws::DataZone::DeleteDataSourceOutput> instance

Deletes a data source in Amazon DataZone.


=head2 DeleteDomain

=over

=item Identifier => Str

=item [ClientToken => Str]

=item [SkipDeletionCheck => Bool]


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteDomain>

Returns: a L<Paws::DataZone::DeleteDomainOutput> instance

Deletes a Amazon DataZone domain.


=head2 DeleteDomainUnit

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteDomainUnit>

Returns: a L<Paws::DataZone::DeleteDomainUnitOutput> instance

Deletes a domain unit.


=head2 DeleteEnvironment

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteEnvironment>

Returns: nothing

Deletes an environment in Amazon DataZone.


=head2 DeleteEnvironmentAction

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteEnvironmentAction>

Returns: nothing

Deletes an action for the environment, for example, deletes a console
link for an analytics tool that is available in this environment.


=head2 DeleteEnvironmentBlueprintConfiguration

=over

=item DomainIdentifier => Str

=item EnvironmentBlueprintIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteEnvironmentBlueprintConfiguration>

Returns: a L<Paws::DataZone::DeleteEnvironmentBlueprintConfigurationOutput> instance

Deletes the blueprint configuration in Amazon DataZone.


=head2 DeleteEnvironmentProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteEnvironmentProfile>

Returns: nothing

Deletes an environment profile in Amazon DataZone.


=head2 DeleteFormType

=over

=item DomainIdentifier => Str

=item FormTypeIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteFormType>

Returns: a L<Paws::DataZone::DeleteFormTypeOutput> instance

Delets and metadata form type in Amazon DataZone.


=head2 DeleteGlossary

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteGlossary>

Returns: a L<Paws::DataZone::DeleteGlossaryOutput> instance

Deletes a business glossary in Amazon DataZone.


=head2 DeleteGlossaryTerm

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteGlossaryTerm>

Returns: a L<Paws::DataZone::DeleteGlossaryTermOutput> instance

Deletes a business glossary term in Amazon DataZone.


=head2 DeleteListing

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteListing>

Returns: a L<Paws::DataZone::DeleteListingOutput> instance

Deletes a listing (a record of an asset at a given time).


=head2 DeleteProject

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [SkipDeletionCheck => Bool]


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteProject>

Returns: a L<Paws::DataZone::DeleteProjectOutput> instance

Deletes a project in Amazon DataZone.


=head2 DeleteProjectMembership

=over

=item DomainIdentifier => Str

=item Member => L<Paws::DataZone::Member>

=item ProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteProjectMembership>

Returns: a L<Paws::DataZone::DeleteProjectMembershipOutput> instance

Deletes project membership in Amazon DataZone.


=head2 DeleteProjectProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteProjectProfile>

Returns: a L<Paws::DataZone::DeleteProjectProfileOutput> instance

Deletes a project profile.


=head2 DeleteRule

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteRule>

Returns: a L<Paws::DataZone::DeleteRuleOutput> instance

Deletes a rule in Amazon DataZone. A rule is a formal agreement that
enforces specific requirements across user workflows (e.g., publishing
assets to the catalog, requesting subscriptions, creating projects)
within the Amazon DataZone data portal. These rules help maintain
consistency, ensure compliance, and uphold governance standards in data
management processes. For instance, a metadata enforcement rule can
specify the required information for creating a subscription request or
publishing a data asset to the catalog, ensuring alignment with
organizational standards.


=head2 DeleteSubscriptionGrant

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteSubscriptionGrant>

Returns: a L<Paws::DataZone::DeleteSubscriptionGrantOutput> instance

Deletes and subscription grant in Amazon DataZone.


=head2 DeleteSubscriptionRequest

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteSubscriptionRequest>

Returns: nothing

Deletes a subscription request in Amazon DataZone.


=head2 DeleteSubscriptionTarget

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteSubscriptionTarget>

Returns: nothing

Deletes a subscription target in Amazon DataZone.


=head2 DeleteTimeSeriesDataPoints

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item FormName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::DeleteTimeSeriesDataPoints>

Returns: a L<Paws::DataZone::DeleteTimeSeriesDataPointsOutput> instance

Deletes the specified time series form for the specified asset.


=head2 DisassociateEnvironmentRole

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item EnvironmentRoleArn => Str


=back

Each argument is described in detail in: L<Paws::DataZone::DisassociateEnvironmentRole>

Returns: a L<Paws::DataZone::DisassociateEnvironmentRoleOutput> instance

Disassociates the environment role in Amazon DataZone.


=head2 GetAsset

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetAsset>

Returns: a L<Paws::DataZone::GetAssetOutput> instance

Gets an Amazon DataZone asset.


=head2 GetAssetFilter

=over

=item AssetIdentifier => Str

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetAssetFilter>

Returns: a L<Paws::DataZone::GetAssetFilterOutput> instance

Gets an asset filter.


=head2 GetAssetType

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetAssetType>

Returns: a L<Paws::DataZone::GetAssetTypeOutput> instance

Gets an Amazon DataZone asset type.


=head2 GetConnection

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [WithSecret => Bool]


=back

Each argument is described in detail in: L<Paws::DataZone::GetConnection>

Returns: a L<Paws::DataZone::GetConnectionOutput> instance

Gets a connection. In Amazon DataZone, a connection enables you to
connect your resources (domains, projects, and environments) to
external resources and services.


=head2 GetDataProduct

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetDataProduct>

Returns: a L<Paws::DataZone::GetDataProductOutput> instance

Gets the data product.


=head2 GetDataSource

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetDataSource>

Returns: a L<Paws::DataZone::GetDataSourceOutput> instance

Gets an Amazon DataZone data source.


=head2 GetDataSourceRun

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetDataSourceRun>

Returns: a L<Paws::DataZone::GetDataSourceRunOutput> instance

Gets an Amazon DataZone data source run.


=head2 GetDomain

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetDomain>

Returns: a L<Paws::DataZone::GetDomainOutput> instance

Gets an Amazon DataZone domain.


=head2 GetDomainUnit

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetDomainUnit>

Returns: a L<Paws::DataZone::GetDomainUnitOutput> instance

Gets the details of the specified domain unit.


=head2 GetEnvironment

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironment>

Returns: a L<Paws::DataZone::GetEnvironmentOutput> instance

Gets an Amazon DataZone environment.


=head2 GetEnvironmentAction

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironmentAction>

Returns: a L<Paws::DataZone::GetEnvironmentActionOutput> instance

Gets the specified environment action.


=head2 GetEnvironmentBlueprint

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironmentBlueprint>

Returns: a L<Paws::DataZone::GetEnvironmentBlueprintOutput> instance

Gets an Amazon DataZone blueprint.


=head2 GetEnvironmentBlueprintConfiguration

=over

=item DomainIdentifier => Str

=item EnvironmentBlueprintIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironmentBlueprintConfiguration>

Returns: a L<Paws::DataZone::GetEnvironmentBlueprintConfigurationOutput> instance

Gets the blueprint configuration in Amazon DataZone.


=head2 GetEnvironmentCredentials

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironmentCredentials>

Returns: a L<Paws::DataZone::GetEnvironmentCredentialsOutput> instance

Gets the credentials of an environment in Amazon DataZone.


=head2 GetEnvironmentProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetEnvironmentProfile>

Returns: a L<Paws::DataZone::GetEnvironmentProfileOutput> instance

Gets an evinronment profile in Amazon DataZone.


=head2 GetFormType

=over

=item DomainIdentifier => Str

=item FormTypeIdentifier => Str

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetFormType>

Returns: a L<Paws::DataZone::GetFormTypeOutput> instance

Gets a metadata form type in Amazon DataZone.


=head2 GetGlossary

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetGlossary>

Returns: a L<Paws::DataZone::GetGlossaryOutput> instance

Gets a business glossary in Amazon DataZone.


=head2 GetGlossaryTerm

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetGlossaryTerm>

Returns: a L<Paws::DataZone::GetGlossaryTermOutput> instance

Gets a business glossary term in Amazon DataZone.


=head2 GetGroupProfile

=over

=item DomainIdentifier => Str

=item GroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetGroupProfile>

Returns: a L<Paws::DataZone::GetGroupProfileOutput> instance

Gets a group profile in Amazon DataZone.


=head2 GetIamPortalLoginUrl

=over

=item DomainIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetIamPortalLoginUrl>

Returns: a L<Paws::DataZone::GetIamPortalLoginUrlOutput> instance

Gets the data portal URL for the specified Amazon DataZone domain.


=head2 GetJobRun

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetJobRun>

Returns: a L<Paws::DataZone::GetJobRunOutput> instance

The details of the job run.


=head2 GetLineageEvent

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetLineageEvent>

Returns: a L<Paws::DataZone::GetLineageEventOutput> instance

Describes the lineage event.


=head2 GetLineageNode

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [EventTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetLineageNode>

Returns: a L<Paws::DataZone::GetLineageNodeOutput> instance

Gets the data lineage node.


=head2 GetListing

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [ListingRevision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetListing>

Returns: a L<Paws::DataZone::GetListingOutput> instance

Gets a listing (a record of an asset at a given time). If you specify a
listing version, only details that are specific to that version are
returned.


=head2 GetMetadataGenerationRun

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetMetadataGenerationRun>

Returns: a L<Paws::DataZone::GetMetadataGenerationRunOutput> instance

Gets a metadata generation run in Amazon DataZone.


=head2 GetProject

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetProject>

Returns: a L<Paws::DataZone::GetProjectOutput> instance

Gets a project in Amazon DataZone.


=head2 GetProjectProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetProjectProfile>

Returns: a L<Paws::DataZone::GetProjectProfileOutput> instance

The details of the project profile.


=head2 GetRule

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetRule>

Returns: a L<Paws::DataZone::GetRuleOutput> instance

Gets the details of a rule in Amazon DataZone. A rule is a formal
agreement that enforces specific requirements across user workflows
(e.g., publishing assets to the catalog, requesting subscriptions,
creating projects) within the Amazon DataZone data portal. These rules
help maintain consistency, ensure compliance, and uphold governance
standards in data management processes. For instance, a metadata
enforcement rule can specify the required information for creating a
subscription request or publishing a data asset to the catalog,
ensuring alignment with organizational standards.


=head2 GetSubscription

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetSubscription>

Returns: a L<Paws::DataZone::GetSubscriptionOutput> instance

Gets a subscription in Amazon DataZone.


=head2 GetSubscriptionGrant

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetSubscriptionGrant>

Returns: a L<Paws::DataZone::GetSubscriptionGrantOutput> instance

Gets the subscription grant in Amazon DataZone.


=head2 GetSubscriptionRequestDetails

=over

=item DomainIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetSubscriptionRequestDetails>

Returns: a L<Paws::DataZone::GetSubscriptionRequestDetailsOutput> instance

Gets the details of the specified subscription request.


=head2 GetSubscriptionTarget

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetSubscriptionTarget>

Returns: a L<Paws::DataZone::GetSubscriptionTargetOutput> instance

Gets the subscription target in Amazon DataZone.


=head2 GetTimeSeriesDataPoint

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item FormName => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DataZone::GetTimeSeriesDataPoint>

Returns: a L<Paws::DataZone::GetTimeSeriesDataPointOutput> instance

Gets the existing data point for the asset.


=head2 GetUserProfile

=over

=item DomainIdentifier => Str

=item UserIdentifier => Str

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::GetUserProfile>

Returns: a L<Paws::DataZone::GetUserProfileOutput> instance

Gets a user profile in Amazon DataZone.


=head2 ListAssetFilters

=over

=item AssetIdentifier => Str

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListAssetFilters>

Returns: a L<Paws::DataZone::ListAssetFiltersOutput> instance

Lists asset filters.


=head2 ListAssetRevisions

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListAssetRevisions>

Returns: a L<Paws::DataZone::ListAssetRevisionsOutput> instance

Lists the revisions for the asset.


=head2 ListConnections

=over

=item DomainIdentifier => Str

=item ProjectIdentifier => Str

=item [EnvironmentIdentifier => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListConnections>

Returns: a L<Paws::DataZone::ListConnectionsOutput> instance

Lists connections. In Amazon DataZone, a connection enables you to
connect your resources (domains, projects, and environments) to
external resources and services.


=head2 ListDataProductRevisions

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDataProductRevisions>

Returns: a L<Paws::DataZone::ListDataProductRevisionsOutput> instance

Lists data product revisions.


=head2 ListDataSourceRunActivities

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDataSourceRunActivities>

Returns: a L<Paws::DataZone::ListDataSourceRunActivitiesOutput> instance

Lists data source run activities.


=head2 ListDataSourceRuns

=over

=item DataSourceIdentifier => Str

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDataSourceRuns>

Returns: a L<Paws::DataZone::ListDataSourceRunsOutput> instance

Lists data source runs in Amazon DataZone.


=head2 ListDataSources

=over

=item DomainIdentifier => Str

=item ProjectIdentifier => Str

=item [ConnectionIdentifier => Str]

=item [EnvironmentIdentifier => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Status => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDataSources>

Returns: a L<Paws::DataZone::ListDataSourcesOutput> instance

Lists data sources in Amazon DataZone.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDomains>

Returns: a L<Paws::DataZone::ListDomainsOutput> instance

Lists Amazon DataZone domains.


=head2 ListDomainUnitsForParent

=over

=item DomainIdentifier => Str

=item ParentDomainUnitIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListDomainUnitsForParent>

Returns: a L<Paws::DataZone::ListDomainUnitsForParentOutput> instance

Lists child domain units for the specified parent domain unit.


=head2 ListEntityOwners

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEntityOwners>

Returns: a L<Paws::DataZone::ListEntityOwnersOutput> instance

Lists the entity (domain units) owners.


=head2 ListEnvironmentActions

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEnvironmentActions>

Returns: a L<Paws::DataZone::ListEnvironmentActionsOutput> instance

Lists existing environment actions.


=head2 ListEnvironmentBlueprintConfigurations

=over

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEnvironmentBlueprintConfigurations>

Returns: a L<Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput> instance

Lists blueprint configurations for a Amazon DataZone environment.


=head2 ListEnvironmentBlueprints

=over

=item DomainIdentifier => Str

=item [Managed => Bool]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEnvironmentBlueprints>

Returns: a L<Paws::DataZone::ListEnvironmentBlueprintsOutput> instance

Lists blueprints in an Amazon DataZone environment.


=head2 ListEnvironmentProfiles

=over

=item DomainIdentifier => Str

=item [AwsAccountId => Str]

=item [AwsAccountRegion => Str]

=item [EnvironmentBlueprintIdentifier => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [ProjectIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEnvironmentProfiles>

Returns: a L<Paws::DataZone::ListEnvironmentProfilesOutput> instance

Lists Amazon DataZone environment profiles.


=head2 ListEnvironments

=over

=item DomainIdentifier => Str

=item ProjectIdentifier => Str

=item [AwsAccountId => Str]

=item [AwsAccountRegion => Str]

=item [EnvironmentBlueprintIdentifier => Str]

=item [EnvironmentProfileIdentifier => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Provider => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListEnvironments>

Returns: a L<Paws::DataZone::ListEnvironmentsOutput> instance

Lists Amazon DataZone environments.


=head2 ListJobRuns

=over

=item DomainIdentifier => Str

=item JobIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListJobRuns>

Returns: a L<Paws::DataZone::ListJobRunsOutput> instance

Lists job runs.


=head2 ListLineageEvents

=over

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProcessingStatus => Str]

=item [SortOrder => Str]

=item [TimestampAfter => Str]

=item [TimestampBefore => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListLineageEvents>

Returns: a L<Paws::DataZone::ListLineageEventsOutput> instance

Lists lineage events.


=head2 ListLineageNodeHistory

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Direction => Str]

=item [EventTimestampGTE => Str]

=item [EventTimestampLTE => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListLineageNodeHistory>

Returns: a L<Paws::DataZone::ListLineageNodeHistoryOutput> instance

Lists the history of the specified data lineage node.


=head2 ListMetadataGenerationRuns

=over

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListMetadataGenerationRuns>

Returns: a L<Paws::DataZone::ListMetadataGenerationRunsOutput> instance

Lists all metadata generation runs.


=head2 ListNotifications

=over

=item DomainIdentifier => Str

=item Type => Str

=item [AfterTimestamp => Str]

=item [BeforeTimestamp => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Subjects => ArrayRef[Str|Undef]]

=item [TaskStatus => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListNotifications>

Returns: a L<Paws::DataZone::ListNotificationsOutput> instance

Lists all Amazon DataZone notifications.


=head2 ListPolicyGrants

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item PolicyType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListPolicyGrants>

Returns: a L<Paws::DataZone::ListPolicyGrantsOutput> instance

Lists policy grants.


=head2 ListProjectMemberships

=over

=item DomainIdentifier => Str

=item ProjectIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListProjectMemberships>

Returns: a L<Paws::DataZone::ListProjectMembershipsOutput> instance

Lists all members of the specified project.


=head2 ListProjectProfiles

=over

=item DomainIdentifier => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListProjectProfiles>

Returns: a L<Paws::DataZone::ListProjectProfilesOutput> instance

Lists project profiles.


=head2 ListProjects

=over

=item DomainIdentifier => Str

=item [GroupIdentifier => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [UserIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListProjects>

Returns: a L<Paws::DataZone::ListProjectsOutput> instance

Lists Amazon DataZone projects.


=head2 ListRules

=over

=item DomainIdentifier => Str

=item TargetIdentifier => Str

=item TargetType => Str

=item [Action => Str]

=item [AssetTypes => ArrayRef[Str|Undef]]

=item [DataProduct => Bool]

=item [IncludeCascaded => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectIds => ArrayRef[Str|Undef]]

=item [RuleType => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListRules>

Returns: a L<Paws::DataZone::ListRulesOutput> instance

Lists existing rules. In Amazon DataZone, a rule is a formal agreement
that enforces specific requirements across user workflows (e.g.,
publishing assets to the catalog, requesting subscriptions, creating
projects) within the Amazon DataZone data portal. These rules help
maintain consistency, ensure compliance, and uphold governance
standards in data management processes. For instance, a metadata
enforcement rule can specify the required information for creating a
subscription request or publishing a data asset to the catalog,
ensuring alignment with organizational standards.


=head2 ListSubscriptionGrants

=over

=item DomainIdentifier => Str

=item [EnvironmentId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwningProjectId => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SubscribedListingId => Str]

=item [SubscriptionId => Str]

=item [SubscriptionTargetId => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListSubscriptionGrants>

Returns: a L<Paws::DataZone::ListSubscriptionGrantsOutput> instance

Lists subscription grants.


=head2 ListSubscriptionRequests

=over

=item DomainIdentifier => Str

=item [ApproverProjectId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwningProjectId => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Status => Str]

=item [SubscribedListingId => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListSubscriptionRequests>

Returns: a L<Paws::DataZone::ListSubscriptionRequestsOutput> instance

Lists Amazon DataZone subscription requests.


=head2 ListSubscriptions

=over

=item DomainIdentifier => Str

=item [ApproverProjectId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwningProjectId => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Status => Str]

=item [SubscribedListingId => Str]

=item [SubscriptionRequestIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListSubscriptions>

Returns: a L<Paws::DataZone::ListSubscriptionsOutput> instance

Lists subscriptions in Amazon DataZone.


=head2 ListSubscriptionTargets

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListSubscriptionTargets>

Returns: a L<Paws::DataZone::ListSubscriptionTargetsOutput> instance

Lists subscription targets in Amazon DataZone.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DataZone::ListTagsForResource>

Returns: a L<Paws::DataZone::ListTagsForResourceResponse> instance

Lists tags for the specified resource in Amazon DataZone.


=head2 ListTimeSeriesDataPoints

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item FormName => Str

=item [EndedAt => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartedAt => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::ListTimeSeriesDataPoints>

Returns: a L<Paws::DataZone::ListTimeSeriesDataPointsOutput> instance

Lists time series data points.


=head2 PostLineageEvent

=over

=item DomainIdentifier => Str

=item Event => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::PostLineageEvent>

Returns: a L<Paws::DataZone::PostLineageEventOutput> instance

Posts a data lineage event.


=head2 PostTimeSeriesDataPoints

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item Forms => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointFormInput>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::PostTimeSeriesDataPoints>

Returns: a L<Paws::DataZone::PostTimeSeriesDataPointsOutput> instance

Posts time series data points to Amazon DataZone for the specified
asset.


=head2 PutEnvironmentBlueprintConfiguration

=over

=item DomainIdentifier => Str

=item EnabledRegions => ArrayRef[Str|Undef]

=item EnvironmentBlueprintIdentifier => Str

=item [EnvironmentRolePermissionBoundary => Str]

=item [ManageAccessRoleArn => Str]

=item [ProvisioningConfigurations => ArrayRef[L<Paws::DataZone::ProvisioningConfiguration>]]

=item [ProvisioningRoleArn => Str]

=item [RegionalParameters => L<Paws::DataZone::RegionalParameterMap>]


=back

Each argument is described in detail in: L<Paws::DataZone::PutEnvironmentBlueprintConfiguration>

Returns: a L<Paws::DataZone::PutEnvironmentBlueprintConfigurationOutput> instance

Writes the configuration for the specified environment blueprint in
Amazon DataZone.


=head2 RejectPredictions

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [ClientToken => Str]

=item [RejectChoices => ArrayRef[L<Paws::DataZone::RejectChoice>]]

=item [RejectRule => L<Paws::DataZone::RejectRule>]

=item [Revision => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::RejectPredictions>

Returns: a L<Paws::DataZone::RejectPredictionsOutput> instance

Rejects automatically generated business-friendly metadata for your
Amazon DataZone assets.


=head2 RejectSubscriptionRequest

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [DecisionComment => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::RejectSubscriptionRequest>

Returns: a L<Paws::DataZone::RejectSubscriptionRequestOutput> instance

Rejects the specified subscription request.


=head2 RemoveEntityOwner

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item Owner => L<Paws::DataZone::OwnerProperties>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::RemoveEntityOwner>

Returns: a L<Paws::DataZone::RemoveEntityOwnerOutput> instance

Removes an owner from an entity.


=head2 RemovePolicyGrant

=over

=item DomainIdentifier => Str

=item EntityIdentifier => Str

=item EntityType => Str

=item PolicyType => Str

=item Principal => L<Paws::DataZone::PolicyGrantPrincipal>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::RemovePolicyGrant>

Returns: a L<Paws::DataZone::RemovePolicyGrantOutput> instance

Removes a policy grant.


=head2 RevokeSubscription

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [RetainPermissions => Bool]


=back

Each argument is described in detail in: L<Paws::DataZone::RevokeSubscription>

Returns: a L<Paws::DataZone::RevokeSubscriptionOutput> instance

Revokes a specified subscription in Amazon DataZone.


=head2 Search

=over

=item DomainIdentifier => Str

=item SearchScope => Str

=item [AdditionalAttributes => ArrayRef[Str|Undef]]

=item [Filters => L<Paws::DataZone::FilterClause>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwningProjectIdentifier => Str]

=item [SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>]]

=item [SearchText => Str]

=item [Sort => L<Paws::DataZone::SearchSort>]


=back

Each argument is described in detail in: L<Paws::DataZone::Search>

Returns: a L<Paws::DataZone::SearchOutput> instance

Searches for assets in Amazon DataZone.


=head2 SearchGroupProfiles

=over

=item DomainIdentifier => Str

=item GroupType => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchText => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::SearchGroupProfiles>

Returns: a L<Paws::DataZone::SearchGroupProfilesOutput> instance

Searches group profiles in Amazon DataZone.


=head2 SearchListings

=over

=item DomainIdentifier => Str

=item [AdditionalAttributes => ArrayRef[Str|Undef]]

=item [Filters => L<Paws::DataZone::FilterClause>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>]]

=item [SearchText => Str]

=item [Sort => L<Paws::DataZone::SearchSort>]


=back

Each argument is described in detail in: L<Paws::DataZone::SearchListings>

Returns: a L<Paws::DataZone::SearchListingsOutput> instance

Searches listings (records of an asset at a given time) in Amazon
DataZone.


=head2 SearchTypes

=over

=item DomainIdentifier => Str

=item Managed => Bool

=item SearchScope => Str

=item [Filters => L<Paws::DataZone::FilterClause>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>]]

=item [SearchText => Str]

=item [Sort => L<Paws::DataZone::SearchSort>]


=back

Each argument is described in detail in: L<Paws::DataZone::SearchTypes>

Returns: a L<Paws::DataZone::SearchTypesOutput> instance

Searches for types in Amazon DataZone.


=head2 SearchUserProfiles

=over

=item DomainIdentifier => Str

=item UserType => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchText => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::SearchUserProfiles>

Returns: a L<Paws::DataZone::SearchUserProfilesOutput> instance

Searches user profiles in Amazon DataZone.


=head2 StartDataSourceRun

=over

=item DataSourceIdentifier => Str

=item DomainIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::StartDataSourceRun>

Returns: a L<Paws::DataZone::StartDataSourceRunOutput> instance

Start the run of the specified data source in Amazon DataZone.


=head2 StartMetadataGenerationRun

=over

=item DomainIdentifier => Str

=item OwningProjectIdentifier => Str

=item Target => L<Paws::DataZone::MetadataGenerationRunTarget>

=item Type => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::StartMetadataGenerationRun>

Returns: a L<Paws::DataZone::StartMetadataGenerationRunOutput> instance

Starts the metadata generation run.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::DataZone::Tags>


=back

Each argument is described in detail in: L<Paws::DataZone::TagResource>

Returns: a L<Paws::DataZone::TagResourceResponse> instance

Tags a resource in Amazon DataZone.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DataZone::UntagResource>

Returns: a L<Paws::DataZone::UntagResourceResponse> instance

Untags a resource in Amazon DataZone.


=head2 UpdateAssetFilter

=over

=item AssetIdentifier => Str

=item DomainIdentifier => Str

=item Identifier => Str

=item [Configuration => L<Paws::DataZone::AssetFilterConfiguration>]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateAssetFilter>

Returns: a L<Paws::DataZone::UpdateAssetFilterOutput> instance

Updates an asset filter.


=head2 UpdateConnection

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [AwsLocation => L<Paws::DataZone::AwsLocation>]

=item [Description => Str]

=item [Props => L<Paws::DataZone::ConnectionPropertiesPatch>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateConnection>

Returns: a L<Paws::DataZone::UpdateConnectionOutput> instance

Updates a connection. In Amazon DataZone, a connection enables you to
connect your resources (domains, projects, and environments) to
external resources and services.


=head2 UpdateDataSource

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [AssetFormsInput => ArrayRef[L<Paws::DataZone::FormInput>]]

=item [Configuration => L<Paws::DataZone::DataSourceConfigurationInput>]

=item [Description => Str]

=item [EnableSetting => Str]

=item [Name => Str]

=item [PublishOnImport => Bool]

=item [Recommendation => L<Paws::DataZone::RecommendationConfiguration>]

=item [RetainPermissionsOnRevokeFailure => Bool]

=item [Schedule => L<Paws::DataZone::ScheduleConfiguration>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateDataSource>

Returns: a L<Paws::DataZone::UpdateDataSourceOutput> instance

Updates the specified data source in Amazon DataZone.


=head2 UpdateDomain

=over

=item Identifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DomainExecutionRole => Str]

=item [Name => Str]

=item [ServiceRole => Str]

=item [SingleSignOn => L<Paws::DataZone::SingleSignOn>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateDomain>

Returns: a L<Paws::DataZone::UpdateDomainOutput> instance

Updates a Amazon DataZone domain.


=head2 UpdateDomainUnit

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateDomainUnit>

Returns: a L<Paws::DataZone::UpdateDomainUnitOutput> instance

Updates the domain unit.


=head2 UpdateEnvironment

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [BlueprintVersion => Str]

=item [Description => Str]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateEnvironment>

Returns: a L<Paws::DataZone::UpdateEnvironmentOutput> instance

Updates the specified environment in Amazon DataZone.


=head2 UpdateEnvironmentAction

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str

=item [Description => Str]

=item [Name => Str]

=item [Parameters => L<Paws::DataZone::ActionParameters>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateEnvironmentAction>

Returns: a L<Paws::DataZone::UpdateEnvironmentActionOutput> instance

Updates an environment action.


=head2 UpdateEnvironmentProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [AwsAccountId => Str]

=item [AwsAccountRegion => Str]

=item [Description => Str]

=item [Name => Str]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateEnvironmentProfile>

Returns: a L<Paws::DataZone::UpdateEnvironmentProfileOutput> instance

Updates the specified environment profile in Amazon DataZone.


=head2 UpdateGlossary

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateGlossary>

Returns: a L<Paws::DataZone::UpdateGlossaryOutput> instance

Updates the business glossary in Amazon DataZone.


=head2 UpdateGlossaryTerm

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [GlossaryIdentifier => Str]

=item [LongDescription => Str]

=item [Name => Str]

=item [ShortDescription => Str]

=item [Status => Str]

=item [TermRelations => L<Paws::DataZone::TermRelations>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateGlossaryTerm>

Returns: a L<Paws::DataZone::UpdateGlossaryTermOutput> instance

Updates a business glossary term in Amazon DataZone.


=head2 UpdateGroupProfile

=over

=item DomainIdentifier => Str

=item GroupIdentifier => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateGroupProfile>

Returns: a L<Paws::DataZone::UpdateGroupProfileOutput> instance

Updates the specified group profile in Amazon DataZone.


=head2 UpdateProject

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Description => Str]

=item [EnvironmentDeploymentDetails => L<Paws::DataZone::EnvironmentDeploymentDetails>]

=item [GlossaryTerms => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [ProjectProfileVersion => Str]

=item [UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentConfigurationUserParameter>]]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateProject>

Returns: a L<Paws::DataZone::UpdateProjectOutput> instance

Updates the specified project in Amazon DataZone.


=head2 UpdateProjectProfile

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Description => Str]

=item [DomainUnitIdentifier => Str]

=item [EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]]

=item [Name => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateProjectProfile>

Returns: a L<Paws::DataZone::UpdateProjectProfileOutput> instance

Updates a project profile.


=head2 UpdateRule

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item [Description => Str]

=item [Detail => L<Paws::DataZone::RuleDetail>]

=item [IncludeChildDomainUnits => Bool]

=item [Name => Str]

=item [Scope => L<Paws::DataZone::RuleScope>]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateRule>

Returns: a L<Paws::DataZone::UpdateRuleOutput> instance

Updates a rule. In Amazon DataZone, a rule is a formal agreement that
enforces specific requirements across user workflows (e.g., publishing
assets to the catalog, requesting subscriptions, creating projects)
within the Amazon DataZone data portal. These rules help maintain
consistency, ensure compliance, and uphold governance standards in data
management processes. For instance, a metadata enforcement rule can
specify the required information for creating a subscription request or
publishing a data asset to the catalog, ensuring alignment with
organizational standards.


=head2 UpdateSubscriptionGrantStatus

=over

=item AssetIdentifier => Str

=item DomainIdentifier => Str

=item Identifier => Str

=item Status => Str

=item [FailureCause => L<Paws::DataZone::FailureCause>]

=item [TargetName => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateSubscriptionGrantStatus>

Returns: a L<Paws::DataZone::UpdateSubscriptionGrantStatusOutput> instance

Updates the status of the specified subscription grant status in Amazon
DataZone.


=head2 UpdateSubscriptionRequest

=over

=item DomainIdentifier => Str

=item Identifier => Str

=item RequestReason => Str


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateSubscriptionRequest>

Returns: a L<Paws::DataZone::UpdateSubscriptionRequestOutput> instance

Updates a specified subscription request in Amazon DataZone.


=head2 UpdateSubscriptionTarget

=over

=item DomainIdentifier => Str

=item EnvironmentIdentifier => Str

=item Identifier => Str

=item [ApplicableAssetTypes => ArrayRef[Str|Undef]]

=item [AuthorizedPrincipals => ArrayRef[Str|Undef]]

=item [ManageAccessRole => Str]

=item [Name => Str]

=item [Provider => Str]

=item [SubscriptionTargetConfig => ArrayRef[L<Paws::DataZone::SubscriptionTargetForm>]]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateSubscriptionTarget>

Returns: a L<Paws::DataZone::UpdateSubscriptionTargetOutput> instance

Updates the specified subscription target in Amazon DataZone.


=head2 UpdateUserProfile

=over

=item DomainIdentifier => Str

=item Status => Str

=item UserIdentifier => Str

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::DataZone::UpdateUserProfile>

Returns: a L<Paws::DataZone::UpdateUserProfileOutput> instance

Updates the specified user profile in Amazon DataZone.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssetFilters(sub { },AssetIdentifier => Str, DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllAssetFilters(AssetIdentifier => Str, DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListAssetFiltersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetRevisions(sub { },DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssetRevisions(DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListAssetRevisionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnections(sub { },DomainIdentifier => Str, ProjectIdentifier => Str, [EnvironmentIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Type => Str])

=head2 ListAllConnections(DomainIdentifier => Str, ProjectIdentifier => Str, [EnvironmentIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, SortBy => Str, SortOrder => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListConnectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataProductRevisions(sub { },DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataProductRevisions(DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDataProductRevisionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSourceRunActivities(sub { },DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllDataSourceRunActivities(DomainIdentifier => Str, Identifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDataSourceRunActivitiesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSourceRuns(sub { },DataSourceIdentifier => Str, DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllDataSourceRuns(DataSourceIdentifier => Str, DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDataSourceRunsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSources(sub { },DomainIdentifier => Str, ProjectIdentifier => Str, [ConnectionIdentifier => Str, EnvironmentIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, Status => Str, Type => Str])

=head2 ListAllDataSources(DomainIdentifier => Str, ProjectIdentifier => Str, [ConnectionIdentifier => Str, EnvironmentIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, Status => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDataSourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDomainsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomainUnitsForParent(sub { },DomainIdentifier => Str, ParentDomainUnitIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDomainUnitsForParent(DomainIdentifier => Str, ParentDomainUnitIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListDomainUnitsForParentOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntityOwners(sub { },DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEntityOwners(DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - owners, passing the object as the first parameter, and the string 'owners' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEntityOwnersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentActions(sub { },DomainIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentActions(DomainIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEnvironmentActionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentBlueprintConfigurations(sub { },DomainIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentBlueprintConfigurations(DomainIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentBlueprints(sub { },DomainIdentifier => Str, [Managed => Bool, MaxResults => Int, Name => Str, NextToken => Str])

=head2 ListAllEnvironmentBlueprints(DomainIdentifier => Str, [Managed => Bool, MaxResults => Int, Name => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEnvironmentBlueprintsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentProfiles(sub { },DomainIdentifier => Str, [AwsAccountId => Str, AwsAccountRegion => Str, EnvironmentBlueprintIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, ProjectIdentifier => Str])

=head2 ListAllEnvironmentProfiles(DomainIdentifier => Str, [AwsAccountId => Str, AwsAccountRegion => Str, EnvironmentBlueprintIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, ProjectIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEnvironmentProfilesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },DomainIdentifier => Str, ProjectIdentifier => Str, [AwsAccountId => Str, AwsAccountRegion => Str, EnvironmentBlueprintIdentifier => Str, EnvironmentProfileIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, Provider => Str, Status => Str])

=head2 ListAllEnvironments(DomainIdentifier => Str, ProjectIdentifier => Str, [AwsAccountId => Str, AwsAccountRegion => Str, EnvironmentBlueprintIdentifier => Str, EnvironmentProfileIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, Provider => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListEnvironmentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobRuns(sub { },DomainIdentifier => Str, JobIdentifier => Str, [MaxResults => Int, NextToken => Str, SortOrder => Str, Status => Str])

=head2 ListAllJobRuns(DomainIdentifier => Str, JobIdentifier => Str, [MaxResults => Int, NextToken => Str, SortOrder => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListJobRunsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLineageEvents(sub { },DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, ProcessingStatus => Str, SortOrder => Str, TimestampAfter => Str, TimestampBefore => Str])

=head2 ListAllLineageEvents(DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, ProcessingStatus => Str, SortOrder => Str, TimestampAfter => Str, TimestampBefore => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListLineageEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLineageNodeHistory(sub { },DomainIdentifier => Str, Identifier => Str, [Direction => Str, EventTimestampGTE => Str, EventTimestampLTE => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllLineageNodeHistory(DomainIdentifier => Str, Identifier => Str, [Direction => Str, EventTimestampGTE => Str, EventTimestampLTE => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - nodes, passing the object as the first parameter, and the string 'nodes' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListLineageNodeHistoryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMetadataGenerationRuns(sub { },DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str, Type => Str])

=head2 ListAllMetadataGenerationRuns(DomainIdentifier => Str, [MaxResults => Int, NextToken => Str, Status => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListMetadataGenerationRunsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotifications(sub { },DomainIdentifier => Str, Type => Str, [AfterTimestamp => Str, BeforeTimestamp => Str, MaxResults => Int, NextToken => Str, Subjects => ArrayRef[Str|Undef], TaskStatus => Str])

=head2 ListAllNotifications(DomainIdentifier => Str, Type => Str, [AfterTimestamp => Str, BeforeTimestamp => Str, MaxResults => Int, NextToken => Str, Subjects => ArrayRef[Str|Undef], TaskStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - notifications, passing the object as the first parameter, and the string 'notifications' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListNotificationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyGrants(sub { },DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, PolicyType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPolicyGrants(DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, PolicyType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - grantList, passing the object as the first parameter, and the string 'grantList' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListPolicyGrantsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjectMemberships(sub { },DomainIdentifier => Str, ProjectIdentifier => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllProjectMemberships(DomainIdentifier => Str, ProjectIdentifier => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListProjectMembershipsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjectProfiles(sub { },DomainIdentifier => Str, [MaxResults => Int, Name => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllProjectProfiles(DomainIdentifier => Str, [MaxResults => Int, Name => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListProjectProfilesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },DomainIdentifier => Str, [GroupIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, UserIdentifier => Str])

=head2 ListAllProjects(DomainIdentifier => Str, [GroupIdentifier => Str, MaxResults => Int, Name => Str, NextToken => Str, UserIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListProjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },DomainIdentifier => Str, TargetIdentifier => Str, TargetType => Str, [Action => Str, AssetTypes => ArrayRef[Str|Undef], DataProduct => Bool, IncludeCascaded => Bool, MaxResults => Int, NextToken => Str, ProjectIds => ArrayRef[Str|Undef], RuleType => Str])

=head2 ListAllRules(DomainIdentifier => Str, TargetIdentifier => Str, TargetType => Str, [Action => Str, AssetTypes => ArrayRef[Str|Undef], DataProduct => Bool, IncludeCascaded => Bool, MaxResults => Int, NextToken => Str, ProjectIds => ArrayRef[Str|Undef], RuleType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListRulesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptionGrants(sub { },DomainIdentifier => Str, [EnvironmentId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, SubscribedListingId => Str, SubscriptionId => Str, SubscriptionTargetId => Str])

=head2 ListAllSubscriptionGrants(DomainIdentifier => Str, [EnvironmentId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, SubscribedListingId => Str, SubscriptionId => Str, SubscriptionTargetId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListSubscriptionGrantsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptionRequests(sub { },DomainIdentifier => Str, [ApproverProjectId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, Status => Str, SubscribedListingId => Str])

=head2 ListAllSubscriptionRequests(DomainIdentifier => Str, [ApproverProjectId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, Status => Str, SubscribedListingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListSubscriptionRequestsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptions(sub { },DomainIdentifier => Str, [ApproverProjectId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, Status => Str, SubscribedListingId => Str, SubscriptionRequestIdentifier => Str])

=head2 ListAllSubscriptions(DomainIdentifier => Str, [ApproverProjectId => Str, MaxResults => Int, NextToken => Str, OwningProjectId => Str, SortBy => Str, SortOrder => Str, Status => Str, SubscribedListingId => Str, SubscriptionRequestIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListSubscriptionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptionTargets(sub { },DomainIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllSubscriptionTargets(DomainIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListSubscriptionTargetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTimeSeriesDataPoints(sub { },DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, FormName => Str, [EndedAt => Str, MaxResults => Int, NextToken => Str, StartedAt => Str])

=head2 ListAllTimeSeriesDataPoints(DomainIdentifier => Str, EntityIdentifier => Str, EntityType => Str, FormName => Str, [EndedAt => Str, MaxResults => Int, NextToken => Str, StartedAt => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::ListTimeSeriesDataPointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAll(sub { },DomainIdentifier => Str, SearchScope => Str, [AdditionalAttributes => ArrayRef[Str|Undef], Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, OwningProjectIdentifier => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])

=head2 SearchAll(DomainIdentifier => Str, SearchScope => Str, [AdditionalAttributes => ArrayRef[Str|Undef], Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, OwningProjectIdentifier => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::SearchOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllGroupProfiles(sub { },DomainIdentifier => Str, GroupType => Str, [MaxResults => Int, NextToken => Str, SearchText => Str])

=head2 SearchAllGroupProfiles(DomainIdentifier => Str, GroupType => Str, [MaxResults => Int, NextToken => Str, SearchText => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::SearchGroupProfilesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllListings(sub { },DomainIdentifier => Str, [AdditionalAttributes => ArrayRef[Str|Undef], Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])

=head2 SearchAllListings(DomainIdentifier => Str, [AdditionalAttributes => ArrayRef[Str|Undef], Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::SearchListingsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllTypes(sub { },DomainIdentifier => Str, Managed => Bool, SearchScope => Str, [Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])

=head2 SearchAllTypes(DomainIdentifier => Str, Managed => Bool, SearchScope => Str, [Filters => L<Paws::DataZone::FilterClause>, MaxResults => Int, NextToken => Str, SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>], SearchText => Str, Sort => L<Paws::DataZone::SearchSort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::SearchTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllUserProfiles(sub { },DomainIdentifier => Str, UserType => Str, [MaxResults => Int, NextToken => Str, SearchText => Str])

=head2 SearchAllUserProfiles(DomainIdentifier => Str, UserType => Str, [MaxResults => Int, NextToken => Str, SearchText => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::DataZone::SearchUserProfilesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

