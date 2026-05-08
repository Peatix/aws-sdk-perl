package Paws::Glue;
  use Moose;
  sub service { 'glue' }
  sub signing_name { 'glue' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSGlue' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchCreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchCreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCustomEntityTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetCustomEntityTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDataQualityResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetDataQualityResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetTableOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetTableOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutDataQualityStatisticAnnotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchPutDataQualityStatisticAnnotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchStopJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchStopJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchUpdatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDataQualityRuleRecommendationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CancelDataQualityRuleRecommendationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDataQualityRulesetEvaluationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CancelDataQualityRulesetEvaluationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMLTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CancelMLTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CancelStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckSchemaVersionValidity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CheckSchemaVersionValidity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateColumnStatisticsTaskSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateColumnStatisticsTaskSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomEntityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateCustomEntityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataQualityRuleset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDataQualityRuleset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationResourceProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateIntegrationResourceProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationTableProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateIntegrationTableProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartitionIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreatePartitionIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTableOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTableOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUsageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateUsageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteColumnStatisticsTaskSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteColumnStatisticsTaskSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomEntityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteCustomEntityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataQualityRuleset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDataQualityRuleset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegrationTableProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteIntegrationTableProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartitionIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeletePartitionIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTableOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUsageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteUsageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectionType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DescribeConnectionType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DescribeEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInboundIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DescribeInboundIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DescribeIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlueprintRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetBlueprintRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlueprintRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetBlueprintRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalogImportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCatalogImportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCatalogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsTaskRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsTaskRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsTaskSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsTaskSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlerMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlerMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomEntityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCustomEntityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataCatalogEncryptionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataflowGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataflowGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityModelResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityModelResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityRuleRecommendationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityRuleRecommendationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityRuleset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityRuleset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataQualityRulesetEvaluationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataQualityRulesetEvaluationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEntityRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetEntityRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrationResourceProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetIntegrationResourceProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrationTableProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetIntegrationTableProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobBookmark {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobBookmark', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTaskRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTaskRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTransforms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTransforms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartitionIndexes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartitionIndexes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaByDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaByDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaVersionsDiff {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaVersionsDiff', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUnfilteredPartitionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUnfilteredPartitionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUnfilteredPartitionsMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUnfilteredPartitionsMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUnfilteredTableMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUnfilteredTableMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUsageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRunProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRunProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCatalogToGlue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ImportCatalogToGlue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBlueprints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListBlueprints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListColumnStatisticsTaskRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListColumnStatisticsTaskRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectionTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListConnectionTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCrawls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListCrawls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomEntityTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListCustomEntityTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityRuleRecommendationRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityRuleRecommendationRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityRulesetEvaluationRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityRulesetEvaluationRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityRulesets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityRulesets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityStatisticAnnotations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityStatisticAnnotations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDataQualityStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLTransforms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListMLTransforms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegistries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListRegistries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStatements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListStatements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableOptimizerRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListTableOptimizerRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsageProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListUsageProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ModifyIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutDataCatalogEncryptionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataQualityProfileAnnotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutDataQualityProfileAnnotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutSchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutWorkflowRunProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutWorkflowRunProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QuerySchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::QuerySchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::RegisterSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::RemoveSchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetJobBookmark {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ResetJobBookmark', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ResumeWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::RunStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::SearchTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBlueprintRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartBlueprintRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartColumnStatisticsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartColumnStatisticsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartColumnStatisticsTaskRunSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartColumnStatisticsTaskRunSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataQualityRuleRecommendationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartDataQualityRuleRecommendationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataQualityRulesetEvaluationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartDataQualityRulesetEvaluationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExportLabelsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartExportLabelsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportLabelsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartImportLabelsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLEvaluationTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartMLEvaluationTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLLabelingSetGenerationTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartMLLabelingSetGenerationTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopColumnStatisticsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopColumnStatisticsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopColumnStatisticsTaskRunSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopColumnStatisticsTaskRunSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::TestConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBlueprint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateBlueprint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateColumnStatisticsTaskSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateColumnStatisticsTaskSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataQualityRuleset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDataQualityRuleset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegrationResourceProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateIntegrationResourceProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegrationTableProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateIntegrationTableProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobFromSourceControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateJobFromSourceControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSourceControlFromJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateSourceControlFromJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTableOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTableOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUsageProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateUsageProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllEntity {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEntity(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEntity(@_, NextToken => $next_result->NextToken);
        push @{ $result->Fields }, @{ $next_result->Fields };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Fields') foreach (@{ $result->Fields });
        $result = $self->DescribeEntity(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Fields') foreach (@{ $result->Fields });
    }

    return undef
  }
  sub GetAllClassifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetClassifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetClassifiers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Classifiers }, @{ $next_result->Classifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
        $result = $self->GetClassifiers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
    }

    return undef
  }
  sub GetAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionList }, @{ $next_result->ConnectionList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
        $result = $self->GetConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
    }

    return undef
  }
  sub GetAllCrawlerMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlerMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlerMetrics(@_, NextToken => $next_result->NextToken);
        push @{ $result->CrawlerMetricsList }, @{ $next_result->CrawlerMetricsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
        $result = $self->GetCrawlerMetrics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
    }

    return undef
  }
  sub GetAllCrawlers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Crawlers }, @{ $next_result->Crawlers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
        $result = $self->GetCrawlers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
    }

    return undef
  }
  sub GetAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatabaseList }, @{ $next_result->DatabaseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
        $result = $self->GetDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
    }

    return undef
  }
  sub GetAllDevEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->DevEndpoints }, @{ $next_result->DevEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
        $result = $self->GetDevEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
    }

    return undef
  }
  sub GetAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobRuns }, @{ $next_result->JobRuns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
        $result = $self->GetJobRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
    }

    return undef
  }
  sub GetAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->GetJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub GetAllPartitionIndexes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetPartitionIndexes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetPartitionIndexes(@_, NextToken => $next_result->NextToken);
        push @{ $result->PartitionIndexDescriptorList }, @{ $next_result->PartitionIndexDescriptorList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PartitionIndexDescriptorList') foreach (@{ $result->PartitionIndexDescriptorList });
        $result = $self->GetPartitionIndexes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PartitionIndexDescriptorList') foreach (@{ $result->PartitionIndexDescriptorList });
    }

    return undef
  }
  sub GetAllPartitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetPartitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetPartitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Partitions }, @{ $next_result->Partitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
        $result = $self->GetPartitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
    }

    return undef
  }
  sub GetAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetResourcePolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->GetResourcePoliciesResponseList }, @{ $next_result->GetResourcePoliciesResponseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GetResourcePoliciesResponseList') foreach (@{ $result->GetResourcePoliciesResponseList });
        $result = $self->GetResourcePolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GetResourcePoliciesResponseList') foreach (@{ $result->GetResourcePoliciesResponseList });
    }

    return undef
  }
  sub GetAllSecurityConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSecurityConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSecurityConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityConfigurations }, @{ $next_result->SecurityConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
        $result = $self->GetSecurityConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
    }

    return undef
  }
  sub GetAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableList }, @{ $next_result->TableList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableList') foreach (@{ $result->TableList });
        $result = $self->GetTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableList') foreach (@{ $result->TableList });
    }

    return undef
  }
  sub GetAllTableVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTableVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTableVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableVersions }, @{ $next_result->TableVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
        $result = $self->GetTableVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
    }

    return undef
  }
  sub GetAllTriggers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTriggers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTriggers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Triggers }, @{ $next_result->Triggers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
        $result = $self->GetTriggers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
    }

    return undef
  }
  sub GetAllUserDefinedFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUserDefinedFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetUserDefinedFunctions(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserDefinedFunctions }, @{ $next_result->UserDefinedFunctions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
        $result = $self->GetUserDefinedFunctions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
    }

    return undef
  }
  sub GetAllWorkflowRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetWorkflowRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetWorkflowRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->Runs }, @{ $next_result->Runs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Runs') foreach (@{ $result->Runs });
        $result = $self->GetWorkflowRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Runs') foreach (@{ $result->Runs });
    }

    return undef
  }
  sub ListAllBlueprints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBlueprints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBlueprints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Blueprints }, @{ $next_result->Blueprints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Blueprints') foreach (@{ $result->Blueprints });
        $result = $self->ListBlueprints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Blueprints') foreach (@{ $result->Blueprints });
    }

    return undef
  }
  sub ListAllConnectionTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectionTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConnectionTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionTypes }, @{ $next_result->ConnectionTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionTypes') foreach (@{ $result->ConnectionTypes });
        $result = $self->ListConnectionTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionTypes') foreach (@{ $result->ConnectionTypes });
    }

    return undef
  }
  sub ListAllEntities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntities(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entities }, @{ $next_result->Entities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entities') foreach (@{ $result->Entities });
        $result = $self->ListEntities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entities') foreach (@{ $result->Entities });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobNames }, @{ $next_result->JobNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobNames') foreach (@{ $result->JobNames });
        $result = $self->ListJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobNames') foreach (@{ $result->JobNames });
    }

    return undef
  }
  sub ListAllRegistries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegistries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegistries(@_, NextToken => $next_result->NextToken);
        push @{ $result->Registries }, @{ $next_result->Registries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Registries') foreach (@{ $result->Registries });
        $result = $self->ListRegistries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Registries') foreach (@{ $result->Registries });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub ListAllSchemaVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemaVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemaVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub ListAllTableOptimizerRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableOptimizerRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTableOptimizerRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableOptimizerRuns }, @{ $next_result->TableOptimizerRuns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableOptimizerRuns') foreach (@{ $result->TableOptimizerRuns });
        $result = $self->ListTableOptimizerRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableOptimizerRuns') foreach (@{ $result->TableOptimizerRuns });
    }

    return undef
  }
  sub ListAllTriggers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTriggers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTriggers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TriggerNames }, @{ $next_result->TriggerNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TriggerNames') foreach (@{ $result->TriggerNames });
        $result = $self->ListTriggers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TriggerNames') foreach (@{ $result->TriggerNames });
    }

    return undef
  }
  sub ListAllUsageProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsageProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsageProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Profiles }, @{ $next_result->Profiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
        $result = $self->ListUsageProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
    }

    return undef
  }
  sub ListAllWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkflows(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workflows }, @{ $next_result->Workflows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workflows') foreach (@{ $result->Workflows });
        $result = $self->ListWorkflows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workflows') foreach (@{ $result->Workflows });
    }

    return undef
  }


  sub operations { qw/BatchCreatePartition BatchDeleteConnection BatchDeletePartition BatchDeleteTable BatchDeleteTableVersion BatchGetBlueprints BatchGetCrawlers BatchGetCustomEntityTypes BatchGetDataQualityResult BatchGetDevEndpoints BatchGetJobs BatchGetPartition BatchGetTableOptimizer BatchGetTriggers BatchGetWorkflows BatchPutDataQualityStatisticAnnotation BatchStopJobRun BatchUpdatePartition CancelDataQualityRuleRecommendationRun CancelDataQualityRulesetEvaluationRun CancelMLTaskRun CancelStatement CheckSchemaVersionValidity CreateBlueprint CreateCatalog CreateClassifier CreateColumnStatisticsTaskSettings CreateConnection CreateCrawler CreateCustomEntityType CreateDatabase CreateDataQualityRuleset CreateDevEndpoint CreateIntegration CreateIntegrationResourceProperty CreateIntegrationTableProperties CreateJob CreateMLTransform CreatePartition CreatePartitionIndex CreateRegistry CreateSchema CreateScript CreateSecurityConfiguration CreateSession CreateTable CreateTableOptimizer CreateTrigger CreateUsageProfile CreateUserDefinedFunction CreateWorkflow DeleteBlueprint DeleteCatalog DeleteClassifier DeleteColumnStatisticsForPartition DeleteColumnStatisticsForTable DeleteColumnStatisticsTaskSettings DeleteConnection DeleteCrawler DeleteCustomEntityType DeleteDatabase DeleteDataQualityRuleset DeleteDevEndpoint DeleteIntegration DeleteIntegrationTableProperties DeleteJob DeleteMLTransform DeletePartition DeletePartitionIndex DeleteRegistry DeleteResourcePolicy DeleteSchema DeleteSchemaVersions DeleteSecurityConfiguration DeleteSession DeleteTable DeleteTableOptimizer DeleteTableVersion DeleteTrigger DeleteUsageProfile DeleteUserDefinedFunction DeleteWorkflow DescribeConnectionType DescribeEntity DescribeInboundIntegrations DescribeIntegrations GetBlueprint GetBlueprintRun GetBlueprintRuns GetCatalog GetCatalogImportStatus GetCatalogs GetClassifier GetClassifiers GetColumnStatisticsForPartition GetColumnStatisticsForTable GetColumnStatisticsTaskRun GetColumnStatisticsTaskRuns GetColumnStatisticsTaskSettings GetConnection GetConnections GetCrawler GetCrawlerMetrics GetCrawlers GetCustomEntityType GetDatabase GetDatabases GetDataCatalogEncryptionSettings GetDataflowGraph GetDataQualityModel GetDataQualityModelResult GetDataQualityResult GetDataQualityRuleRecommendationRun GetDataQualityRuleset GetDataQualityRulesetEvaluationRun GetDevEndpoint GetDevEndpoints GetEntityRecords GetIntegrationResourceProperty GetIntegrationTableProperties GetJob GetJobBookmark GetJobRun GetJobRuns GetJobs GetMapping GetMLTaskRun GetMLTaskRuns GetMLTransform GetMLTransforms GetPartition GetPartitionIndexes GetPartitions GetPlan GetRegistry GetResourcePolicies GetResourcePolicy GetSchema GetSchemaByDefinition GetSchemaVersion GetSchemaVersionsDiff GetSecurityConfiguration GetSecurityConfigurations GetSession GetStatement GetTable GetTableOptimizer GetTables GetTableVersion GetTableVersions GetTags GetTrigger GetTriggers GetUnfilteredPartitionMetadata GetUnfilteredPartitionsMetadata GetUnfilteredTableMetadata GetUsageProfile GetUserDefinedFunction GetUserDefinedFunctions GetWorkflow GetWorkflowRun GetWorkflowRunProperties GetWorkflowRuns ImportCatalogToGlue ListBlueprints ListColumnStatisticsTaskRuns ListConnectionTypes ListCrawlers ListCrawls ListCustomEntityTypes ListDataQualityResults ListDataQualityRuleRecommendationRuns ListDataQualityRulesetEvaluationRuns ListDataQualityRulesets ListDataQualityStatisticAnnotations ListDataQualityStatistics ListDevEndpoints ListEntities ListJobs ListMLTransforms ListRegistries ListSchemas ListSchemaVersions ListSessions ListStatements ListTableOptimizerRuns ListTriggers ListUsageProfiles ListWorkflows ModifyIntegration PutDataCatalogEncryptionSettings PutDataQualityProfileAnnotation PutResourcePolicy PutSchemaVersionMetadata PutWorkflowRunProperties QuerySchemaVersionMetadata RegisterSchemaVersion RemoveSchemaVersionMetadata ResetJobBookmark ResumeWorkflowRun RunStatement SearchTables StartBlueprintRun StartColumnStatisticsTaskRun StartColumnStatisticsTaskRunSchedule StartCrawler StartCrawlerSchedule StartDataQualityRuleRecommendationRun StartDataQualityRulesetEvaluationRun StartExportLabelsTaskRun StartImportLabelsTaskRun StartJobRun StartMLEvaluationTaskRun StartMLLabelingSetGenerationTaskRun StartTrigger StartWorkflowRun StopColumnStatisticsTaskRun StopColumnStatisticsTaskRunSchedule StopCrawler StopCrawlerSchedule StopSession StopTrigger StopWorkflowRun TagResource TestConnection UntagResource UpdateBlueprint UpdateCatalog UpdateClassifier UpdateColumnStatisticsForPartition UpdateColumnStatisticsForTable UpdateColumnStatisticsTaskSettings UpdateConnection UpdateCrawler UpdateCrawlerSchedule UpdateDatabase UpdateDataQualityRuleset UpdateDevEndpoint UpdateIntegrationResourceProperty UpdateIntegrationTableProperties UpdateJob UpdateJobFromSourceControl UpdateMLTransform UpdatePartition UpdateRegistry UpdateSchema UpdateSourceControlFromJob UpdateTable UpdateTableOptimizer UpdateTrigger UpdateUsageProfile UpdateUserDefinedFunction UpdateWorkflow / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue - Perl Interface to AWS AWS Glue

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Glue');
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

Glue

Defines the public endpoint for the Glue service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31>


=head1 METHODS

=head2 BatchCreatePartition

=over

=item DatabaseName => Str

=item PartitionInputList => ArrayRef[L<Paws::Glue::PartitionInput>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchCreatePartition>

Returns: a L<Paws::Glue::BatchCreatePartitionResponse> instance

Creates one or more partitions in a batch operation.


=head2 BatchDeleteConnection

=over

=item ConnectionNameList => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteConnection>

Returns: a L<Paws::Glue::BatchDeleteConnectionResponse> instance

Deletes a list of connection definitions from the Data Catalog.


=head2 BatchDeletePartition

=over

=item DatabaseName => Str

=item PartitionsToDelete => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeletePartition>

Returns: a L<Paws::Glue::BatchDeletePartitionResponse> instance

Deletes one or more partitions in a batch operation.


=head2 BatchDeleteTable

=over

=item DatabaseName => Str

=item TablesToDelete => ArrayRef[Str|Undef]

=item [CatalogId => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTable>

Returns: a L<Paws::Glue::BatchDeleteTableResponse> instance

Deletes multiple tables at once.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. Glue deletes
these "orphaned" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<BatchDeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 BatchDeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionIds => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTableVersion>

Returns: a L<Paws::Glue::BatchDeleteTableVersionResponse> instance

Deletes a specified batch of versions of a table.


=head2 BatchGetBlueprints

=over

=item Names => ArrayRef[Str|Undef]

=item [IncludeBlueprint => Bool]

=item [IncludeParameterSpec => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetBlueprints>

Returns: a L<Paws::Glue::BatchGetBlueprintsResponse> instance

Retrieves information about a list of blueprints.


=head2 BatchGetCrawlers

=over

=item CrawlerNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetCrawlers>

Returns: a L<Paws::Glue::BatchGetCrawlersResponse> instance

Returns a list of resource metadata for a given list of crawler names.
After calling the C<ListCrawlers> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchGetCustomEntityTypes

=over

=item Names => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetCustomEntityTypes>

Returns: a L<Paws::Glue::BatchGetCustomEntityTypesResponse> instance

Retrieves the details for the custom patterns specified by a list of
names.


=head2 BatchGetDataQualityResult

=over

=item ResultIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetDataQualityResult>

Returns: a L<Paws::Glue::BatchGetDataQualityResultResponse> instance

Retrieves a list of data quality results for the specified result IDs.


=head2 BatchGetDevEndpoints

=over

=item DevEndpointNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetDevEndpoints>

Returns: a L<Paws::Glue::BatchGetDevEndpointsResponse> instance

Returns a list of resource metadata for a given list of development
endpoint names. After calling the C<ListDevEndpoints> operation, you
can call this operation to access the data to which you have been
granted permissions. This operation supports all IAM permissions,
including permission conditions that uses tags.


=head2 BatchGetJobs

=over

=item JobNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetJobs>

Returns: a L<Paws::Glue::BatchGetJobsResponse> instance

Returns a list of resource metadata for a given list of job names.
After calling the C<ListJobs> operation, you can call this operation to
access the data to which you have been granted permissions. This
operation supports all IAM permissions, including permission conditions
that uses tags.


=head2 BatchGetPartition

=over

=item DatabaseName => Str

=item PartitionsToGet => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetPartition>

Returns: a L<Paws::Glue::BatchGetPartitionResponse> instance

Retrieves partitions in a batch request.


=head2 BatchGetTableOptimizer

=over

=item Entries => ArrayRef[L<Paws::Glue::BatchGetTableOptimizerEntry>]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetTableOptimizer>

Returns: a L<Paws::Glue::BatchGetTableOptimizerResponse> instance

Returns the configuration for the specified table optimizers.


=head2 BatchGetTriggers

=over

=item TriggerNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetTriggers>

Returns: a L<Paws::Glue::BatchGetTriggersResponse> instance

Returns a list of resource metadata for a given list of trigger names.
After calling the C<ListTriggers> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchGetWorkflows

=over

=item Names => ArrayRef[Str|Undef]

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetWorkflows>

Returns: a L<Paws::Glue::BatchGetWorkflowsResponse> instance

Returns a list of resource metadata for a given list of workflow names.
After calling the C<ListWorkflows> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchPutDataQualityStatisticAnnotation

=over

=item InclusionAnnotations => ArrayRef[L<Paws::Glue::DatapointInclusionAnnotation>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchPutDataQualityStatisticAnnotation>

Returns: a L<Paws::Glue::BatchPutDataQualityStatisticAnnotationResponse> instance

Annotate datapoints over time for a specific data quality statistic.


=head2 BatchStopJobRun

=over

=item JobName => Str

=item JobRunIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchStopJobRun>

Returns: a L<Paws::Glue::BatchStopJobRunResponse> instance

Stops one or more job runs for a specified job definition.


=head2 BatchUpdatePartition

=over

=item DatabaseName => Str

=item Entries => ArrayRef[L<Paws::Glue::BatchUpdatePartitionRequestEntry>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchUpdatePartition>

Returns: a L<Paws::Glue::BatchUpdatePartitionResponse> instance

Updates one or more partitions in a batch operation.


=head2 CancelDataQualityRuleRecommendationRun

=over

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::CancelDataQualityRuleRecommendationRun>

Returns: a L<Paws::Glue::CancelDataQualityRuleRecommendationRunResponse> instance

Cancels the specified recommendation run that was being used to
generate rules.


=head2 CancelDataQualityRulesetEvaluationRun

=over

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::CancelDataQualityRulesetEvaluationRun>

Returns: a L<Paws::Glue::CancelDataQualityRulesetEvaluationRunResponse> instance

Cancels a run where a ruleset is being evaluated against a data source.


=head2 CancelMLTaskRun

=over

=item TaskRunId => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::CancelMLTaskRun>

Returns: a L<Paws::Glue::CancelMLTaskRunResponse> instance

Cancels (stops) a task run. Machine learning task runs are asynchronous
tasks that Glue runs on your behalf as part of various machine learning
workflows. You can cancel a machine learning task run at any time by
calling C<CancelMLTaskRun> with a task run's parent transform's
C<TransformID> and the task run's C<TaskRunId>.


=head2 CancelStatement

=over

=item Id => Int

=item SessionId => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CancelStatement>

Returns: a L<Paws::Glue::CancelStatementResponse> instance

Cancels the statement.


=head2 CheckSchemaVersionValidity

=over

=item DataFormat => Str

=item SchemaDefinition => Str


=back

Each argument is described in detail in: L<Paws::Glue::CheckSchemaVersionValidity>

Returns: a L<Paws::Glue::CheckSchemaVersionValidityResponse> instance

Validates the supplied schema. This call has no side effects, it simply
validates using the supplied schema using C<DataFormat> as the format.
Since it does not take a schema set name, no compatibility checks are
performed.


=head2 CreateBlueprint

=over

=item BlueprintLocation => Str

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateBlueprint>

Returns: a L<Paws::Glue::CreateBlueprintResponse> instance

Registers a blueprint with Glue.


=head2 CreateCatalog

=over

=item CatalogInput => L<Paws::Glue::CatalogInput>

=item Name => Str

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateCatalog>

Returns: a L<Paws::Glue::CreateCatalogResponse> instance

Creates a new catalog in the Glue Data Catalog.


=head2 CreateClassifier

=over

=item [CsvClassifier => L<Paws::Glue::CreateCsvClassifierRequest>]

=item [GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::CreateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::CreateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateClassifier>

Returns: a L<Paws::Glue::CreateClassifierResponse> instance

Creates a classifier in the user's account. This can be a
C<GrokClassifier>, an C<XMLClassifier>, a C<JsonClassifier>, or a
C<CsvClassifier>, depending on which field of the request is present.


=head2 CreateColumnStatisticsTaskSettings

=over

=item DatabaseName => Str

=item Role => Str

=item TableName => Str

=item [CatalogID => Str]

=item [ColumnNameList => ArrayRef[Str|Undef]]

=item [SampleSize => Num]

=item [Schedule => Str]

=item [SecurityConfiguration => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateColumnStatisticsTaskSettings>

Returns: a L<Paws::Glue::CreateColumnStatisticsTaskSettingsResponse> instance

Creates settings for a column statistics task.


=head2 CreateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item [CatalogId => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateConnection>

Returns: a L<Paws::Glue::CreateConnectionResponse> instance

Creates a connection definition in the Data Catalog.

Connections used for creating federated resources require the IAM
C<glue:PassConnection> permission.


=head2 CreateCrawler

=over

=item Name => Str

=item Role => Str

=item Targets => L<Paws::Glue::CrawlerTargets>

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [DatabaseName => Str]

=item [Description => Str]

=item [LakeFormationConfiguration => L<Paws::Glue::LakeFormationConfiguration>]

=item [LineageConfiguration => L<Paws::Glue::LineageConfiguration>]

=item [RecrawlPolicy => L<Paws::Glue::RecrawlPolicy>]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateCrawler>

Returns: a L<Paws::Glue::CreateCrawlerResponse> instance

Creates a new crawler with specified targets, role, configuration, and
optional schedule. At least one crawl target must be specified, in the
C<s3Targets> field, the C<jdbcTargets> field, or the C<DynamoDBTargets>
field.


=head2 CreateCustomEntityType

=over

=item Name => Str

=item RegexString => Str

=item [ContextWords => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateCustomEntityType>

Returns: a L<Paws::Glue::CreateCustomEntityTypeResponse> instance

Creates a custom pattern that is used to detect sensitive data across
the columns and rows of your structured data.

Each custom pattern you create specifies a regular expression and an
optional list of context words. If no context words are passed only a
regular expression is checked.


=head2 CreateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item [CatalogId => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDatabase>

Returns: a L<Paws::Glue::CreateDatabaseResponse> instance

Creates a new database in a Data Catalog.


=head2 CreateDataQualityRuleset

=over

=item Name => Str

=item Ruleset => Str

=item [ClientToken => Str]

=item [DataQualitySecurityConfiguration => Str]

=item [Description => Str]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [TargetTable => L<Paws::Glue::DataQualityTargetTable>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDataQualityRuleset>

Returns: a L<Paws::Glue::CreateDataQualityRulesetResponse> instance

Creates a data quality ruleset with DQDL rules applied to a specified
Glue table.

You create the ruleset using the Data Quality Definition Language
(DQDL). For more information, see the Glue developer guide.


=head2 CreateDevEndpoint

=over

=item EndpointName => Str

=item RoleArn => Str

=item [Arguments => L<Paws::Glue::MapValue>]

=item [ExtraJarsS3Path => Str]

=item [ExtraPythonLibsS3Path => Str]

=item [GlueVersion => Str]

=item [NumberOfNodes => Int]

=item [NumberOfWorkers => Int]

=item [PublicKey => Str]

=item [PublicKeys => ArrayRef[Str|Undef]]

=item [SecurityConfiguration => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDevEndpoint>

Returns: a L<Paws::Glue::CreateDevEndpointResponse> instance

Creates a new development endpoint.


=head2 CreateIntegration

=over

=item IntegrationName => Str

=item SourceArn => Str

=item TargetArn => Str

=item [AdditionalEncryptionContext => L<Paws::Glue::IntegrationAdditionalEncryptionContextMap>]

=item [DataFilter => Str]

=item [Description => Str]

=item [IntegrationConfig => L<Paws::Glue::IntegrationConfig>]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::Glue::Tag>]]


=back

Each argument is described in detail in: L<Paws::Glue::CreateIntegration>

Returns: a L<Paws::Glue::CreateIntegrationResponse> instance

Creates a Zero-ETL integration in the caller's account between two
resources with Amazon Resource Names (ARNs): the C<SourceArn> and
C<TargetArn>.


=head2 CreateIntegrationResourceProperty

=over

=item ResourceArn => Str

=item [SourceProcessingProperties => L<Paws::Glue::SourceProcessingProperties>]

=item [TargetProcessingProperties => L<Paws::Glue::TargetProcessingProperties>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateIntegrationResourceProperty>

Returns: a L<Paws::Glue::CreateIntegrationResourcePropertyResponse> instance

This API can be used for setting up the C<ResourceProperty> of the Glue
connection (for the source) or Glue database ARN (for the target).
These properties can include the role to access the connection or
database. To set both source and target properties the same API needs
to be invoked with the Glue connection ARN as C<ResourceArn> with
C<SourceProcessingProperties> and the Glue database ARN as
C<ResourceArn> with C<TargetProcessingProperties> respectively.


=head2 CreateIntegrationTableProperties

=over

=item ResourceArn => Str

=item TableName => Str

=item [SourceTableConfig => L<Paws::Glue::SourceTableConfig>]

=item [TargetTableConfig => L<Paws::Glue::TargetTableConfig>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateIntegrationTableProperties>

Returns: a L<Paws::Glue::CreateIntegrationTablePropertiesResponse> instance

This API is used to provide optional override properties for the the
tables that need to be replicated. These properties can include
properties for filtering and partitioning for the source and target
tables. To set both source and target properties the same API need to
be invoked with the Glue connection ARN as C<ResourceArn> with
C<SourceTableConfig>, and the Glue database ARN as C<ResourceArn> with
C<TargetTableConfig> respectively.


=head2 CreateJob

=over

=item Command => L<Paws::Glue::JobCommand>

=item Name => Str

=item Role => Str

=item [AllocatedCapacity => Int]

=item [CodeGenConfigurationNodes => L<Paws::Glue::CodeGenConfigurationNodes>]

=item [Connections => L<Paws::Glue::ConnectionsList>]

=item [DefaultArguments => L<Paws::Glue::GenericMap>]

=item [Description => Str]

=item [ExecutionClass => Str]

=item [ExecutionProperty => L<Paws::Glue::ExecutionProperty>]

=item [GlueVersion => Str]

=item [JobMode => Str]

=item [JobRunQueuingEnabled => Bool]

=item [LogUri => Str]

=item [MaintenanceWindow => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [NonOverridableArguments => L<Paws::Glue::GenericMap>]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [NumberOfWorkers => Int]

=item [SecurityConfiguration => Str]

=item [SourceControlDetails => L<Paws::Glue::SourceControlDetails>]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateJob>

Returns: a L<Paws::Glue::CreateJobResponse> instance

Creates a new job definition.


=head2 CreateMLTransform

=over

=item InputRecordTables => ArrayRef[L<Paws::Glue::GlueTable>]

=item Name => Str

=item Parameters => L<Paws::Glue::TransformParameters>

=item Role => Str

=item [Description => Str]

=item [GlueVersion => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [NumberOfWorkers => Int]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [Timeout => Int]

=item [TransformEncryption => L<Paws::Glue::TransformEncryption>]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateMLTransform>

Returns: a L<Paws::Glue::CreateMLTransformResponse> instance

Creates an Glue machine learning transform. This operation creates the
transform and all the necessary parameters to train it.

Call this operation as the first step in the process of using a machine
learning transform (such as the C<FindMatches> transform) for
deduplicating data. You can provide an optional C<Description>, in
addition to the parameters that you want to use for your algorithm.

You must also specify certain parameters for the tasks that Glue runs
on your behalf as part of learning from your data and creating a
high-quality machine learning transform. These parameters include
C<Role>, and optionally, C<AllocatedCapacity>, C<Timeout>, and
C<MaxRetries>. For more information, see Jobs
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).


=head2 CreatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreatePartition>

Returns: a L<Paws::Glue::CreatePartitionResponse> instance

Creates a new partition.


=head2 CreatePartitionIndex

=over

=item DatabaseName => Str

=item PartitionIndex => L<Paws::Glue::PartitionIndex>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreatePartitionIndex>

Returns: a L<Paws::Glue::CreatePartitionIndexResponse> instance

Creates a specified partition index in an existing table.


=head2 CreateRegistry

=over

=item RegistryName => Str

=item [Description => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateRegistry>

Returns: a L<Paws::Glue::CreateRegistryResponse> instance

Creates a new registry which may be used to hold a collection of
schemas.


=head2 CreateSchema

=over

=item DataFormat => Str

=item SchemaName => Str

=item [Compatibility => Str]

=item [Description => Str]

=item [RegistryId => L<Paws::Glue::RegistryId>]

=item [SchemaDefinition => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateSchema>

Returns: a L<Paws::Glue::CreateSchemaResponse> instance

Creates a new schema set and registers the schema definition. Returns
an error if the schema set already exists without actually registering
the version.

When the schema set is created, a version checkpoint will be set to the
first version. Compatibility mode "DISABLED" restricts any additional
schema versions from being added after the first schema version. For
all other compatibility modes, validation of compatibility settings
will be applied only from the second version onwards when the
C<RegisterSchemaVersion> API is used.

When this API is called without a C<RegistryId>, this will create an
entry for a "default-registry" in the registry database tables, if it
is not already present.


=head2 CreateScript

=over

=item [DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>]]

=item [DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]]

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateScript>

Returns: a L<Paws::Glue::CreateScriptResponse> instance

Transforms a directed acyclic graph (DAG) into code.


=head2 CreateSecurityConfiguration

=over

=item EncryptionConfiguration => L<Paws::Glue::EncryptionConfiguration>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::CreateSecurityConfiguration>

Returns: a L<Paws::Glue::CreateSecurityConfigurationResponse> instance

Creates a new security configuration. A security configuration is a set
of security properties that can be used by Glue. You can use a security
configuration to encrypt data at rest. For information about using
security configurations in Glue, see Encrypting Data Written by
Crawlers, Jobs, and Development Endpoints
(https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).


=head2 CreateSession

=over

=item Command => L<Paws::Glue::SessionCommand>

=item Id => Str

=item Role => Str

=item [Connections => L<Paws::Glue::ConnectionsList>]

=item [DefaultArguments => L<Paws::Glue::OrchestrationArgumentsMap>]

=item [Description => Str]

=item [GlueVersion => Str]

=item [IdleTimeout => Int]

=item [MaxCapacity => Num]

=item [NumberOfWorkers => Int]

=item [RequestOrigin => Str]

=item [SecurityConfiguration => Str]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateSession>

Returns: a L<Paws::Glue::CreateSessionResponse> instance

Creates a new session.


=head2 CreateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]

=item [OpenTableFormatInput => L<Paws::Glue::OpenTableFormatInput>]

=item [PartitionIndexes => ArrayRef[L<Paws::Glue::PartitionIndex>]]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTable>

Returns: a L<Paws::Glue::CreateTableResponse> instance

Creates a new table definition in the Data Catalog.


=head2 CreateTableOptimizer

=over

=item CatalogId => Str

=item DatabaseName => Str

=item TableName => Str

=item TableOptimizerConfiguration => L<Paws::Glue::TableOptimizerConfiguration>

=item Type => Str


=back

Each argument is described in detail in: L<Paws::Glue::CreateTableOptimizer>

Returns: a L<Paws::Glue::CreateTableOptimizerResponse> instance

Creates a new table optimizer for a specific function.


=head2 CreateTrigger

=over

=item Actions => ArrayRef[L<Paws::Glue::Action>]

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [EventBatchingCondition => L<Paws::Glue::EventBatchingCondition>]

=item [Predicate => L<Paws::Glue::Predicate>]

=item [Schedule => Str]

=item [StartOnCreation => Bool]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [WorkflowName => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTrigger>

Returns: a L<Paws::Glue::CreateTriggerResponse> instance

Creates a new trigger.

Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Amazon Web Services
Secrets Manager or other secret management mechanism if you intend to
keep them within the Job.


=head2 CreateUsageProfile

=over

=item Configuration => L<Paws::Glue::ProfileConfiguration>

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateUsageProfile>

Returns: a L<Paws::Glue::CreateUsageProfileResponse> instance

Creates an Glue usage profile.


=head2 CreateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateUserDefinedFunction>

Returns: a L<Paws::Glue::CreateUserDefinedFunctionResponse> instance

Creates a new function definition in the Data Catalog.


=head2 CreateWorkflow

=over

=item Name => Str

=item [DefaultRunProperties => L<Paws::Glue::WorkflowRunProperties>]

=item [Description => Str]

=item [MaxConcurrentRuns => Int]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateWorkflow>

Returns: a L<Paws::Glue::CreateWorkflowResponse> instance

Creates a new workflow.


=head2 DeleteBlueprint

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteBlueprint>

Returns: a L<Paws::Glue::DeleteBlueprintResponse> instance

Deletes an existing blueprint.


=head2 DeleteCatalog

=over

=item CatalogId => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteCatalog>

Returns: a L<Paws::Glue::DeleteCatalogResponse> instance

Removes the specified catalog from the Glue Data Catalog.

After completing this operation, you no longer have access to the
databases, tables (and all table versions and partitions that might
belong to the tables) and the user-defined functions in the deleted
catalog. Glue deletes these "orphaned" resources asynchronously in a
timely manner, at the discretion of the service.

To ensure the immediate deletion of all related resources before
calling the C<DeleteCatalog> operation, use C<DeleteTableVersion> (or
C<BatchDeleteTableVersion>), C<DeletePartition> (or
C<BatchDeletePartition>), C<DeleteTable> (or C<BatchDeleteTable>),
C<DeleteUserDefinedFunction> and C<DeleteDatabase> to delete any
resources that belong to the catalog.


=head2 DeleteClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteClassifier>

Returns: a L<Paws::Glue::DeleteClassifierResponse> instance

Removes a classifier from the Data Catalog.


=head2 DeleteColumnStatisticsForPartition

=over

=item ColumnName => Str

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteColumnStatisticsForPartition>

Returns: a L<Paws::Glue::DeleteColumnStatisticsForPartitionResponse> instance

Delete the partition column statistics of a column.

The Identity and Access Management (IAM) permission required for this
operation is C<DeletePartition>.


=head2 DeleteColumnStatisticsForTable

=over

=item ColumnName => Str

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteColumnStatisticsForTable>

Returns: a L<Paws::Glue::DeleteColumnStatisticsForTableResponse> instance

Retrieves table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<DeleteTable>.


=head2 DeleteColumnStatisticsTaskSettings

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteColumnStatisticsTaskSettings>

Returns: a L<Paws::Glue::DeleteColumnStatisticsTaskSettingsResponse> instance

Deletes settings for a column statistics task.


=head2 DeleteConnection

=over

=item ConnectionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteConnection>

Returns: a L<Paws::Glue::DeleteConnectionResponse> instance

Deletes a connection from the Data Catalog.


=head2 DeleteCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteCrawler>

Returns: a L<Paws::Glue::DeleteCrawlerResponse> instance

Removes a specified crawler from the Glue Data Catalog, unless the
crawler state is C<RUNNING>.


=head2 DeleteCustomEntityType

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteCustomEntityType>

Returns: a L<Paws::Glue::DeleteCustomEntityTypeResponse> instance

Deletes a custom pattern by specifying its name.


=head2 DeleteDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDatabase>

Returns: a L<Paws::Glue::DeleteDatabaseResponse> instance

Removes a specified database from a Data Catalog.

After completing this operation, you no longer have access to the
tables (and all table versions and partitions that might belong to the
tables) and the user-defined functions in the deleted database. Glue
deletes these "orphaned" resources asynchronously in a timely manner,
at the discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<DeleteDatabase>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, C<DeletePartition> or
C<BatchDeletePartition>, C<DeleteUserDefinedFunction>, and
C<DeleteTable> or C<BatchDeleteTable>, to delete any resources that
belong to the database.


=head2 DeleteDataQualityRuleset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDataQualityRuleset>

Returns: a L<Paws::Glue::DeleteDataQualityRulesetResponse> instance

Deletes a data quality ruleset.


=head2 DeleteDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDevEndpoint>

Returns: a L<Paws::Glue::DeleteDevEndpointResponse> instance

Deletes a specified development endpoint.


=head2 DeleteIntegration

=over

=item IntegrationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteIntegration>

Returns: a L<Paws::Glue::DeleteIntegrationResponse> instance

Deletes the specified Zero-ETL integration.


=head2 DeleteIntegrationTableProperties

=over

=item ResourceArn => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteIntegrationTableProperties>

Returns: a L<Paws::Glue::DeleteIntegrationTablePropertiesResponse> instance

Deletes the table properties that have been created for the tables that
need to be replicated.


=head2 DeleteJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteJob>

Returns: a L<Paws::Glue::DeleteJobResponse> instance

Deletes a specified job definition. If the job definition is not found,
no exception is thrown.


=head2 DeleteMLTransform

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteMLTransform>

Returns: a L<Paws::Glue::DeleteMLTransformResponse> instance

Deletes an Glue machine learning transform. Machine learning transforms
are a special type of transform that use machine learning to learn the
details of the transformation to be performed by learning from examples
provided by humans. These transformations are then saved by Glue. If
you no longer need a transform, you can delete it by calling
C<DeleteMLTransforms>. However, any Glue jobs that still reference the
deleted transform will no longer succeed.


=head2 DeletePartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeletePartition>

Returns: a L<Paws::Glue::DeletePartitionResponse> instance

Deletes a specified partition.


=head2 DeletePartitionIndex

=over

=item DatabaseName => Str

=item IndexName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeletePartitionIndex>

Returns: a L<Paws::Glue::DeletePartitionIndexResponse> instance

Deletes a specified partition index from an existing table.


=head2 DeleteRegistry

=over

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::DeleteRegistry>

Returns: a L<Paws::Glue::DeleteRegistryResponse> instance

Delete the entire registry including schema and all of its versions. To
get the status of the delete operation, you can call the C<GetRegistry>
API after the asynchronous call. Deleting a registry will deactivate
all online operations for the registry such as the C<UpdateRegistry>,
C<CreateSchema>, C<UpdateSchema>, and C<RegisterSchemaVersion> APIs.


=head2 DeleteResourcePolicy

=over

=item [PolicyHashCondition => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteResourcePolicy>

Returns: a L<Paws::Glue::DeleteResourcePolicyResponse> instance

Deletes a specified policy.


=head2 DeleteSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSchema>

Returns: a L<Paws::Glue::DeleteSchemaResponse> instance

Deletes the entire schema set, including the schema set and all of its
versions. To get the status of the delete operation, you can call
C<GetSchema> API after the asynchronous call. Deleting a registry will
deactivate all online operations for the schema, such as the
C<GetSchemaByDefinition>, and C<RegisterSchemaVersion> APIs.


=head2 DeleteSchemaVersions

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item Versions => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSchemaVersions>

Returns: a L<Paws::Glue::DeleteSchemaVersionsResponse> instance

Remove versions from the specified schema. A version number or range
may be supplied. If the compatibility mode forbids deleting of a
version that is necessary, such as BACKWARDS_FULL, an error is
returned. Calling the C<GetSchemaVersions> API after this call will
list the status of the deleted versions.

When the range of version numbers contain check pointed version, the
API will return a 409 conflict and will not proceed with the deletion.
You have to remove the checkpoint first using the
C<DeleteSchemaCheckpoint> API before using this API.

You cannot use the C<DeleteSchemaVersions> API to delete the first
schema version in the schema set. The first schema version can only be
deleted by the C<DeleteSchema> API. This operation will also delete the
attached C<SchemaVersionMetadata> under the schema versions. Hard
deletes will be enforced on the database.

If the compatibility mode forbids deleting of a version that is
necessary, such as BACKWARDS_FULL, an error is returned.


=head2 DeleteSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSecurityConfiguration>

Returns: a L<Paws::Glue::DeleteSecurityConfigurationResponse> instance

Deletes a specified security configuration.


=head2 DeleteSession

=over

=item Id => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSession>

Returns: a L<Paws::Glue::DeleteSessionResponse> instance

Deletes the session.


=head2 DeleteTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTable>

Returns: a L<Paws::Glue::DeleteTableResponse> instance

Removes a table definition from the Data Catalog.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. Glue deletes
these "orphaned" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<DeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 DeleteTableOptimizer

=over

=item CatalogId => Str

=item DatabaseName => Str

=item TableName => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTableOptimizer>

Returns: a L<Paws::Glue::DeleteTableOptimizerResponse> instance

Deletes an optimizer and all associated metadata for a table. The
optimization will no longer be performed on the table.


=head2 DeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionId => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTableVersion>

Returns: a L<Paws::Glue::DeleteTableVersionResponse> instance

Deletes a specified version of a table.


=head2 DeleteTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTrigger>

Returns: a L<Paws::Glue::DeleteTriggerResponse> instance

Deletes a specified trigger. If the trigger is not found, no exception
is thrown.


=head2 DeleteUsageProfile

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteUsageProfile>

Returns: a L<Paws::Glue::DeleteUsageProfileResponse> instance

Deletes the Glue specified usage profile.


=head2 DeleteUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteUserDefinedFunction>

Returns: a L<Paws::Glue::DeleteUserDefinedFunctionResponse> instance

Deletes an existing function definition from the Data Catalog.


=head2 DeleteWorkflow

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteWorkflow>

Returns: a L<Paws::Glue::DeleteWorkflowResponse> instance

Deletes a workflow.


=head2 DescribeConnectionType

=over

=item ConnectionType => Str


=back

Each argument is described in detail in: L<Paws::Glue::DescribeConnectionType>

Returns: a L<Paws::Glue::DescribeConnectionTypeResponse> instance

The C<DescribeConnectionType> API provides full details of the
supported options for a given connection type in Glue.


=head2 DescribeEntity

=over

=item ConnectionName => Str

=item EntityName => Str

=item [CatalogId => Str]

=item [DataStoreApiVersion => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DescribeEntity>

Returns: a L<Paws::Glue::DescribeEntityResponse> instance

Provides details regarding the entity used with the connection type,
with a description of the data model for each field in the selected
entity.

The response includes all the fields which make up the entity.


=head2 DescribeInboundIntegrations

=over

=item [IntegrationArn => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DescribeInboundIntegrations>

Returns: a L<Paws::Glue::DescribeInboundIntegrationsResponse> instance

Returns a list of inbound integrations for the specified integration.


=head2 DescribeIntegrations

=over

=item [Filters => ArrayRef[L<Paws::Glue::IntegrationFilter>]]

=item [IntegrationIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Glue::DescribeIntegrations>

Returns: a L<Paws::Glue::DescribeIntegrationsResponse> instance

The API is used to retrieve a list of integrations.


=head2 GetBlueprint

=over

=item Name => Str

=item [IncludeBlueprint => Bool]

=item [IncludeParameterSpec => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetBlueprint>

Returns: a L<Paws::Glue::GetBlueprintResponse> instance

Retrieves the details of a blueprint.


=head2 GetBlueprintRun

=over

=item BlueprintName => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetBlueprintRun>

Returns: a L<Paws::Glue::GetBlueprintRunResponse> instance

Retrieves the details of a blueprint run.


=head2 GetBlueprintRuns

=over

=item BlueprintName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetBlueprintRuns>

Returns: a L<Paws::Glue::GetBlueprintRunsResponse> instance

Retrieves the details of blueprint runs for a specified blueprint.


=head2 GetCatalog

=over

=item CatalogId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetCatalog>

Returns: a L<Paws::Glue::GetCatalogResponse> instance

The name of the Catalog to retrieve. This should be all lowercase.


=head2 GetCatalogImportStatus

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCatalogImportStatus>

Returns: a L<Paws::Glue::GetCatalogImportStatusResponse> instance

Retrieves the status of a migration operation.


=head2 GetCatalogs

=over

=item [IncludeRoot => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParentCatalogId => Str]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetCatalogs>

Returns: a L<Paws::Glue::GetCatalogsResponse> instance

Retrieves all catalogs defined in a catalog in the Glue Data Catalog.
For a Redshift-federated catalog use case, this operation returns the
list of catalogs mapped to Redshift databases in the Redshift namespace
catalog.


=head2 GetClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifier>

Returns: a L<Paws::Glue::GetClassifierResponse> instance

Retrieve a classifier by name.


=head2 GetClassifiers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifiers>

Returns: a L<Paws::Glue::GetClassifiersResponse> instance

Lists all classifier objects in the Data Catalog.


=head2 GetColumnStatisticsForPartition

=over

=item ColumnNames => ArrayRef[Str|Undef]

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsForPartition>

Returns: a L<Paws::Glue::GetColumnStatisticsForPartitionResponse> instance

Retrieves partition statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<GetPartition>.


=head2 GetColumnStatisticsForTable

=over

=item ColumnNames => ArrayRef[Str|Undef]

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsForTable>

Returns: a L<Paws::Glue::GetColumnStatisticsForTableResponse> instance

Retrieves table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<GetTable>.


=head2 GetColumnStatisticsTaskRun

=over

=item ColumnStatisticsTaskRunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsTaskRun>

Returns: a L<Paws::Glue::GetColumnStatisticsTaskRunResponse> instance

Get the associated metadata/information for a task run, given a task
run ID.


=head2 GetColumnStatisticsTaskRuns

=over

=item DatabaseName => Str

=item TableName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsTaskRuns>

Returns: a L<Paws::Glue::GetColumnStatisticsTaskRunsResponse> instance

Retrieves information about all runs associated with the specified
table.


=head2 GetColumnStatisticsTaskSettings

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsTaskSettings>

Returns: a L<Paws::Glue::GetColumnStatisticsTaskSettingsResponse> instance

Gets settings for a column statistics task.


=head2 GetConnection

=over

=item Name => Str

=item [ApplyOverrideForComputeEnvironment => Str]

=item [CatalogId => Str]

=item [HidePassword => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnection>

Returns: a L<Paws::Glue::GetConnectionResponse> instance

Retrieves a connection definition from the Data Catalog.


=head2 GetConnections

=over

=item [CatalogId => Str]

=item [Filter => L<Paws::Glue::GetConnectionsFilter>]

=item [HidePassword => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnections>

Returns: a L<Paws::Glue::GetConnectionsResponse> instance

Retrieves a list of connection definitions from the Data Catalog.


=head2 GetCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawler>

Returns: a L<Paws::Glue::GetCrawlerResponse> instance

Retrieves metadata for a specified crawler.


=head2 GetCrawlerMetrics

=over

=item [CrawlerNameList => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlerMetrics>

Returns: a L<Paws::Glue::GetCrawlerMetricsResponse> instance

Retrieves metrics about specified crawlers.


=head2 GetCrawlers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlers>

Returns: a L<Paws::Glue::GetCrawlersResponse> instance

Retrieves metadata for all crawlers defined in the customer account.


=head2 GetCustomEntityType

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetCustomEntityType>

Returns: a L<Paws::Glue::GetCustomEntityTypeResponse> instance

Retrieves the details of a custom pattern by specifying its name.


=head2 GetDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabase>

Returns: a L<Paws::Glue::GetDatabaseResponse> instance

Retrieves the definition of a specified database.


=head2 GetDatabases

=over

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabases>

Returns: a L<Paws::Glue::GetDatabasesResponse> instance

Retrieves all databases defined in a given Data Catalog.


=head2 GetDataCatalogEncryptionSettings

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::GetDataCatalogEncryptionSettingsResponse> instance

Retrieves the security configuration for a specified catalog.


=head2 GetDataflowGraph

=over

=item [PythonScript => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataflowGraph>

Returns: a L<Paws::Glue::GetDataflowGraphResponse> instance

Transforms a Python script into a directed acyclic graph (DAG).


=head2 GetDataQualityModel

=over

=item ProfileId => Str

=item [StatisticId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityModel>

Returns: a L<Paws::Glue::GetDataQualityModelResponse> instance

Retrieve the training status of the model along with more information
(CompletedOn, StartedOn, FailureReason).


=head2 GetDataQualityModelResult

=over

=item ProfileId => Str

=item StatisticId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityModelResult>

Returns: a L<Paws::Glue::GetDataQualityModelResultResponse> instance

Retrieve a statistic's predictions for a given Profile ID.


=head2 GetDataQualityResult

=over

=item ResultId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityResult>

Returns: a L<Paws::Glue::GetDataQualityResultResponse> instance

Retrieves the result of a data quality rule evaluation.


=head2 GetDataQualityRuleRecommendationRun

=over

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityRuleRecommendationRun>

Returns: a L<Paws::Glue::GetDataQualityRuleRecommendationRunResponse> instance

Gets the specified recommendation run that was used to generate rules.


=head2 GetDataQualityRuleset

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityRuleset>

Returns: a L<Paws::Glue::GetDataQualityRulesetResponse> instance

Returns an existing ruleset by identifier or name.


=head2 GetDataQualityRulesetEvaluationRun

=over

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDataQualityRulesetEvaluationRun>

Returns: a L<Paws::Glue::GetDataQualityRulesetEvaluationRunResponse> instance

Retrieves a specific run where a ruleset is evaluated against a data
source.


=head2 GetDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoint>

Returns: a L<Paws::Glue::GetDevEndpointResponse> instance

Retrieves information about a specified development endpoint.

When you create a development endpoint in a virtual private cloud
(VPC), Glue returns only a private IP address, and the public IP
address field is not populated. When you create a non-VPC development
endpoint, Glue returns only a public IP address.


=head2 GetDevEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoints>

Returns: a L<Paws::Glue::GetDevEndpointsResponse> instance

Retrieves all the development endpoints in this Amazon Web Services
account.

When you create a development endpoint in a virtual private cloud
(VPC), Glue returns only a private IP address and the public IP address
field is not populated. When you create a non-VPC development endpoint,
Glue returns only a public IP address.


=head2 GetEntityRecords

=over

=item EntityName => Str

=item Limit => Int

=item [CatalogId => Str]

=item [ConnectionName => Str]

=item [ConnectionOptions => L<Paws::Glue::ConnectionOptions>]

=item [DataStoreApiVersion => Str]

=item [FilterPredicate => Str]

=item [NextToken => Str]

=item [OrderBy => Str]

=item [SelectedFields => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Glue::GetEntityRecords>

Returns: a L<Paws::Glue::GetEntityRecordsResponse> instance

This API is used to query preview data from a given connection type or
from a native Amazon S3 based Glue Data Catalog.

Returns records as an array of JSON blobs. Each record is formatted
using Jackson JsonNode based on the field type defined by the
C<DescribeEntity> API.

Spark connectors generate schemas according to the same data type
mapping as in the C<DescribeEntity> API. Spark connectors convert data
to the appropriate data types matching the schema when returning rows.


=head2 GetIntegrationResourceProperty

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetIntegrationResourceProperty>

Returns: a L<Paws::Glue::GetIntegrationResourcePropertyResponse> instance

This API is used for fetching the C<ResourceProperty> of the Glue
connection (for the source) or Glue database ARN (for the target)


=head2 GetIntegrationTableProperties

=over

=item ResourceArn => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetIntegrationTableProperties>

Returns: a L<Paws::Glue::GetIntegrationTablePropertiesResponse> instance

This API is used to retrieve optional override properties for the
tables that need to be replicated. These properties can include
properties for filtering and partition for source and target tables.


=head2 GetJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetJob>

Returns: a L<Paws::Glue::GetJobResponse> instance

Retrieves an existing job definition.


=head2 GetJobBookmark

=over

=item JobName => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobBookmark>

Returns: a L<Paws::Glue::GetJobBookmarkResponse> instance

Returns information on a job bookmark entry.

For more information about enabling and using job bookmarks, see:

=over

=item *

Tracking processed data using job bookmarks
(https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html)

=item *

Job parameters used by Glue
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)

=item *

Job structure
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job)

=back



=head2 GetJobRun

=over

=item JobName => Str

=item RunId => Str

=item [PredecessorsIncluded => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRun>

Returns: a L<Paws::Glue::GetJobRunResponse> instance

Retrieves the metadata for a given job run. Job run history is
accessible for 365 days for your workflow and job run.


=head2 GetJobRuns

=over

=item JobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRuns>

Returns: a L<Paws::Glue::GetJobRunsResponse> instance

Retrieves metadata for all runs of a given job definition.

C<GetJobRuns> returns the job runs in chronological order, with the
newest jobs returned first.


=head2 GetJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobs>

Returns: a L<Paws::Glue::GetJobsResponse> instance

Retrieves all current job definitions.


=head2 GetMapping

=over

=item Source => L<Paws::Glue::CatalogEntry>

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetMapping>

Returns: a L<Paws::Glue::GetMappingResponse> instance

Creates mappings.


=head2 GetMLTaskRun

=over

=item TaskRunId => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTaskRun>

Returns: a L<Paws::Glue::GetMLTaskRunResponse> instance

Gets details for a specific task run on a machine learning transform.
Machine learning task runs are asynchronous tasks that Glue runs on
your behalf as part of various machine learning workflows. You can
check the stats of any task run by calling C<GetMLTaskRun> with the
C<TaskRunID> and its parent transform's C<TransformID>.


=head2 GetMLTaskRuns

=over

=item TransformId => Str

=item [Filter => L<Paws::Glue::TaskRunFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TaskRunSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTaskRuns>

Returns: a L<Paws::Glue::GetMLTaskRunsResponse> instance

Gets a list of runs for a machine learning transform. Machine learning
task runs are asynchronous tasks that Glue runs on your behalf as part
of various machine learning workflows. You can get a sortable,
filterable list of machine learning task runs by calling
C<GetMLTaskRuns> with their parent transform's C<TransformID> and other
optional parameters as documented in this section.

This operation returns a list of historic runs and must be paginated.


=head2 GetMLTransform

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTransform>

Returns: a L<Paws::Glue::GetMLTransformResponse> instance

Gets an Glue machine learning transform artifact and all its
corresponding metadata. Machine learning transforms are a special type
of transform that use machine learning to learn the details of the
transformation to be performed by learning from examples provided by
humans. These transformations are then saved by Glue. You can retrieve
their metadata by calling C<GetMLTransform>.


=head2 GetMLTransforms

=over

=item [Filter => L<Paws::Glue::TransformFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TransformSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTransforms>

Returns: a L<Paws::Glue::GetMLTransformsResponse> instance

Gets a sortable, filterable list of existing Glue machine learning
transforms. Machine learning transforms are a special type of transform
that use machine learning to learn the details of the transformation to
be performed by learning from examples provided by humans. These
transformations are then saved by Glue, and you can retrieve their
metadata by calling C<GetMLTransforms>.


=head2 GetPartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartition>

Returns: a L<Paws::Glue::GetPartitionResponse> instance

Retrieves information about a specified partition.


=head2 GetPartitionIndexes

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartitionIndexes>

Returns: a L<Paws::Glue::GetPartitionIndexesResponse> instance

Retrieves the partition indexes associated with a table.


=head2 GetPartitions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [ExcludeColumnSchema => Bool]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryAsOfTime => Str]

=item [Segment => L<Paws::Glue::Segment>]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartitions>

Returns: a L<Paws::Glue::GetPartitionsResponse> instance

Retrieves information about the partitions in a table.


=head2 GetPlan

=over

=item Mapping => ArrayRef[L<Paws::Glue::MappingEntry>]

=item Source => L<Paws::Glue::CatalogEntry>

=item [AdditionalPlanOptionsMap => L<Paws::Glue::AdditionalPlanOptionsMap>]

=item [Language => Str]

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetPlan>

Returns: a L<Paws::Glue::GetPlanResponse> instance

Gets code to perform a specified mapping.


=head2 GetRegistry

=over

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::GetRegistry>

Returns: a L<Paws::Glue::GetRegistryResponse> instance

Describes the specified registry in detail.


=head2 GetResourcePolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetResourcePolicies>

Returns: a L<Paws::Glue::GetResourcePoliciesResponse> instance

Retrieves the resource policies set on individual resources by Resource
Access Manager during cross-account permission grants. Also retrieves
the Data Catalog resource policy.

If you enabled metadata encryption in Data Catalog settings, and you do
not have permission on the KMS key, the operation can't return the Data
Catalog resource policy.


=head2 GetResourcePolicy

=over

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetResourcePolicy>

Returns: a L<Paws::Glue::GetResourcePolicyResponse> instance

Retrieves a specified resource policy.


=head2 GetSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchema>

Returns: a L<Paws::Glue::GetSchemaResponse> instance

Describes the specified schema in detail.


=head2 GetSchemaByDefinition

=over

=item SchemaDefinition => Str

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaByDefinition>

Returns: a L<Paws::Glue::GetSchemaByDefinitionResponse> instance

Retrieves a schema by the C<SchemaDefinition>. The schema definition is
sent to the Schema Registry, canonicalized, and hashed. If the hash is
matched within the scope of the C<SchemaName> or ARN (or the default
registry, if none is supplied), that schemaE<rsquo>s metadata is
returned. Otherwise, a 404 or NotFound error is returned. Schema
versions in C<Deleted> statuses will not be included in the results.


=head2 GetSchemaVersion

=over

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaVersion>

Returns: a L<Paws::Glue::GetSchemaVersionResponse> instance

Get the specified schema by its unique ID assigned when a version of
the schema is created or registered. Schema versions in Deleted status
will not be included in the results.


=head2 GetSchemaVersionsDiff

=over

=item FirstSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

=item SchemaDiffType => Str

=item SchemaId => L<Paws::Glue::SchemaId>

=item SecondSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaVersionsDiff>

Returns: a L<Paws::Glue::GetSchemaVersionsDiffResponse> instance

Fetches the schema version difference in the specified difference type
between two stored schema versions in the Schema Registry.

This API allows you to compare two schema versions between two schema
definitions under the same schema.


=head2 GetSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfiguration>

Returns: a L<Paws::Glue::GetSecurityConfigurationResponse> instance

Retrieves a specified security configuration.


=head2 GetSecurityConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfigurations>

Returns: a L<Paws::Glue::GetSecurityConfigurationsResponse> instance

Retrieves a list of all security configurations.


=head2 GetSession

=over

=item Id => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetSession>

Returns: a L<Paws::Glue::GetSessionResponse> instance

Retrieves the session.


=head2 GetStatement

=over

=item Id => Int

=item SessionId => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetStatement>

Returns: a L<Paws::Glue::GetStatementResponse> instance

Retrieves the statement.


=head2 GetTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]

=item [IncludeStatusDetails => Bool]

=item [QueryAsOfTime => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTable>

Returns: a L<Paws::Glue::GetTableResponse> instance

Retrieves the C<Table> definition in a Data Catalog for a specified
table.


=head2 GetTableOptimizer

=over

=item CatalogId => Str

=item DatabaseName => Str

=item TableName => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTableOptimizer>

Returns: a L<Paws::Glue::GetTableOptimizerResponse> instance

Returns the configuration of all optimizers associated with a specified
table.


=head2 GetTables

=over

=item DatabaseName => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [CatalogId => Str]

=item [Expression => Str]

=item [IncludeStatusDetails => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryAsOfTime => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTables>

Returns: a L<Paws::Glue::GetTablesResponse> instance

Retrieves the definitions of some or all of the tables in a given
C<Database>.


=head2 GetTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersion>

Returns: a L<Paws::Glue::GetTableVersionResponse> instance

Retrieves a specified version of a table.


=head2 GetTableVersions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersions>

Returns: a L<Paws::Glue::GetTableVersionsResponse> instance

Retrieves a list of strings that identify available versions of a
specified table.


=head2 GetTags

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTags>

Returns: a L<Paws::Glue::GetTagsResponse> instance

Retrieves a list of tags associated with a resource.


=head2 GetTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTrigger>

Returns: a L<Paws::Glue::GetTriggerResponse> instance

Retrieves the definition of a trigger.


=head2 GetTriggers

=over

=item [DependentJobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTriggers>

Returns: a L<Paws::Glue::GetTriggersResponse> instance

Gets all the triggers associated with a job.


=head2 GetUnfilteredPartitionMetadata

=over

=item CatalogId => Str

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item SupportedPermissionTypes => ArrayRef[Str|Undef]

=item TableName => Str

=item [AuditContext => L<Paws::Glue::AuditContext>]

=item [QuerySessionContext => L<Paws::Glue::QuerySessionContext>]

=item [Region => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUnfilteredPartitionMetadata>

Returns: a L<Paws::Glue::GetUnfilteredPartitionMetadataResponse> instance

Retrieves partition metadata from the Data Catalog that contains
unfiltered metadata.

For IAM authorization, the public IAM action associated with this API
is C<glue:GetPartition>.


=head2 GetUnfilteredPartitionsMetadata

=over

=item CatalogId => Str

=item DatabaseName => Str

=item SupportedPermissionTypes => ArrayRef[Str|Undef]

=item TableName => Str

=item [AuditContext => L<Paws::Glue::AuditContext>]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QuerySessionContext => L<Paws::Glue::QuerySessionContext>]

=item [Region => Str]

=item [Segment => L<Paws::Glue::Segment>]


=back

Each argument is described in detail in: L<Paws::Glue::GetUnfilteredPartitionsMetadata>

Returns: a L<Paws::Glue::GetUnfilteredPartitionsMetadataResponse> instance

Retrieves partition metadata from the Data Catalog that contains
unfiltered metadata.

For IAM authorization, the public IAM action associated with this API
is C<glue:GetPartitions>.


=head2 GetUnfilteredTableMetadata

=over

=item CatalogId => Str

=item DatabaseName => Str

=item Name => Str

=item SupportedPermissionTypes => ArrayRef[Str|Undef]

=item [AuditContext => L<Paws::Glue::AuditContext>]

=item [ParentResourceArn => Str]

=item [Permissions => ArrayRef[Str|Undef]]

=item [QuerySessionContext => L<Paws::Glue::QuerySessionContext>]

=item [Region => Str]

=item [RootResourceArn => Str]

=item [SupportedDialect => L<Paws::Glue::SupportedDialect>]


=back

Each argument is described in detail in: L<Paws::Glue::GetUnfilteredTableMetadata>

Returns: a L<Paws::Glue::GetUnfilteredTableMetadataResponse> instance

Allows a third-party analytical engine to retrieve unfiltered table
metadata from the Data Catalog.

For IAM authorization, the public IAM action associated with this API
is C<glue:GetTable>.


=head2 GetUsageProfile

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetUsageProfile>

Returns: a L<Paws::Glue::GetUsageProfileResponse> instance

Retrieves information about the specified Glue usage profile.


=head2 GetUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunction>

Returns: a L<Paws::Glue::GetUserDefinedFunctionResponse> instance

Retrieves a specified function definition from the Data Catalog.


=head2 GetUserDefinedFunctions

=over

=item Pattern => Str

=item [CatalogId => Str]

=item [DatabaseName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunctions>

Returns: a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance

Retrieves multiple function definitions from the Data Catalog.


=head2 GetWorkflow

=over

=item Name => Str

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflow>

Returns: a L<Paws::Glue::GetWorkflowResponse> instance

Retrieves resource metadata for a workflow.


=head2 GetWorkflowRun

=over

=item Name => Str

=item RunId => Str

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRun>

Returns: a L<Paws::Glue::GetWorkflowRunResponse> instance

Retrieves the metadata for a given workflow run. Job run history is
accessible for 90 days for your workflow and job run.


=head2 GetWorkflowRunProperties

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRunProperties>

Returns: a L<Paws::Glue::GetWorkflowRunPropertiesResponse> instance

Retrieves the workflow run properties which were set during the run.


=head2 GetWorkflowRuns

=over

=item Name => Str

=item [IncludeGraph => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRuns>

Returns: a L<Paws::Glue::GetWorkflowRunsResponse> instance

Retrieves metadata for all runs of a given workflow.


=head2 ImportCatalogToGlue

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ImportCatalogToGlue>

Returns: a L<Paws::Glue::ImportCatalogToGlueResponse> instance

Imports an existing Amazon Athena Data Catalog to Glue.


=head2 ListBlueprints

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListBlueprints>

Returns: a L<Paws::Glue::ListBlueprintsResponse> instance

Lists all the blueprint names in an account.


=head2 ListColumnStatisticsTaskRuns

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListColumnStatisticsTaskRuns>

Returns: a L<Paws::Glue::ListColumnStatisticsTaskRunsResponse> instance

List all task runs for a particular account.


=head2 ListConnectionTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListConnectionTypes>

Returns: a L<Paws::Glue::ListConnectionTypesResponse> instance

The C<ListConnectionTypes> API provides a discovery mechanism to learn
available connection types in Glue. The response contains a list of
connection types with high-level details of what is supported for each
connection type. The connection types listed are the set of supported
options for the C<ConnectionType> value in the C<CreateConnection> API.


=head2 ListCrawlers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListCrawlers>

Returns: a L<Paws::Glue::ListCrawlersResponse> instance

Retrieves the names of all crawler resources in this Amazon Web
Services account, or the resources with the specified tag. This
operation allows you to see which resources are available in your
account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListCrawls

=over

=item CrawlerName => Str

=item [Filters => ArrayRef[L<Paws::Glue::CrawlsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListCrawls>

Returns: a L<Paws::Glue::ListCrawlsResponse> instance

Returns all the crawls of a specified crawler. Returns only the crawls
that have occurred since the launch date of the crawler history
feature, and only retains up to 12 months of crawls. Older crawls will
not be returned.

You may use this API to:

=over

=item *

Retrive all the crawls of a specified crawler.

=item *

Retrieve all the crawls of a specified crawler within a limited count.

=item *

Retrieve all the crawls of a specified crawler in a specific time
range.

=item *

Retrieve all the crawls of a specified crawler with a particular state,
crawl ID, or DPU hour value.

=back



=head2 ListCustomEntityTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListCustomEntityTypes>

Returns: a L<Paws::Glue::ListCustomEntityTypesResponse> instance

Lists all the custom patterns that have been created.


=head2 ListDataQualityResults

=over

=item [Filter => L<Paws::Glue::DataQualityResultFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityResults>

Returns: a L<Paws::Glue::ListDataQualityResultsResponse> instance

Returns all data quality execution results for your account.


=head2 ListDataQualityRuleRecommendationRuns

=over

=item [Filter => L<Paws::Glue::DataQualityRuleRecommendationRunFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityRuleRecommendationRuns>

Returns: a L<Paws::Glue::ListDataQualityRuleRecommendationRunsResponse> instance

Lists the recommendation runs meeting the filter criteria.


=head2 ListDataQualityRulesetEvaluationRuns

=over

=item [Filter => L<Paws::Glue::DataQualityRulesetEvaluationRunFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityRulesetEvaluationRuns>

Returns: a L<Paws::Glue::ListDataQualityRulesetEvaluationRunsResponse> instance

Lists all the runs meeting the filter criteria, where a ruleset is
evaluated against a data source.


=head2 ListDataQualityRulesets

=over

=item [Filter => L<Paws::Glue::DataQualityRulesetFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityRulesets>

Returns: a L<Paws::Glue::ListDataQualityRulesetsResponse> instance

Returns a paginated list of rulesets for the specified list of Glue
tables.


=head2 ListDataQualityStatisticAnnotations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileId => Str]

=item [StatisticId => Str]

=item [TimestampFilter => L<Paws::Glue::TimestampFilter>]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityStatisticAnnotations>

Returns: a L<Paws::Glue::ListDataQualityStatisticAnnotationsResponse> instance

Retrieve annotations for a data quality statistic.


=head2 ListDataQualityStatistics

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileId => Str]

=item [StatisticId => Str]

=item [TimestampFilter => L<Paws::Glue::TimestampFilter>]


=back

Each argument is described in detail in: L<Paws::Glue::ListDataQualityStatistics>

Returns: a L<Paws::Glue::ListDataQualityStatisticsResponse> instance

Retrieves a list of data quality statistics.


=head2 ListDevEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListDevEndpoints>

Returns: a L<Paws::Glue::ListDevEndpointsResponse> instance

Retrieves the names of all C<DevEndpoint> resources in this Amazon Web
Services account, or the resources with the specified tag. This
operation allows you to see which resources are available in your
account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListEntities

=over

=item [CatalogId => Str]

=item [ConnectionName => Str]

=item [DataStoreApiVersion => Str]

=item [NextToken => Str]

=item [ParentEntityName => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListEntities>

Returns: a L<Paws::Glue::ListEntitiesResponse> instance

Returns the available entities supported by the connection type.


=head2 ListJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListJobs>

Returns: a L<Paws::Glue::ListJobsResponse> instance

Retrieves the names of all job resources in this Amazon Web Services
account, or the resources with the specified tag. This operation allows
you to see which resources are available in your account, and their
names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListMLTransforms

=over

=item [Filter => L<Paws::Glue::TransformFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TransformSortCriteria>]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListMLTransforms>

Returns: a L<Paws::Glue::ListMLTransformsResponse> instance

Retrieves a sortable, filterable list of existing Glue machine learning
transforms in this Amazon Web Services account, or the resources with
the specified tag. This operation takes the optional C<Tags> field,
which you can use as a filter of the responses so that tagged resources
can be retrieved as a group. If you choose to use tag filtering, only
resources with the tags are retrieved.


=head2 ListRegistries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListRegistries>

Returns: a L<Paws::Glue::ListRegistriesResponse> instance

Returns a list of registries that you have created, with minimal
registry information. Registries in the C<Deleting> status will not be
included in the results. Empty results will be returned if there are no
registries available.


=head2 ListSchemas

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => L<Paws::Glue::RegistryId>]


=back

Each argument is described in detail in: L<Paws::Glue::ListSchemas>

Returns: a L<Paws::Glue::ListSchemasResponse> instance

Returns a list of schemas with minimal details. Schemas in Deleting
status will not be included in the results. Empty results will be
returned if there are no schemas available.

When the C<RegistryId> is not provided, all the schemas across
registries will be part of the API response.


=head2 ListSchemaVersions

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListSchemaVersions>

Returns: a L<Paws::Glue::ListSchemaVersionsResponse> instance

Returns a list of schema versions that you have created, with minimal
information. Schema versions in Deleted status will not be included in
the results. Empty results will be returned if there are no schema
versions available.


=head2 ListSessions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RequestOrigin => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListSessions>

Returns: a L<Paws::Glue::ListSessionsResponse> instance

Retrieve a list of sessions.


=head2 ListStatements

=over

=item SessionId => Str

=item [NextToken => Str]

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListStatements>

Returns: a L<Paws::Glue::ListStatementsResponse> instance

Lists statements for the session.


=head2 ListTableOptimizerRuns

=over

=item CatalogId => Str

=item DatabaseName => Str

=item TableName => Str

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListTableOptimizerRuns>

Returns: a L<Paws::Glue::ListTableOptimizerRunsResponse> instance

Lists the history of previous optimizer runs for a specific table.


=head2 ListTriggers

=over

=item [DependentJobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListTriggers>

Returns: a L<Paws::Glue::ListTriggersResponse> instance

Retrieves the names of all trigger resources in this Amazon Web
Services account, or the resources with the specified tag. This
operation allows you to see which resources are available in your
account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListUsageProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListUsageProfiles>

Returns: a L<Paws::Glue::ListUsageProfilesResponse> instance

List all the Glue usage profiles.


=head2 ListWorkflows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListWorkflows>

Returns: a L<Paws::Glue::ListWorkflowsResponse> instance

Lists names of workflows created in the account.


=head2 ModifyIntegration

=over

=item IntegrationIdentifier => Str

=item [DataFilter => Str]

=item [Description => Str]

=item [IntegrationName => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ModifyIntegration>

Returns: a L<Paws::Glue::ModifyIntegrationResponse> instance

Modifies a Zero-ETL integration in the caller's account.


=head2 PutDataCatalogEncryptionSettings

=over

=item DataCatalogEncryptionSettings => L<Paws::Glue::DataCatalogEncryptionSettings>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::PutDataCatalogEncryptionSettingsResponse> instance

Sets the security configuration for a specified catalog. After the
configuration has been set, the specified encryption is applied to
every catalog write thereafter.


=head2 PutDataQualityProfileAnnotation

=over

=item InclusionAnnotation => Str

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::Glue::PutDataQualityProfileAnnotation>

Returns: a L<Paws::Glue::PutDataQualityProfileAnnotationResponse> instance

Annotate all datapoints for a Profile.


=head2 PutResourcePolicy

=over

=item PolicyInJson => Str

=item [EnableHybrid => Str]

=item [PolicyExistsCondition => Str]

=item [PolicyHashCondition => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutResourcePolicy>

Returns: a L<Paws::Glue::PutResourcePolicyResponse> instance

Sets the Data Catalog resource policy for access control.


=head2 PutSchemaVersionMetadata

=over

=item MetadataKeyValue => L<Paws::Glue::MetadataKeyValuePair>

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::PutSchemaVersionMetadata>

Returns: a L<Paws::Glue::PutSchemaVersionMetadataResponse> instance

Puts the metadata key value pair for a specified schema version ID. A
maximum of 10 key value pairs will be allowed per schema version. They
can be added over one or more calls.


=head2 PutWorkflowRunProperties

=over

=item Name => Str

=item RunId => Str

=item RunProperties => L<Paws::Glue::WorkflowRunProperties>


=back

Each argument is described in detail in: L<Paws::Glue::PutWorkflowRunProperties>

Returns: a L<Paws::Glue::PutWorkflowRunPropertiesResponse> instance

Puts the specified workflow run properties for the given workflow run.
If a property already exists for the specified run, then it overrides
the value otherwise adds the property to existing properties.


=head2 QuerySchemaVersionMetadata

=over

=item [MaxResults => Int]

=item [MetadataList => ArrayRef[L<Paws::Glue::MetadataKeyValuePair>]]

=item [NextToken => Str]

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::QuerySchemaVersionMetadata>

Returns: a L<Paws::Glue::QuerySchemaVersionMetadataResponse> instance

Queries for the schema version metadata information.


=head2 RegisterSchemaVersion

=over

=item SchemaDefinition => Str

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::RegisterSchemaVersion>

Returns: a L<Paws::Glue::RegisterSchemaVersionResponse> instance

Adds a new version to the existing schema. Returns an error if new
version of schema does not meet the compatibility requirements of the
schema set. This API will not create a new schema set and will return a
404 error if the schema set is not already present in the Schema
Registry.

If this is the first schema definition to be registered in the Schema
Registry, this API will store the schema version and return
immediately. Otherwise, this call has the potential to run longer than
other operations due to compatibility modes. You can call the
C<GetSchemaVersion> API with the C<SchemaVersionId> to check
compatibility modes.

If the same schema definition is already stored in Schema Registry as a
version, the schema ID of the existing schema is returned to the
caller.


=head2 RemoveSchemaVersionMetadata

=over

=item MetadataKeyValue => L<Paws::Glue::MetadataKeyValuePair>

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::RemoveSchemaVersionMetadata>

Returns: a L<Paws::Glue::RemoveSchemaVersionMetadataResponse> instance

Removes a key value pair from the schema version metadata for the
specified schema version ID.


=head2 ResetJobBookmark

=over

=item JobName => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ResetJobBookmark>

Returns: a L<Paws::Glue::ResetJobBookmarkResponse> instance

Resets a bookmark entry.

For more information about enabling and using job bookmarks, see:

=over

=item *

Tracking processed data using job bookmarks
(https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html)

=item *

Job parameters used by Glue
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)

=item *

Job structure
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job)

=back



=head2 ResumeWorkflowRun

=over

=item Name => Str

=item NodeIds => ArrayRef[Str|Undef]

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::ResumeWorkflowRun>

Returns: a L<Paws::Glue::ResumeWorkflowRunResponse> instance

Restarts selected nodes of a previous partially completed workflow run
and resumes the workflow run. The selected nodes and all nodes that are
downstream from the selected nodes are run.


=head2 RunStatement

=over

=item Code => Str

=item SessionId => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::RunStatement>

Returns: a L<Paws::Glue::RunStatementResponse> instance

Executes the statement.


=head2 SearchTables

=over

=item [CatalogId => Str]

=item [Filters => ArrayRef[L<Paws::Glue::PropertyPredicate>]]

=item [IncludeStatusDetails => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]

=item [SearchText => Str]

=item [SortCriteria => ArrayRef[L<Paws::Glue::SortCriterion>]]


=back

Each argument is described in detail in: L<Paws::Glue::SearchTables>

Returns: a L<Paws::Glue::SearchTablesResponse> instance

Searches a set of tables based on properties in the table metadata as
well as on the parent database. You can search against text or filter
conditions.

You can only get tables that you have access to based on the security
policies defined in Lake Formation. You need at least a read-only
access to the table for it to be returned. If you do not have access to
all the columns in the table, these columns will not be searched
against when returning the list of tables back to you. If you have
access to the columns but not the data in the columns, those columns
and the associated metadata for those columns will be included in the
search.


=head2 StartBlueprintRun

=over

=item BlueprintName => Str

=item RoleArn => Str

=item [Parameters => Str]


=back

Each argument is described in detail in: L<Paws::Glue::StartBlueprintRun>

Returns: a L<Paws::Glue::StartBlueprintRunResponse> instance

Starts a new run of the specified blueprint.


=head2 StartColumnStatisticsTaskRun

=over

=item DatabaseName => Str

=item Role => Str

=item TableName => Str

=item [CatalogID => Str]

=item [ColumnNameList => ArrayRef[Str|Undef]]

=item [SampleSize => Num]

=item [SecurityConfiguration => Str]


=back

Each argument is described in detail in: L<Paws::Glue::StartColumnStatisticsTaskRun>

Returns: a L<Paws::Glue::StartColumnStatisticsTaskRunResponse> instance

Starts a column statistics task run, for a specified table and columns.


=head2 StartColumnStatisticsTaskRunSchedule

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartColumnStatisticsTaskRunSchedule>

Returns: a L<Paws::Glue::StartColumnStatisticsTaskRunScheduleResponse> instance

Starts a column statistics task run schedule.


=head2 StartCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawler>

Returns: a L<Paws::Glue::StartCrawlerResponse> instance

Starts a crawl using the specified crawler, regardless of what is
scheduled. If the crawler is already running, returns a
CrawlerRunningException
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).


=head2 StartCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawlerSchedule>

Returns: a L<Paws::Glue::StartCrawlerScheduleResponse> instance

Changes the schedule state of the specified crawler to C<SCHEDULED>,
unless the crawler is already running or the schedule state is already
C<SCHEDULED>.


=head2 StartDataQualityRuleRecommendationRun

=over

=item DataSource => L<Paws::Glue::DataSource>

=item Role => Str

=item [ClientToken => Str]

=item [CreatedRulesetName => Str]

=item [DataQualitySecurityConfiguration => Str]

=item [NumberOfWorkers => Int]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::Glue::StartDataQualityRuleRecommendationRun>

Returns: a L<Paws::Glue::StartDataQualityRuleRecommendationRunResponse> instance

Starts a recommendation run that is used to generate rules when you
don't know what rules to write. Glue Data Quality analyzes the data and
comes up with recommendations for a potential ruleset. You can then
triage the ruleset and modify the generated ruleset to your liking.

Recommendation runs are automatically deleted after 90 days.


=head2 StartDataQualityRulesetEvaluationRun

=over

=item DataSource => L<Paws::Glue::DataSource>

=item Role => Str

=item RulesetNames => ArrayRef[Str|Undef]

=item [AdditionalDataSources => L<Paws::Glue::DataSourceMap>]

=item [AdditionalRunOptions => L<Paws::Glue::DataQualityEvaluationRunAdditionalRunOptions>]

=item [ClientToken => Str]

=item [NumberOfWorkers => Int]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::Glue::StartDataQualityRulesetEvaluationRun>

Returns: a L<Paws::Glue::StartDataQualityRulesetEvaluationRunResponse> instance

Once you have a ruleset definition (either recommended or your own),
you call this operation to evaluate the ruleset against a data source
(Glue table). The evaluation computes results which you can retrieve
with the C<GetDataQualityResult> API.


=head2 StartExportLabelsTaskRun

=over

=item OutputS3Path => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartExportLabelsTaskRun>

Returns: a L<Paws::Glue::StartExportLabelsTaskRunResponse> instance

Begins an asynchronous task to export all labeled data for a particular
transform. This task is the only label-related API call that is not
part of the typical active learning workflow. You typically use
C<StartExportLabelsTaskRun> when you want to work with all of your
existing labels at the same time, such as when you want to remove or
change labels that were previously submitted as truth. This API
operation accepts the C<TransformId> whose labels you want to export
and an Amazon Simple Storage Service (Amazon S3) path to export the
labels to. The operation returns a C<TaskRunId>. You can check on the
status of your task run by calling the C<GetMLTaskRun> API.


=head2 StartImportLabelsTaskRun

=over

=item InputS3Path => Str

=item TransformId => Str

=item [ReplaceAllLabels => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::StartImportLabelsTaskRun>

Returns: a L<Paws::Glue::StartImportLabelsTaskRunResponse> instance

Enables you to provide additional labels (examples of truth) to be used
to teach the machine learning transform and improve its quality. This
API operation is generally used as part of the active learning workflow
that starts with the C<StartMLLabelingSetGenerationTaskRun> call and
that ultimately results in improving the quality of your machine
learning transform.

After the C<StartMLLabelingSetGenerationTaskRun> finishes, Glue machine
learning will have generated a series of questions for humans to
answer. (Answering these questions is often called 'labeling' in the
machine learning workflows). In the case of the C<FindMatches>
transform, these questions are of the form, E<ldquo>What is the correct
way to group these rows together into groups composed entirely of
matching records?E<rdquo> After the labeling process is finished, users
upload their answers/labels with a call to C<StartImportLabelsTaskRun>.
After C<StartImportLabelsTaskRun> finishes, all future runs of the
machine learning transform use the new and improved labels and perform
a higher-quality transformation.

By default, C<StartMLLabelingSetGenerationTaskRun> continually learns
from and combines all labels that you upload unless you set C<Replace>
to true. If you set C<Replace> to true, C<StartImportLabelsTaskRun>
deletes and forgets all previously uploaded labels and learns only from
the exact set that you upload. Replacing labels can be helpful if you
realize that you previously uploaded incorrect labels, and you believe
that they are having a negative effect on your transform quality.

You can check on the status of your task run by calling the
C<GetMLTaskRun> operation.


=head2 StartJobRun

=over

=item JobName => Str

=item [AllocatedCapacity => Int]

=item [Arguments => L<Paws::Glue::GenericMap>]

=item [ExecutionClass => Str]

=item [JobRunId => Str]

=item [JobRunQueuingEnabled => Bool]

=item [MaxCapacity => Num]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [NumberOfWorkers => Int]

=item [SecurityConfiguration => Str]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::StartJobRun>

Returns: a L<Paws::Glue::StartJobRunResponse> instance

Starts a job run using a job definition.


=head2 StartMLEvaluationTaskRun

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartMLEvaluationTaskRun>

Returns: a L<Paws::Glue::StartMLEvaluationTaskRunResponse> instance

Starts a task to estimate the quality of the transform.

When you provide label sets as examples of truth, Glue machine learning
uses some of those examples to learn from them. The rest of the labels
are used as a test to estimate quality.

Returns a unique identifier for the run. You can call C<GetMLTaskRun>
to get more information about the stats of the C<EvaluationTaskRun>.


=head2 StartMLLabelingSetGenerationTaskRun

=over

=item OutputS3Path => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartMLLabelingSetGenerationTaskRun>

Returns: a L<Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse> instance

Starts the active learning workflow for your machine learning transform
to improve the transform's quality by generating label sets and adding
labels.

When the C<StartMLLabelingSetGenerationTaskRun> finishes, Glue will
have generated a "labeling set" or a set of questions for humans to
answer.

In the case of the C<FindMatches> transform, these questions are of the
form, E<ldquo>What is the correct way to group these rows together into
groups composed entirely of matching records?E<rdquo>

After the labeling process is finished, you can upload your labels with
a call to C<StartImportLabelsTaskRun>. After
C<StartImportLabelsTaskRun> finishes, all future runs of the machine
learning transform will use the new and improved labels and perform a
higher-quality transformation.


=head2 StartTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartTrigger>

Returns: a L<Paws::Glue::StartTriggerResponse> instance

Starts an existing trigger. See Triggering Jobs
(https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
information about how different types of trigger are started.


=head2 StartWorkflowRun

=over

=item Name => Str

=item [RunProperties => L<Paws::Glue::WorkflowRunProperties>]


=back

Each argument is described in detail in: L<Paws::Glue::StartWorkflowRun>

Returns: a L<Paws::Glue::StartWorkflowRunResponse> instance

Starts a new run of the specified workflow.


=head2 StopColumnStatisticsTaskRun

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopColumnStatisticsTaskRun>

Returns: a L<Paws::Glue::StopColumnStatisticsTaskRunResponse> instance

Stops a task run for the specified table.


=head2 StopColumnStatisticsTaskRunSchedule

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopColumnStatisticsTaskRunSchedule>

Returns: a L<Paws::Glue::StopColumnStatisticsTaskRunScheduleResponse> instance

Stops a column statistics task run schedule.


=head2 StopCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawler>

Returns: a L<Paws::Glue::StopCrawlerResponse> instance

If the specified crawler is running, stops the crawl.


=head2 StopCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawlerSchedule>

Returns: a L<Paws::Glue::StopCrawlerScheduleResponse> instance

Sets the schedule state of the specified crawler to C<NOT_SCHEDULED>,
but does not stop the crawler if it is already running.


=head2 StopSession

=over

=item Id => Str

=item [RequestOrigin => Str]


=back

Each argument is described in detail in: L<Paws::Glue::StopSession>

Returns: a L<Paws::Glue::StopSessionResponse> instance

Stops the session.


=head2 StopTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopTrigger>

Returns: a L<Paws::Glue::StopTriggerResponse> instance

Stops a specified trigger.


=head2 StopWorkflowRun

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopWorkflowRun>

Returns: a L<Paws::Glue::StopWorkflowRunResponse> instance

Stops the execution of the specified workflow run.


=head2 TagResource

=over

=item ResourceArn => Str

=item TagsToAdd => L<Paws::Glue::TagsMap>


=back

Each argument is described in detail in: L<Paws::Glue::TagResource>

Returns: a L<Paws::Glue::TagResourceResponse> instance

Adds tags to a resource. A tag is a label you can assign to an Amazon
Web Services resource. In Glue, you can tag only certain resources. For
information about what resources you can tag, see Amazon Web Services
Tags in Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).


=head2 TestConnection

=over

=item [CatalogId => Str]

=item [ConnectionName => Str]

=item [TestConnectionInput => L<Paws::Glue::TestConnectionInput>]


=back

Each argument is described in detail in: L<Paws::Glue::TestConnection>

Returns: a L<Paws::Glue::TestConnectionResponse> instance

Tests a connection to a service to validate the service credentials
that you provide.

You can either provide an existing connection name or a
C<TestConnectionInput> for testing a non-existing connection input.
Providing both at the same time will cause an error.

If the action is successful, the service sends back an HTTP 200
response.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagsToRemove => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::UntagResource>

Returns: a L<Paws::Glue::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateBlueprint

=over

=item BlueprintLocation => Str

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateBlueprint>

Returns: a L<Paws::Glue::UpdateBlueprintResponse> instance

Updates a registered blueprint.


=head2 UpdateCatalog

=over

=item CatalogId => Str

=item CatalogInput => L<Paws::Glue::CatalogInput>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCatalog>

Returns: a L<Paws::Glue::UpdateCatalogResponse> instance

Updates an existing catalog's properties in the Glue Data Catalog.


=head2 UpdateClassifier

=over

=item [CsvClassifier => L<Paws::Glue::UpdateCsvClassifierRequest>]

=item [GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::UpdateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::UpdateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateClassifier>

Returns: a L<Paws::Glue::UpdateClassifierResponse> instance

Modifies an existing classifier (a C<GrokClassifier>, an
C<XMLClassifier>, a C<JsonClassifier>, or a C<CsvClassifier>, depending
on which field is present).


=head2 UpdateColumnStatisticsForPartition

=over

=item ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateColumnStatisticsForPartition>

Returns: a L<Paws::Glue::UpdateColumnStatisticsForPartitionResponse> instance

Creates or updates partition statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<UpdatePartition>.


=head2 UpdateColumnStatisticsForTable

=over

=item ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateColumnStatisticsForTable>

Returns: a L<Paws::Glue::UpdateColumnStatisticsForTableResponse> instance

Creates or updates table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<UpdateTable>.


=head2 UpdateColumnStatisticsTaskSettings

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogID => Str]

=item [ColumnNameList => ArrayRef[Str|Undef]]

=item [Role => Str]

=item [SampleSize => Num]

=item [Schedule => Str]

=item [SecurityConfiguration => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateColumnStatisticsTaskSettings>

Returns: a L<Paws::Glue::UpdateColumnStatisticsTaskSettingsResponse> instance

Updates settings for a column statistics task.


=head2 UpdateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateConnection>

Returns: a L<Paws::Glue::UpdateConnectionResponse> instance

Updates a connection definition in the Data Catalog.


=head2 UpdateCrawler

=over

=item Name => Str

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [DatabaseName => Str]

=item [Description => Str]

=item [LakeFormationConfiguration => L<Paws::Glue::LakeFormationConfiguration>]

=item [LineageConfiguration => L<Paws::Glue::LineageConfiguration>]

=item [RecrawlPolicy => L<Paws::Glue::RecrawlPolicy>]

=item [Role => Str]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]

=item [Targets => L<Paws::Glue::CrawlerTargets>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawler>

Returns: a L<Paws::Glue::UpdateCrawlerResponse> instance

Updates a crawler. If a crawler is running, you must stop it using
C<StopCrawler> before updating it.


=head2 UpdateCrawlerSchedule

=over

=item CrawlerName => Str

=item [Schedule => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawlerSchedule>

Returns: a L<Paws::Glue::UpdateCrawlerScheduleResponse> instance

Updates the schedule of a crawler using a C<cron> expression.


=head2 UpdateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDatabase>

Returns: a L<Paws::Glue::UpdateDatabaseResponse> instance

Updates an existing database definition in a Data Catalog.


=head2 UpdateDataQualityRuleset

=over

=item Name => Str

=item [Description => Str]

=item [Ruleset => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDataQualityRuleset>

Returns: a L<Paws::Glue::UpdateDataQualityRulesetResponse> instance

Updates the specified data quality ruleset.


=head2 UpdateDevEndpoint

=over

=item EndpointName => Str

=item [AddArguments => L<Paws::Glue::MapValue>]

=item [AddPublicKeys => ArrayRef[Str|Undef]]

=item [CustomLibraries => L<Paws::Glue::DevEndpointCustomLibraries>]

=item [DeleteArguments => ArrayRef[Str|Undef]]

=item [DeletePublicKeys => ArrayRef[Str|Undef]]

=item [PublicKey => Str]

=item [UpdateEtlLibraries => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDevEndpoint>

Returns: a L<Paws::Glue::UpdateDevEndpointResponse> instance

Updates a specified development endpoint.


=head2 UpdateIntegrationResourceProperty

=over

=item ResourceArn => Str

=item [SourceProcessingProperties => L<Paws::Glue::SourceProcessingProperties>]

=item [TargetProcessingProperties => L<Paws::Glue::TargetProcessingProperties>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateIntegrationResourceProperty>

Returns: a L<Paws::Glue::UpdateIntegrationResourcePropertyResponse> instance

This API can be used for updating the C<ResourceProperty> of the Glue
connection (for the source) or Glue database ARN (for the target).
These properties can include the role to access the connection or
database. Since the same resource can be used across multiple
integrations, updating resource properties will impact all the
integrations using it.


=head2 UpdateIntegrationTableProperties

=over

=item ResourceArn => Str

=item TableName => Str

=item [SourceTableConfig => L<Paws::Glue::SourceTableConfig>]

=item [TargetTableConfig => L<Paws::Glue::TargetTableConfig>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateIntegrationTableProperties>

Returns: a L<Paws::Glue::UpdateIntegrationTablePropertiesResponse> instance

This API is used to provide optional override properties for the tables
that need to be replicated. These properties can include properties for
filtering and partitioning for the source and target tables. To set
both source and target properties the same API need to be invoked with
the Glue connection ARN as C<ResourceArn> with C<SourceTableConfig>,
and the Glue database ARN as C<ResourceArn> with C<TargetTableConfig>
respectively.

The override will be reflected across all the integrations using same
C<ResourceArn> and source table.


=head2 UpdateJob

=over

=item JobName => Str

=item JobUpdate => L<Paws::Glue::JobUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateJob>

Returns: a L<Paws::Glue::UpdateJobResponse> instance

Updates an existing job definition. The previous job definition is
completely overwritten by this information.


=head2 UpdateJobFromSourceControl

=over

=item [AuthStrategy => Str]

=item [AuthToken => Str]

=item [BranchName => Str]

=item [CommitId => Str]

=item [Folder => Str]

=item [JobName => Str]

=item [Provider => Str]

=item [RepositoryName => Str]

=item [RepositoryOwner => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateJobFromSourceControl>

Returns: a L<Paws::Glue::UpdateJobFromSourceControlResponse> instance

Synchronizes a job from the source control repository. This operation
takes the job artifacts that are located in the remote repository and
updates the Glue internal stores with these artifacts.

This API supports optional parameters which take in the repository
information.


=head2 UpdateMLTransform

=over

=item TransformId => Str

=item [Description => Str]

=item [GlueVersion => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [Name => Str]

=item [NumberOfWorkers => Int]

=item [Parameters => L<Paws::Glue::TransformParameters>]

=item [Role => Str]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateMLTransform>

Returns: a L<Paws::Glue::UpdateMLTransformResponse> instance

Updates an existing machine learning transform. Call this operation to
tune the algorithm parameters to achieve better results.

After calling this operation, you can call the
C<StartMLEvaluationTaskRun> operation to assess how well your new
parameters achieved your goals (such as improving the quality of your
machine learning transform, or making it more cost-effective).


=head2 UpdatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item PartitionValueList => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdatePartition>

Returns: a L<Paws::Glue::UpdatePartitionResponse> instance

Updates a partition.


=head2 UpdateRegistry

=over

=item Description => Str

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateRegistry>

Returns: a L<Paws::Glue::UpdateRegistryResponse> instance

Updates an existing registry which is used to hold a collection of
schemas. The updated properties relate to the registry, and do not
modify any of the schemas within the registry.


=head2 UpdateSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item [Compatibility => Str]

=item [Description => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateSchema>

Returns: a L<Paws::Glue::UpdateSchemaResponse> instance

Updates the description, compatibility setting, or version checkpoint
for a schema set.

For updating the compatibility setting, the call will not validate
compatibility for the entire set of schema versions with the new
compatibility setting. If the value for C<Compatibility> is provided,
the C<VersionNumber> (a checkpoint) is also required. The API will
validate the checkpoint version number for consistency.

If the value for the C<VersionNumber> (checkpoint) is provided,
C<Compatibility> is optional and this can be used to set/reset a
checkpoint for the schema.

This update will happen only if the schema is in the AVAILABLE state.


=head2 UpdateSourceControlFromJob

=over

=item [AuthStrategy => Str]

=item [AuthToken => Str]

=item [BranchName => Str]

=item [CommitId => Str]

=item [Folder => Str]

=item [JobName => Str]

=item [Provider => Str]

=item [RepositoryName => Str]

=item [RepositoryOwner => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateSourceControlFromJob>

Returns: a L<Paws::Glue::UpdateSourceControlFromJobResponse> instance

Synchronizes a job to the source control repository. This operation
takes the job artifacts from the Glue internal stores and makes a
commit to the remote repository that is configured on the job.

This API supports optional parameters which take in the repository
information.


=head2 UpdateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]

=item [Force => Bool]

=item [SkipArchive => Bool]

=item [TransactionId => Str]

=item [VersionId => Str]

=item [ViewUpdateAction => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTable>

Returns: a L<Paws::Glue::UpdateTableResponse> instance

Updates a metadata table in the Data Catalog.


=head2 UpdateTableOptimizer

=over

=item CatalogId => Str

=item DatabaseName => Str

=item TableName => Str

=item TableOptimizerConfiguration => L<Paws::Glue::TableOptimizerConfiguration>

=item Type => Str


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTableOptimizer>

Returns: a L<Paws::Glue::UpdateTableOptimizerResponse> instance

Updates the configuration for an existing table optimizer.


=head2 UpdateTrigger

=over

=item Name => Str

=item TriggerUpdate => L<Paws::Glue::TriggerUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTrigger>

Returns: a L<Paws::Glue::UpdateTriggerResponse> instance

Updates a trigger definition.

Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Amazon Web Services
Secrets Manager or other secret management mechanism if you intend to
keep them within the Job.


=head2 UpdateUsageProfile

=over

=item Configuration => L<Paws::Glue::ProfileConfiguration>

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateUsageProfile>

Returns: a L<Paws::Glue::UpdateUsageProfileResponse> instance

Update an Glue usage profile.


=head2 UpdateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateUserDefinedFunction>

Returns: a L<Paws::Glue::UpdateUserDefinedFunctionResponse> instance

Updates an existing function definition in the Data Catalog.


=head2 UpdateWorkflow

=over

=item Name => Str

=item [DefaultRunProperties => L<Paws::Glue::WorkflowRunProperties>]

=item [Description => Str]

=item [MaxConcurrentRuns => Int]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateWorkflow>

Returns: a L<Paws::Glue::UpdateWorkflowResponse> instance

Updates an existing workflow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllEntity(sub { },ConnectionName => Str, EntityName => Str, [CatalogId => Str, DataStoreApiVersion => Str, NextToken => Str])

=head2 DescribeAllEntity(ConnectionName => Str, EntityName => Str, [CatalogId => Str, DataStoreApiVersion => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Fields, passing the object as the first parameter, and the string 'Fields' as the second parameter 

If not, it will return a a L<Paws::Glue::DescribeEntityResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllClassifiers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllClassifiers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Classifiers, passing the object as the first parameter, and the string 'Classifiers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetClassifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnections(sub { },[CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllConnections([CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionList, passing the object as the first parameter, and the string 'ConnectionList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlerMetrics(sub { },[CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlerMetrics([CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CrawlerMetricsList, passing the object as the first parameter, and the string 'CrawlerMetricsList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlerMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Crawlers, passing the object as the first parameter, and the string 'Crawlers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDatabases(sub { },[AttributesToGet => ArrayRef[Str|Undef], CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])

=head2 GetAllDatabases([AttributesToGet => ArrayRef[Str|Undef], CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatabaseList, passing the object as the first parameter, and the string 'DatabaseList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDatabasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevEndpoints(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllDevEndpoints([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DevEndpoints, passing the object as the first parameter, and the string 'DevEndpoints' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDevEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobRuns(sub { },JobName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllJobRuns(JobName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobRuns, passing the object as the first parameter, and the string 'JobRuns' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobs(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllJobs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllPartitionIndexes(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, NextToken => Str])

=head2 GetAllPartitionIndexes(DatabaseName => Str, TableName => Str, [CatalogId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PartitionIndexDescriptorList, passing the object as the first parameter, and the string 'PartitionIndexDescriptorList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetPartitionIndexesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllPartitions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, ExcludeColumnSchema => Bool, Expression => Str, MaxResults => Int, NextToken => Str, QueryAsOfTime => Str, Segment => L<Paws::Glue::Segment>, TransactionId => Str])

=head2 GetAllPartitions(DatabaseName => Str, TableName => Str, [CatalogId => Str, ExcludeColumnSchema => Bool, Expression => Str, MaxResults => Int, NextToken => Str, QueryAsOfTime => Str, Segment => L<Paws::Glue::Segment>, TransactionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Partitions, passing the object as the first parameter, and the string 'Partitions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetPartitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourcePolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllResourcePolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GetResourcePoliciesResponseList, passing the object as the first parameter, and the string 'GetResourcePoliciesResponseList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetResourcePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSecurityConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllSecurityConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityConfigurations, passing the object as the first parameter, and the string 'SecurityConfigurations' as the second parameter 

If not, it will return a a L<Paws::Glue::GetSecurityConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTables(sub { },DatabaseName => Str, [AttributesToGet => ArrayRef[Str|Undef], CatalogId => Str, Expression => Str, IncludeStatusDetails => Bool, MaxResults => Int, NextToken => Str, QueryAsOfTime => Str, TransactionId => Str])

=head2 GetAllTables(DatabaseName => Str, [AttributesToGet => ArrayRef[Str|Undef], CatalogId => Str, Expression => Str, IncludeStatusDetails => Bool, MaxResults => Int, NextToken => Str, QueryAsOfTime => Str, TransactionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableList, passing the object as the first parameter, and the string 'TableList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTableVersions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTableVersions(DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableVersions, passing the object as the first parameter, and the string 'TableVersions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTableVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTriggers(sub { },[DependentJobName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTriggers([DependentJobName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Triggers, passing the object as the first parameter, and the string 'Triggers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTriggersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUserDefinedFunctions(sub { },Pattern => Str, [CatalogId => Str, DatabaseName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllUserDefinedFunctions(Pattern => Str, [CatalogId => Str, DatabaseName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserDefinedFunctions, passing the object as the first parameter, and the string 'UserDefinedFunctions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllWorkflowRuns(sub { },Name => Str, [IncludeGraph => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllWorkflowRuns(Name => Str, [IncludeGraph => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Runs, passing the object as the first parameter, and the string 'Runs' as the second parameter 

If not, it will return a a L<Paws::Glue::GetWorkflowRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBlueprints(sub { },[MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])

=head2 ListAllBlueprints([MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Blueprints, passing the object as the first parameter, and the string 'Blueprints' as the second parameter 

If not, it will return a a L<Paws::Glue::ListBlueprintsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectionTypes(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConnectionTypes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionTypes, passing the object as the first parameter, and the string 'ConnectionTypes' as the second parameter 

If not, it will return a a L<Paws::Glue::ListConnectionTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntities(sub { },[CatalogId => Str, ConnectionName => Str, DataStoreApiVersion => Str, NextToken => Str, ParentEntityName => Str])

=head2 ListAllEntities([CatalogId => Str, ConnectionName => Str, DataStoreApiVersion => Str, NextToken => Str, ParentEntityName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entities, passing the object as the first parameter, and the string 'Entities' as the second parameter 

If not, it will return a a L<Paws::Glue::ListEntitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])

=head2 ListAllJobs([MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobNames, passing the object as the first parameter, and the string 'JobNames' as the second parameter 

If not, it will return a a L<Paws::Glue::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegistries(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRegistries([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Registries, passing the object as the first parameter, and the string 'Registries' as the second parameter 

If not, it will return a a L<Paws::Glue::ListRegistriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },[MaxResults => Int, NextToken => Str, RegistryId => L<Paws::Glue::RegistryId>])

=head2 ListAllSchemas([MaxResults => Int, NextToken => Str, RegistryId => L<Paws::Glue::RegistryId>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Glue::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaVersions(sub { },SchemaId => L<Paws::Glue::SchemaId>, [MaxResults => Int, NextToken => Str])

=head2 ListAllSchemaVersions(SchemaId => L<Paws::Glue::SchemaId>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Glue::ListSchemaVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTableOptimizerRuns(sub { },CatalogId => Str, DatabaseName => Str, TableName => Str, Type => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTableOptimizerRuns(CatalogId => Str, DatabaseName => Str, TableName => Str, Type => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableOptimizerRuns, passing the object as the first parameter, and the string 'TableOptimizerRuns' as the second parameter 

If not, it will return a a L<Paws::Glue::ListTableOptimizerRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTriggers(sub { },[DependentJobName => Str, MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])

=head2 ListAllTriggers([DependentJobName => Str, MaxResults => Int, NextToken => Str, Tags => L<Paws::Glue::TagsMap>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TriggerNames, passing the object as the first parameter, and the string 'TriggerNames' as the second parameter 

If not, it will return a a L<Paws::Glue::ListTriggersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsageProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllUsageProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Profiles, passing the object as the first parameter, and the string 'Profiles' as the second parameter 

If not, it will return a a L<Paws::Glue::ListUsageProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWorkflows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workflows, passing the object as the first parameter, and the string 'Workflows' as the second parameter 

If not, it will return a a L<Paws::Glue::ListWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

