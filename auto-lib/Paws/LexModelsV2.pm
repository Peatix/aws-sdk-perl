package Paws::LexModelsV2;
  use Moose;
  sub service { 'models-v2-lex' }
  sub signing_name { 'lex' }
  sub version { '2020-08-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchCreateCustomVocabularyItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::BatchCreateCustomVocabularyItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteCustomVocabularyItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::BatchDeleteCustomVocabularyItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateCustomVocabularyItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::BatchUpdateCustomVocabularyItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BuildBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::BuildBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourcePolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateResourcePolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTestSetDiscrepancyReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateTestSetDiscrepancyReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUploadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateUploadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteCustomVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteResourcePolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTestSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteTestSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUtterances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteUtterances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotResourceGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotResourceGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomVocabularyMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeCustomVocabularyMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTestExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeTestExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTestSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeTestSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTestSetDiscrepancyReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeTestSetDiscrepancyReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTestSetGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeTestSetGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateBotElement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::GenerateBotElement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTestExecutionArtifactsUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::GetTestExecutionArtifactsUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAggregatedUtterances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListAggregatedUtterances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotAliasReplicas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotAliasReplicas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotLocales {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotLocales', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotReplicas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotReplicas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotResourceGenerations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotResourceGenerations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotVersionReplicas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotVersionReplicas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuiltInIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBuiltInIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuiltInSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBuiltInSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomVocabularyItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListCustomVocabularyItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntentMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListIntentMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntentPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListIntentPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntentStageMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListIntentStageMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendedIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListRecommendedIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessionAnalyticsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSessionAnalyticsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessionMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSessionMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSlots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestExecutionResultItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTestExecutionResultItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTestExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestSetRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTestSetRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTestSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUtteranceAnalyticsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListUtteranceAnalyticsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUtteranceMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListUtteranceMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAssociatedTranscripts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::SearchAssociatedTranscripts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBotRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartBotRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBotResourceGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartBotResourceGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTestExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartTestExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTestSetGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartTestSetGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBotRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StopBotRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBotRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBotRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTestSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateTestSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchCreateCustomVocabularyItem BatchDeleteCustomVocabularyItem BatchUpdateCustomVocabularyItem BuildBotLocale CreateBot CreateBotAlias CreateBotLocale CreateBotReplica CreateBotVersion CreateExport CreateIntent CreateResourcePolicy CreateResourcePolicyStatement CreateSlot CreateSlotType CreateTestSetDiscrepancyReport CreateUploadUrl DeleteBot DeleteBotAlias DeleteBotLocale DeleteBotReplica DeleteBotVersion DeleteCustomVocabulary DeleteExport DeleteImport DeleteIntent DeleteResourcePolicy DeleteResourcePolicyStatement DeleteSlot DeleteSlotType DeleteTestSet DeleteUtterances DescribeBot DescribeBotAlias DescribeBotLocale DescribeBotRecommendation DescribeBotReplica DescribeBotResourceGeneration DescribeBotVersion DescribeCustomVocabularyMetadata DescribeExport DescribeImport DescribeIntent DescribeResourcePolicy DescribeSlot DescribeSlotType DescribeTestExecution DescribeTestSet DescribeTestSetDiscrepancyReport DescribeTestSetGeneration GenerateBotElement GetTestExecutionArtifactsUrl ListAggregatedUtterances ListBotAliases ListBotAliasReplicas ListBotLocales ListBotRecommendations ListBotReplicas ListBotResourceGenerations ListBots ListBotVersionReplicas ListBotVersions ListBuiltInIntents ListBuiltInSlotTypes ListCustomVocabularyItems ListExports ListImports ListIntentMetrics ListIntentPaths ListIntents ListIntentStageMetrics ListRecommendedIntents ListSessionAnalyticsData ListSessionMetrics ListSlots ListSlotTypes ListTagsForResource ListTestExecutionResultItems ListTestExecutions ListTestSetRecords ListTestSets ListUtteranceAnalyticsData ListUtteranceMetrics SearchAssociatedTranscripts StartBotRecommendation StartBotResourceGeneration StartImport StartTestExecution StartTestSetGeneration StopBotRecommendation TagResource UntagResource UpdateBot UpdateBotAlias UpdateBotLocale UpdateBotRecommendation UpdateExport UpdateIntent UpdateResourcePolicy UpdateSlot UpdateSlotType UpdateTestSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2 - Perl Interface to AWS Amazon Lex Model Building V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexModelsV2');
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



For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchCreateCustomVocabularyItem

=over

=item BotId => Str

=item BotVersion => Str

=item CustomVocabularyItemList => ArrayRef[L<Paws::LexModelsV2::NewCustomVocabularyItem>]

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::BatchCreateCustomVocabularyItem>

Returns: a L<Paws::LexModelsV2::BatchCreateCustomVocabularyItemResponse> instance

Create a batch of custom vocabulary items for a given bot locale's
custom vocabulary.


=head2 BatchDeleteCustomVocabularyItem

=over

=item BotId => Str

=item BotVersion => Str

=item CustomVocabularyItemList => ArrayRef[L<Paws::LexModelsV2::CustomVocabularyEntryId>]

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::BatchDeleteCustomVocabularyItem>

Returns: a L<Paws::LexModelsV2::BatchDeleteCustomVocabularyItemResponse> instance

Delete a batch of custom vocabulary items for a given bot locale's
custom vocabulary.


=head2 BatchUpdateCustomVocabularyItem

=over

=item BotId => Str

=item BotVersion => Str

=item CustomVocabularyItemList => ArrayRef[L<Paws::LexModelsV2::CustomVocabularyItem>]

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::BatchUpdateCustomVocabularyItem>

Returns: a L<Paws::LexModelsV2::BatchUpdateCustomVocabularyItemResponse> instance

Update a batch of custom vocabulary items for a given bot locale's
custom vocabulary.


=head2 BuildBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::BuildBotLocale>

Returns: a L<Paws::LexModelsV2::BuildBotLocaleResponse> instance

Builds a bot, its intents, and its slot types into a specific locale. A
bot can be built into multiple locales. At runtime the locale is used
to choose a specific build of the bot.


=head2 CreateBot

=over

=item BotName => Str

=item DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

=item IdleSessionTTLInSeconds => Int

=item RoleArn => Str

=item [BotMembers => ArrayRef[L<Paws::LexModelsV2::BotMember>]]

=item [BotTags => L<Paws::LexModelsV2::TagMap>]

=item [BotType => Str]

=item [Description => Str]

=item [ErrorLogSettings => L<Paws::LexModelsV2::ErrorLogSettings>]

=item [TestBotAliasTags => L<Paws::LexModelsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBot>

Returns: a L<Paws::LexModelsV2::CreateBotResponse> instance

Creates an Amazon Lex conversational bot.


=head2 CreateBotAlias

=over

=item BotAliasName => Str

=item BotId => Str

=item [BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>]

=item [BotVersion => Str]

=item [ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>]

=item [Description => Str]

=item [SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>]

=item [Tags => L<Paws::LexModelsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotAlias>

Returns: a L<Paws::LexModelsV2::CreateBotAliasResponse> instance

Creates an alias for the specified version of a bot. Use an alias to
enable you to change the version of a bot without updating applications
that use the bot.

For example, you can create an alias called "PROD" that your
applications use to call the Amazon Lex bot.


=head2 CreateBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item NluIntentConfidenceThreshold => Num

=item [Description => Str]

=item [GenerativeAISettings => L<Paws::LexModelsV2::GenerativeAISettings>]

=item [VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotLocale>

Returns: a L<Paws::LexModelsV2::CreateBotLocaleResponse> instance

Creates a locale in the bot. The locale contains the intents and slot
types that the bot uses in conversations with users in the specified
language and locale. You must add a locale to a bot before you can add
intents and slot types to the bot.


=head2 CreateBotReplica

=over

=item BotId => Str

=item ReplicaRegion => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotReplica>

Returns: a L<Paws::LexModelsV2::CreateBotReplicaResponse> instance

Action to create a replication of the source bot in the secondary
region.


=head2 CreateBotVersion

=over

=item BotId => Str

=item BotVersionLocaleSpecification => L<Paws::LexModelsV2::BotVersionLocaleSpecification>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotVersion>

Returns: a L<Paws::LexModelsV2::CreateBotVersionResponse> instance

Creates an immutable version of the bot. When you create the first
version of a bot, Amazon Lex sets the version number to 1. Subsequent
bot versions increase in an increment of 1. The version number will
always represent the total number of versions created of the bot, not
the current number of versions. If a bot version is deleted, that bot
version number will not be reused.


=head2 CreateExport

=over

=item FileFormat => Str

=item ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateExport>

Returns: a L<Paws::LexModelsV2::CreateExportResponse> instance

Creates a zip archive containing the contents of a bot or a bot locale.
The archive contains a directory structure that contains JSON files
that define the bot.

You can create an archive that contains the complete definition of a
bot, or you can specify that the archive contain only the definition of
a single bot locale.

For more information about exporting bots, and about the structure of
the export archive, see Importing and exporting bots
(https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html)


=head2 CreateIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentName => Str

=item LocaleId => Str

=item [Description => Str]

=item [DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>]

=item [FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>]

=item [InitialResponseSetting => L<Paws::LexModelsV2::InitialResponseSetting>]

=item [InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]]

=item [IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>]

=item [IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>]

=item [KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>]

=item [OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]]

=item [ParentIntentSignature => Str]

=item [QInConnectIntentConfiguration => L<Paws::LexModelsV2::QInConnectIntentConfiguration>]

=item [QnAIntentConfiguration => L<Paws::LexModelsV2::QnAIntentConfiguration>]

=item [SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateIntent>

Returns: a L<Paws::LexModelsV2::CreateIntentResponse> instance

Creates an intent.

To define the interaction between the user and your bot, you define one
or more intents. For example, for a pizza ordering bot you would create
an C<OrderPizza> intent.

When you create an intent, you must provide a name. You can optionally
provide the following:

=over

=item *

Sample utterances. For example, "I want to order a pizza" and "Can I
order a pizza." You can't provide utterances for built-in intents.

=item *

Information to be gathered. You specify slots for the information that
you bot requests from the user. You can specify standard slot types,
such as date and time, or custom slot types for your application.

=item *

How the intent is fulfilled. You can provide a Lambda function or
configure the intent to return the intent information to your client
application. If you use a Lambda function, Amazon Lex invokes the
function when all of the intent information is available.

=item *

A confirmation prompt to send to the user to confirm an intent. For
example, "Shall I order your pizza?"

=item *

A conclusion statement to send to the user after the intent is
fulfilled. For example, "I ordered your pizza."

=item *

A follow-up prompt that asks the user for additional activity. For
example, "Do you want a drink with your pizza?"

=back



=head2 CreateResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateResourcePolicy>

Returns: a L<Paws::LexModelsV2::CreateResourcePolicyResponse> instance

Creates a new resource policy with the specified policy statements.


=head2 CreateResourcePolicyStatement

=over

=item Action => ArrayRef[Str|Undef]

=item Effect => Str

=item Principal => ArrayRef[L<Paws::LexModelsV2::Principal>]

=item ResourceArn => Str

=item StatementId => Str

=item [Condition => L<Paws::LexModelsV2::ConditionMap>]

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateResourcePolicyStatement>

Returns: a L<Paws::LexModelsV2::CreateResourcePolicyStatementResponse> instance

Adds a new resource policy statement to a bot or bot alias. If a
resource policy exists, the statement is added to the current resource
policy. If a policy doesn't exist, a new policy is created.

You can't create a resource policy statement that allows cross-account
access.

You need to add the C<CreateResourcePolicy> or C<UpdateResourcePolicy>
action to the bot role in order to call the API.


=head2 CreateSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotName => Str

=item ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

=item [Description => Str]

=item [MultipleValuesSetting => L<Paws::LexModelsV2::MultipleValuesSetting>]

=item [ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>]

=item [SlotTypeId => Str]

=item [SubSlotSetting => L<Paws::LexModelsV2::SubSlotSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateSlot>

Returns: a L<Paws::LexModelsV2::CreateSlotResponse> instance

Creates a slot in an intent. A slot is a variable needed to fulfill an
intent. For example, an C<OrderPizza> intent might need slots for size,
crust, and number of pizzas. For each slot, you define one or more
utterances that Amazon Lex uses to elicit a response from the user.


=head2 CreateSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeName => Str

=item [CompositeSlotTypeSetting => L<Paws::LexModelsV2::CompositeSlotTypeSetting>]

=item [Description => Str]

=item [ExternalSourceSetting => L<Paws::LexModelsV2::ExternalSourceSetting>]

=item [ParentSlotTypeSignature => Str]

=item [SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]]

=item [ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateSlotType>

Returns: a L<Paws::LexModelsV2::CreateSlotTypeResponse> instance

Creates a custom slot type

To create a custom slot type, specify a name for the slot type and a
set of enumeration values, the values that a slot of this type can
assume.


=head2 CreateTestSetDiscrepancyReport

=over

=item Target => L<Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget>

=item TestSetId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateTestSetDiscrepancyReport>

Returns: a L<Paws::LexModelsV2::CreateTestSetDiscrepancyReportResponse> instance

Create a report that describes the differences between the bot and the
test set.


=head2 CreateUploadUrl






Each argument is described in detail in: L<Paws::LexModelsV2::CreateUploadUrl>

Returns: a L<Paws::LexModelsV2::CreateUploadUrlResponse> instance

Gets a pre-signed S3 write URL that you use to upload the zip archive
when importing a bot or a bot locale.


=head2 DeleteBot

=over

=item BotId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBot>

Returns: a L<Paws::LexModelsV2::DeleteBotResponse> instance

Deletes all versions of a bot, including the C<Draft> version. To
delete a specific version, use the C<DeleteBotVersion> operation.

When you delete a bot, all of the resources contained in the bot are
also deleted. Deleting a bot removes all locales, intents, slot, and
slot types defined for the bot.

If a bot has an alias, the C<DeleteBot> operation returns a
C<ResourceInUseException> exception. If you want to delete the bot and
the alias, set the C<skipResourceInUseCheck> parameter to C<true>.


=head2 DeleteBotAlias

=over

=item BotAliasId => Str

=item BotId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotAlias>

Returns: a L<Paws::LexModelsV2::DeleteBotAliasResponse> instance

Deletes the specified bot alias.


=head2 DeleteBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotLocale>

Returns: a L<Paws::LexModelsV2::DeleteBotLocaleResponse> instance

Removes a locale from a bot.

When you delete a locale, all intents, slots, and slot types defined
for the locale are also deleted.


=head2 DeleteBotReplica

=over

=item BotId => Str

=item ReplicaRegion => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotReplica>

Returns: a L<Paws::LexModelsV2::DeleteBotReplicaResponse> instance

The action to delete the replicated bot in the secondary region.


=head2 DeleteBotVersion

=over

=item BotId => Str

=item BotVersion => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotVersion>

Returns: a L<Paws::LexModelsV2::DeleteBotVersionResponse> instance

Deletes a specific version of a bot. To delete all versions of a bot,
use the DeleteBot
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DeleteBot.html)
operation.


=head2 DeleteCustomVocabulary

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteCustomVocabulary>

Returns: a L<Paws::LexModelsV2::DeleteCustomVocabularyResponse> instance

Removes a custom vocabulary from the specified locale in the specified
bot.


=head2 DeleteExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteExport>

Returns: a L<Paws::LexModelsV2::DeleteExportResponse> instance

Removes a previous export and the associated files stored in an S3
bucket.


=head2 DeleteImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteImport>

Returns: a L<Paws::LexModelsV2::DeleteImportResponse> instance

Removes a previous import and the associated file stored in an S3
bucket.


=head2 DeleteIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteIntent>

Returns: nothing

Removes the specified intent.

Deleting an intent also deletes the slots associated with the intent.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteResourcePolicy>

Returns: a L<Paws::LexModelsV2::DeleteResourcePolicyResponse> instance

Removes an existing policy from a bot or bot alias. If the resource
doesn't have a policy attached, Amazon Lex returns an exception.


=head2 DeleteResourcePolicyStatement

=over

=item ResourceArn => Str

=item StatementId => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteResourcePolicyStatement>

Returns: a L<Paws::LexModelsV2::DeleteResourcePolicyStatementResponse> instance

Deletes a policy statement from a resource policy. If you delete the
last statement from a policy, the policy is deleted. If you specify a
statement ID that doesn't exist in the policy, or if the bot or bot
alias doesn't have a policy attached, Amazon Lex returns an exception.

You need to add the C<DeleteResourcePolicy> or C<UpdateResourcePolicy>
action to the bot role in order to call the API.


=head2 DeleteSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteSlot>

Returns: nothing

Deletes the specified slot from an intent.


=head2 DeleteSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteSlotType>

Returns: nothing

Deletes a slot type from a bot locale.

If a slot is using the slot type, Amazon Lex throws a
C<ResourceInUseException> exception. To avoid the exception, set the
C<skipResourceInUseCheck> parameter to C<true>.


=head2 DeleteTestSet

=over

=item TestSetId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteTestSet>

Returns: nothing

The action to delete the selected test set.


=head2 DeleteUtterances

=over

=item BotId => Str

=item [LocaleId => Str]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteUtterances>

Returns: a L<Paws::LexModelsV2::DeleteUtterancesResponse> instance

Deletes stored utterances.

Amazon Lex stores the utterances that users send to your bot.
Utterances are stored for 15 days for use with the
ListAggregatedUtterances
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html)
operation, and then stored indefinitely for use in improving the
ability of your bot to respond to user input..

Use the C<DeleteUtterances> operation to manually delete utterances for
a specific session. When you use the C<DeleteUtterances> operation,
utterances stored for improving your bot's ability to respond to user
input are deleted immediately. Utterances stored for use with the
C<ListAggregatedUtterances> operation are deleted after 15 days.


=head2 DescribeBot

=over

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBot>

Returns: a L<Paws::LexModelsV2::DescribeBotResponse> instance

Provides metadata information about a bot.


=head2 DescribeBotAlias

=over

=item BotAliasId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotAlias>

Returns: a L<Paws::LexModelsV2::DescribeBotAliasResponse> instance

Get information about a specific bot alias.


=head2 DescribeBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotLocale>

Returns: a L<Paws::LexModelsV2::DescribeBotLocaleResponse> instance

Describes the settings that a bot has for a specific locale.


=head2 DescribeBotRecommendation

=over

=item BotId => Str

=item BotRecommendationId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotRecommendation>

Returns: a L<Paws::LexModelsV2::DescribeBotRecommendationResponse> instance

Provides metadata information about a bot recommendation. This
information will enable you to get a description on the request inputs,
to download associated transcripts after processing is complete, and to
download intents and slot-types generated by the bot recommendation.


=head2 DescribeBotReplica

=over

=item BotId => Str

=item ReplicaRegion => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotReplica>

Returns: a L<Paws::LexModelsV2::DescribeBotReplicaResponse> instance

Monitors the bot replication status through the UI console.


=head2 DescribeBotResourceGeneration

=over

=item BotId => Str

=item BotVersion => Str

=item GenerationId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotResourceGeneration>

Returns: a L<Paws::LexModelsV2::DescribeBotResourceGenerationResponse> instance

Returns information about a request to generate a bot through natural
language description, made through the C<StartBotResource> API. Use the
C<generatedBotLocaleUrl> to retrieve the Amazon S3 object containing
the bot locale configuration. You can then modify and import this
configuration.


=head2 DescribeBotVersion

=over

=item BotId => Str

=item BotVersion => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotVersion>

Returns: a L<Paws::LexModelsV2::DescribeBotVersionResponse> instance

Provides metadata about a version of a bot.


=head2 DescribeCustomVocabularyMetadata

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeCustomVocabularyMetadata>

Returns: a L<Paws::LexModelsV2::DescribeCustomVocabularyMetadataResponse> instance

Provides metadata information about a custom vocabulary.


=head2 DescribeExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeExport>

Returns: a L<Paws::LexModelsV2::DescribeExportResponse> instance

Gets information about a specific export.


=head2 DescribeImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeImport>

Returns: a L<Paws::LexModelsV2::DescribeImportResponse> instance

Gets information about a specific import.


=head2 DescribeIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeIntent>

Returns: a L<Paws::LexModelsV2::DescribeIntentResponse> instance

Returns metadata about an intent.


=head2 DescribeResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeResourcePolicy>

Returns: a L<Paws::LexModelsV2::DescribeResourcePolicyResponse> instance

Gets the resource policy and policy revision for a bot or bot alias.


=head2 DescribeSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeSlot>

Returns: a L<Paws::LexModelsV2::DescribeSlotResponse> instance

Gets metadata information about a slot.


=head2 DescribeSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeSlotType>

Returns: a L<Paws::LexModelsV2::DescribeSlotTypeResponse> instance

Gets metadata information about a slot type.


=head2 DescribeTestExecution

=over

=item TestExecutionId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeTestExecution>

Returns: a L<Paws::LexModelsV2::DescribeTestExecutionResponse> instance

Gets metadata information about the test execution.


=head2 DescribeTestSet

=over

=item TestSetId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeTestSet>

Returns: a L<Paws::LexModelsV2::DescribeTestSetResponse> instance

Gets metadata information about the test set.


=head2 DescribeTestSetDiscrepancyReport

=over

=item TestSetDiscrepancyReportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeTestSetDiscrepancyReport>

Returns: a L<Paws::LexModelsV2::DescribeTestSetDiscrepancyReportResponse> instance

Gets metadata information about the test set discrepancy report.


=head2 DescribeTestSetGeneration

=over

=item TestSetGenerationId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeTestSetGeneration>

Returns: a L<Paws::LexModelsV2::DescribeTestSetGenerationResponse> instance

Gets metadata information about the test set generation.


=head2 GenerateBotElement

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::GenerateBotElement>

Returns: a L<Paws::LexModelsV2::GenerateBotElementResponse> instance

Generates sample utterances for an intent.


=head2 GetTestExecutionArtifactsUrl

=over

=item TestExecutionId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::GetTestExecutionArtifactsUrl>

Returns: a L<Paws::LexModelsV2::GetTestExecutionArtifactsUrlResponse> instance

The pre-signed Amazon S3 URL to download the test execution result
artifacts.


=head2 ListAggregatedUtterances

=over

=item AggregationDuration => L<Paws::LexModelsV2::UtteranceAggregationDuration>

=item BotId => Str

=item LocaleId => Str

=item [BotAliasId => Str]

=item [BotVersion => Str]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AggregatedUtterancesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::AggregatedUtterancesSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListAggregatedUtterances>

Returns: a L<Paws::LexModelsV2::ListAggregatedUtterancesResponse> instance

Provides a list of utterances that users have sent to the bot.

Utterances are aggregated by the text of the utterance. For example,
all instances where customers used the phrase "I want to order pizza"
are aggregated into the same line in the response.

You can see both detected utterances and missed utterances. A detected
utterance is where the bot properly recognized the utterance and
activated the associated intent. A missed utterance was not recognized
by the bot and didn't activate an intent.

Utterances can be aggregated for a bot alias or for a bot version, but
not both at the same time.

Utterances statistics are not generated under the following conditions:

=over

=item *

The C<childDirected> field was set to true when the bot was created.

=item *

You are using slot obfuscation with one or more slots.

=item *

You opted out of participating in improving Amazon Lex.

=back



=head2 ListBotAliases

=over

=item BotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotAliases>

Returns: a L<Paws::LexModelsV2::ListBotAliasesResponse> instance

Gets a list of aliases for the specified bot.


=head2 ListBotAliasReplicas

=over

=item BotId => Str

=item ReplicaRegion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotAliasReplicas>

Returns: a L<Paws::LexModelsV2::ListBotAliasReplicasResponse> instance

The action to list the replicated bots created from the source bot
alias.


=head2 ListBotLocales

=over

=item BotId => Str

=item BotVersion => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::BotLocaleFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotLocaleSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotLocales>

Returns: a L<Paws::LexModelsV2::ListBotLocalesResponse> instance

Gets a list of locales for the specified bot.


=head2 ListBotRecommendations

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotRecommendations>

Returns: a L<Paws::LexModelsV2::ListBotRecommendationsResponse> instance

Get a list of bot recommendations that meet the specified criteria.


=head2 ListBotReplicas

=over

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotReplicas>

Returns: a L<Paws::LexModelsV2::ListBotReplicasResponse> instance

The action to list the replicated bots.


=head2 ListBotResourceGenerations

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::GenerationSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotResourceGenerations>

Returns: a L<Paws::LexModelsV2::ListBotResourceGenerationsResponse> instance

Lists the generation requests made for a bot locale.


=head2 ListBots

=over

=item [Filters => ArrayRef[L<Paws::LexModelsV2::BotFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBots>

Returns: a L<Paws::LexModelsV2::ListBotsResponse> instance

Gets a list of available bots.


=head2 ListBotVersionReplicas

=over

=item BotId => Str

=item ReplicaRegion => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotVersionReplicaSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotVersionReplicas>

Returns: a L<Paws::LexModelsV2::ListBotVersionReplicasResponse> instance

Contains information about all the versions replication statuses
applicable for Global Resiliency.


=head2 ListBotVersions

=over

=item BotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotVersionSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotVersions>

Returns: a L<Paws::LexModelsV2::ListBotVersionsResponse> instance

Gets information about all of the versions of a bot.

The C<ListBotVersions> operation returns a summary of each version of a
bot. For example, if a bot has three numbered versions, the
C<ListBotVersions> operation returns for summaries, one for each
numbered version and one for the C<DRAFT> version.

The C<ListBotVersions> operation always returns at least one version,
the C<DRAFT> version.


=head2 ListBuiltInIntents

=over

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BuiltInIntentSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBuiltInIntents>

Returns: a L<Paws::LexModelsV2::ListBuiltInIntentsResponse> instance

Gets a list of built-in intents provided by Amazon Lex that you can use
in your bot.

To use a built-in intent as a the base for your own intent, include the
built-in intent signature in the C<parentIntentSignature> parameter
when you call the C<CreateIntent> operation. For more information, see
CreateIntent
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateIntent.html).


=head2 ListBuiltInSlotTypes

=over

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BuiltInSlotTypeSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBuiltInSlotTypes>

Returns: a L<Paws::LexModelsV2::ListBuiltInSlotTypesResponse> instance

Gets a list of built-in slot types that meet the specified criteria.


=head2 ListCustomVocabularyItems

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListCustomVocabularyItems>

Returns: a L<Paws::LexModelsV2::ListCustomVocabularyItemsResponse> instance

Paginated list of custom vocabulary items for a given bot locale's
custom vocabulary.


=head2 ListExports

=over

=item [BotId => Str]

=item [BotVersion => Str]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::ExportFilter>]]

=item [LocaleId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::ExportSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListExports>

Returns: a L<Paws::LexModelsV2::ListExportsResponse> instance

Lists the exports for a bot, bot locale, or custom vocabulary. Exports
are kept in the list for 7 days.


=head2 ListImports

=over

=item [BotId => Str]

=item [BotVersion => Str]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::ImportFilter>]]

=item [LocaleId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::ImportSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListImports>

Returns: a L<Paws::LexModelsV2::ListImportsResponse> instance

Lists the imports for a bot, bot locale, or custom vocabulary. Imports
are kept in the list for 7 days.


=head2 ListIntentMetrics

=over

=item BotId => Str

=item EndDateTime => Str

=item Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentMetric>]

=item StartDateTime => Str

=item [BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentFilter>]]

=item [GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentGroupBySpecification>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListIntentMetrics>

Returns: a L<Paws::LexModelsV2::ListIntentMetricsResponse> instance

Retrieves summary metrics for the intents in your bot. The following
fields are required:

=over

=item *

C<metrics> E<ndash> A list of AnalyticsIntentMetric
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentMetric.html)
objects. In each object, use the C<name> field to specify the metric to
calculate, the C<statistic> field to specify whether to calculate the
C<Sum>, C<Average>, or C<Max> number, and the C<order> field to specify
whether to sort the results in C<Ascending> or C<Descending> order.

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=back

Of the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results, the C<groupBy> field to
specify categories by which to group the results, and the C<binBy>
field to specify time intervals by which to group the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back

Note that an C<order> field exists in both C<binBy> and C<metrics>. You
can specify only one C<order> in a given request.


=head2 ListIntentPaths

=over

=item BotId => Str

=item EndDateTime => Str

=item IntentPath => Str

=item StartDateTime => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsPathFilter>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListIntentPaths>

Returns: a L<Paws::LexModelsV2::ListIntentPathsResponse> instance

Retrieves summary statistics for a path of intents that users take over
sessions with your bot. The following fields are required:

=over

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=item *

C<intentPath> E<ndash> Define an order of intents for which you want to
retrieve metrics. Separate intents in the path with a forward slash.
For example, populate the C<intentPath> field with
C</BookCar/BookHotel> to see details about how many times users invoked
the C<BookCar> and C<BookHotel> intents in that order.

=back

Use the optional C<filters> field to filter the results.


=head2 ListIntents

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::IntentFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::IntentSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListIntents>

Returns: a L<Paws::LexModelsV2::ListIntentsResponse> instance

Get a list of intents that meet the specified criteria.


=head2 ListIntentStageMetrics

=over

=item BotId => Str

=item EndDateTime => Str

=item Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageMetric>]

=item StartDateTime => Str

=item [BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageFilter>]]

=item [GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageGroupBySpecification>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListIntentStageMetrics>

Returns: a L<Paws::LexModelsV2::ListIntentStageMetricsResponse> instance

Retrieves summary metrics for the stages within intents in your bot.
The following fields are required:

=over

=item *

C<metrics> E<ndash> A list of AnalyticsIntentStageMetric
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentStageMetric.html)
objects. In each object, use the C<name> field to specify the metric to
calculate, the C<statistic> field to specify whether to calculate the
C<Sum>, C<Average>, or C<Max> number, and the C<order> field to specify
whether to sort the results in C<Ascending> or C<Descending> order.

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=back

Of the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results, the C<groupBy> field to
specify categories by which to group the results, and the C<binBy>
field to specify time intervals by which to group the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back

Note that an C<order> field exists in both C<binBy> and C<metrics>. You
can only specify one C<order> in a given request.


=head2 ListRecommendedIntents

=over

=item BotId => Str

=item BotRecommendationId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListRecommendedIntents>

Returns: a L<Paws::LexModelsV2::ListRecommendedIntentsResponse> instance

Gets a list of recommended intents provided by the bot recommendation
that you can use in your bot. Intents in the response are ordered by
relevance.


=head2 ListSessionAnalyticsData

=over

=item BotId => Str

=item EndDateTime => Str

=item StartDateTime => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::SessionDataSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSessionAnalyticsData>

Returns: a L<Paws::LexModelsV2::ListSessionAnalyticsDataResponse> instance

Retrieves a list of metadata for individual user sessions with your
bot. The C<startDateTime> and C<endDateTime> fields are required. These
fields define a time range for which you want to retrieve results. Of
the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results and the C<sortBy> field
to specify the values by which to sort the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back



=head2 ListSessionMetrics

=over

=item BotId => Str

=item EndDateTime => Str

=item Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionMetric>]

=item StartDateTime => Str

=item [BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionFilter>]]

=item [GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionGroupBySpecification>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSessionMetrics>

Returns: a L<Paws::LexModelsV2::ListSessionMetricsResponse> instance

Retrieves summary metrics for the user sessions with your bot. The
following fields are required:

=over

=item *

C<metrics> E<ndash> A list of AnalyticsSessionMetric
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsSessionMetric.html)
objects. In each object, use the C<name> field to specify the metric to
calculate, the C<statistic> field to specify whether to calculate the
C<Sum>, C<Average>, or C<Max> number, and the C<order> field to specify
whether to sort the results in C<Ascending> or C<Descending> order.

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=back

Of the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results, the C<groupBy> field to
specify categories by which to group the results, and the C<binBy>
field to specify time intervals by which to group the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back

Note that an C<order> field exists in both C<binBy> and C<metrics>.
Currently, you can specify it in either field, but not in both.


=head2 ListSlots

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::SlotFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::SlotSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSlots>

Returns: a L<Paws::LexModelsV2::ListSlotsResponse> instance

Gets a list of slots that match the specified criteria.


=head2 ListSlotTypes

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::SlotTypeFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::SlotTypeSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSlotTypes>

Returns: a L<Paws::LexModelsV2::ListSlotTypesResponse> instance

Gets a list of slot types that match the specified criteria.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTagsForResource>

Returns: a L<Paws::LexModelsV2::ListTagsForResourceResponse> instance

Gets a list of tags associated with a resource. Only bots, bot aliases,
and bot channels can have tags associated with them.


=head2 ListTestExecutionResultItems

=over

=item ResultFilterBy => L<Paws::LexModelsV2::TestExecutionResultFilterBy>

=item TestExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTestExecutionResultItems>

Returns: a L<Paws::LexModelsV2::ListTestExecutionResultItemsResponse> instance

Gets a list of test execution result items.


=head2 ListTestExecutions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::TestExecutionSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTestExecutions>

Returns: a L<Paws::LexModelsV2::ListTestExecutionsResponse> instance

The list of test set executions.


=head2 ListTestSetRecords

=over

=item TestSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTestSetRecords>

Returns: a L<Paws::LexModelsV2::ListTestSetRecordsResponse> instance

The list of test set records.


=head2 ListTestSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::TestSetSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTestSets>

Returns: a L<Paws::LexModelsV2::ListTestSetsResponse> instance

The list of the test sets


=head2 ListUtteranceAnalyticsData

=over

=item BotId => Str

=item EndDateTime => Str

=item StartDateTime => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::UtteranceDataSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListUtteranceAnalyticsData>

Returns: a L<Paws::LexModelsV2::ListUtteranceAnalyticsDataResponse> instance

To use this API operation, your IAM role must have permissions to
perform the ListAggregatedUtterances
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html)
operation, which provides access to utterance-related analytics. See
Viewing utterance statistics
(https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html)
for the IAM policy to apply to the IAM role.

Retrieves a list of metadata for individual user utterances to your
bot. The following fields are required:

=over

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=back

Of the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results and the C<sortBy> field
to specify the values by which to sort the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back



=head2 ListUtteranceMetrics

=over

=item BotId => Str

=item EndDateTime => Str

=item Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceMetric>]

=item StartDateTime => Str

=item [Attributes => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceAttribute>]]

=item [BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceFilter>]]

=item [GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceGroupBySpecification>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListUtteranceMetrics>

Returns: a L<Paws::LexModelsV2::ListUtteranceMetricsResponse> instance

To use this API operation, your IAM role must have permissions to
perform the ListAggregatedUtterances
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html)
operation, which provides access to utterance-related analytics. See
Viewing utterance statistics
(https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html)
for the IAM policy to apply to the IAM role.

Retrieves summary metrics for the utterances in your bot. The following
fields are required:

=over

=item *

C<metrics> E<ndash> A list of AnalyticsUtteranceMetric
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsUtteranceMetric.html)
objects. In each object, use the C<name> field to specify the metric to
calculate, the C<statistic> field to specify whether to calculate the
C<Sum>, C<Average>, or C<Max> number, and the C<order> field to specify
whether to sort the results in C<Ascending> or C<Descending> order.

=item *

C<startDateTime> and C<endDateTime> E<ndash> Define a time range for
which you want to retrieve results.

=back

Of the optional fields, you can organize the results in the following
ways:

=over

=item *

Use the C<filters> field to filter the results, the C<groupBy> field to
specify categories by which to group the results, and the C<binBy>
field to specify time intervals by which to group the results.

=item *

Use the C<maxResults> field to limit the number of results to return in
a single response and the C<nextToken> field to return the next batch
of results if the response does not return the full set of results.

=back

Note that an C<order> field exists in both C<binBy> and C<metrics>.
Currently, you can specify it in either field, but not in both.


=head2 SearchAssociatedTranscripts

=over

=item BotId => Str

=item BotRecommendationId => Str

=item BotVersion => Str

=item Filters => ArrayRef[L<Paws::LexModelsV2::AssociatedTranscriptFilter>]

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextIndex => Int]

=item [SearchOrder => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::SearchAssociatedTranscripts>

Returns: a L<Paws::LexModelsV2::SearchAssociatedTranscriptsResponse> instance

Search for associated transcripts that meet the specified criteria.


=head2 StartBotRecommendation

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item TranscriptSourceSetting => L<Paws::LexModelsV2::TranscriptSourceSetting>

=item [EncryptionSetting => L<Paws::LexModelsV2::EncryptionSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartBotRecommendation>

Returns: a L<Paws::LexModelsV2::StartBotRecommendationResponse> instance

Use this to provide your transcript data, and to start the bot
recommendation process.


=head2 StartBotResourceGeneration

=over

=item BotId => Str

=item BotVersion => Str

=item GenerationInputPrompt => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartBotResourceGeneration>

Returns: a L<Paws::LexModelsV2::StartBotResourceGenerationResponse> instance

Starts a request for the descriptive bot builder to generate a bot
locale configuration based on the prompt you provide it. After you make
this call, use the C<DescribeBotResourceGeneration> operation to check
on the status of the generation and for the C<generatedBotLocaleUrl>
when the generation is complete. Use that value to retrieve the Amazon
S3 object containing the bot locale configuration. You can then modify
and import this configuration.


=head2 StartImport

=over

=item ImportId => Str

=item MergeStrategy => Str

=item ResourceSpecification => L<Paws::LexModelsV2::ImportResourceSpecification>

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartImport>

Returns: a L<Paws::LexModelsV2::StartImportResponse> instance

Starts importing a bot, bot locale, or custom vocabulary from a zip
archive that you uploaded to an S3 bucket.


=head2 StartTestExecution

=over

=item ApiMode => Str

=item Target => L<Paws::LexModelsV2::TestExecutionTarget>

=item TestSetId => Str

=item [TestExecutionModality => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartTestExecution>

Returns: a L<Paws::LexModelsV2::StartTestExecutionResponse> instance

The action to start test set execution.


=head2 StartTestSetGeneration

=over

=item GenerationDataSource => L<Paws::LexModelsV2::TestSetGenerationDataSource>

=item RoleArn => Str

=item StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

=item TestSetName => Str

=item [Description => Str]

=item [TestSetTags => L<Paws::LexModelsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartTestSetGeneration>

Returns: a L<Paws::LexModelsV2::StartTestSetGenerationResponse> instance

The action to start the generation of test set.


=head2 StopBotRecommendation

=over

=item BotId => Str

=item BotRecommendationId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StopBotRecommendation>

Returns: a L<Paws::LexModelsV2::StopBotRecommendationResponse> instance

Stop an already running Bot Recommendation request.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::LexModelsV2::TagMap>


=back

Each argument is described in detail in: L<Paws::LexModelsV2::TagResource>

Returns: a L<Paws::LexModelsV2::TagResourceResponse> instance

Adds the specified tags to the specified resource. If a tag key already
exists, the existing value is replaced with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UntagResource>

Returns: a L<Paws::LexModelsV2::UntagResourceResponse> instance

Removes tags from a bot, bot alias, or bot channel.


=head2 UpdateBot

=over

=item BotId => Str

=item BotName => Str

=item DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

=item IdleSessionTTLInSeconds => Int

=item RoleArn => Str

=item [BotMembers => ArrayRef[L<Paws::LexModelsV2::BotMember>]]

=item [BotType => Str]

=item [Description => Str]

=item [ErrorLogSettings => L<Paws::LexModelsV2::ErrorLogSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBot>

Returns: a L<Paws::LexModelsV2::UpdateBotResponse> instance

Updates the configuration of an existing bot.


=head2 UpdateBotAlias

=over

=item BotAliasId => Str

=item BotAliasName => Str

=item BotId => Str

=item [BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>]

=item [BotVersion => Str]

=item [ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>]

=item [Description => Str]

=item [SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBotAlias>

Returns: a L<Paws::LexModelsV2::UpdateBotAliasResponse> instance

Updates the configuration of an existing bot alias.


=head2 UpdateBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item NluIntentConfidenceThreshold => Num

=item [Description => Str]

=item [GenerativeAISettings => L<Paws::LexModelsV2::GenerativeAISettings>]

=item [VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBotLocale>

Returns: a L<Paws::LexModelsV2::UpdateBotLocaleResponse> instance

Updates the settings that a bot has for a specific locale.


=head2 UpdateBotRecommendation

=over

=item BotId => Str

=item BotRecommendationId => Str

=item BotVersion => Str

=item EncryptionSetting => L<Paws::LexModelsV2::EncryptionSetting>

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBotRecommendation>

Returns: a L<Paws::LexModelsV2::UpdateBotRecommendationResponse> instance

Updates an existing bot recommendation request.


=head2 UpdateExport

=over

=item ExportId => Str

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateExport>

Returns: a L<Paws::LexModelsV2::UpdateExportResponse> instance

Updates the password used to protect an export zip archive.

The password is not required. If you don't supply a password, Amazon
Lex generates a zip file that is not protected by a password. This is
the archive that is available at the pre-signed S3 URL provided by the
DescribeExport
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html)
operation.


=head2 UpdateIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item IntentName => Str

=item LocaleId => Str

=item [Description => Str]

=item [DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>]

=item [FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>]

=item [InitialResponseSetting => L<Paws::LexModelsV2::InitialResponseSetting>]

=item [InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]]

=item [IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>]

=item [IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>]

=item [KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>]

=item [OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]]

=item [ParentIntentSignature => Str]

=item [QInConnectIntentConfiguration => L<Paws::LexModelsV2::QInConnectIntentConfiguration>]

=item [QnAIntentConfiguration => L<Paws::LexModelsV2::QnAIntentConfiguration>]

=item [SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]]

=item [SlotPriorities => ArrayRef[L<Paws::LexModelsV2::SlotPriority>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateIntent>

Returns: a L<Paws::LexModelsV2::UpdateIntentResponse> instance

Updates the settings for an intent.


=head2 UpdateResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateResourcePolicy>

Returns: a L<Paws::LexModelsV2::UpdateResourcePolicyResponse> instance

Replaces the existing resource policy for a bot or bot alias with a new
one. If the policy doesn't exist, Amazon Lex returns an exception.


=head2 UpdateSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str

=item SlotName => Str

=item ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

=item [Description => Str]

=item [MultipleValuesSetting => L<Paws::LexModelsV2::MultipleValuesSetting>]

=item [ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>]

=item [SlotTypeId => Str]

=item [SubSlotSetting => L<Paws::LexModelsV2::SubSlotSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateSlot>

Returns: a L<Paws::LexModelsV2::UpdateSlotResponse> instance

Updates the settings for a slot.


=head2 UpdateSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str

=item SlotTypeName => Str

=item [CompositeSlotTypeSetting => L<Paws::LexModelsV2::CompositeSlotTypeSetting>]

=item [Description => Str]

=item [ExternalSourceSetting => L<Paws::LexModelsV2::ExternalSourceSetting>]

=item [ParentSlotTypeSignature => Str]

=item [SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]]

=item [ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateSlotType>

Returns: a L<Paws::LexModelsV2::UpdateSlotTypeResponse> instance

Updates the configuration of an existing slot type.


=head2 UpdateTestSet

=over

=item TestSetId => Str

=item TestSetName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateTestSet>

Returns: a L<Paws::LexModelsV2::UpdateTestSetResponse> instance

The action to update the test set.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

