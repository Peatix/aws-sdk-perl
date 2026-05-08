package Paws::Config;
  use Moose;
  sub service { 'config' }
  sub signing_name { 'config' }
  sub version { '2014-11-12' }
  sub target_prefix { 'StarlingDoveService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::AssociateResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAggregateResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::BatchGetAggregateResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::BatchGetResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAggregationAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteAggregationAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteConfigurationAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConformancePack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteConformancePack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteDeliveryChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEvaluationResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteEvaluationResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganizationConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteOrganizationConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganizationConformancePack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteOrganizationConformancePack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePendingAggregationRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeletePendingAggregationRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRemediationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteRemediationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRemediationExceptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteRemediationExceptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetentionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteRetentionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceLinkedConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteServiceLinkedConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStoredQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteStoredQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeliverConfigSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeliverConfigSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAggregateComplianceByConfigRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeAggregateComplianceByConfigRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAggregateComplianceByConformancePacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeAggregateComplianceByConformancePacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAggregationAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeAggregationAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComplianceByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeComplianceByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComplianceByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeComplianceByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigRuleEvaluationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigRuleEvaluationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationAggregators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationAggregators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationAggregatorSourcesStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationAggregatorSourcesStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRecorders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationRecorders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRecorderStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationRecorderStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConformancePackCompliance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConformancePackCompliance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConformancePacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConformancePacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConformancePackStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConformancePackStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeDeliveryChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryChannelStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeDeliveryChannelStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfigRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeOrganizationConfigRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfigRuleStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeOrganizationConfigRuleStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConformancePacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeOrganizationConformancePacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConformancePackStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeOrganizationConformancePackStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePendingAggregationRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribePendingAggregationRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRemediationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeRemediationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRemediationExceptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeRemediationExceptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRemediationExecutionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeRemediationExecutionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRetentionConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeRetentionConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DisassociateResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAggregateComplianceDetailsByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetAggregateComplianceDetailsByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAggregateConfigRuleComplianceSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetAggregateConfigRuleComplianceSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAggregateConformancePackComplianceSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetAggregateConformancePackComplianceSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAggregateDiscoveredResourceCounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetAggregateDiscoveredResourceCounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAggregateResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetAggregateResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetailsByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceDetailsByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetailsByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceDetailsByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceSummaryByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceSummaryByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceSummaryByResourceType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceSummaryByResourceType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConformancePackComplianceDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetConformancePackComplianceDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConformancePackComplianceSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetConformancePackComplianceSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetCustomRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDiscoveredResourceCounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetDiscoveredResourceCounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationConfigRuleDetailedStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetOrganizationConfigRuleDetailedStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationConformancePackDetailedStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetOrganizationConformancePackDetailedStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationCustomRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetOrganizationCustomRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceConfigHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetResourceConfigHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceEvaluationSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetResourceEvaluationSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStoredQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetStoredQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAggregateDiscoveredResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListAggregateDiscoveredResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationRecorders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListConfigurationRecorders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConformancePackComplianceScores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListConformancePackComplianceScores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoveredResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListDiscoveredResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListResourceEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStoredQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListStoredQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAggregationAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutAggregationAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConfigurationAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConformancePack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConformancePack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliveryChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutDeliveryChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutExternalEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutExternalEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOrganizationConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutOrganizationConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOrganizationConformancePack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutOrganizationConformancePack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRemediationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutRemediationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRemediationExceptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutRemediationExceptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutRetentionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutServiceLinkedConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutServiceLinkedConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutStoredQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutStoredQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SelectAggregateResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::SelectAggregateResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SelectResourceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::SelectResourceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigRulesEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StartConfigRulesEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StartConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRemediationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StartRemediationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartResourceEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StartResourceEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StopConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAggregateComplianceByConfigRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAggregateComplianceByConfigRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAggregateComplianceByConfigRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->AggregateComplianceByConfigRules }, @{ $next_result->AggregateComplianceByConfigRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AggregateComplianceByConfigRules') foreach (@{ $result->AggregateComplianceByConfigRules });
        $result = $self->DescribeAggregateComplianceByConfigRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AggregateComplianceByConfigRules') foreach (@{ $result->AggregateComplianceByConfigRules });
    }

    return undef
  }
  sub DescribeAllAggregateComplianceByConformancePacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAggregateComplianceByConformancePacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAggregateComplianceByConformancePacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->AggregateComplianceByConformancePacks }, @{ $next_result->AggregateComplianceByConformancePacks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AggregateComplianceByConformancePacks') foreach (@{ $result->AggregateComplianceByConformancePacks });
        $result = $self->DescribeAggregateComplianceByConformancePacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AggregateComplianceByConformancePacks') foreach (@{ $result->AggregateComplianceByConformancePacks });
    }

    return undef
  }
  sub DescribeAllAggregationAuthorizations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAggregationAuthorizations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAggregationAuthorizations(@_, NextToken => $next_result->NextToken);
        push @{ $result->AggregationAuthorizations }, @{ $next_result->AggregationAuthorizations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AggregationAuthorizations') foreach (@{ $result->AggregationAuthorizations });
        $result = $self->DescribeAggregationAuthorizations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AggregationAuthorizations') foreach (@{ $result->AggregationAuthorizations });
    }

    return undef
  }
  sub DescribeAllComplianceByConfigRule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeComplianceByConfigRule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeComplianceByConfigRule(@_, NextToken => $next_result->NextToken);
        push @{ $result->ComplianceByConfigRules }, @{ $next_result->ComplianceByConfigRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ComplianceByConfigRules') foreach (@{ $result->ComplianceByConfigRules });
        $result = $self->DescribeComplianceByConfigRule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ComplianceByConfigRules') foreach (@{ $result->ComplianceByConfigRules });
    }

    return undef
  }
  sub DescribeAllComplianceByResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeComplianceByResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeComplianceByResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->ComplianceByResources }, @{ $next_result->ComplianceByResources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ComplianceByResources') foreach (@{ $result->ComplianceByResources });
        $result = $self->DescribeComplianceByResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ComplianceByResources') foreach (@{ $result->ComplianceByResources });
    }

    return undef
  }
  sub DescribeAllConfigRuleEvaluationStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigRuleEvaluationStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConfigRuleEvaluationStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigRulesEvaluationStatus }, @{ $next_result->ConfigRulesEvaluationStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigRulesEvaluationStatus') foreach (@{ $result->ConfigRulesEvaluationStatus });
        $result = $self->DescribeConfigRuleEvaluationStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigRulesEvaluationStatus') foreach (@{ $result->ConfigRulesEvaluationStatus });
    }

    return undef
  }
  sub DescribeAllConfigRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConfigRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigRules }, @{ $next_result->ConfigRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigRules') foreach (@{ $result->ConfigRules });
        $result = $self->DescribeConfigRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigRules') foreach (@{ $result->ConfigRules });
    }

    return undef
  }
  sub DescribeAllConfigurationAggregators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigurationAggregators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConfigurationAggregators(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationAggregators }, @{ $next_result->ConfigurationAggregators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationAggregators') foreach (@{ $result->ConfigurationAggregators });
        $result = $self->DescribeConfigurationAggregators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationAggregators') foreach (@{ $result->ConfigurationAggregators });
    }

    return undef
  }
  sub DescribeAllConfigurationAggregatorSourcesStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigurationAggregatorSourcesStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConfigurationAggregatorSourcesStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->AggregatedSourceStatusList }, @{ $next_result->AggregatedSourceStatusList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AggregatedSourceStatusList') foreach (@{ $result->AggregatedSourceStatusList });
        $result = $self->DescribeConfigurationAggregatorSourcesStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AggregatedSourceStatusList') foreach (@{ $result->AggregatedSourceStatusList });
    }

    return undef
  }
  sub DescribeAllConformancePacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConformancePacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConformancePacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConformancePackDetails }, @{ $next_result->ConformancePackDetails };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConformancePackDetails') foreach (@{ $result->ConformancePackDetails });
        $result = $self->DescribeConformancePacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConformancePackDetails') foreach (@{ $result->ConformancePackDetails });
    }

    return undef
  }
  sub DescribeAllConformancePackStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConformancePackStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeConformancePackStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConformancePackStatusDetails }, @{ $next_result->ConformancePackStatusDetails };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConformancePackStatusDetails') foreach (@{ $result->ConformancePackStatusDetails });
        $result = $self->DescribeConformancePackStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConformancePackStatusDetails') foreach (@{ $result->ConformancePackStatusDetails });
    }

    return undef
  }
  sub DescribeAllOrganizationConfigRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrganizationConfigRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOrganizationConfigRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConfigRules }, @{ $next_result->OrganizationConfigRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConfigRules') foreach (@{ $result->OrganizationConfigRules });
        $result = $self->DescribeOrganizationConfigRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConfigRules') foreach (@{ $result->OrganizationConfigRules });
    }

    return undef
  }
  sub DescribeAllOrganizationConfigRuleStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrganizationConfigRuleStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOrganizationConfigRuleStatuses(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConfigRuleStatuses }, @{ $next_result->OrganizationConfigRuleStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConfigRuleStatuses') foreach (@{ $result->OrganizationConfigRuleStatuses });
        $result = $self->DescribeOrganizationConfigRuleStatuses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConfigRuleStatuses') foreach (@{ $result->OrganizationConfigRuleStatuses });
    }

    return undef
  }
  sub DescribeAllOrganizationConformancePacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrganizationConformancePacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOrganizationConformancePacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConformancePacks }, @{ $next_result->OrganizationConformancePacks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConformancePacks') foreach (@{ $result->OrganizationConformancePacks });
        $result = $self->DescribeOrganizationConformancePacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConformancePacks') foreach (@{ $result->OrganizationConformancePacks });
    }

    return undef
  }
  sub DescribeAllOrganizationConformancePackStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrganizationConformancePackStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeOrganizationConformancePackStatuses(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConformancePackStatuses }, @{ $next_result->OrganizationConformancePackStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConformancePackStatuses') foreach (@{ $result->OrganizationConformancePackStatuses });
        $result = $self->DescribeOrganizationConformancePackStatuses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConformancePackStatuses') foreach (@{ $result->OrganizationConformancePackStatuses });
    }

    return undef
  }
  sub DescribeAllPendingAggregationRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePendingAggregationRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePendingAggregationRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->PendingAggregationRequests }, @{ $next_result->PendingAggregationRequests };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PendingAggregationRequests') foreach (@{ $result->PendingAggregationRequests });
        $result = $self->DescribePendingAggregationRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PendingAggregationRequests') foreach (@{ $result->PendingAggregationRequests });
    }

    return undef
  }
  sub DescribeAllRemediationExecutionStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRemediationExecutionStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRemediationExecutionStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->RemediationExecutionStatuses }, @{ $next_result->RemediationExecutionStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RemediationExecutionStatuses') foreach (@{ $result->RemediationExecutionStatuses });
        $result = $self->DescribeRemediationExecutionStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RemediationExecutionStatuses') foreach (@{ $result->RemediationExecutionStatuses });
    }

    return undef
  }
  sub DescribeAllRetentionConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRetentionConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRetentionConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->RetentionConfigurations }, @{ $next_result->RetentionConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RetentionConfigurations') foreach (@{ $result->RetentionConfigurations });
        $result = $self->DescribeRetentionConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RetentionConfigurations') foreach (@{ $result->RetentionConfigurations });
    }

    return undef
  }
  sub GetAllAggregateComplianceDetailsByConfigRule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAggregateComplianceDetailsByConfigRule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAggregateComplianceDetailsByConfigRule(@_, NextToken => $next_result->NextToken);
        push @{ $result->AggregateEvaluationResults }, @{ $next_result->AggregateEvaluationResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AggregateEvaluationResults') foreach (@{ $result->AggregateEvaluationResults });
        $result = $self->GetAggregateComplianceDetailsByConfigRule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AggregateEvaluationResults') foreach (@{ $result->AggregateEvaluationResults });
    }

    return undef
  }
  sub GetAllComplianceDetailsByConfigRule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetComplianceDetailsByConfigRule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetComplianceDetailsByConfigRule(@_, NextToken => $next_result->NextToken);
        push @{ $result->EvaluationResults }, @{ $next_result->EvaluationResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EvaluationResults') foreach (@{ $result->EvaluationResults });
        $result = $self->GetComplianceDetailsByConfigRule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EvaluationResults') foreach (@{ $result->EvaluationResults });
    }

    return undef
  }
  sub GetAllComplianceDetailsByResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetComplianceDetailsByResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetComplianceDetailsByResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->EvaluationResults }, @{ $next_result->EvaluationResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EvaluationResults') foreach (@{ $result->EvaluationResults });
        $result = $self->GetComplianceDetailsByResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EvaluationResults') foreach (@{ $result->EvaluationResults });
    }

    return undef
  }
  sub GetAllConformancePackComplianceSummary {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConformancePackComplianceSummary(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConformancePackComplianceSummary(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConformancePackComplianceSummaryList }, @{ $next_result->ConformancePackComplianceSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConformancePackComplianceSummaryList') foreach (@{ $result->ConformancePackComplianceSummaryList });
        $result = $self->GetConformancePackComplianceSummary(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConformancePackComplianceSummaryList') foreach (@{ $result->ConformancePackComplianceSummaryList });
    }

    return undef
  }
  sub GetAllOrganizationConfigRuleDetailedStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOrganizationConfigRuleDetailedStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetOrganizationConfigRuleDetailedStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConfigRuleDetailedStatus }, @{ $next_result->OrganizationConfigRuleDetailedStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConfigRuleDetailedStatus') foreach (@{ $result->OrganizationConfigRuleDetailedStatus });
        $result = $self->GetOrganizationConfigRuleDetailedStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConfigRuleDetailedStatus') foreach (@{ $result->OrganizationConfigRuleDetailedStatus });
    }

    return undef
  }
  sub GetAllOrganizationConformancePackDetailedStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOrganizationConformancePackDetailedStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetOrganizationConformancePackDetailedStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationConformancePackDetailedStatuses }, @{ $next_result->OrganizationConformancePackDetailedStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationConformancePackDetailedStatuses') foreach (@{ $result->OrganizationConformancePackDetailedStatuses });
        $result = $self->GetOrganizationConformancePackDetailedStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationConformancePackDetailedStatuses') foreach (@{ $result->OrganizationConformancePackDetailedStatuses });
    }

    return undef
  }
  sub GetAllResourceConfigHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourceConfigHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourceConfigHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->configurationItems }, @{ $next_result->configurationItems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configurationItems') foreach (@{ $result->configurationItems });
        $result = $self->GetResourceConfigHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configurationItems') foreach (@{ $result->configurationItems });
    }

    return undef
  }
  sub ListAllAggregateDiscoveredResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAggregateDiscoveredResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAggregateDiscoveredResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceIdentifiers }, @{ $next_result->ResourceIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
        $result = $self->ListAggregateDiscoveredResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
    }

    return undef
  }
  sub ListAllConfigurationRecorders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationRecorders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationRecorders(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationRecorderSummaries }, @{ $next_result->ConfigurationRecorderSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationRecorderSummaries') foreach (@{ $result->ConfigurationRecorderSummaries });
        $result = $self->ListConfigurationRecorders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationRecorderSummaries') foreach (@{ $result->ConfigurationRecorderSummaries });
    }

    return undef
  }
  sub ListAllDiscoveredResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDiscoveredResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDiscoveredResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceIdentifiers }, @{ $next_result->resourceIdentifiers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceIdentifiers') foreach (@{ $result->resourceIdentifiers });
        $result = $self->ListDiscoveredResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceIdentifiers') foreach (@{ $result->resourceIdentifiers });
    }

    return undef
  }
  sub ListAllResourceEvaluations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceEvaluations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceEvaluations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceEvaluations }, @{ $next_result->ResourceEvaluations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceEvaluations') foreach (@{ $result->ResourceEvaluations });
        $result = $self->ListResourceEvaluations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceEvaluations') foreach (@{ $result->ResourceEvaluations });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub SelectAllAggregateResourceConfig {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SelectAggregateResourceConfig(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SelectAggregateResourceConfig(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->SelectAggregateResourceConfig(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub SelectAllResourceConfig {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SelectResourceConfig(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SelectResourceConfig(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->SelectResourceConfig(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }


  sub operations { qw/AssociateResourceTypes BatchGetAggregateResourceConfig BatchGetResourceConfig DeleteAggregationAuthorization DeleteConfigRule DeleteConfigurationAggregator DeleteConfigurationRecorder DeleteConformancePack DeleteDeliveryChannel DeleteEvaluationResults DeleteOrganizationConfigRule DeleteOrganizationConformancePack DeletePendingAggregationRequest DeleteRemediationConfiguration DeleteRemediationExceptions DeleteResourceConfig DeleteRetentionConfiguration DeleteServiceLinkedConfigurationRecorder DeleteStoredQuery DeliverConfigSnapshot DescribeAggregateComplianceByConfigRules DescribeAggregateComplianceByConformancePacks DescribeAggregationAuthorizations DescribeComplianceByConfigRule DescribeComplianceByResource DescribeConfigRuleEvaluationStatus DescribeConfigRules DescribeConfigurationAggregators DescribeConfigurationAggregatorSourcesStatus DescribeConfigurationRecorders DescribeConfigurationRecorderStatus DescribeConformancePackCompliance DescribeConformancePacks DescribeConformancePackStatus DescribeDeliveryChannels DescribeDeliveryChannelStatus DescribeOrganizationConfigRules DescribeOrganizationConfigRuleStatuses DescribeOrganizationConformancePacks DescribeOrganizationConformancePackStatuses DescribePendingAggregationRequests DescribeRemediationConfigurations DescribeRemediationExceptions DescribeRemediationExecutionStatus DescribeRetentionConfigurations DisassociateResourceTypes GetAggregateComplianceDetailsByConfigRule GetAggregateConfigRuleComplianceSummary GetAggregateConformancePackComplianceSummary GetAggregateDiscoveredResourceCounts GetAggregateResourceConfig GetComplianceDetailsByConfigRule GetComplianceDetailsByResource GetComplianceSummaryByConfigRule GetComplianceSummaryByResourceType GetConformancePackComplianceDetails GetConformancePackComplianceSummary GetCustomRulePolicy GetDiscoveredResourceCounts GetOrganizationConfigRuleDetailedStatus GetOrganizationConformancePackDetailedStatus GetOrganizationCustomRulePolicy GetResourceConfigHistory GetResourceEvaluationSummary GetStoredQuery ListAggregateDiscoveredResources ListConfigurationRecorders ListConformancePackComplianceScores ListDiscoveredResources ListResourceEvaluations ListStoredQueries ListTagsForResource PutAggregationAuthorization PutConfigRule PutConfigurationAggregator PutConfigurationRecorder PutConformancePack PutDeliveryChannel PutEvaluations PutExternalEvaluation PutOrganizationConfigRule PutOrganizationConformancePack PutRemediationConfigurations PutRemediationExceptions PutResourceConfig PutRetentionConfiguration PutServiceLinkedConfigurationRecorder PutStoredQuery SelectAggregateResourceConfig SelectResourceConfig StartConfigRulesEvaluation StartConfigurationRecorder StartRemediationExecution StartResourceEvaluation StopConfigurationRecorder TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config - Perl Interface to AWS AWS Config

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Config');
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

Config

Config provides a way to keep track of the configurations of all the
Amazon Web Services resources associated with your Amazon Web Services
account. You can use Config to get the current and historical
configurations of each Amazon Web Services resource and also to get
information about the relationship between the resources. An Amazon Web
Services resource can be an Amazon Compute Cloud (Amazon EC2) instance,
an Elastic Block Store (EBS) volume, an elastic network Interface
(ENI), or a security group. For a complete list of resources currently
supported by Config, see Supported Amazon Web Services resources
(https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

You can access and manage Config through the Amazon Web Services
Management Console, the Amazon Web Services Command Line Interface
(Amazon Web Services CLI), the Config API, or the Amazon Web Services
SDKs for Config. This reference guide contains documentation for the
Config API and the Amazon Web Services CLI commands that you can use to
manage Config. The Config API uses the Signature Version 4 protocol for
signing requests. For more information about how to sign a request with
this protocol, see Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
For detailed information about Config features and their associated
actions or commands, as well as how to work with Amazon Web Services
Management Console, see What Is Config
(https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
in the I<Config Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12>


=head1 METHODS

=head2 AssociateResourceTypes

=over

=item ConfigurationRecorderArn => Str

=item ResourceTypes => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Config::AssociateResourceTypes>

Returns: a L<Paws::Config::AssociateResourceTypesResponse> instance

Adds all resource types specified in the C<ResourceTypes> list to the
RecordingGroup
(https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html)
of specified configuration recorder and includes those resource types
when recording.

For this operation, the specified configuration recorder must use a
RecordingStrategy
(https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html)
that is either C<INCLUSION_BY_RESOURCE_TYPES> or
C<EXCLUSION_BY_RESOURCE_TYPES>.


=head2 BatchGetAggregateResourceConfig

=over

=item ConfigurationAggregatorName => Str

=item ResourceIdentifiers => ArrayRef[L<Paws::Config::AggregateResourceIdentifier>]


=back

Each argument is described in detail in: L<Paws::Config::BatchGetAggregateResourceConfig>

Returns: a L<Paws::Config::BatchGetAggregateResourceConfigResponse> instance

Returns the current configuration items for resources that are present
in your Config aggregator. The operation also returns a list of
resources that are not processed in the current request. If there are
no unprocessed resources, the operation returns an empty
C<unprocessedResourceIdentifiers> list.

=over

=item *

The API does not return results for deleted resources.

=item *

The API does not return tags and relationships.

=back



=head2 BatchGetResourceConfig

=over

=item ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]


=back

Each argument is described in detail in: L<Paws::Config::BatchGetResourceConfig>

Returns: a L<Paws::Config::BatchGetResourceConfigResponse> instance

Returns the C<BaseConfigurationItem> for one or more requested
resources. The operation also returns a list of resources that are not
processed in the current request. If there are no unprocessed
resources, the operation returns an empty unprocessedResourceKeys list.

=over

=item *

The API does not return results for deleted resources.

=item *

The API does not return any tags for the requested resources. This
information is filtered out of the supplementaryConfiguration section
of the API response.

=back



=head2 DeleteAggregationAuthorization

=over

=item AuthorizedAccountId => Str

=item AuthorizedAwsRegion => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteAggregationAuthorization>

Returns: nothing

Deletes the authorization granted to the specified configuration
aggregator account in a specified region.


=head2 DeleteConfigRule

=over

=item ConfigRuleName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteConfigRule>

Returns: nothing

Deletes the specified Config rule and all of its evaluation results.

Config sets the state of a rule to C<DELETING> until the deletion is
complete. You cannot update a rule while it is in this state. If you
make a C<PutConfigRule> or C<DeleteConfigRule> request for the rule,
you will receive a C<ResourceInUseException>.

You can check the state of a rule by using the C<DescribeConfigRules>
request.

B<Recommendation: Stop recording resource compliance before deleting
rules>

It is highly recommended that you stop recording for the
C<AWS::Config::ResourceCompliance> resource type before you delete
rules in your account. Deleting rules creates CIs for
C<AWS::Config::ResourceCompliance> and can affect your Config
configuration recorder
(https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
costs. If you are deleting rules which evaluate a large number of
resource types, this can lead to a spike in the number of CIs recorded.

Best practice:

=over

=item 1.

Stop recording C<AWS::Config::ResourceCompliance>

=item 2.

Delete rule(s)

=item 3.

Turn on recording for C<AWS::Config::ResourceCompliance>

=back



=head2 DeleteConfigurationAggregator

=over

=item ConfigurationAggregatorName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteConfigurationAggregator>

Returns: nothing

Deletes the specified configuration aggregator and the aggregated data
associated with the aggregator.


=head2 DeleteConfigurationRecorder

=over

=item ConfigurationRecorderName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteConfigurationRecorder>

Returns: nothing

Deletes the customer managed configuration recorder.

This operation does not delete the configuration information that was
previously recorded. You will be able to access the previously recorded
information by using the GetResourceConfigHistory
(https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html)
operation, but you will not be able to access this information in the
Config console until you have created a new customer managed
configuration recorder.


=head2 DeleteConformancePack

=over

=item ConformancePackName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteConformancePack>

Returns: nothing

Deletes the specified conformance pack and all the Config rules,
remediation actions, and all evaluation results within that conformance
pack.

Config sets the conformance pack to C<DELETE_IN_PROGRESS> until the
deletion is complete. You cannot update a conformance pack while it is
in this state.


=head2 DeleteDeliveryChannel

=over

=item DeliveryChannelName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteDeliveryChannel>

Returns: nothing

Deletes the delivery channel.

Before you can delete the delivery channel, you must stop the customer
managed configuration recorder. You can use the
StopConfigurationRecorder operation to stop the customer managed
configuration recorder.


=head2 DeleteEvaluationResults

=over

=item ConfigRuleName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteEvaluationResults>

Returns: a L<Paws::Config::DeleteEvaluationResultsResponse> instance

Deletes the evaluation results for the specified Config rule. You can
specify one Config rule per request. After you delete the evaluation
results, you can call the StartConfigRulesEvaluation API to start
evaluating your Amazon Web Services resources against the rule.


=head2 DeleteOrganizationConfigRule

=over

=item OrganizationConfigRuleName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteOrganizationConfigRule>

Returns: nothing

Deletes the specified organization Config rule and all of its
evaluation results from all member accounts in that organization.

Only a management account and a delegated administrator account can
delete an organization Config rule. When calling this API with a
delegated administrator, you must ensure Organizations
C<ListDelegatedAdministrator> permissions are added.

Config sets the state of a rule to DELETE_IN_PROGRESS until the
deletion is complete. You cannot update a rule while it is in this
state.


=head2 DeleteOrganizationConformancePack

=over

=item OrganizationConformancePackName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteOrganizationConformancePack>

Returns: nothing

Deletes the specified organization conformance pack and all of the
Config rules and remediation actions from all member accounts in that
organization.

Only a management account or a delegated administrator account can
delete an organization conformance pack. When calling this API with a
delegated administrator, you must ensure Organizations
C<ListDelegatedAdministrator> permissions are added.

Config sets the state of a conformance pack to DELETE_IN_PROGRESS until
the deletion is complete. You cannot update a conformance pack while it
is in this state.


=head2 DeletePendingAggregationRequest

=over

=item RequesterAccountId => Str

=item RequesterAwsRegion => Str


=back

Each argument is described in detail in: L<Paws::Config::DeletePendingAggregationRequest>

Returns: nothing

Deletes pending authorization requests for a specified aggregator
account in a specified region.


=head2 DeleteRemediationConfiguration

=over

=item ConfigRuleName => Str

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Config::DeleteRemediationConfiguration>

Returns: a L<Paws::Config::DeleteRemediationConfigurationResponse> instance

Deletes the remediation configuration.


=head2 DeleteRemediationExceptions

=over

=item ConfigRuleName => Str

=item ResourceKeys => ArrayRef[L<Paws::Config::RemediationExceptionResourceKey>]


=back

Each argument is described in detail in: L<Paws::Config::DeleteRemediationExceptions>

Returns: a L<Paws::Config::DeleteRemediationExceptionsResponse> instance

Deletes one or more remediation exceptions mentioned in the resource
keys.

Config generates a remediation exception when a problem occurs
executing a remediation action to a specific resource. Remediation
exceptions blocks auto-remediation until the exception is cleared.


=head2 DeleteResourceConfig

=over

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteResourceConfig>

Returns: nothing

Records the configuration state for a custom resource that has been
deleted. This API records a new ConfigurationItem with a
ResourceDeleted status. You can retrieve the ConfigurationItems
recorded for this resource in your Config History.


=head2 DeleteRetentionConfiguration

=over

=item RetentionConfigurationName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteRetentionConfiguration>

Returns: nothing

Deletes the retention configuration.


=head2 DeleteServiceLinkedConfigurationRecorder

=over

=item ServicePrincipal => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteServiceLinkedConfigurationRecorder>

Returns: a L<Paws::Config::DeleteServiceLinkedConfigurationRecorderResponse> instance

Deletes an existing service-linked configuration recorder.

This operation does not delete the configuration information that was
previously recorded. You will be able to access the previously recorded
information by using the GetResourceConfigHistory
(https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html)
operation, but you will not be able to access this information in the
Config console until you have created a new service-linked
configuration recorder for the same service.

B<The recording scope determines if you receive configuration items>

The recording scope is set by the service that is linked to the
configuration recorder and determines whether you receive configuration
items (CIs) in the delivery channel. If the recording scope is
internal, you will not receive CIs in the delivery channel.


=head2 DeleteStoredQuery

=over

=item QueryName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeleteStoredQuery>

Returns: a L<Paws::Config::DeleteStoredQueryResponse> instance

Deletes the stored query for a single Amazon Web Services account and a
single Amazon Web Services Region.


=head2 DeliverConfigSnapshot

=over

=item DeliveryChannelName => Str


=back

Each argument is described in detail in: L<Paws::Config::DeliverConfigSnapshot>

Returns: a L<Paws::Config::DeliverConfigSnapshotResponse> instance

Schedules delivery of a configuration snapshot to the Amazon S3 bucket
in the specified delivery channel. After the delivery has started,
Config sends the following notifications using an Amazon SNS topic that
you have specified.

=over

=item *

Notification of the start of the delivery.

=item *

Notification of the completion of the delivery, if the delivery was
successfully completed.

=item *

Notification of delivery failure, if the delivery failed.

=back



=head2 DescribeAggregateComplianceByConfigRules

=over

=item ConfigurationAggregatorName => Str

=item [Filters => L<Paws::Config::ConfigRuleComplianceFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeAggregateComplianceByConfigRules>

Returns: a L<Paws::Config::DescribeAggregateComplianceByConfigRulesResponse> instance

Returns a list of compliant and noncompliant rules with the number of
resources for compliant and noncompliant rules. Does not display rules
that do not have compliance results.

The results can return an empty result page, but if you have a
C<nextToken>, the results are displayed on the next page.


=head2 DescribeAggregateComplianceByConformancePacks

=over

=item ConfigurationAggregatorName => Str

=item [Filters => L<Paws::Config::AggregateConformancePackComplianceFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeAggregateComplianceByConformancePacks>

Returns: a L<Paws::Config::DescribeAggregateComplianceByConformancePacksResponse> instance

Returns a list of the existing and deleted conformance packs and their
associated compliance status with the count of compliant and
noncompliant Config rules within each conformance pack. Also returns
the total rule count which includes compliant rules, noncompliant
rules, and rules that cannot be evaluated due to insufficient data.

The results can return an empty result page, but if you have a
C<nextToken>, the results are displayed on the next page.


=head2 DescribeAggregationAuthorizations

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeAggregationAuthorizations>

Returns: a L<Paws::Config::DescribeAggregationAuthorizationsResponse> instance

Returns a list of authorizations granted to various aggregator accounts
and regions.


=head2 DescribeComplianceByConfigRule

=over

=item [ComplianceTypes => ArrayRef[Str|Undef]]

=item [ConfigRuleNames => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeComplianceByConfigRule>

Returns: a L<Paws::Config::DescribeComplianceByConfigRuleResponse> instance

Indicates whether the specified Config rules are compliant. If a rule
is noncompliant, this operation returns the number of Amazon Web
Services resources that do not comply with the rule.

A rule is compliant if all of the evaluated resources comply with it.
It is noncompliant if any of these resources do not comply.

If Config has no current evaluation results for the rule, it returns
C<INSUFFICIENT_DATA>. This result might indicate one of the following
conditions:

=over

=item *

Config has never invoked an evaluation for the rule. To check whether
it has, use the C<DescribeConfigRuleEvaluationStatus> action to get the
C<LastSuccessfulInvocationTime> and C<LastFailedInvocationTime>.

=item *

The rule's Lambda function is failing to send evaluation results to
Config. Verify that the role you assigned to your configuration
recorder includes the C<config:PutEvaluations> permission. If the rule
is a custom rule, verify that the Lambda execution role includes the
C<config:PutEvaluations> permission.

=item *

The rule's Lambda function has returned C<NOT_APPLICABLE> for all
evaluation results. This can occur if the resources were deleted or
removed from the rule's scope.

=back



=head2 DescribeComplianceByResource

=over

=item [ComplianceTypes => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeComplianceByResource>

Returns: a L<Paws::Config::DescribeComplianceByResourceResponse> instance

Indicates whether the specified Amazon Web Services resources are
compliant. If a resource is noncompliant, this operation returns the
number of Config rules that the resource does not comply with.

A resource is compliant if it complies with all the Config rules that
evaluate it. It is noncompliant if it does not comply with one or more
of these rules.

If Config has no current evaluation results for the resource, it
returns C<INSUFFICIENT_DATA>. This result might indicate one of the
following conditions about the rules that evaluate the resource:

=over

=item *

Config has never invoked an evaluation for the rule. To check whether
it has, use the C<DescribeConfigRuleEvaluationStatus> action to get the
C<LastSuccessfulInvocationTime> and C<LastFailedInvocationTime>.

=item *

The rule's Lambda function is failing to send evaluation results to
Config. Verify that the role that you assigned to your configuration
recorder includes the C<config:PutEvaluations> permission. If the rule
is a custom rule, verify that the Lambda execution role includes the
C<config:PutEvaluations> permission.

=item *

The rule's Lambda function has returned C<NOT_APPLICABLE> for all
evaluation results. This can occur if the resources were deleted or
removed from the rule's scope.

=back



=head2 DescribeConfigRuleEvaluationStatus

=over

=item [ConfigRuleNames => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigRuleEvaluationStatus>

Returns: a L<Paws::Config::DescribeConfigRuleEvaluationStatusResponse> instance

Returns status information for each of your Config managed rules. The
status includes information such as the last time Config invoked the
rule, the last time Config failed to invoke the rule, and the related
error for the last failure.


=head2 DescribeConfigRules

=over

=item [ConfigRuleNames => ArrayRef[Str|Undef]]

=item [Filters => L<Paws::Config::DescribeConfigRulesFilters>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigRules>

Returns: a L<Paws::Config::DescribeConfigRulesResponse> instance

Returns details about your Config rules.


=head2 DescribeConfigurationAggregators

=over

=item [ConfigurationAggregatorNames => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationAggregators>

Returns: a L<Paws::Config::DescribeConfigurationAggregatorsResponse> instance

Returns the details of one or more configuration aggregators. If the
configuration aggregator is not specified, this operation returns the
details for all the configuration aggregators associated with the
account.


=head2 DescribeConfigurationAggregatorSourcesStatus

=over

=item ConfigurationAggregatorName => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [UpdateStatus => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationAggregatorSourcesStatus>

Returns: a L<Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse> instance

Returns status information for sources within an aggregator. The status
includes information about the last time Config verified authorization
between the source account and an aggregator account. In case of a
failure, the status contains the related error code or message.


=head2 DescribeConfigurationRecorders

=over

=item [Arn => Str]

=item [ConfigurationRecorderNames => ArrayRef[Str|Undef]]

=item [ServicePrincipal => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationRecorders>

Returns: a L<Paws::Config::DescribeConfigurationRecordersResponse> instance

Returns details for the configuration recorder you specify.

If a configuration recorder is not specified, this operation returns
details for the customer managed configuration recorder configured for
the account, if applicable.

When making a request to this operation, you can only specify one
configuration recorder.


=head2 DescribeConfigurationRecorderStatus

=over

=item [Arn => Str]

=item [ConfigurationRecorderNames => ArrayRef[Str|Undef]]

=item [ServicePrincipal => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationRecorderStatus>

Returns: a L<Paws::Config::DescribeConfigurationRecorderStatusResponse> instance

Returns the current status of the configuration recorder you specify as
well as the status of the last recording event for the configuration
recorders.

For a detailed status of recording events over time, add your Config
events to Amazon CloudWatch metrics and use CloudWatch metrics.

If a configuration recorder is not specified, this operation returns
the status for the customer managed configuration recorder configured
for the account, if applicable.

When making a request to this operation, you can only specify one
configuration recorder.


=head2 DescribeConformancePackCompliance

=over

=item ConformancePackName => Str

=item [Filters => L<Paws::Config::ConformancePackComplianceFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConformancePackCompliance>

Returns: a L<Paws::Config::DescribeConformancePackComplianceResponse> instance

Returns compliance details for each rule in that conformance pack.

You must provide exact rule names.


=head2 DescribeConformancePacks

=over

=item [ConformancePackNames => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConformancePacks>

Returns: a L<Paws::Config::DescribeConformancePacksResponse> instance

Returns a list of one or more conformance packs.


=head2 DescribeConformancePackStatus

=over

=item [ConformancePackNames => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribeConformancePackStatus>

Returns: a L<Paws::Config::DescribeConformancePackStatusResponse> instance

Provides one or more conformance packs deployment status.

If there are no conformance packs then you will see an empty result.


=head2 DescribeDeliveryChannels

=over

=item [DeliveryChannelNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeDeliveryChannels>

Returns: a L<Paws::Config::DescribeDeliveryChannelsResponse> instance

Returns details about the specified delivery channel. If a delivery
channel is not specified, this operation returns the details of all
delivery channels associated with the account.

Currently, you can specify only one delivery channel per region in your
account.


=head2 DescribeDeliveryChannelStatus

=over

=item [DeliveryChannelNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeDeliveryChannelStatus>

Returns: a L<Paws::Config::DescribeDeliveryChannelStatusResponse> instance

Returns the current status of the specified delivery channel. If a
delivery channel is not specified, this operation returns the current
status of all delivery channels associated with the account.

Currently, you can specify only one delivery channel per region in your
account.


=head2 DescribeOrganizationConfigRules

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [OrganizationConfigRuleNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeOrganizationConfigRules>

Returns: a L<Paws::Config::DescribeOrganizationConfigRulesResponse> instance

Returns a list of organization Config rules.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you specify organization
Config rule names. It is only applicable, when you request all the
organization Config rules.

I<For accounts within an organization>

If you deploy an organizational rule or conformance pack in an
organization administrator account, and then establish a delegated
administrator and deploy an organizational rule or conformance pack in
the delegated administrator account, you won't be able to see the
organizational rule or conformance pack in the organization
administrator account from the delegated administrator account or see
the organizational rule or conformance pack in the delegated
administrator account from organization administrator account. The
C<DescribeOrganizationConfigRules> and
C<DescribeOrganizationConformancePacks> APIs can only see and interact
with the organization-related resource that were deployed from within
the account calling those APIs.


=head2 DescribeOrganizationConfigRuleStatuses

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [OrganizationConfigRuleNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeOrganizationConfigRuleStatuses>

Returns: a L<Paws::Config::DescribeOrganizationConfigRuleStatusesResponse> instance

Provides organization Config rule deployment status for an
organization.

The status is not considered successful until organization Config rule
is successfully deployed in all the member accounts with an exception
of excluded accounts.

When you specify the limit and the next token, you receive a paginated
response. Limit and next token are not applicable if you specify
organization Config rule names. It is only applicable, when you request
all the organization Config rules.


=head2 DescribeOrganizationConformancePacks

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [OrganizationConformancePackNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeOrganizationConformancePacks>

Returns: a L<Paws::Config::DescribeOrganizationConformancePacksResponse> instance

Returns a list of organization conformance packs.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you specify organization
conformance packs names. They are only applicable, when you request all
the organization conformance packs.

I<For accounts within an organization>

If you deploy an organizational rule or conformance pack in an
organization administrator account, and then establish a delegated
administrator and deploy an organizational rule or conformance pack in
the delegated administrator account, you won't be able to see the
organizational rule or conformance pack in the organization
administrator account from the delegated administrator account or see
the organizational rule or conformance pack in the delegated
administrator account from organization administrator account. The
C<DescribeOrganizationConfigRules> and
C<DescribeOrganizationConformancePacks> APIs can only see and interact
with the organization-related resource that were deployed from within
the account calling those APIs.


=head2 DescribeOrganizationConformancePackStatuses

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [OrganizationConformancePackNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeOrganizationConformancePackStatuses>

Returns: a L<Paws::Config::DescribeOrganizationConformancePackStatusesResponse> instance

Provides organization conformance pack deployment status for an
organization.

The status is not considered successful until organization conformance
pack is successfully deployed in all the member accounts with an
exception of excluded accounts.

When you specify the limit and the next token, you receive a paginated
response. Limit and next token are not applicable if you specify
organization conformance pack names. They are only applicable, when you
request all the organization conformance packs.


=head2 DescribePendingAggregationRequests

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::DescribePendingAggregationRequests>

Returns: a L<Paws::Config::DescribePendingAggregationRequestsResponse> instance

Returns a list of all pending aggregation requests.


=head2 DescribeRemediationConfigurations

=over

=item ConfigRuleNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Config::DescribeRemediationConfigurations>

Returns: a L<Paws::Config::DescribeRemediationConfigurationsResponse> instance

Returns the details of one or more remediation configurations.


=head2 DescribeRemediationExceptions

=over

=item ConfigRuleName => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceKeys => ArrayRef[L<Paws::Config::RemediationExceptionResourceKey>]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeRemediationExceptions>

Returns: a L<Paws::Config::DescribeRemediationExceptionsResponse> instance

Returns the details of one or more remediation exceptions. A detailed
view of a remediation exception for a set of resources that includes an
explanation of an exception and the time when the exception will be
deleted. When you specify the limit and the next token, you receive a
paginated response.

Config generates a remediation exception when a problem occurs
executing a remediation action to a specific resource. Remediation
exceptions blocks auto-remediation until the exception is cleared.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you request resources in
batch. It is only applicable, when you request all resources.


=head2 DescribeRemediationExecutionStatus

=over

=item ConfigRuleName => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeRemediationExecutionStatus>

Returns: a L<Paws::Config::DescribeRemediationExecutionStatusResponse> instance

Provides a detailed view of a Remediation Execution for a set of
resources including state, timestamps for when steps for the
remediation execution occur, and any error messages for steps that have
failed. When you specify the limit and the next token, you receive a
paginated response.


=head2 DescribeRetentionConfigurations

=over

=item [NextToken => Str]

=item [RetentionConfigurationNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::DescribeRetentionConfigurations>

Returns: a L<Paws::Config::DescribeRetentionConfigurationsResponse> instance

Returns the details of one or more retention configurations. If the
retention configuration name is not specified, this operation returns
the details for all the retention configurations for that account.

Currently, Config supports only one retention configuration per region
in your account.


=head2 DisassociateResourceTypes

=over

=item ConfigurationRecorderArn => Str

=item ResourceTypes => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Config::DisassociateResourceTypes>

Returns: a L<Paws::Config::DisassociateResourceTypesResponse> instance

Removes all resource types specified in the C<ResourceTypes> list from
the RecordingGroup
(https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html)
of configuration recorder and excludes these resource types when
recording.

For this operation, the configuration recorder must use a
RecordingStrategy
(https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html)
that is either C<INCLUSION_BY_RESOURCE_TYPES> or
C<EXCLUSION_BY_RESOURCE_TYPES>.


=head2 GetAggregateComplianceDetailsByConfigRule

=over

=item AccountId => Str

=item AwsRegion => Str

=item ConfigRuleName => Str

=item ConfigurationAggregatorName => Str

=item [ComplianceType => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetAggregateComplianceDetailsByConfigRule>

Returns: a L<Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse> instance

Returns the evaluation results for the specified Config rule for a
specific resource in a rule. The results indicate which Amazon Web
Services resources were evaluated by the rule, when each resource was
last evaluated, and whether each resource complies with the rule.

The results can return an empty result page. But if you have a
C<nextToken>, the results are displayed on the next page.


=head2 GetAggregateConfigRuleComplianceSummary

=over

=item ConfigurationAggregatorName => Str

=item [Filters => L<Paws::Config::ConfigRuleComplianceSummaryFilters>]

=item [GroupByKey => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetAggregateConfigRuleComplianceSummary>

Returns: a L<Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse> instance

Returns the number of compliant and noncompliant rules for one or more
accounts and regions in an aggregator.

The results can return an empty result page, but if you have a
nextToken, the results are displayed on the next page.


=head2 GetAggregateConformancePackComplianceSummary

=over

=item ConfigurationAggregatorName => Str

=item [Filters => L<Paws::Config::AggregateConformancePackComplianceSummaryFilters>]

=item [GroupByKey => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetAggregateConformancePackComplianceSummary>

Returns: a L<Paws::Config::GetAggregateConformancePackComplianceSummaryResponse> instance

Returns the count of compliant and noncompliant conformance packs
across all Amazon Web Services accounts and Amazon Web Services Regions
in an aggregator. You can filter based on Amazon Web Services account
ID or Amazon Web Services Region.

The results can return an empty result page, but if you have a
nextToken, the results are displayed on the next page.


=head2 GetAggregateDiscoveredResourceCounts

=over

=item ConfigurationAggregatorName => Str

=item [Filters => L<Paws::Config::ResourceCountFilters>]

=item [GroupByKey => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetAggregateDiscoveredResourceCounts>

Returns: a L<Paws::Config::GetAggregateDiscoveredResourceCountsResponse> instance

Returns the resource counts across accounts and regions that are
present in your Config aggregator. You can request the resource counts
by providing filters and GroupByKey.

For example, if the input contains accountID 12345678910 and region
us-east-1 in filters, the API returns the count of resources in account
ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID
as a GroupByKey, the API returns resource counts for all source
accounts that are present in your aggregator.


=head2 GetAggregateResourceConfig

=over

=item ConfigurationAggregatorName => Str

=item ResourceIdentifier => L<Paws::Config::AggregateResourceIdentifier>


=back

Each argument is described in detail in: L<Paws::Config::GetAggregateResourceConfig>

Returns: a L<Paws::Config::GetAggregateResourceConfigResponse> instance

Returns configuration item that is aggregated for your specific
resource in a specific source account and region.

The API does not return results for deleted resources.


=head2 GetComplianceDetailsByConfigRule

=over

=item ConfigRuleName => Str

=item [ComplianceTypes => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetComplianceDetailsByConfigRule>

Returns: a L<Paws::Config::GetComplianceDetailsByConfigRuleResponse> instance

Returns the evaluation results for the specified Config rule. The
results indicate which Amazon Web Services resources were evaluated by
the rule, when each resource was last evaluated, and whether each
resource complies with the rule.


=head2 GetComplianceDetailsByResource

=over

=item [ComplianceTypes => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [ResourceEvaluationId => Str]

=item [ResourceId => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetComplianceDetailsByResource>

Returns: a L<Paws::Config::GetComplianceDetailsByResourceResponse> instance

Returns the evaluation results for the specified Amazon Web Services
resource. The results indicate which Config rules were used to evaluate
the resource, when each rule was last invoked, and whether the resource
complies with each rule.


=head2 GetComplianceSummaryByConfigRule

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Config::GetComplianceSummaryByConfigRule>

Returns: a L<Paws::Config::GetComplianceSummaryByConfigRuleResponse> instance

Returns the number of Config rules that are compliant and noncompliant,
up to a maximum of 25 for each.


=head2 GetComplianceSummaryByResourceType

=over

=item [ResourceTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::GetComplianceSummaryByResourceType>

Returns: a L<Paws::Config::GetComplianceSummaryByResourceTypeResponse> instance

Returns the number of resources that are compliant and the number that
are noncompliant. You can specify one or more resource types to get
these numbers for each resource type. The maximum number returned is
100.


=head2 GetConformancePackComplianceDetails

=over

=item ConformancePackName => Str

=item [Filters => L<Paws::Config::ConformancePackEvaluationFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetConformancePackComplianceDetails>

Returns: a L<Paws::Config::GetConformancePackComplianceDetailsResponse> instance

Returns compliance details of a conformance pack for all Amazon Web
Services resources that are monitered by conformance pack.


=head2 GetConformancePackComplianceSummary

=over

=item ConformancePackNames => ArrayRef[Str|Undef]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetConformancePackComplianceSummary>

Returns: a L<Paws::Config::GetConformancePackComplianceSummaryResponse> instance

Returns compliance details for the conformance pack based on the
cumulative compliance results of all the rules in that conformance
pack.


=head2 GetCustomRulePolicy

=over

=item [ConfigRuleName => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetCustomRulePolicy>

Returns: a L<Paws::Config::GetCustomRulePolicyResponse> instance

Returns the policy definition containing the logic for your Config
Custom Policy rule.


=head2 GetDiscoveredResourceCounts

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::GetDiscoveredResourceCounts>

Returns: a L<Paws::Config::GetDiscoveredResourceCountsResponse> instance

Returns the resource types, the number of each resource type, and the
total number of resources that Config is recording in this region for
your Amazon Web Services account.

B<Example>

=over

=item 1.

Config is recording three resource types in the US East (Ohio) Region
for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.

=item 2.

You make a call to the C<GetDiscoveredResourceCounts> action and
specify that you want all resource types.

=item 3.

Config returns the following:

=over

=item *

The resource types (EC2 instances, IAM users, and S3 buckets).

=item *

The number of each resource type (25, 20, and 15).

=item *

The total number of all resources (60).

=back

=back

The response is paginated. By default, Config lists 100 ResourceCount
objects on each page. You can customize this number with the C<limit>
parameter. The response includes a C<nextToken> string. To get the next
page of results, run the request again and specify the string for the
C<nextToken> parameter.

If you make a call to the GetDiscoveredResourceCounts action, you might
not immediately receive resource counts in the following situations:

=over

=item *

You are a new Config customer.

=item *

You just enabled resource recording.

=back

It might take a few minutes for Config to record and count your
resources. Wait a few minutes and then retry the
GetDiscoveredResourceCounts action.


=head2 GetOrganizationConfigRuleDetailedStatus

=over

=item OrganizationConfigRuleName => Str

=item [Filters => L<Paws::Config::StatusDetailFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetOrganizationConfigRuleDetailedStatus>

Returns: a L<Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse> instance

Returns detailed status for each member account within an organization
for a given organization Config rule.


=head2 GetOrganizationConformancePackDetailedStatus

=over

=item OrganizationConformancePackName => Str

=item [Filters => L<Paws::Config::OrganizationResourceDetailedStatusFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetOrganizationConformancePackDetailedStatus>

Returns: a L<Paws::Config::GetOrganizationConformancePackDetailedStatusResponse> instance

Returns detailed status for each member account within an organization
for a given organization conformance pack.


=head2 GetOrganizationCustomRulePolicy

=over

=item OrganizationConfigRuleName => Str


=back

Each argument is described in detail in: L<Paws::Config::GetOrganizationCustomRulePolicy>

Returns: a L<Paws::Config::GetOrganizationCustomRulePolicyResponse> instance

Returns the policy definition containing the logic for your
organization Config Custom Policy rule.


=head2 GetResourceConfigHistory

=over

=item ResourceId => Str

=item ResourceType => Str

=item [ChronologicalOrder => Str]

=item [EarlierTime => Str]

=item [LaterTime => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::GetResourceConfigHistory>

Returns: a L<Paws::Config::GetResourceConfigHistoryResponse> instance

For accurate reporting on the compliance status, you must record the
C<AWS::Config::ResourceCompliance> resource type. For more information,
see Selecting Which Resources Config Records
(https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).

Returns a list of C<ConfigurationItems> for the specified resource. The
list contains details about each state of the resource during the
specified time interval. If you specified a retention period to retain
your C<ConfigurationItems> between a minimum of 30 days and a maximum
of 7 years (2557 days), Config returns the C<ConfigurationItems> for
the specified retention period.

The response is paginated. By default, Config returns a limit of 10
configuration items per page. You can customize this number with the
C<limit> parameter. The response includes a C<nextToken> string. To get
the next page of results, run the request again and specify the string
for the C<nextToken> parameter.

Each call to the API is limited to span a duration of seven days. It is
likely that the number of records returned is smaller than the
specified C<limit>. In such cases, you can make another call, using the
C<nextToken>.


=head2 GetResourceEvaluationSummary

=over

=item ResourceEvaluationId => Str


=back

Each argument is described in detail in: L<Paws::Config::GetResourceEvaluationSummary>

Returns: a L<Paws::Config::GetResourceEvaluationSummaryResponse> instance

Returns a summary of resource evaluation for the specified resource
evaluation ID from the proactive rules that were run. The results
indicate which evaluation context was used to evaluate the rules, which
resource details were evaluated, the evaluation mode that was run, and
whether the resource details comply with the configuration of the
proactive rules.

To see additional information about the evaluation result, such as
which rule flagged a resource as NON_COMPLIANT, use the
GetComplianceDetailsByResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html)
API. For more information, see the Examples
(https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples)
section.


=head2 GetStoredQuery

=over

=item QueryName => Str


=back

Each argument is described in detail in: L<Paws::Config::GetStoredQuery>

Returns: a L<Paws::Config::GetStoredQueryResponse> instance

Returns the details of a specific stored query.


=head2 ListAggregateDiscoveredResources

=over

=item ConfigurationAggregatorName => Str

=item ResourceType => Str

=item [Filters => L<Paws::Config::ResourceFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListAggregateDiscoveredResources>

Returns: a L<Paws::Config::ListAggregateDiscoveredResourcesResponse> instance

Accepts a resource type and returns a list of resource identifiers that
are aggregated for a specific resource type across accounts and
regions. A resource identifier includes the resource type, ID, (if
available) the custom resource name, source account, and source region.
You can narrow the results to include only resources that have specific
resource IDs, or a resource name, or source account ID, or source
region.

For example, if the input consists of accountID 12345678910 and the
region is us-east-1 for resource type C<AWS::EC2::Instance> then the
API returns all the EC2 instance identifiers of accountID 12345678910
and region us-east-1.


=head2 ListConfigurationRecorders

=over

=item [Filters => ArrayRef[L<Paws::Config::ConfigurationRecorderFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListConfigurationRecorders>

Returns: a L<Paws::Config::ListConfigurationRecordersResponse> instance

Returns a list of configuration recorders depending on the filters you
specify.


=head2 ListConformancePackComplianceScores

=over

=item [Filters => L<Paws::Config::ConformancePackComplianceScoresFilters>]

=item [Limit => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListConformancePackComplianceScores>

Returns: a L<Paws::Config::ListConformancePackComplianceScoresResponse> instance

Returns a list of conformance pack compliance scores. A compliance
score is the percentage of the number of compliant rule-resource
combinations in a conformance pack compared to the number of total
possible rule-resource combinations in the conformance pack. This
metric provides you with a high-level view of the compliance state of
your conformance packs. You can use it to identify, investigate, and
understand the level of compliance in your conformance packs.

Conformance packs with no evaluation results will have a compliance
score of C<INSUFFICIENT_DATA>.


=head2 ListDiscoveredResources

=over

=item ResourceType => Str

=item [IncludeDeletedResources => Bool]

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceIds => ArrayRef[Str|Undef]]

=item [ResourceName => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListDiscoveredResources>

Returns: a L<Paws::Config::ListDiscoveredResourcesResponse> instance

Accepts a resource type and returns a list of resource identifiers for
the resources of that type. A resource identifier includes the resource
type, ID, and (if available) the custom resource name. The results
consist of resources that Config has discovered, including those that
Config is not currently recording. You can narrow the results to
include only resources that have specific resource IDs or a resource
name.

You can specify either resource IDs or a resource name, but not both,
in the same request.

The response is paginated. By default, Config lists 100 resource
identifiers on each page. You can customize this number with the
C<limit> parameter. The response includes a C<nextToken> string. To get
the next page of results, run the request again and specify the string
for the C<nextToken> parameter.


=head2 ListResourceEvaluations

=over

=item [Filters => L<Paws::Config::ResourceEvaluationFilters>]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListResourceEvaluations>

Returns: a L<Paws::Config::ListResourceEvaluationsResponse> instance

Returns a list of proactive resource evaluations.


=head2 ListStoredQueries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListStoredQueries>

Returns: a L<Paws::Config::ListStoredQueriesResponse> instance

Lists the stored queries for a single Amazon Web Services account and a
single Amazon Web Services Region. The default is 100.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::ListTagsForResource>

Returns: a L<Paws::Config::ListTagsForResourceResponse> instance

List the tags for Config resource.


=head2 PutAggregationAuthorization

=over

=item AuthorizedAccountId => Str

=item AuthorizedAwsRegion => Str

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutAggregationAuthorization>

Returns: a L<Paws::Config::PutAggregationAuthorizationResponse> instance

Authorizes the aggregator account and region to collect data from the
source account and region.

B<Tags are added at creation and cannot be updated with this operation>

C<PutAggregationAuthorization> is an idempotent API. Subsequent
requests wonE<rsquo>t create a duplicate resource if one was already
created. If a following request has different C<tags> values, Config
will ignore these differences and treat it as an idempotent request of
the previous. In this case, C<tags> will not be updated, even if they
are different.

Use TagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
to update tags after creation.


=head2 PutConfigRule

=over

=item ConfigRule => L<Paws::Config::ConfigRule>

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutConfigRule>

Returns: nothing

Adds or updates an Config rule to evaluate if your Amazon Web Services
resources comply with your desired configurations. For information on
how many Config rules you can have per account, see B<Service Limits>
(https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the I<Config Developer Guide>.

There are two types of rules: I<Config Managed Rules> and I<Config
Custom Rules>. You can use C<PutConfigRule> to create both Config
Managed Rules and Config Custom Rules.

Config Managed Rules are predefined, customizable rules created by
Config. For a list of managed rules, see List of Config Managed Rules
(https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
If you are adding an Config managed rule, you must specify the rule's
identifier for the C<SourceIdentifier> key.

Config Custom Rules are rules that you create from scratch. There are
two ways to create Config custom rules: with Lambda functions ( Lambda
Developer Guide
(https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function))
and with Guard (Guard GitHub Repository
(https://github.com/aws-cloudformation/cloudformation-guard)), a
policy-as-code language. Config custom rules created with Lambda are
called I<Config Custom Lambda Rules> and Config custom rules created
with Guard are called I<Config Custom Policy Rules>.

If you are adding a new Config Custom Lambda rule, you first need to
create an Lambda function that the rule invokes to evaluate your
resources. When you use C<PutConfigRule> to add a Custom Lambda rule to
Config, you must specify the Amazon Resource Name (ARN) that Lambda
assigns to the function. You specify the ARN in the C<SourceIdentifier>
key. This key is part of the C<Source> object, which is part of the
C<ConfigRule> object.

For any new Config rule that you add, specify the C<ConfigRuleName> in
the C<ConfigRule> object. Do not specify the C<ConfigRuleArn> or the
C<ConfigRuleId>. These values are generated by Config for new rules.

If you are updating a rule that you added previously, you can specify
the rule by C<ConfigRuleName>, C<ConfigRuleId>, or C<ConfigRuleArn> in
the C<ConfigRule> data type that you use in this request.

For more information about developing and using Config rules, see
Evaluating Resources with Config Rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
in the I<Config Developer Guide>.

B<Tags are added at creation and cannot be updated with this operation>

C<PutConfigRule> is an idempotent API. Subsequent requests wonE<rsquo>t
create a duplicate resource if one was already created. If a following
request has different C<tags> values, Config will ignore these
differences and treat it as an idempotent request of the previous. In
this case, C<tags> will not be updated, even if they are different.

Use TagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
to update tags after creation.


=head2 PutConfigurationAggregator

=over

=item ConfigurationAggregatorName => Str

=item [AccountAggregationSources => ArrayRef[L<Paws::Config::AccountAggregationSource>]]

=item [AggregatorFilters => L<Paws::Config::AggregatorFilters>]

=item [OrganizationAggregationSource => L<Paws::Config::OrganizationAggregationSource>]

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutConfigurationAggregator>

Returns: a L<Paws::Config::PutConfigurationAggregatorResponse> instance

Creates and updates the configuration aggregator with the selected
source accounts and regions. The source account can be individual
account(s) or an organization.

C<accountIds> that are passed will be replaced with existing accounts.
If you want to add additional accounts into the aggregator, call
C<DescribeConfigurationAggregators> to get the previous accounts and
then append new ones.

Config should be enabled in source accounts and regions you want to
aggregate.

If your source type is an organization, you must be signed in to the
management account or a registered delegated administrator and all the
features must be enabled in your organization. If the caller is a
management account, Config calls C<EnableAwsServiceAccess> API to
enable integration between Config and Organizations. If the caller is a
registered delegated administrator, Config calls
C<ListDelegatedAdministrators> API to verify whether the caller is a
valid delegated administrator.

To register a delegated administrator, see Register a Delegated
Administrator
(https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli)
in the I<Config developer guide>.

B<Tags are added at creation and cannot be updated with this operation>

C<PutConfigurationAggregator> is an idempotent API. Subsequent requests
wonE<rsquo>t create a duplicate resource if one was already created. If
a following request has different C<tags> values, Config will ignore
these differences and treat it as an idempotent request of the
previous. In this case, C<tags> will not be updated, even if they are
different.

Use TagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
to update tags after creation.


=head2 PutConfigurationRecorder

=over

=item ConfigurationRecorder => L<Paws::Config::ConfigurationRecorder>

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutConfigurationRecorder>

Returns: nothing

Creates or updates the customer managed configuration recorder.

You can use this operation to create a new customer managed
configuration recorder or to update the C<roleARN> and the
C<recordingGroup> for an existing customer managed configuration
recorder.

To start the customer managed configuration recorder and begin
recording configuration changes for the resource types you specify, use
the StartConfigurationRecorder
(https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html)
operation.

For more information, see B<Working with the Configuration Recorder>
(https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
in the I<Config Developer Guide>.

B<One customer managed configuration recorder per account per Region>

You can create only one customer managed configuration recorder for
each account for each Amazon Web Services Region.

B<Default is to record all supported resource types, excluding the
global IAM resource types>

If you have not specified values for the C<recordingGroup> field, the
default for the customer managed configuration recorder is to record
all supported resource types, excluding the global IAM resource types:
C<AWS::IAM::Group>, C<AWS::IAM::Policy>, C<AWS::IAM::Role>, and
C<AWS::IAM::User>.

B<Tags are added at creation and cannot be updated>

C<PutConfigurationRecorder> is an idempotent API. Subsequent requests
wonE<rsquo>t create a duplicate resource if one was already created. If
a following request has different tags values, Config will ignore these
differences and treat it as an idempotent request of the previous. In
this case, tags will not be updated, even if they are different.

Use TagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
to update tags after creation.


=head2 PutConformancePack

=over

=item ConformancePackName => Str

=item [ConformancePackInputParameters => ArrayRef[L<Paws::Config::ConformancePackInputParameter>]]

=item [DeliveryS3Bucket => Str]

=item [DeliveryS3KeyPrefix => Str]

=item [TemplateBody => Str]

=item [TemplateS3Uri => Str]

=item [TemplateSSMDocumentDetails => L<Paws::Config::TemplateSSMDocumentDetails>]


=back

Each argument is described in detail in: L<Paws::Config::PutConformancePack>

Returns: a L<Paws::Config::PutConformancePackResponse> instance

Creates or updates a conformance pack. A conformance pack is a
collection of Config rules that can be easily deployed in an account
and a region and across an organization. For information on how many
conformance packs you can have per account, see B<Service Limits>
(https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the I<Config Developer Guide>.

This API creates a service-linked role
C<AWSServiceRoleForConfigConforms> in your account. The service-linked
role is created only when the role does not exist in your account.

You must specify only one of the follow parameters: C<TemplateS3Uri>,
C<TemplateBody> or C<TemplateSSMDocumentDetails>.


=head2 PutDeliveryChannel

=over

=item DeliveryChannel => L<Paws::Config::DeliveryChannel>


=back

Each argument is described in detail in: L<Paws::Config::PutDeliveryChannel>

Returns: nothing

Creates or updates a delivery channel to deliver configuration
information and other compliance information.

You can use this operation to create a new delivery channel or to
update the Amazon S3 bucket and the Amazon SNS topic of an existing
delivery channel.

For more information, see B<Working with the Delivery Channel>
(https://docs.aws.amazon.com/config/latest/developerguide/manage-delivery-channel.html)
in the I<Config Developer Guide.>

B<One delivery channel per account per Region>

You can have only one delivery channel for each account for each Amazon
Web Services Region.


=head2 PutEvaluations

=over

=item ResultToken => Str

=item [Evaluations => ArrayRef[L<Paws::Config::Evaluation>]]

=item [TestMode => Bool]


=back

Each argument is described in detail in: L<Paws::Config::PutEvaluations>

Returns: a L<Paws::Config::PutEvaluationsResponse> instance

Used by an Lambda function to deliver evaluation results to Config.
This operation is required in every Lambda function that is invoked by
an Config rule.


=head2 PutExternalEvaluation

=over

=item ConfigRuleName => Str

=item ExternalEvaluation => L<Paws::Config::ExternalEvaluation>


=back

Each argument is described in detail in: L<Paws::Config::PutExternalEvaluation>

Returns: a L<Paws::Config::PutExternalEvaluationResponse> instance

Add or updates the evaluations for process checks. This API checks if
the rule is a process check when the name of the Config rule is
provided.


=head2 PutOrganizationConfigRule

=over

=item OrganizationConfigRuleName => Str

=item [ExcludedAccounts => ArrayRef[Str|Undef]]

=item [OrganizationCustomPolicyRuleMetadata => L<Paws::Config::OrganizationCustomPolicyRuleMetadata>]

=item [OrganizationCustomRuleMetadata => L<Paws::Config::OrganizationCustomRuleMetadata>]

=item [OrganizationManagedRuleMetadata => L<Paws::Config::OrganizationManagedRuleMetadata>]


=back

Each argument is described in detail in: L<Paws::Config::PutOrganizationConfigRule>

Returns: a L<Paws::Config::PutOrganizationConfigRuleResponse> instance

Adds or updates an Config rule for your entire organization to evaluate
if your Amazon Web Services resources comply with your desired
configurations. For information on how many organization Config rules
you can have per account, see B<Service Limits>
(https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the I<Config Developer Guide>.

Only a management account and a delegated administrator can create or
update an organization Config rule. When calling this API with a
delegated administrator, you must ensure Organizations
C<ListDelegatedAdministrator> permissions are added. An organization
can have up to 3 delegated administrators.

This API enables organization service access through the
C<EnableAWSServiceAccess> action and creates a service-linked role
C<AWSServiceRoleForConfigMultiAccountSetup> in the management or
delegated administrator account of your organization. The
service-linked role is created only when the role does not exist in the
caller account. Config verifies the existence of role with C<GetRole>
action.

To use this API with delegated administrator, register a delegated
administrator by calling Amazon Web Services Organization
C<register-delegated-administrator> for
C<config-multiaccountsetup.amazonaws.com>.

There are two types of rules: I<Config Managed Rules> and I<Config
Custom Rules>. You can use C<PutOrganizationConfigRule> to create both
Config Managed Rules and Config Custom Rules.

Config Managed Rules are predefined, customizable rules created by
Config. For a list of managed rules, see List of Config Managed Rules
(https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
If you are adding an Config managed rule, you must specify the rule's
identifier for the C<RuleIdentifier> key.

Config Custom Rules are rules that you create from scratch. There are
two ways to create Config custom rules: with Lambda functions ( Lambda
Developer Guide
(https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function))
and with Guard (Guard GitHub Repository
(https://github.com/aws-cloudformation/cloudformation-guard)), a
policy-as-code language. Config custom rules created with Lambda are
called I<Config Custom Lambda Rules> and Config custom rules created
with Guard are called I<Config Custom Policy Rules>.

If you are adding a new Config Custom Lambda rule, you first need to
create an Lambda function in the management account or a delegated
administrator that the rule invokes to evaluate your resources. You
also need to create an IAM role in the managed account that can be
assumed by the Lambda function. When you use
C<PutOrganizationConfigRule> to add a Custom Lambda rule to Config, you
must specify the Amazon Resource Name (ARN) that Lambda assigns to the
function.

Prerequisite: Ensure you call C<EnableAllFeatures> API to enable all
features in an organization.

Make sure to specify one of either
C<OrganizationCustomPolicyRuleMetadata> for Custom Policy rules,
C<OrganizationCustomRuleMetadata> for Custom Lambda rules, or
C<OrganizationManagedRuleMetadata> for managed rules.


=head2 PutOrganizationConformancePack

=over

=item OrganizationConformancePackName => Str

=item [ConformancePackInputParameters => ArrayRef[L<Paws::Config::ConformancePackInputParameter>]]

=item [DeliveryS3Bucket => Str]

=item [DeliveryS3KeyPrefix => Str]

=item [ExcludedAccounts => ArrayRef[Str|Undef]]

=item [TemplateBody => Str]

=item [TemplateS3Uri => Str]


=back

Each argument is described in detail in: L<Paws::Config::PutOrganizationConformancePack>

Returns: a L<Paws::Config::PutOrganizationConformancePackResponse> instance

Deploys conformance packs across member accounts in an Amazon Web
Services Organization. For information on how many organization
conformance packs and how many Config rules you can have per account,
see B<Service Limits>
(https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the I<Config Developer Guide>.

Only a management account and a delegated administrator can call this
API. When calling this API with a delegated administrator, you must
ensure Organizations C<ListDelegatedAdministrator> permissions are
added. An organization can have up to 3 delegated administrators.

This API enables organization service access for
C<config-multiaccountsetup.amazonaws.com> through the
C<EnableAWSServiceAccess> action and creates a service-linked role
C<AWSServiceRoleForConfigMultiAccountSetup> in the management or
delegated administrator account of your organization. The
service-linked role is created only when the role does not exist in the
caller account. To use this API with delegated administrator, register
a delegated administrator by calling Amazon Web Services Organization
C<register-delegate-admin> for
C<config-multiaccountsetup.amazonaws.com>.

Prerequisite: Ensure you call C<EnableAllFeatures> API to enable all
features in an organization.

You must specify either the C<TemplateS3Uri> or the C<TemplateBody>
parameter, but not both. If you provide both Config uses the
C<TemplateS3Uri> parameter and ignores the C<TemplateBody> parameter.

Config sets the state of a conformance pack to CREATE_IN_PROGRESS and
UPDATE_IN_PROGRESS until the conformance pack is created or updated.
You cannot update a conformance pack while it is in this state.


=head2 PutRemediationConfigurations

=over

=item RemediationConfigurations => ArrayRef[L<Paws::Config::RemediationConfiguration>]


=back

Each argument is described in detail in: L<Paws::Config::PutRemediationConfigurations>

Returns: a L<Paws::Config::PutRemediationConfigurationsResponse> instance

Adds or updates the remediation configuration with a specific Config
rule with the selected target or action. The API creates the
C<RemediationConfiguration> object for the Config rule. The Config rule
must already exist for you to add a remediation configuration. The
target (SSM document) must exist and have permissions to use the
target.

B<Be aware of backward incompatible changes>

If you make backward incompatible changes to the SSM document, you must
call this again to ensure the remediations can run.

This API does not support adding remediation configurations for
service-linked Config Rules such as Organization Config rules, the
rules deployed by conformance packs, and rules deployed by Amazon Web
Services Security Hub.

B<Required fields>

For manual remediation configuration, you need to provide a value for
C<automationAssumeRole> or use a value in the C<assumeRole>field to
remediate your resources. The SSM automation document can use either as
long as it maps to a valid parameter.

However, for automatic remediation configuration, the only valid
C<assumeRole> field value is C<AutomationAssumeRole> and you need to
provide a value for C<AutomationAssumeRole> to remediate your
resources.

B<Auto remediation can be initiated even for compliant resources>

If you enable auto remediation for a specific Config rule using the
PutRemediationConfigurations
(https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html)
API or the Config console, it initiates the remediation process for all
non-compliant resources for that specific rule. The auto remediation
process relies on the compliance data snapshot which is captured on a
periodic basis. Any non-compliant resource that is updated between the
snapshot schedule will continue to be remediated based on the last
known compliance data snapshot.

This means that in some cases auto remediation can be initiated even
for compliant resources, since the bootstrap processor uses a database
that can have stale evaluation results based on the last known
compliance data snapshot.


=head2 PutRemediationExceptions

=over

=item ConfigRuleName => Str

=item ResourceKeys => ArrayRef[L<Paws::Config::RemediationExceptionResourceKey>]

=item [ExpirationTime => Str]

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::Config::PutRemediationExceptions>

Returns: a L<Paws::Config::PutRemediationExceptionsResponse> instance

A remediation exception is when a specified resource is no longer
considered for auto-remediation. This API adds a new exception or
updates an existing exception for a specified resource with a specified
Config rule.

B<Exceptions block auto remediation>

Config generates a remediation exception when a problem occurs running
a remediation action for a specified resource. Remediation exceptions
blocks auto-remediation until the exception is cleared.

B<Manual remediation is recommended when placing an exception>

When placing an exception on an Amazon Web Services resource, it is
recommended that remediation is set as manual remediation until the
given Config rule for the specified resource evaluates the resource as
C<NON_COMPLIANT>. Once the resource has been evaluated as
C<NON_COMPLIANT>, you can add remediation exceptions and change the
remediation type back from Manual to Auto if you want to use
auto-remediation. Otherwise, using auto-remediation before a
C<NON_COMPLIANT> evaluation result can delete resources before the
exception is applied.

B<Exceptions can only be performed on non-compliant resources>

Placing an exception can only be performed on resources that are
C<NON_COMPLIANT>. If you use this API for C<COMPLIANT> resources or
resources that are C<NOT_APPLICABLE>, a remediation exception will not
be generated. For more information on the conditions that initiate the
possible Config evaluation results, see Concepts | Config Rules
(https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules)
in the I<Config Developer Guide>.

B<Exceptions cannot be placed on service-linked remediation actions>

You cannot place an exception on service-linked remediation actions,
such as remediation actions put by an organizational conformance pack.

B<Auto remediation can be initiated even for compliant resources>

If you enable auto remediation for a specific Config rule using the
PutRemediationConfigurations
(https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html)
API or the Config console, it initiates the remediation process for all
non-compliant resources for that specific rule. The auto remediation
process relies on the compliance data snapshot which is captured on a
periodic basis. Any non-compliant resource that is updated between the
snapshot schedule will continue to be remediated based on the last
known compliance data snapshot.

This means that in some cases auto remediation can be initiated even
for compliant resources, since the bootstrap processor uses a database
that can have stale evaluation results based on the last known
compliance data snapshot.


=head2 PutResourceConfig

=over

=item Configuration => Str

=item ResourceId => Str

=item ResourceType => Str

=item SchemaVersionId => Str

=item [ResourceName => Str]

=item [Tags => L<Paws::Config::Tags>]


=back

Each argument is described in detail in: L<Paws::Config::PutResourceConfig>

Returns: nothing

Records the configuration state for the resource provided in the
request. The configuration state of a resource is represented in Config
as Configuration Items. Once this API records the configuration item,
you can retrieve the list of configuration items for the custom
resource type using existing Config APIs.

The custom resource type must be registered with CloudFormation. This
API accepts the configuration item registered with CloudFormation.

When you call this API, Config only stores configuration state of the
resource provided in the request. This API does not change or remediate
the configuration of the resource.

Write-only schema properites are not recorded as part of the published
configuration item.


=head2 PutRetentionConfiguration

=over

=item RetentionPeriodInDays => Int


=back

Each argument is described in detail in: L<Paws::Config::PutRetentionConfiguration>

Returns: a L<Paws::Config::PutRetentionConfigurationResponse> instance

Creates and updates the retention configuration with details about
retention period (number of days) that Config stores your historical
information. The API creates the C<RetentionConfiguration> object and
names the object as B<default>. When you have a
C<RetentionConfiguration> object named B<default>, calling the API
modifies the default object.

Currently, Config supports only one retention configuration per region
in your account.


=head2 PutServiceLinkedConfigurationRecorder

=over

=item ServicePrincipal => Str

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutServiceLinkedConfigurationRecorder>

Returns: a L<Paws::Config::PutServiceLinkedConfigurationRecorderResponse> instance

Creates a service-linked configuration recorder that is linked to a
specific Amazon Web Services service based on the C<ServicePrincipal>
you specify.

The configuration recorder's C<name>, C<recordingGroup>,
C<recordingMode>, and C<recordingScope> is set by the service that is
linked to the configuration recorder.

For more information, see B<Working with the Configuration Recorder>
(https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
in the I<Config Developer Guide>.

This API creates a service-linked role C<AWSServiceRoleForConfig> in
your account. The service-linked role is created only when the role
does not exist in your account.

B<The recording scope determines if you receive configuration items>

The recording scope is set by the service that is linked to the
configuration recorder and determines whether you receive configuration
items (CIs) in the delivery channel. If the recording scope is
internal, you will not receive CIs in the delivery channel.

B<Tags are added at creation and cannot be updated with this operation>

Use TagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
to update tags after creation.


=head2 PutStoredQuery

=over

=item StoredQuery => L<Paws::Config::StoredQuery>

=item [Tags => ArrayRef[L<Paws::Config::Tag>]]


=back

Each argument is described in detail in: L<Paws::Config::PutStoredQuery>

Returns: a L<Paws::Config::PutStoredQueryResponse> instance

Saves a new query or updates an existing saved query. The C<QueryName>
must be unique for a single Amazon Web Services account and a single
Amazon Web Services Region. You can create upto 300 queries in a single
Amazon Web Services account and a single Amazon Web Services Region.

B<Tags are added at creation and cannot be updated>

C<PutStoredQuery> is an idempotent API. Subsequent requests
wonE<rsquo>t create a duplicate resource if one was already created. If
a following request has different C<tags> values, Config will ignore
these differences and treat it as an idempotent request of the
previous. In this case, C<tags> will not be updated, even if they are
different.


=head2 SelectAggregateResourceConfig

=over

=item ConfigurationAggregatorName => Str

=item Expression => Str

=item [Limit => Int]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::SelectAggregateResourceConfig>

Returns: a L<Paws::Config::SelectAggregateResourceConfigResponse> instance

Accepts a structured query language (SQL) SELECT command and an
aggregator to query configuration state of Amazon Web Services
resources across multiple accounts and regions, performs the
corresponding search, and returns resource configurations matching the
properties.

For more information about query components, see the B<Query
Components>
(https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
section in the I<Config Developer Guide>.

If you run an aggregation query (i.e., using C<GROUP BY> or using
aggregate functions such as C<COUNT>; e.g., C<SELECT resourceId,
COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId>)
and do not specify the C<MaxResults> or the C<Limit> query parameters,
the default page size is set to 500.

If you run a non-aggregation query (i.e., not using C<GROUP BY> or
aggregate function; e.g., C<SELECT * WHERE resourceType =
'AWS::IAM::Role'>) and do not specify the C<MaxResults> or the C<Limit>
query parameters, the default page size is set to 25.


=head2 SelectResourceConfig

=over

=item Expression => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Config::SelectResourceConfig>

Returns: a L<Paws::Config::SelectResourceConfigResponse> instance

Accepts a structured query language (SQL) C<SELECT> command, performs
the corresponding search, and returns resource configurations matching
the properties.

For more information about query components, see the B<Query
Components>
(https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
section in the I<Config Developer Guide>.


=head2 StartConfigRulesEvaluation

=over

=item [ConfigRuleNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Config::StartConfigRulesEvaluation>

Returns: a L<Paws::Config::StartConfigRulesEvaluationResponse> instance

Runs an on-demand evaluation for the specified Config rules against the
last known configuration state of the resources. Use
C<StartConfigRulesEvaluation> when you want to test that a rule you
updated is working as expected. C<StartConfigRulesEvaluation> does not
re-record the latest configuration state for your resources. It re-runs
an evaluation against the last known state of your resources.

You can specify up to 25 Config rules per request.

An existing C<StartConfigRulesEvaluation> call for the specified rules
must complete before you can call the API again. If you chose to have
Config stream to an Amazon SNS topic, you will receive a
C<ConfigRuleEvaluationStarted> notification when the evaluation starts.

You don't need to call the C<StartConfigRulesEvaluation> API to run an
evaluation for a new rule. When you create a rule, Config evaluates
your resources against the rule automatically.

The C<StartConfigRulesEvaluation> API is useful if you want to run
on-demand evaluations, such as the following example:

=over

=item 1.

You have a custom rule that evaluates your IAM resources every 24
hours.

=item 2.

You update your Lambda function to add additional conditions to your
rule.

=item 3.

Instead of waiting for the next periodic evaluation, you call the
C<StartConfigRulesEvaluation> API.

=item 4.

Config invokes your Lambda function and evaluates your IAM resources.

=item 5.

Your custom rule will still run periodic evaluations every 24 hours.

=back



=head2 StartConfigurationRecorder

=over

=item ConfigurationRecorderName => Str


=back

Each argument is described in detail in: L<Paws::Config::StartConfigurationRecorder>

Returns: nothing

Starts the customer managed configuration recorder. The customer
managed configuration recorder will begin recording configuration
changes for the resource types you specify.

You must have created a delivery channel to successfully start the
customer managed configuration recorder. You can use the
PutDeliveryChannel
(https://docs.aws.amazon.com/config/latest/APIReference/API_PutDeliveryChannel.html)
operation to create a delivery channel.


=head2 StartRemediationExecution

=over

=item ConfigRuleName => Str

=item ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]


=back

Each argument is described in detail in: L<Paws::Config::StartRemediationExecution>

Returns: a L<Paws::Config::StartRemediationExecutionResponse> instance

Runs an on-demand remediation for the specified Config rules against
the last known remediation configuration. It runs an execution against
the current state of your resources. Remediation execution is
asynchronous.

You can specify up to 100 resource keys per request. An existing
StartRemediationExecution call for the specified resource keys must
complete before you can call the API again.


=head2 StartResourceEvaluation

=over

=item EvaluationMode => Str

=item ResourceDetails => L<Paws::Config::ResourceDetails>

=item [ClientToken => Str]

=item [EvaluationContext => L<Paws::Config::EvaluationContext>]

=item [EvaluationTimeout => Int]


=back

Each argument is described in detail in: L<Paws::Config::StartResourceEvaluation>

Returns: a L<Paws::Config::StartResourceEvaluationResponse> instance

Runs an on-demand evaluation for the specified resource to determine
whether the resource details will comply with configured Config rules.
You can also use it for evaluation purposes. Config recommends using an
evaluation context. It runs an execution against the resource details
with all of the Config rules in your account that match with the
specified proactive mode and resource type.

Ensure you have the C<cloudformation:DescribeType> role setup to
validate the resource type schema.

You can find the Resource type schema
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html)
in "I<Amazon Web Services public extensions>" within the CloudFormation
registry or with the following CLI commmand: C<aws cloudformation
describe-type --type-name "AWS::S3::Bucket" --type RESOURCE>.

For more information, see Managing extensions through the
CloudFormation registry
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view)
and Amazon Web Services resource and property types reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the CloudFormation User Guide.


=head2 StopConfigurationRecorder

=over

=item ConfigurationRecorderName => Str


=back

Each argument is described in detail in: L<Paws::Config::StopConfigurationRecorder>

Returns: nothing

Stops the customer managed configuration recorder. The customer managed
configuration recorder will stop recording configuration changes for
the resource types you have specified.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Config::Tag>]


=back

Each argument is described in detail in: L<Paws::Config::TagResource>

Returns: nothing

Associates the specified tags to a resource with the specified
C<ResourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. If existing tags are
specified, however, then their values will be updated. When a resource
is deleted, the tags associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Config::UntagResource>

Returns: nothing

Deletes specified tags from a resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAggregateComplianceByConfigRules(sub { },ConfigurationAggregatorName => Str, [Filters => L<Paws::Config::ConfigRuleComplianceFilters>, Limit => Int, NextToken => Str])

=head2 DescribeAllAggregateComplianceByConfigRules(ConfigurationAggregatorName => Str, [Filters => L<Paws::Config::ConfigRuleComplianceFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AggregateComplianceByConfigRules, passing the object as the first parameter, and the string 'AggregateComplianceByConfigRules' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeAggregateComplianceByConfigRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAggregateComplianceByConformancePacks(sub { },ConfigurationAggregatorName => Str, [Filters => L<Paws::Config::AggregateConformancePackComplianceFilters>, Limit => Int, NextToken => Str])

=head2 DescribeAllAggregateComplianceByConformancePacks(ConfigurationAggregatorName => Str, [Filters => L<Paws::Config::AggregateConformancePackComplianceFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AggregateComplianceByConformancePacks, passing the object as the first parameter, and the string 'AggregateComplianceByConformancePacks' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeAggregateComplianceByConformancePacksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAggregationAuthorizations(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllAggregationAuthorizations([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AggregationAuthorizations, passing the object as the first parameter, and the string 'AggregationAuthorizations' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeAggregationAuthorizationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllComplianceByConfigRule(sub { },[ComplianceTypes => ArrayRef[Str|Undef], ConfigRuleNames => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllComplianceByConfigRule([ComplianceTypes => ArrayRef[Str|Undef], ConfigRuleNames => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ComplianceByConfigRules, passing the object as the first parameter, and the string 'ComplianceByConfigRules' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeComplianceByConfigRuleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllComplianceByResource(sub { },[ComplianceTypes => ArrayRef[Str|Undef], Limit => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])

=head2 DescribeAllComplianceByResource([ComplianceTypes => ArrayRef[Str|Undef], Limit => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ComplianceByResources, passing the object as the first parameter, and the string 'ComplianceByResources' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeComplianceByResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConfigRuleEvaluationStatus(sub { },[ConfigRuleNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllConfigRuleEvaluationStatus([ConfigRuleNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigRulesEvaluationStatus, passing the object as the first parameter, and the string 'ConfigRulesEvaluationStatus' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConfigRuleEvaluationStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConfigRules(sub { },[ConfigRuleNames => ArrayRef[Str|Undef], Filters => L<Paws::Config::DescribeConfigRulesFilters>, NextToken => Str])

=head2 DescribeAllConfigRules([ConfigRuleNames => ArrayRef[Str|Undef], Filters => L<Paws::Config::DescribeConfigRulesFilters>, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigRules, passing the object as the first parameter, and the string 'ConfigRules' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConfigRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConfigurationAggregators(sub { },[ConfigurationAggregatorNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllConfigurationAggregators([ConfigurationAggregatorNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationAggregators, passing the object as the first parameter, and the string 'ConfigurationAggregators' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConfigurationAggregatorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConfigurationAggregatorSourcesStatus(sub { },ConfigurationAggregatorName => Str, [Limit => Int, NextToken => Str, UpdateStatus => ArrayRef[Str|Undef]])

=head2 DescribeAllConfigurationAggregatorSourcesStatus(ConfigurationAggregatorName => Str, [Limit => Int, NextToken => Str, UpdateStatus => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AggregatedSourceStatusList, passing the object as the first parameter, and the string 'AggregatedSourceStatusList' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConformancePacks(sub { },[ConformancePackNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllConformancePacks([ConformancePackNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConformancePackDetails, passing the object as the first parameter, and the string 'ConformancePackDetails' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConformancePacksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConformancePackStatus(sub { },[ConformancePackNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllConformancePackStatus([ConformancePackNames => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConformancePackStatusDetails, passing the object as the first parameter, and the string 'ConformancePackStatusDetails' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeConformancePackStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrganizationConfigRules(sub { },[Limit => Int, NextToken => Str, OrganizationConfigRuleNames => ArrayRef[Str|Undef]])

=head2 DescribeAllOrganizationConfigRules([Limit => Int, NextToken => Str, OrganizationConfigRuleNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConfigRules, passing the object as the first parameter, and the string 'OrganizationConfigRules' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeOrganizationConfigRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrganizationConfigRuleStatuses(sub { },[Limit => Int, NextToken => Str, OrganizationConfigRuleNames => ArrayRef[Str|Undef]])

=head2 DescribeAllOrganizationConfigRuleStatuses([Limit => Int, NextToken => Str, OrganizationConfigRuleNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConfigRuleStatuses, passing the object as the first parameter, and the string 'OrganizationConfigRuleStatuses' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeOrganizationConfigRuleStatusesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrganizationConformancePacks(sub { },[Limit => Int, NextToken => Str, OrganizationConformancePackNames => ArrayRef[Str|Undef]])

=head2 DescribeAllOrganizationConformancePacks([Limit => Int, NextToken => Str, OrganizationConformancePackNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConformancePacks, passing the object as the first parameter, and the string 'OrganizationConformancePacks' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeOrganizationConformancePacksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrganizationConformancePackStatuses(sub { },[Limit => Int, NextToken => Str, OrganizationConformancePackNames => ArrayRef[Str|Undef]])

=head2 DescribeAllOrganizationConformancePackStatuses([Limit => Int, NextToken => Str, OrganizationConformancePackNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConformancePackStatuses, passing the object as the first parameter, and the string 'OrganizationConformancePackStatuses' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeOrganizationConformancePackStatusesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPendingAggregationRequests(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllPendingAggregationRequests([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PendingAggregationRequests, passing the object as the first parameter, and the string 'PendingAggregationRequests' as the second parameter 

If not, it will return a a L<Paws::Config::DescribePendingAggregationRequestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRemediationExecutionStatus(sub { },ConfigRuleName => Str, [Limit => Int, NextToken => Str, ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]])

=head2 DescribeAllRemediationExecutionStatus(ConfigRuleName => Str, [Limit => Int, NextToken => Str, ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RemediationExecutionStatuses, passing the object as the first parameter, and the string 'RemediationExecutionStatuses' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeRemediationExecutionStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRetentionConfigurations(sub { },[NextToken => Str, RetentionConfigurationNames => ArrayRef[Str|Undef]])

=head2 DescribeAllRetentionConfigurations([NextToken => Str, RetentionConfigurationNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RetentionConfigurations, passing the object as the first parameter, and the string 'RetentionConfigurations' as the second parameter 

If not, it will return a a L<Paws::Config::DescribeRetentionConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAggregateComplianceDetailsByConfigRule(sub { },AccountId => Str, AwsRegion => Str, ConfigRuleName => Str, ConfigurationAggregatorName => Str, [ComplianceType => Str, Limit => Int, NextToken => Str])

=head2 GetAllAggregateComplianceDetailsByConfigRule(AccountId => Str, AwsRegion => Str, ConfigRuleName => Str, ConfigurationAggregatorName => Str, [ComplianceType => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AggregateEvaluationResults, passing the object as the first parameter, and the string 'AggregateEvaluationResults' as the second parameter 

If not, it will return a a L<Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllComplianceDetailsByConfigRule(sub { },ConfigRuleName => Str, [ComplianceTypes => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 GetAllComplianceDetailsByConfigRule(ConfigRuleName => Str, [ComplianceTypes => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EvaluationResults, passing the object as the first parameter, and the string 'EvaluationResults' as the second parameter 

If not, it will return a a L<Paws::Config::GetComplianceDetailsByConfigRuleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllComplianceDetailsByResource(sub { },[ComplianceTypes => ArrayRef[Str|Undef], NextToken => Str, ResourceEvaluationId => Str, ResourceId => Str, ResourceType => Str])

=head2 GetAllComplianceDetailsByResource([ComplianceTypes => ArrayRef[Str|Undef], NextToken => Str, ResourceEvaluationId => Str, ResourceId => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EvaluationResults, passing the object as the first parameter, and the string 'EvaluationResults' as the second parameter 

If not, it will return a a L<Paws::Config::GetComplianceDetailsByResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConformancePackComplianceSummary(sub { },ConformancePackNames => ArrayRef[Str|Undef], [Limit => Int, NextToken => Str])

=head2 GetAllConformancePackComplianceSummary(ConformancePackNames => ArrayRef[Str|Undef], [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConformancePackComplianceSummaryList, passing the object as the first parameter, and the string 'ConformancePackComplianceSummaryList' as the second parameter 

If not, it will return a a L<Paws::Config::GetConformancePackComplianceSummaryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllOrganizationConfigRuleDetailedStatus(sub { },OrganizationConfigRuleName => Str, [Filters => L<Paws::Config::StatusDetailFilters>, Limit => Int, NextToken => Str])

=head2 GetAllOrganizationConfigRuleDetailedStatus(OrganizationConfigRuleName => Str, [Filters => L<Paws::Config::StatusDetailFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConfigRuleDetailedStatus, passing the object as the first parameter, and the string 'OrganizationConfigRuleDetailedStatus' as the second parameter 

If not, it will return a a L<Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllOrganizationConformancePackDetailedStatus(sub { },OrganizationConformancePackName => Str, [Filters => L<Paws::Config::OrganizationResourceDetailedStatusFilters>, Limit => Int, NextToken => Str])

=head2 GetAllOrganizationConformancePackDetailedStatus(OrganizationConformancePackName => Str, [Filters => L<Paws::Config::OrganizationResourceDetailedStatusFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationConformancePackDetailedStatuses, passing the object as the first parameter, and the string 'OrganizationConformancePackDetailedStatuses' as the second parameter 

If not, it will return a a L<Paws::Config::GetOrganizationConformancePackDetailedStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourceConfigHistory(sub { },ResourceId => Str, ResourceType => Str, [ChronologicalOrder => Str, EarlierTime => Str, LaterTime => Str, Limit => Int, NextToken => Str])

=head2 GetAllResourceConfigHistory(ResourceId => Str, ResourceType => Str, [ChronologicalOrder => Str, EarlierTime => Str, LaterTime => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configurationItems, passing the object as the first parameter, and the string 'configurationItems' as the second parameter 

If not, it will return a a L<Paws::Config::GetResourceConfigHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAggregateDiscoveredResources(sub { },ConfigurationAggregatorName => Str, ResourceType => Str, [Filters => L<Paws::Config::ResourceFilters>, Limit => Int, NextToken => Str])

=head2 ListAllAggregateDiscoveredResources(ConfigurationAggregatorName => Str, ResourceType => Str, [Filters => L<Paws::Config::ResourceFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceIdentifiers, passing the object as the first parameter, and the string 'ResourceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::Config::ListAggregateDiscoveredResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationRecorders(sub { },[Filters => ArrayRef[L<Paws::Config::ConfigurationRecorderFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurationRecorders([Filters => ArrayRef[L<Paws::Config::ConfigurationRecorderFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationRecorderSummaries, passing the object as the first parameter, and the string 'ConfigurationRecorderSummaries' as the second parameter 

If not, it will return a a L<Paws::Config::ListConfigurationRecordersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDiscoveredResources(sub { },ResourceType => Str, [IncludeDeletedResources => Bool, Limit => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ResourceName => Str])

=head2 ListAllDiscoveredResources(ResourceType => Str, [IncludeDeletedResources => Bool, Limit => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ResourceName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceIdentifiers, passing the object as the first parameter, and the string 'resourceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::Config::ListDiscoveredResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceEvaluations(sub { },[Filters => L<Paws::Config::ResourceEvaluationFilters>, Limit => Int, NextToken => Str])

=head2 ListAllResourceEvaluations([Filters => L<Paws::Config::ResourceEvaluationFilters>, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceEvaluations, passing the object as the first parameter, and the string 'ResourceEvaluations' as the second parameter 

If not, it will return a a L<Paws::Config::ListResourceEvaluationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [Limit => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Config::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SelectAllAggregateResourceConfig(sub { },ConfigurationAggregatorName => Str, Expression => Str, [Limit => Int, MaxResults => Int, NextToken => Str])

=head2 SelectAllAggregateResourceConfig(ConfigurationAggregatorName => Str, Expression => Str, [Limit => Int, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::Config::SelectAggregateResourceConfigResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SelectAllResourceConfig(sub { },Expression => Str, [Limit => Int, NextToken => Str])

=head2 SelectAllResourceConfig(Expression => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::Config::SelectResourceConfigResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

