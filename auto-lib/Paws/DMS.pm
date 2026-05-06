package Paws::DMS;
  use Moose;
  sub service { 'dms' }
  sub signing_name { 'dms' }
  sub version { '2016-01-01' }
  sub target_prefix { 'AmazonDMSv20160101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ApplyPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchStartRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::BatchStartRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelReplicationTaskAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CancelReplicationTaskAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataMigration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateDataMigration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateDataProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleetAdvisorCollector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateFleetAdvisorCollector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMigrationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateMigrationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataMigration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteDataMigration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteDataProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleetAdvisorCollector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteFleetAdvisorCollector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleetAdvisorDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteFleetAdvisorDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMigrationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteMigrationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationTaskAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationTaskAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicableIndividualAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeApplicableIndividualAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConversionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeConversionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataMigrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeDataMigrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeDataProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpointSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpointTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExtensionPackAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeExtensionPackAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAdvisorCollectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeFleetAdvisorCollectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAdvisorDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeFleetAdvisorDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAdvisorLsaAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeFleetAdvisorLsaAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAdvisorSchemaObjectSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeFleetAdvisorSchemaObjectSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAdvisorSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeFleetAdvisorSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeInstanceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetadataModelAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMetadataModelAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetadataModelConversions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMetadataModelConversions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetadataModelExportsAsScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMetadataModelExportsAsScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetadataModelExportsToTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMetadataModelExportsToTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetadataModelImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMetadataModelImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMigrationProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeMigrationProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeOrderableReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePendingMaintenanceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribePendingMaintenanceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecommendationLimitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeRecommendationLimitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRefreshSchemasStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeRefreshSchemasStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationInstanceTaskLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationInstanceTaskLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTableStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTableStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTaskAssessmentResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTaskAssessmentResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTaskAssessmentRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTaskAssessmentRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTaskIndividualAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTaskIndividualAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTableStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeTableStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportMetadataModelAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ExportMetadataModelAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ImportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyConversionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyConversionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDataMigration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyDataMigration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDataProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyDataProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyMigrationProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyMigrationProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::MoveReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RebootReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RefreshSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReloadReplicationTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ReloadReplicationTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReloadTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ReloadTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunFleetAdvisorLsaAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RunFleetAdvisorLsaAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataMigration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartDataMigration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExtensionPackAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartExtensionPackAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataModelAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartMetadataModelAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataModelConversion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartMetadataModelConversion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataModelExportAsScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartMetadataModelExportAsScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataModelExportToTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartMetadataModelExportToTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetadataModelImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartMetadataModelImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTaskAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTaskAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTaskAssessmentRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTaskAssessmentRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataMigration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StopDataMigration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StopReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StopReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::TestConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriptionsToEventBridge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::UpdateSubscriptionsToEventBridge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCertificates(@_, Marker => $next_result->Marker);
        push @{ $result->Certificates }, @{ $next_result->Certificates };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
        $result = $self->DescribeCertificates(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
    }

    return undef
  }
  sub DescribeAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeConnections(@_, Marker => $next_result->Marker);
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->DescribeConnections(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub DescribeAllDataMigrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDataMigrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDataMigrations(@_, Marker => $next_result->Marker);
        push @{ $result->DataMigrations }, @{ $next_result->DataMigrations };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DataMigrations') foreach (@{ $result->DataMigrations });
        $result = $self->DescribeDataMigrations(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DataMigrations') foreach (@{ $result->DataMigrations });
    }

    return undef
  }
  sub DescribeAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEndpoints(@_, Marker => $next_result->Marker);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->DescribeEndpoints(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub DescribeAllEndpointTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEndpointTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEndpointTypes(@_, Marker => $next_result->Marker);
        push @{ $result->SupportedEndpointTypes }, @{ $next_result->SupportedEndpointTypes };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SupportedEndpointTypes') foreach (@{ $result->SupportedEndpointTypes });
        $result = $self->DescribeEndpointTypes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SupportedEndpointTypes') foreach (@{ $result->SupportedEndpointTypes });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEvents(@_, Marker => $next_result->Marker);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEventSubscriptions(@_, Marker => $next_result->Marker);
        push @{ $result->EventSubscriptionsList }, @{ $next_result->EventSubscriptionsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
    }

    return undef
  }
  sub DescribeAllOrderableReplicationInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrderableReplicationInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOrderableReplicationInstances(@_, Marker => $next_result->Marker);
        push @{ $result->OrderableReplicationInstances }, @{ $next_result->OrderableReplicationInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OrderableReplicationInstances') foreach (@{ $result->OrderableReplicationInstances });
        $result = $self->DescribeOrderableReplicationInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OrderableReplicationInstances') foreach (@{ $result->OrderableReplicationInstances });
    }

    return undef
  }
  sub DescribeAllReplicationInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationInstances(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationInstances }, @{ $next_result->ReplicationInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationInstances') foreach (@{ $result->ReplicationInstances });
        $result = $self->DescribeReplicationInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationInstances') foreach (@{ $result->ReplicationInstances });
    }

    return undef
  }
  sub DescribeAllReplicationSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationSubnetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationSubnetGroups }, @{ $next_result->ReplicationSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationSubnetGroups') foreach (@{ $result->ReplicationSubnetGroups });
        $result = $self->DescribeReplicationSubnetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationSubnetGroups') foreach (@{ $result->ReplicationSubnetGroups });
    }

    return undef
  }
  sub DescribeAllReplicationTaskAssessmentResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationTaskAssessmentResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationTaskAssessmentResults(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationTaskAssessmentResults }, @{ $next_result->ReplicationTaskAssessmentResults };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationTaskAssessmentResults') foreach (@{ $result->ReplicationTaskAssessmentResults });
        $result = $self->DescribeReplicationTaskAssessmentResults(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationTaskAssessmentResults') foreach (@{ $result->ReplicationTaskAssessmentResults });
    }

    return undef
  }
  sub DescribeAllReplicationTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationTasks(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationTasks }, @{ $next_result->ReplicationTasks };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationTasks') foreach (@{ $result->ReplicationTasks });
        $result = $self->DescribeReplicationTasks(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationTasks') foreach (@{ $result->ReplicationTasks });
    }

    return undef
  }
  sub DescribeAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSchemas(@_, Marker => $next_result->Marker);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->DescribeSchemas(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub DescribeAllTableStatistics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTableStatistics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTableStatistics(@_, Marker => $next_result->Marker);
        push @{ $result->TableStatistics }, @{ $next_result->TableStatistics };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TableStatistics') foreach (@{ $result->TableStatistics });
        $result = $self->DescribeTableStatistics(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TableStatistics') foreach (@{ $result->TableStatistics });
    }

    return undef
  }


  sub operations { qw/AddTagsToResource ApplyPendingMaintenanceAction BatchStartRecommendations CancelReplicationTaskAssessmentRun CreateDataMigration CreateDataProvider CreateEndpoint CreateEventSubscription CreateFleetAdvisorCollector CreateInstanceProfile CreateMigrationProject CreateReplicationConfig CreateReplicationInstance CreateReplicationSubnetGroup CreateReplicationTask DeleteCertificate DeleteConnection DeleteDataMigration DeleteDataProvider DeleteEndpoint DeleteEventSubscription DeleteFleetAdvisorCollector DeleteFleetAdvisorDatabases DeleteInstanceProfile DeleteMigrationProject DeleteReplicationConfig DeleteReplicationInstance DeleteReplicationSubnetGroup DeleteReplicationTask DeleteReplicationTaskAssessmentRun DescribeAccountAttributes DescribeApplicableIndividualAssessments DescribeCertificates DescribeConnections DescribeConversionConfiguration DescribeDataMigrations DescribeDataProviders DescribeEndpoints DescribeEndpointSettings DescribeEndpointTypes DescribeEngineVersions DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeExtensionPackAssociations DescribeFleetAdvisorCollectors DescribeFleetAdvisorDatabases DescribeFleetAdvisorLsaAnalysis DescribeFleetAdvisorSchemaObjectSummary DescribeFleetAdvisorSchemas DescribeInstanceProfiles DescribeMetadataModelAssessments DescribeMetadataModelConversions DescribeMetadataModelExportsAsScript DescribeMetadataModelExportsToTarget DescribeMetadataModelImports DescribeMigrationProjects DescribeOrderableReplicationInstances DescribePendingMaintenanceActions DescribeRecommendationLimitations DescribeRecommendations DescribeRefreshSchemasStatus DescribeReplicationConfigs DescribeReplicationInstances DescribeReplicationInstanceTaskLogs DescribeReplications DescribeReplicationSubnetGroups DescribeReplicationTableStatistics DescribeReplicationTaskAssessmentResults DescribeReplicationTaskAssessmentRuns DescribeReplicationTaskIndividualAssessments DescribeReplicationTasks DescribeSchemas DescribeTableStatistics ExportMetadataModelAssessment ImportCertificate ListTagsForResource ModifyConversionConfiguration ModifyDataMigration ModifyDataProvider ModifyEndpoint ModifyEventSubscription ModifyInstanceProfile ModifyMigrationProject ModifyReplicationConfig ModifyReplicationInstance ModifyReplicationSubnetGroup ModifyReplicationTask MoveReplicationTask RebootReplicationInstance RefreshSchemas ReloadReplicationTables ReloadTables RemoveTagsFromResource RunFleetAdvisorLsaAnalysis StartDataMigration StartExtensionPackAssociation StartMetadataModelAssessment StartMetadataModelConversion StartMetadataModelExportAsScript StartMetadataModelExportToTarget StartMetadataModelImport StartRecommendations StartReplication StartReplicationTask StartReplicationTaskAssessment StartReplicationTaskAssessmentRun StopDataMigration StopReplication StopReplicationTask TestConnection UpdateSubscriptionsToEventBridge / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS - Perl Interface to AWS AWS Database Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DMS');
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

Database Migration Service

Database Migration Service (DMS) can migrate your data to and from the
most widely used commercial and open-source databases such as Oracle,
PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon
Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service
supports homogeneous migrations such as Oracle to Oracle, as well as
heterogeneous migrations between different database platforms, such as
Oracle to MySQL or SQL Server to PostgreSQL.

For more information about DMS, see What Is Database Migration Service?
(https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html) in the
I<Database Migration Service User Guide.>

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddTagsToResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::DMS::Tag>]


=back

Each argument is described in detail in: L<Paws::DMS::AddTagsToResource>

Returns: a L<Paws::DMS::AddTagsToResourceResponse> instance

Adds metadata tags to an DMS resource, including replication instance,
endpoint, subnet group, and migration task. These tags can also be used
with cost allocation reporting to track cost associated with DMS
resources, or used in a Condition statement in an IAM policy for DMS.
For more information, see C<Tag>
(https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data
type description.


=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::ApplyPendingMaintenanceAction>

Returns: a L<Paws::DMS::ApplyPendingMaintenanceActionResponse> instance

Applies a pending maintenance action to a resource (for example, to a
replication instance).


=head2 BatchStartRecommendations

=over

=item [Data => ArrayRef[L<Paws::DMS::StartRecommendationsRequestEntry>]]


=back

Each argument is described in detail in: L<Paws::DMS::BatchStartRecommendations>

Returns: a L<Paws::DMS::BatchStartRecommendationsResponse> instance

Starts the analysis of up to 20 source databases to recommend target
engines for each source database. This is a batch version of
StartRecommendations
(https://docs.aws.amazon.com/dms/latest/APIReference/API_StartRecommendations.html).

The result of analysis of each source database is reported individually
in the response. Because the batch request can result in a combination
of successful and unsuccessful actions, you should check for batch
errors even when the call returns an HTTP status code of C<200>.


=head2 CancelReplicationTaskAssessmentRun

=over

=item ReplicationTaskAssessmentRunArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::CancelReplicationTaskAssessmentRun>

Returns: a L<Paws::DMS::CancelReplicationTaskAssessmentRunResponse> instance

Cancels a single premigration assessment run.

This operation prevents any individual assessments from running if they
haven't started running. It also attempts to cancel any individual
assessments that are currently running.


=head2 CreateDataMigration

=over

=item DataMigrationType => Str

=item MigrationProjectIdentifier => Str

=item ServiceAccessRoleArn => Str

=item [DataMigrationName => Str]

=item [EnableCloudwatchLogs => Bool]

=item [NumberOfJobs => Int]

=item [SelectionRules => Str]

=item [SourceDataSettings => ArrayRef[L<Paws::DMS::SourceDataSetting>]]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [TargetDataSettings => ArrayRef[L<Paws::DMS::TargetDataSetting>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateDataMigration>

Returns: a L<Paws::DMS::CreateDataMigrationResponse> instance

Creates a data migration using the provided settings.


=head2 CreateDataProvider

=over

=item Engine => Str

=item Settings => L<Paws::DMS::DataProviderSettings>

=item [DataProviderName => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateDataProvider>

Returns: a L<Paws::DMS::CreateDataProviderResponse> instance

Creates a data provider using the provided settings. A data provider
stores a data store type and location information about your database.


=head2 CreateEndpoint

=over

=item EndpointIdentifier => Str

=item EndpointType => Str

=item EngineName => Str

=item [CertificateArn => Str]

=item [DatabaseName => Str]

=item [DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>]

=item [DocDbSettings => L<Paws::DMS::DocDbSettings>]

=item [DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>]

=item [ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>]

=item [ExternalTableDefinition => Str]

=item [ExtraConnectionAttributes => Str]

=item [GcpMySQLSettings => L<Paws::DMS::GcpMySQLSettings>]

=item [IBMDb2Settings => L<Paws::DMS::IBMDb2Settings>]

=item [KafkaSettings => L<Paws::DMS::KafkaSettings>]

=item [KinesisSettings => L<Paws::DMS::KinesisSettings>]

=item [KmsKeyId => Str]

=item [MicrosoftSQLServerSettings => L<Paws::DMS::MicrosoftSQLServerSettings>]

=item [MongoDbSettings => L<Paws::DMS::MongoDbSettings>]

=item [MySQLSettings => L<Paws::DMS::MySQLSettings>]

=item [NeptuneSettings => L<Paws::DMS::NeptuneSettings>]

=item [OracleSettings => L<Paws::DMS::OracleSettings>]

=item [Password => Str]

=item [Port => Int]

=item [PostgreSQLSettings => L<Paws::DMS::PostgreSQLSettings>]

=item [RedisSettings => L<Paws::DMS::RedisSettings>]

=item [RedshiftSettings => L<Paws::DMS::RedshiftSettings>]

=item [ResourceIdentifier => Str]

=item [S3Settings => L<Paws::DMS::S3Settings>]

=item [ServerName => Str]

=item [ServiceAccessRoleArn => Str]

=item [SslMode => Str]

=item [SybaseSettings => L<Paws::DMS::SybaseSettings>]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [TimestreamSettings => L<Paws::DMS::TimestreamSettings>]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::DMS::CreateEndpoint>

Returns: a L<Paws::DMS::CreateEndpointResponse> instance

Creates an endpoint using the provided settings.

For a MySQL source or target endpoint, don't explicitly specify the
database using the C<DatabaseName> request parameter on the
C<CreateEndpoint> API call. Specifying C<DatabaseName> when you create
a MySQL endpoint replicates all the task tables to this single
database. For MySQL endpoints, you specify the database only when you
specify the schema in the table-mapping rules of the DMS task.


=head2 CreateEventSubscription

=over

=item SnsTopicArn => Str

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateEventSubscription>

Returns: a L<Paws::DMS::CreateEventSubscriptionResponse> instance

Creates an DMS event notification subscription.

You can specify the type of source (C<SourceType>) you want to be
notified of, provide a list of DMS source IDs (C<SourceIds>) that
triggers the events, and provide a list of event categories
(C<EventCategories>) for events you want to be notified of. If you
specify both the C<SourceType> and C<SourceIds>, such as C<SourceType =
replication-instance> and C<SourceIdentifier = my-replinstance>, you
will be notified of all the replication instance events for the
specified source. If you specify a C<SourceType> but don't specify a
C<SourceIdentifier>, you receive notice of the events for that source
type for all your DMS sources. If you don't specify either
C<SourceType> nor C<SourceIdentifier>, you will be notified of events
generated from all DMS sources belonging to your customer account.

For more information about DMS events, see Working with Events and
Notifications
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<Database Migration Service User Guide.>


=head2 CreateFleetAdvisorCollector

=over

=item CollectorName => Str

=item S3BucketName => Str

=item ServiceAccessRoleArn => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DMS::CreateFleetAdvisorCollector>

Returns: a L<Paws::DMS::CreateFleetAdvisorCollectorResponse> instance

Creates a Fleet Advisor collector using the specified parameters.


=head2 CreateInstanceProfile

=over

=item [AvailabilityZone => Str]

=item [Description => Str]

=item [InstanceProfileName => Str]

=item [KmsKeyArn => Str]

=item [NetworkType => Str]

=item [PubliclyAccessible => Bool]

=item [SubnetGroupIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [VpcSecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateInstanceProfile>

Returns: a L<Paws::DMS::CreateInstanceProfileResponse> instance

Creates the instance profile using the specified parameters.


=head2 CreateMigrationProject

=over

=item InstanceProfileIdentifier => Str

=item SourceDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]

=item TargetDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]

=item [Description => Str]

=item [MigrationProjectName => Str]

=item [SchemaConversionApplicationAttributes => L<Paws::DMS::SCApplicationAttributes>]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [TransformationRules => Str]


=back

Each argument is described in detail in: L<Paws::DMS::CreateMigrationProject>

Returns: a L<Paws::DMS::CreateMigrationProjectResponse> instance

Creates the migration project using the specified parameters.

You can run this action only after you create an instance profile and
data providers using CreateInstanceProfile
(https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateInstanceProfile.html)
and CreateDataProvider
(https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateDataProvider.html).


=head2 CreateReplicationConfig

=over

=item ComputeConfig => L<Paws::DMS::ComputeConfig>

=item ReplicationConfigIdentifier => Str

=item ReplicationType => Str

=item SourceEndpointArn => Str

=item TableMappings => Str

=item TargetEndpointArn => Str

=item [ReplicationSettings => Str]

=item [ResourceIdentifier => Str]

=item [SupplementalSettings => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationConfig>

Returns: a L<Paws::DMS::CreateReplicationConfigResponse> instance

Creates a configuration that you can later provide to configure and
start an DMS Serverless replication. You can also provide options to
validate the configuration inputs before you start the replication.


=head2 CreateReplicationInstance

=over

=item ReplicationInstanceClass => Str

=item ReplicationInstanceIdentifier => Str

=item [AllocatedStorage => Int]

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [DnsNameServers => Str]

=item [EngineVersion => Str]

=item [KerberosAuthenticationSettings => L<Paws::DMS::KerberosAuthenticationSettings>]

=item [KmsKeyId => Str]

=item [MultiAZ => Bool]

=item [NetworkType => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [ReplicationSubnetGroupIdentifier => Str]

=item [ResourceIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationInstance>

Returns: a L<Paws::DMS::CreateReplicationInstanceResponse> instance

Creates the replication instance using the specified parameters.

DMS requires that your account have certain roles with appropriate
permissions before you can create a replication instance. For
information on the required roles, see Creating the IAM Roles to Use
With the CLI and DMS API
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole).
For information on the required permissions, see IAM Permissions Needed
to Use DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions).

If you don't specify a version when creating a replication instance,
DMS will create the instance using the default engine version. For
information about the default engine version, see Release Notes
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReleaseNotes.html).


=head2 CreateReplicationSubnetGroup

=over

=item ReplicationSubnetGroupDescription => Str

=item ReplicationSubnetGroupIdentifier => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationSubnetGroup>

Returns: a L<Paws::DMS::CreateReplicationSubnetGroupResponse> instance

Creates a replication subnet group given a list of the subnet IDs in a
VPC.

The VPC needs to have at least one subnet in at least two availability
zones in the Amazon Web Services Region, otherwise the service will
throw a C<ReplicationSubnetGroupDoesNotCoverEnoughAZs> exception.

If a replication subnet group exists in your Amazon Web Services
account, the CreateReplicationSubnetGroup action returns the following
error message: The Replication Subnet Group already exists. In this
case, delete the existing replication subnet group. To do so, use the
DeleteReplicationSubnetGroup
(https://docs.aws.amazon.com/en_us/dms/latest/APIReference/API_DeleteReplicationSubnetGroup.html)
action. Optionally, choose Subnet groups in the DMS console, then
choose your subnet group. Next, choose Delete from Actions.


=head2 CreateReplicationTask

=over

=item MigrationType => Str

=item ReplicationInstanceArn => Str

=item ReplicationTaskIdentifier => Str

=item SourceEndpointArn => Str

=item TableMappings => Str

=item TargetEndpointArn => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]

=item [ReplicationTaskSettings => Str]

=item [ResourceIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [TaskData => Str]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationTask>

Returns: a L<Paws::DMS::CreateReplicationTaskResponse> instance

Creates a replication task using the specified parameters.


=head2 DeleteCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteCertificate>

Returns: a L<Paws::DMS::DeleteCertificateResponse> instance

Deletes the specified certificate.


=head2 DeleteConnection

=over

=item EndpointArn => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteConnection>

Returns: a L<Paws::DMS::DeleteConnectionResponse> instance

Deletes the connection between a replication instance and an endpoint.


=head2 DeleteDataMigration

=over

=item DataMigrationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteDataMigration>

Returns: a L<Paws::DMS::DeleteDataMigrationResponse> instance

Deletes the specified data migration.


=head2 DeleteDataProvider

=over

=item DataProviderIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteDataProvider>

Returns: a L<Paws::DMS::DeleteDataProviderResponse> instance

Deletes the specified data provider.

All migration projects associated with the data provider must be
deleted or modified before you can delete the data provider.


=head2 DeleteEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteEndpoint>

Returns: a L<Paws::DMS::DeleteEndpointResponse> instance

Deletes the specified endpoint.

All tasks associated with the endpoint must be deleted before you can
delete the endpoint.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteEventSubscription>

Returns: a L<Paws::DMS::DeleteEventSubscriptionResponse> instance

Deletes an DMS event subscription.


=head2 DeleteFleetAdvisorCollector

=over

=item CollectorReferencedId => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteFleetAdvisorCollector>

Returns: nothing

Deletes the specified Fleet Advisor collector.


=head2 DeleteFleetAdvisorDatabases

=over

=item DatabaseIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DMS::DeleteFleetAdvisorDatabases>

Returns: a L<Paws::DMS::DeleteFleetAdvisorDatabasesResponse> instance

Deletes the specified Fleet Advisor collector databases.


=head2 DeleteInstanceProfile

=over

=item InstanceProfileIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteInstanceProfile>

Returns: a L<Paws::DMS::DeleteInstanceProfileResponse> instance

Deletes the specified instance profile.

All migration projects associated with the instance profile must be
deleted or modified before you can delete the instance profile.


=head2 DeleteMigrationProject

=over

=item MigrationProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteMigrationProject>

Returns: a L<Paws::DMS::DeleteMigrationProjectResponse> instance

Deletes the specified migration project.

The migration project must be closed before you can delete it.


=head2 DeleteReplicationConfig

=over

=item ReplicationConfigArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationConfig>

Returns: a L<Paws::DMS::DeleteReplicationConfigResponse> instance

Deletes an DMS Serverless replication configuration. This effectively
deprovisions any and all replications that use this configuration. You
can't delete the configuration for an DMS Serverless replication that
is ongoing. You can delete the configuration when the replication is in
a non-RUNNING and non-STARTING state.


=head2 DeleteReplicationInstance

=over

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationInstance>

Returns: a L<Paws::DMS::DeleteReplicationInstanceResponse> instance

Deletes the specified replication instance.

You must delete any migration tasks that are associated with the
replication instance before you can delete it.


=head2 DeleteReplicationSubnetGroup

=over

=item ReplicationSubnetGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationSubnetGroup>

Returns: a L<Paws::DMS::DeleteReplicationSubnetGroupResponse> instance

Deletes a subnet group.


=head2 DeleteReplicationTask

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationTask>

Returns: a L<Paws::DMS::DeleteReplicationTaskResponse> instance

Deletes the specified replication task.


=head2 DeleteReplicationTaskAssessmentRun

=over

=item ReplicationTaskAssessmentRunArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationTaskAssessmentRun>

Returns: a L<Paws::DMS::DeleteReplicationTaskAssessmentRunResponse> instance

Deletes the record of a single premigration assessment run.

This operation removes all metadata that DMS maintains about this
assessment run. However, the operation leaves untouched all information
about this assessment run that is stored in your Amazon S3 bucket.


=head2 DescribeAccountAttributes






Each argument is described in detail in: L<Paws::DMS::DescribeAccountAttributes>

Returns: a L<Paws::DMS::DescribeAccountAttributesResponse> instance

Lists all of the DMS attributes for a customer account. These
attributes include DMS quotas for the account and a unique account
identifier in a particular DMS region. DMS quotas include a list of
resource quotas supported by the account, such as the number of
replication instances allowed. The description for each resource quota,
includes the quota name, current usage toward that quota, and the
quota's maximum value. DMS uses the unique account identifier to name
each artifact used by DMS in the given region.

This command does not take any parameters.


=head2 DescribeApplicableIndividualAssessments

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [MigrationType => Str]

=item [ReplicationConfigArn => Str]

=item [ReplicationInstanceArn => Str]

=item [ReplicationTaskArn => Str]

=item [SourceEngineName => Str]

=item [TargetEngineName => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeApplicableIndividualAssessments>

Returns: a L<Paws::DMS::DescribeApplicableIndividualAssessmentsResponse> instance

Provides a list of individual assessments that you can specify for a
new premigration assessment run, given one or more parameters.

If you specify an existing migration task, this operation provides the
default individual assessments you can specify for that task.
Otherwise, the specified parameters model elements of a possible
migration task on which to base a premigration assessment run.

To use these migration task modeling parameters, you must specify an
existing replication instance, a source database engine, a target
database engine, and a migration type. This combination of parameters
potentially limits the default individual assessments available for an
assessment run created for a corresponding migration task.

If you specify no parameters, this operation provides a list of all
possible individual assessments that you can specify for an assessment
run. If you specify any one of the task modeling parameters, you must
specify all of them or the operation cannot provide a list of
individual assessments. The only parameter that you can specify alone
is for an existing migration task. The specified task definition then
determines the default list of individual assessments that you can
specify in an assessment run for the task.


=head2 DescribeCertificates

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeCertificates>

Returns: a L<Paws::DMS::DescribeCertificatesResponse> instance

Provides a description of the certificate.


=head2 DescribeConnections

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeConnections>

Returns: a L<Paws::DMS::DescribeConnectionsResponse> instance

Describes the status of the connections that have been made between the
replication instance and an endpoint. Connections are created when you
test an endpoint.


=head2 DescribeConversionConfiguration

=over

=item MigrationProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DescribeConversionConfiguration>

Returns: a L<Paws::DMS::DescribeConversionConfigurationResponse> instance

Returns configuration parameters for a schema conversion project.


=head2 DescribeDataMigrations

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [WithoutSettings => Bool]

=item [WithoutStatistics => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeDataMigrations>

Returns: a L<Paws::DMS::DescribeDataMigrationsResponse> instance

Returns information about data migrations.


=head2 DescribeDataProviders

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeDataProviders>

Returns: a L<Paws::DMS::DescribeDataProvidersResponse> instance

Returns a paginated list of data providers for your account in the
current region.


=head2 DescribeEndpoints

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEndpoints>

Returns: a L<Paws::DMS::DescribeEndpointsResponse> instance

Returns information about the endpoints for your account in the current
region.


=head2 DescribeEndpointSettings

=over

=item EngineName => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEndpointSettings>

Returns: a L<Paws::DMS::DescribeEndpointSettingsResponse> instance

Returns information about the possible endpoint settings available when
you create an endpoint for a specific database engine.


=head2 DescribeEndpointTypes

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEndpointTypes>

Returns: a L<Paws::DMS::DescribeEndpointTypesResponse> instance

Returns information about the type of endpoints available.


=head2 DescribeEngineVersions

=over

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEngineVersions>

Returns: a L<Paws::DMS::DescribeEngineVersionsResponse> instance

Returns information about the replication instance versions used in the
project.


=head2 DescribeEventCategories

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEventCategories>

Returns: a L<Paws::DMS::DescribeEventCategoriesResponse> instance

Lists categories for all event source types, or, if specified, for a
specified source type. You can see a list of the event categories and
source types in Working with Events and Notifications
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<Database Migration Service User Guide.>


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEvents>

Returns: a L<Paws::DMS::DescribeEventsResponse> instance

Lists events for a given source identifier and source type. You can
also specify a start and end time. For more information on DMS events,
see Working with Events and Notifications
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<Database Migration Service User Guide.>


=head2 DescribeEventSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEventSubscriptions>

Returns: a L<Paws::DMS::DescribeEventSubscriptionsResponse> instance

Lists all the event subscriptions for a customer account. The
description of a subscription includes C<SubscriptionName>,
C<SNSTopicARN>, C<CustomerID>, C<SourceType>, C<SourceID>,
C<CreationTime>, and C<Status>.

If you specify C<SubscriptionName>, this action lists the description
for that subscription.


=head2 DescribeExtensionPackAssociations

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeExtensionPackAssociations>

Returns: a L<Paws::DMS::DescribeExtensionPackAssociationsResponse> instance

Returns a paginated list of extension pack associations for the
specified migration project. An extension pack is an add-on module that
emulates functions present in a source database that are required when
converting objects to the target database.


=head2 DescribeFleetAdvisorCollectors

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeFleetAdvisorCollectors>

Returns: a L<Paws::DMS::DescribeFleetAdvisorCollectorsResponse> instance

Returns a list of the Fleet Advisor collectors in your account.


=head2 DescribeFleetAdvisorDatabases

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeFleetAdvisorDatabases>

Returns: a L<Paws::DMS::DescribeFleetAdvisorDatabasesResponse> instance

Returns a list of Fleet Advisor databases in your account.


=head2 DescribeFleetAdvisorLsaAnalysis

=over

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeFleetAdvisorLsaAnalysis>

Returns: a L<Paws::DMS::DescribeFleetAdvisorLsaAnalysisResponse> instance

Provides descriptions of large-scale assessment (LSA) analyses produced
by your Fleet Advisor collectors.


=head2 DescribeFleetAdvisorSchemaObjectSummary

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeFleetAdvisorSchemaObjectSummary>

Returns: a L<Paws::DMS::DescribeFleetAdvisorSchemaObjectSummaryResponse> instance

Provides descriptions of the schemas discovered by your Fleet Advisor
collectors.


=head2 DescribeFleetAdvisorSchemas

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeFleetAdvisorSchemas>

Returns: a L<Paws::DMS::DescribeFleetAdvisorSchemasResponse> instance

Returns a list of schemas detected by Fleet Advisor Collectors in your
account.


=head2 DescribeInstanceProfiles

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeInstanceProfiles>

Returns: a L<Paws::DMS::DescribeInstanceProfilesResponse> instance

Returns a paginated list of instance profiles for your account in the
current region.


=head2 DescribeMetadataModelAssessments

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMetadataModelAssessments>

Returns: a L<Paws::DMS::DescribeMetadataModelAssessmentsResponse> instance

Returns a paginated list of metadata model assessments for your account
in the current region.


=head2 DescribeMetadataModelConversions

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMetadataModelConversions>

Returns: a L<Paws::DMS::DescribeMetadataModelConversionsResponse> instance

Returns a paginated list of metadata model conversions for a migration
project.


=head2 DescribeMetadataModelExportsAsScript

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMetadataModelExportsAsScript>

Returns: a L<Paws::DMS::DescribeMetadataModelExportsAsScriptResponse> instance

Returns a paginated list of metadata model exports.


=head2 DescribeMetadataModelExportsToTarget

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMetadataModelExportsToTarget>

Returns: a L<Paws::DMS::DescribeMetadataModelExportsToTargetResponse> instance

Returns a paginated list of metadata model exports.


=head2 DescribeMetadataModelImports

=over

=item MigrationProjectIdentifier => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMetadataModelImports>

Returns: a L<Paws::DMS::DescribeMetadataModelImportsResponse> instance

Returns a paginated list of metadata model imports.


=head2 DescribeMigrationProjects

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeMigrationProjects>

Returns: a L<Paws::DMS::DescribeMigrationProjectsResponse> instance

Returns a paginated list of migration projects for your account in the
current region.


=head2 DescribeOrderableReplicationInstances

=over

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeOrderableReplicationInstances>

Returns: a L<Paws::DMS::DescribeOrderableReplicationInstancesResponse> instance

Returns information about the replication instance types that can be
created in the specified region.


=head2 DescribePendingMaintenanceActions

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReplicationInstanceArn => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribePendingMaintenanceActions>

Returns: a L<Paws::DMS::DescribePendingMaintenanceActionsResponse> instance

Returns a list of upcoming maintenance events for replication instances
in your account in the current Region.


=head2 DescribeRecommendationLimitations

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeRecommendationLimitations>

Returns: a L<Paws::DMS::DescribeRecommendationLimitationsResponse> instance

Returns a paginated list of limitations for recommendations of target
Amazon Web Services engines.


=head2 DescribeRecommendations

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [MaxRecords => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeRecommendations>

Returns: a L<Paws::DMS::DescribeRecommendationsResponse> instance

Returns a paginated list of target engine recommendations for your
source databases.


=head2 DescribeRefreshSchemasStatus

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DescribeRefreshSchemasStatus>

Returns: a L<Paws::DMS::DescribeRefreshSchemasStatusResponse> instance

Returns the status of the RefreshSchemas operation.


=head2 DescribeReplicationConfigs

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationConfigs>

Returns: a L<Paws::DMS::DescribeReplicationConfigsResponse> instance

Returns one or more existing DMS Serverless replication configurations
as a list of structures.


=head2 DescribeReplicationInstances

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationInstances>

Returns: a L<Paws::DMS::DescribeReplicationInstancesResponse> instance

Returns information about replication instances for your account in the
current region.


=head2 DescribeReplicationInstanceTaskLogs

=over

=item ReplicationInstanceArn => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationInstanceTaskLogs>

Returns: a L<Paws::DMS::DescribeReplicationInstanceTaskLogsResponse> instance

Returns information about the task logs for the specified task.


=head2 DescribeReplications

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplications>

Returns: a L<Paws::DMS::DescribeReplicationsResponse> instance

Provides details on replication progress by returning status
information for one or more provisioned DMS Serverless replications.


=head2 DescribeReplicationSubnetGroups

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationSubnetGroups>

Returns: a L<Paws::DMS::DescribeReplicationSubnetGroupsResponse> instance

Returns information about the replication subnet groups.


=head2 DescribeReplicationTableStatistics

=over

=item ReplicationConfigArn => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTableStatistics>

Returns: a L<Paws::DMS::DescribeReplicationTableStatisticsResponse> instance

Returns table and schema statistics for one or more provisioned
replications that use a given DMS Serverless replication configuration.


=head2 DescribeReplicationTaskAssessmentResults

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReplicationTaskArn => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTaskAssessmentResults>

Returns: a L<Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse> instance

Returns the task assessment results from the Amazon S3 bucket that DMS
creates in your Amazon Web Services account. This action always returns
the latest results.

For more information about DMS task assessments, see Creating a task
assessment report
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
in the I<Database Migration Service User Guide>.


=head2 DescribeReplicationTaskAssessmentRuns

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTaskAssessmentRuns>

Returns: a L<Paws::DMS::DescribeReplicationTaskAssessmentRunsResponse> instance

Returns a paginated list of premigration assessment runs based on
filter settings.

These filter settings can specify a combination of premigration
assessment runs, migration tasks, replication instances, and assessment
run status values.

This operation doesn't return information about individual assessments.
For this information, see the
C<DescribeReplicationTaskIndividualAssessments> operation.


=head2 DescribeReplicationTaskIndividualAssessments

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTaskIndividualAssessments>

Returns: a L<Paws::DMS::DescribeReplicationTaskIndividualAssessmentsResponse> instance

Returns a paginated list of individual assessments based on filter
settings.

These filter settings can specify a combination of premigration
assessment runs, migration tasks, and assessment status values.


=head2 DescribeReplicationTasks

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [WithoutSettings => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTasks>

Returns: a L<Paws::DMS::DescribeReplicationTasksResponse> instance

Returns information about replication tasks for your account in the
current region.


=head2 DescribeSchemas

=over

=item EndpointArn => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeSchemas>

Returns: a L<Paws::DMS::DescribeSchemasResponse> instance

Returns information about the schema for the specified endpoint.


=head2 DescribeTableStatistics

=over

=item ReplicationTaskArn => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeTableStatistics>

Returns: a L<Paws::DMS::DescribeTableStatisticsResponse> instance

Returns table statistics on the database migration task, including
table name, rows inserted, rows updated, and rows deleted.

Note that the "last updated" column the DMS console only indicates the
time that DMS last updated the table statistics record for a table. It
does not indicate the time of the last update to the table.


=head2 ExportMetadataModelAssessment

=over

=item MigrationProjectIdentifier => Str

=item SelectionRules => Str

=item [AssessmentReportTypes => ArrayRef[Str|Undef]]

=item [FileName => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ExportMetadataModelAssessment>

Returns: a L<Paws::DMS::ExportMetadataModelAssessmentResponse> instance

Saves a copy of a database migration assessment report to your Amazon
S3 bucket. DMS can save your assessment report as a comma-separated
value (CSV) or a PDF file.


=head2 ImportCertificate

=over

=item CertificateIdentifier => Str

=item [CertificatePem => Str]

=item [CertificateWallet => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::ImportCertificate>

Returns: a L<Paws::DMS::ImportCertificateResponse> instance

Uploads the specified certificate.


=head2 ListTagsForResource

=over

=item [ResourceArn => Str]

=item [ResourceArnList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::ListTagsForResource>

Returns: a L<Paws::DMS::ListTagsForResourceResponse> instance

Lists all metadata tags attached to an DMS resource, including
replication instance, endpoint, subnet group, and migration task. For
more information, see C<Tag>
(https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data
type description.


=head2 ModifyConversionConfiguration

=over

=item ConversionConfiguration => Str

=item MigrationProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::ModifyConversionConfiguration>

Returns: a L<Paws::DMS::ModifyConversionConfigurationResponse> instance

Modifies the specified schema conversion configuration using the
provided parameters.


=head2 ModifyDataMigration

=over

=item DataMigrationIdentifier => Str

=item [DataMigrationName => Str]

=item [DataMigrationType => Str]

=item [EnableCloudwatchLogs => Bool]

=item [NumberOfJobs => Int]

=item [SelectionRules => Str]

=item [ServiceAccessRoleArn => Str]

=item [SourceDataSettings => ArrayRef[L<Paws::DMS::SourceDataSetting>]]

=item [TargetDataSettings => ArrayRef[L<Paws::DMS::TargetDataSetting>]]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyDataMigration>

Returns: a L<Paws::DMS::ModifyDataMigrationResponse> instance

Modifies an existing DMS data migration.


=head2 ModifyDataProvider

=over

=item DataProviderIdentifier => Str

=item [DataProviderName => Str]

=item [Description => Str]

=item [Engine => Str]

=item [ExactSettings => Bool]

=item [Settings => L<Paws::DMS::DataProviderSettings>]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyDataProvider>

Returns: a L<Paws::DMS::ModifyDataProviderResponse> instance

Modifies the specified data provider using the provided settings.

You must remove the data provider from all migration projects before
you can modify it.


=head2 ModifyEndpoint

=over

=item EndpointArn => Str

=item [CertificateArn => Str]

=item [DatabaseName => Str]

=item [DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>]

=item [DocDbSettings => L<Paws::DMS::DocDbSettings>]

=item [DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>]

=item [ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>]

=item [EndpointIdentifier => Str]

=item [EndpointType => Str]

=item [EngineName => Str]

=item [ExactSettings => Bool]

=item [ExternalTableDefinition => Str]

=item [ExtraConnectionAttributes => Str]

=item [GcpMySQLSettings => L<Paws::DMS::GcpMySQLSettings>]

=item [IBMDb2Settings => L<Paws::DMS::IBMDb2Settings>]

=item [KafkaSettings => L<Paws::DMS::KafkaSettings>]

=item [KinesisSettings => L<Paws::DMS::KinesisSettings>]

=item [MicrosoftSQLServerSettings => L<Paws::DMS::MicrosoftSQLServerSettings>]

=item [MongoDbSettings => L<Paws::DMS::MongoDbSettings>]

=item [MySQLSettings => L<Paws::DMS::MySQLSettings>]

=item [NeptuneSettings => L<Paws::DMS::NeptuneSettings>]

=item [OracleSettings => L<Paws::DMS::OracleSettings>]

=item [Password => Str]

=item [Port => Int]

=item [PostgreSQLSettings => L<Paws::DMS::PostgreSQLSettings>]

=item [RedisSettings => L<Paws::DMS::RedisSettings>]

=item [RedshiftSettings => L<Paws::DMS::RedshiftSettings>]

=item [S3Settings => L<Paws::DMS::S3Settings>]

=item [ServerName => Str]

=item [ServiceAccessRoleArn => Str]

=item [SslMode => Str]

=item [SybaseSettings => L<Paws::DMS::SybaseSettings>]

=item [TimestreamSettings => L<Paws::DMS::TimestreamSettings>]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyEndpoint>

Returns: a L<Paws::DMS::ModifyEndpointResponse> instance

Modifies the specified endpoint.

For a MySQL source or target endpoint, don't explicitly specify the
database using the C<DatabaseName> request parameter on the
C<ModifyEndpoint> API call. Specifying C<DatabaseName> when you modify
a MySQL endpoint replicates all the task tables to this single
database. For MySQL endpoints, you specify the database only when you
specify the schema in the table-mapping rules of the DMS task.


=head2 ModifyEventSubscription

=over

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyEventSubscription>

Returns: a L<Paws::DMS::ModifyEventSubscriptionResponse> instance

Modifies an existing DMS event notification subscription.


=head2 ModifyInstanceProfile

=over

=item InstanceProfileIdentifier => Str

=item [AvailabilityZone => Str]

=item [Description => Str]

=item [InstanceProfileName => Str]

=item [KmsKeyArn => Str]

=item [NetworkType => Str]

=item [PubliclyAccessible => Bool]

=item [SubnetGroupIdentifier => Str]

=item [VpcSecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyInstanceProfile>

Returns: a L<Paws::DMS::ModifyInstanceProfileResponse> instance

Modifies the specified instance profile using the provided parameters.

All migration projects associated with the instance profile must be
deleted or modified before you can modify the instance profile.


=head2 ModifyMigrationProject

=over

=item MigrationProjectIdentifier => Str

=item [Description => Str]

=item [InstanceProfileIdentifier => Str]

=item [MigrationProjectName => Str]

=item [SchemaConversionApplicationAttributes => L<Paws::DMS::SCApplicationAttributes>]

=item [SourceDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]]

=item [TargetDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]]

=item [TransformationRules => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyMigrationProject>

Returns: a L<Paws::DMS::ModifyMigrationProjectResponse> instance

Modifies the specified migration project using the provided parameters.

The migration project must be closed before you can modify it.


=head2 ModifyReplicationConfig

=over

=item ReplicationConfigArn => Str

=item [ComputeConfig => L<Paws::DMS::ComputeConfig>]

=item [ReplicationConfigIdentifier => Str]

=item [ReplicationSettings => Str]

=item [ReplicationType => Str]

=item [SourceEndpointArn => Str]

=item [SupplementalSettings => Str]

=item [TableMappings => Str]

=item [TargetEndpointArn => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationConfig>

Returns: a L<Paws::DMS::ModifyReplicationConfigResponse> instance

Modifies an existing DMS Serverless replication configuration that you
can use to start a replication. This command includes input validation
and logic to check the state of any replication that uses this
configuration. You can only modify a replication configuration before
any replication that uses it has started. As soon as you have initially
started a replication with a given configuiration, you can't modify
that configuration, even if you stop it.

Other run statuses that allow you to run this command include FAILED
and CREATED. A provisioning state that allows you to run this command
is FAILED_PROVISION.


=head2 ModifyReplicationInstance

=over

=item ReplicationInstanceArn => Str

=item [AllocatedStorage => Int]

=item [AllowMajorVersionUpgrade => Bool]

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [EngineVersion => Str]

=item [KerberosAuthenticationSettings => L<Paws::DMS::KerberosAuthenticationSettings>]

=item [MultiAZ => Bool]

=item [NetworkType => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ReplicationInstanceClass => Str]

=item [ReplicationInstanceIdentifier => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationInstance>

Returns: a L<Paws::DMS::ModifyReplicationInstanceResponse> instance

Modifies the replication instance to apply new settings. You can change
one or more parameters by specifying these parameters and the new
values in the request.

Some settings are applied during the maintenance window.


=head2 ModifyReplicationSubnetGroup

=over

=item ReplicationSubnetGroupIdentifier => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [ReplicationSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationSubnetGroup>

Returns: a L<Paws::DMS::ModifyReplicationSubnetGroupResponse> instance

Modifies the settings for the specified replication subnet group.


=head2 ModifyReplicationTask

=over

=item ReplicationTaskArn => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]

=item [MigrationType => Str]

=item [ReplicationTaskIdentifier => Str]

=item [ReplicationTaskSettings => Str]

=item [TableMappings => Str]

=item [TaskData => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationTask>

Returns: a L<Paws::DMS::ModifyReplicationTaskResponse> instance

Modifies the specified replication task.

You can't modify the task endpoints. The task must be stopped before
you can modify it.

For more information about DMS tasks, see Working with Migration Tasks
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in
the I<Database Migration Service User Guide>.


=head2 MoveReplicationTask

=over

=item ReplicationTaskArn => Str

=item TargetReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::MoveReplicationTask>

Returns: a L<Paws::DMS::MoveReplicationTaskResponse> instance

Moves a replication task from its current replication instance to a
different target replication instance using the specified parameters.
The target replication instance must be created with the same or later
DMS version as the current replication instance.


=head2 RebootReplicationInstance

=over

=item ReplicationInstanceArn => Str

=item [ForceFailover => Bool]

=item [ForcePlannedFailover => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::RebootReplicationInstance>

Returns: a L<Paws::DMS::RebootReplicationInstanceResponse> instance

Reboots a replication instance. Rebooting results in a momentary
outage, until the replication instance becomes available again.


=head2 RefreshSchemas

=over

=item EndpointArn => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::RefreshSchemas>

Returns: a L<Paws::DMS::RefreshSchemasResponse> instance

Populates the schema for the specified endpoint. This is an
asynchronous operation and can take several minutes. You can check the
status of this operation by calling the DescribeRefreshSchemasStatus
operation.


=head2 ReloadReplicationTables

=over

=item ReplicationConfigArn => Str

=item TablesToReload => ArrayRef[L<Paws::DMS::TableToReload>]

=item [ReloadOption => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ReloadReplicationTables>

Returns: a L<Paws::DMS::ReloadReplicationTablesResponse> instance

Reloads the target database table with the source data for a given DMS
Serverless replication configuration.

You can only use this operation with a task in the RUNNING state,
otherwise the service will throw an C<InvalidResourceStateFault>
exception.


=head2 ReloadTables

=over

=item ReplicationTaskArn => Str

=item TablesToReload => ArrayRef[L<Paws::DMS::TableToReload>]

=item [ReloadOption => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ReloadTables>

Returns: a L<Paws::DMS::ReloadTablesResponse> instance

Reloads the target database table with the source data.

You can only use this operation with a task in the C<RUNNING> state,
otherwise the service will throw an C<InvalidResourceStateFault>
exception.


=head2 RemoveTagsFromResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DMS::RemoveTagsFromResource>

Returns: a L<Paws::DMS::RemoveTagsFromResourceResponse> instance

Removes metadata tags from an DMS resource, including replication
instance, endpoint, subnet group, and migration task. For more
information, see C<Tag>
(https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data
type description.


=head2 RunFleetAdvisorLsaAnalysis

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::DMS::RunFleetAdvisorLsaAnalysis>

Returns: a L<Paws::DMS::RunFleetAdvisorLsaAnalysisResponse> instance

Runs large-scale assessment (LSA) analysis on every Fleet Advisor
collector in your account.


=head2 StartDataMigration

=over

=item DataMigrationIdentifier => Str

=item StartType => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartDataMigration>

Returns: a L<Paws::DMS::StartDataMigrationResponse> instance

Starts the specified data migration.


=head2 StartExtensionPackAssociation

=over

=item MigrationProjectIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartExtensionPackAssociation>

Returns: a L<Paws::DMS::StartExtensionPackAssociationResponse> instance

Applies the extension pack to your target database. An extension pack
is an add-on module that emulates functions present in a source
database that are required when converting objects to the target
database.


=head2 StartMetadataModelAssessment

=over

=item MigrationProjectIdentifier => Str

=item SelectionRules => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartMetadataModelAssessment>

Returns: a L<Paws::DMS::StartMetadataModelAssessmentResponse> instance

Creates a database migration assessment report by assessing the
migration complexity for your source database. A database migration
assessment report summarizes all of the schema conversion tasks. It
also details the action items for database objects that can't be
converted to the database engine of your target database instance.


=head2 StartMetadataModelConversion

=over

=item MigrationProjectIdentifier => Str

=item SelectionRules => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartMetadataModelConversion>

Returns: a L<Paws::DMS::StartMetadataModelConversionResponse> instance

Converts your source database objects to a format compatible with the
target database.


=head2 StartMetadataModelExportAsScript

=over

=item MigrationProjectIdentifier => Str

=item Origin => Str

=item SelectionRules => Str

=item [FileName => Str]


=back

Each argument is described in detail in: L<Paws::DMS::StartMetadataModelExportAsScript>

Returns: a L<Paws::DMS::StartMetadataModelExportAsScriptResponse> instance

Saves your converted code to a file as a SQL script, and stores this
file on your Amazon S3 bucket.


=head2 StartMetadataModelExportToTarget

=over

=item MigrationProjectIdentifier => Str

=item SelectionRules => Str

=item [OverwriteExtensionPack => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::StartMetadataModelExportToTarget>

Returns: a L<Paws::DMS::StartMetadataModelExportToTargetResponse> instance

Applies converted database objects to your target database.


=head2 StartMetadataModelImport

=over

=item MigrationProjectIdentifier => Str

=item Origin => Str

=item SelectionRules => Str

=item [Refresh => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::StartMetadataModelImport>

Returns: a L<Paws::DMS::StartMetadataModelImportResponse> instance

Loads the metadata for all the dependent database objects of the parent
object.

This operation uses your project's Amazon S3 bucket as a metadata cache
to improve performance.


=head2 StartRecommendations

=over

=item DatabaseId => Str

=item Settings => L<Paws::DMS::RecommendationSettings>


=back

Each argument is described in detail in: L<Paws::DMS::StartRecommendations>

Returns: nothing

Starts the analysis of your source database to provide recommendations
of target engines.

You can create recommendations for multiple source databases using
BatchStartRecommendations
(https://docs.aws.amazon.com/dms/latest/APIReference/API_BatchStartRecommendations.html).


=head2 StartReplication

=over

=item ReplicationConfigArn => Str

=item StartReplicationType => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]

=item [PremigrationAssessmentSettings => Str]


=back

Each argument is described in detail in: L<Paws::DMS::StartReplication>

Returns: a L<Paws::DMS::StartReplicationResponse> instance

For a given DMS Serverless replication configuration, DMS connects to
the source endpoint and collects the metadata to analyze the
replication workload. Using this metadata, DMS then computes and
provisions the required capacity and starts replicating to the target
endpoint using the server resources that DMS has provisioned for the
DMS Serverless replication.


=head2 StartReplicationTask

=over

=item ReplicationTaskArn => Str

=item StartReplicationTaskType => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]


=back

Each argument is described in detail in: L<Paws::DMS::StartReplicationTask>

Returns: a L<Paws::DMS::StartReplicationTaskResponse> instance

Starts the replication task.

For more information about DMS tasks, see Working with Migration Tasks
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in
the I<Database Migration Service User Guide.>


=head2 StartReplicationTaskAssessment

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartReplicationTaskAssessment>

Returns: a L<Paws::DMS::StartReplicationTaskAssessmentResponse> instance

Starts the replication task assessment for unsupported data types in
the source database.

You can only use this operation for a task if the following conditions
are true:

=over

=item *

The task must be in the C<stopped> state.

=item *

The task must have successful connections to the source and target.

=back

If either of these conditions are not met, an
C<InvalidResourceStateFault> error will result.

For information about DMS task assessments, see Creating a task
assessment report
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
in the I<Database Migration Service User Guide>.


=head2 StartReplicationTaskAssessmentRun

=over

=item AssessmentRunName => Str

=item ReplicationTaskArn => Str

=item ResultLocationBucket => Str

=item ServiceAccessRoleArn => Str

=item [Exclude => ArrayRef[Str|Undef]]

=item [IncludeOnly => ArrayRef[Str|Undef]]

=item [ResultEncryptionMode => Str]

=item [ResultKmsKeyArn => Str]

=item [ResultLocationFolder => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::StartReplicationTaskAssessmentRun>

Returns: a L<Paws::DMS::StartReplicationTaskAssessmentRunResponse> instance

Starts a new premigration assessment run for one or more individual
assessments of a migration task.

The assessments that you can specify depend on the source and target
database engine and the migration type defined for the given task. To
run this operation, your migration task must already be created. After
you run this operation, you can review the status of each individual
assessment. You can also run the migration task manually after the
assessment run and its individual assessments complete.


=head2 StopDataMigration

=over

=item DataMigrationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::StopDataMigration>

Returns: a L<Paws::DMS::StopDataMigrationResponse> instance

Stops the specified data migration.


=head2 StopReplication

=over

=item ReplicationConfigArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::StopReplication>

Returns: a L<Paws::DMS::StopReplicationResponse> instance

For a given DMS Serverless replication configuration, DMS stops any and
all ongoing DMS Serverless replications. This command doesn't
deprovision the stopped replications.


=head2 StopReplicationTask

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::StopReplicationTask>

Returns: a L<Paws::DMS::StopReplicationTaskResponse> instance

Stops the replication task.


=head2 TestConnection

=over

=item EndpointArn => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::TestConnection>

Returns: a L<Paws::DMS::TestConnectionResponse> instance

Tests the connection between the replication instance and the endpoint.


=head2 UpdateSubscriptionsToEventBridge

=over

=item [ForceMove => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::UpdateSubscriptionsToEventBridge>

Returns: a L<Paws::DMS::UpdateSubscriptionsToEventBridgeResponse> instance

Migrates 10 active and enabled Amazon SNS subscriptions at a time and
converts them to corresponding Amazon EventBridge rules. By default,
this operation migrates subscriptions only when all your replication
instance versions are 3.4.5 or higher. If any replication instances are
from versions earlier than 3.4.5, the operation raises an error and
tells you to upgrade these instances to version 3.4.5 or higher. To
enable migration regardless of version, set the C<Force> option to
true. However, if you don't upgrade instances earlier than version
3.4.5, some types of events might not be available when you use Amazon
EventBridge.

To call this operation, make sure that you have certain permissions
added to your user account. For more information, see Migrating event
subscriptions to Amazon EventBridge
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html#CHAP_Events-migrate-to-eventbridge)
in the I<Amazon Web Services Database Migration Service User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCertificates(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllCertificates([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConnections(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllConnections([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDataMigrations(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, WithoutSettings => Bool, WithoutStatistics => Bool])

=head2 DescribeAllDataMigrations([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, WithoutSettings => Bool, WithoutStatistics => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataMigrations, passing the object as the first parameter, and the string 'DataMigrations' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeDataMigrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEndpoints(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEndpoints([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEndpointTypes(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEndpointTypes([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SupportedEndpointTypes, passing the object as the first parameter, and the string 'SupportedEndpointTypes' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEndpointTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

=head2 DescribeAllEventSubscriptions([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEventSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableReplicationInstances(sub { },[Marker => Str, MaxRecords => Int])

=head2 DescribeAllOrderableReplicationInstances([Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableReplicationInstances, passing the object as the first parameter, and the string 'OrderableReplicationInstances' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeOrderableReplicationInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationInstances(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllReplicationInstances([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationInstances, passing the object as the first parameter, and the string 'ReplicationInstances' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationSubnetGroups(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllReplicationSubnetGroups([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationSubnetGroups, passing the object as the first parameter, and the string 'ReplicationSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationSubnetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationTaskAssessmentResults(sub { },[Marker => Str, MaxRecords => Int, ReplicationTaskArn => Str])

=head2 DescribeAllReplicationTaskAssessmentResults([Marker => Str, MaxRecords => Int, ReplicationTaskArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationTaskAssessmentResults, passing the object as the first parameter, and the string 'ReplicationTaskAssessmentResults' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationTasks(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, WithoutSettings => Bool])

=head2 DescribeAllReplicationTasks([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, WithoutSettings => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationTasks, passing the object as the first parameter, and the string 'ReplicationTasks' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSchemas(sub { },EndpointArn => Str, [Marker => Str, MaxRecords => Int])

=head2 DescribeAllSchemas(EndpointArn => Str, [Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTableStatistics(sub { },ReplicationTaskArn => Str, [Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllTableStatistics(ReplicationTaskArn => Str, [Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableStatistics, passing the object as the first parameter, and the string 'TableStatistics' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeTableStatisticsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

