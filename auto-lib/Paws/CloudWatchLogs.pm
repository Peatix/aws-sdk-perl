package Paws::CloudWatchLogs;
  use Moose;
  sub service { 'logs' }
  sub signing_name { 'logs' }
  sub version { '2014-03-28' }
  sub target_prefix { 'Logs_20140328' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateKmsKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::AssociateKmsKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDelivery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateDelivery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateLogAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateLogStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteAccountPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataProtectionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDataProtectionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDelivery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDelivery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDeliveryDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryDestinationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDeliveryDestinationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliverySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDeliverySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndexPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteIndexPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteLogAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteLogStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteQueryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteSubscriptionFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeAccountPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeDeliveries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeDeliveryDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliverySources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeDeliverySources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFieldIndexes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeFieldIndexes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndexPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeIndexPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLogGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeLogGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLogStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeLogStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeMetricFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQueryDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeQueryDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscriptionFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeSubscriptionFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateKmsKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DisassociateKmsKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FilterLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::FilterLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataProtectionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetDataProtectionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDelivery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetDelivery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeliveryDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetDeliveryDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeliveryDestinationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetDeliveryDestinationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeliverySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetDeliverySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetLogAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogGroupFields {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetLogGroupFields', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetLogRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetQueryResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnomalies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListAnomalies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogAnomalyDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListLogAnomalyDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListLogGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogGroupsForQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListLogGroupsForQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListTagsLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutAccountPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataProtectionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDataProtectionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliveryDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDeliveryDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliveryDestinationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDeliveryDestinationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliverySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDeliverySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDestinationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDestinationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIndexPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutIndexPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutQueryDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutQueryDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSubscriptionFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutSubscriptionFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLiveTail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::StartLiveTail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::StartQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::StopQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TagLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TestMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TestTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UntagLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnomaly {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UpdateAnomaly', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeliveryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UpdateDeliveryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLogAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UpdateLogAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->configurationTemplates }, @{ $next_result->configurationTemplates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configurationTemplates') foreach (@{ $result->configurationTemplates });
        $result = $self->DescribeConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configurationTemplates') foreach (@{ $result->configurationTemplates });
    }

    return undef
  }
  sub DescribeAllDeliveries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDeliveries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDeliveries(@_, nextToken => $next_result->nextToken);
        push @{ $result->deliveries }, @{ $next_result->deliveries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deliveries') foreach (@{ $result->deliveries });
        $result = $self->DescribeDeliveries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deliveries') foreach (@{ $result->deliveries });
    }

    return undef
  }
  sub DescribeAllDeliveryDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDeliveryDestinations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDeliveryDestinations(@_, nextToken => $next_result->nextToken);
        push @{ $result->deliveryDestinations }, @{ $next_result->deliveryDestinations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deliveryDestinations') foreach (@{ $result->deliveryDestinations });
        $result = $self->DescribeDeliveryDestinations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deliveryDestinations') foreach (@{ $result->deliveryDestinations });
    }

    return undef
  }
  sub DescribeAllDeliverySources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDeliverySources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDeliverySources(@_, nextToken => $next_result->nextToken);
        push @{ $result->deliverySources }, @{ $next_result->deliverySources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deliverySources') foreach (@{ $result->deliverySources });
        $result = $self->DescribeDeliverySources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deliverySources') foreach (@{ $result->deliverySources });
    }

    return undef
  }
  sub DescribeAllDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDestinations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDestinations(@_, nextToken => $next_result->nextToken);
        push @{ $result->destinations }, @{ $next_result->destinations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'destinations') foreach (@{ $result->destinations });
        $result = $self->DescribeDestinations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'destinations') foreach (@{ $result->destinations });
    }

    return undef
  }
  sub DescribeAllExportTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeExportTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->exportTasks }, @{ $next_result->exportTasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exportTasks') foreach (@{ $result->exportTasks });
        $result = $self->DescribeExportTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exportTasks') foreach (@{ $result->exportTasks });
    }

    return undef
  }
  sub DescribeAllLogGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLogGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeLogGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->logGroups }, @{ $next_result->logGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'logGroups') foreach (@{ $result->logGroups });
        $result = $self->DescribeLogGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'logGroups') foreach (@{ $result->logGroups });
    }

    return undef
  }
  sub DescribeAllLogStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLogStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeLogStreams(@_, nextToken => $next_result->nextToken);
        push @{ $result->logStreams }, @{ $next_result->logStreams };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'logStreams') foreach (@{ $result->logStreams });
        $result = $self->DescribeLogStreams(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'logStreams') foreach (@{ $result->logStreams });
    }

    return undef
  }
  sub DescribeAllMetricFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMetricFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeMetricFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->metricFilters }, @{ $next_result->metricFilters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'metricFilters') foreach (@{ $result->metricFilters });
        $result = $self->DescribeMetricFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'metricFilters') foreach (@{ $result->metricFilters });
    }

    return undef
  }
  sub DescribeAllQueries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeQueries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeQueries(@_, nextToken => $next_result->nextToken);
        push @{ $result->queries }, @{ $next_result->queries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'queries') foreach (@{ $result->queries });
        $result = $self->DescribeQueries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'queries') foreach (@{ $result->queries });
    }

    return undef
  }
  sub DescribeAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeResourcePolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourcePolicies }, @{ $next_result->resourcePolicies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourcePolicies') foreach (@{ $result->resourcePolicies });
        $result = $self->DescribeResourcePolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourcePolicies') foreach (@{ $result->resourcePolicies });
    }

    return undef
  }
  sub DescribeAllSubscriptionFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubscriptionFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeSubscriptionFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->subscriptionFilters }, @{ $next_result->subscriptionFilters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subscriptionFilters') foreach (@{ $result->subscriptionFilters });
        $result = $self->DescribeSubscriptionFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subscriptionFilters') foreach (@{ $result->subscriptionFilters });
    }

    return undef
  }
  sub FilterAllLogEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->FilterLogEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->FilterLogEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
        push @{ $result->searchedLogStreams }, @{ $next_result->searchedLogStreams };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $callback->($_ => 'searchedLogStreams') foreach (@{ $result->searchedLogStreams });
        $result = $self->FilterLogEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
      $callback->($_ => 'searchedLogStreams') foreach (@{ $result->searchedLogStreams });
    }

    return undef
  }
  sub ListAllAnomalies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnomalies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnomalies(@_, nextToken => $next_result->nextToken);
        push @{ $result->anomalies }, @{ $next_result->anomalies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'anomalies') foreach (@{ $result->anomalies });
        $result = $self->ListAnomalies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'anomalies') foreach (@{ $result->anomalies });
    }

    return undef
  }
  sub ListAllLogAnomalyDetectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLogAnomalyDetectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLogAnomalyDetectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->anomalyDetectors }, @{ $next_result->anomalyDetectors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'anomalyDetectors') foreach (@{ $result->anomalyDetectors });
        $result = $self->ListLogAnomalyDetectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'anomalyDetectors') foreach (@{ $result->anomalyDetectors });
    }

    return undef
  }
  sub ListAllLogGroupsForQuery {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLogGroupsForQuery(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLogGroupsForQuery(@_, nextToken => $next_result->nextToken);
        push @{ $result->logGroupIdentifiers }, @{ $next_result->logGroupIdentifiers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'logGroupIdentifiers') foreach (@{ $result->logGroupIdentifiers });
        $result = $self->ListLogGroupsForQuery(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'logGroupIdentifiers') foreach (@{ $result->logGroupIdentifiers });
    }

    return undef
  }


  sub operations { qw/AssociateKmsKey CancelExportTask CreateDelivery CreateExportTask CreateLogAnomalyDetector CreateLogGroup CreateLogStream DeleteAccountPolicy DeleteDataProtectionPolicy DeleteDelivery DeleteDeliveryDestination DeleteDeliveryDestinationPolicy DeleteDeliverySource DeleteDestination DeleteIndexPolicy DeleteIntegration DeleteLogAnomalyDetector DeleteLogGroup DeleteLogStream DeleteMetricFilter DeleteQueryDefinition DeleteResourcePolicy DeleteRetentionPolicy DeleteSubscriptionFilter DeleteTransformer DescribeAccountPolicies DescribeConfigurationTemplates DescribeDeliveries DescribeDeliveryDestinations DescribeDeliverySources DescribeDestinations DescribeExportTasks DescribeFieldIndexes DescribeIndexPolicies DescribeLogGroups DescribeLogStreams DescribeMetricFilters DescribeQueries DescribeQueryDefinitions DescribeResourcePolicies DescribeSubscriptionFilters DisassociateKmsKey FilterLogEvents GetDataProtectionPolicy GetDelivery GetDeliveryDestination GetDeliveryDestinationPolicy GetDeliverySource GetIntegration GetLogAnomalyDetector GetLogEvents GetLogGroupFields GetLogRecord GetQueryResults GetTransformer ListAnomalies ListIntegrations ListLogAnomalyDetectors ListLogGroups ListLogGroupsForQuery ListTagsForResource ListTagsLogGroup PutAccountPolicy PutDataProtectionPolicy PutDeliveryDestination PutDeliveryDestinationPolicy PutDeliverySource PutDestination PutDestinationPolicy PutIndexPolicy PutIntegration PutLogEvents PutMetricFilter PutQueryDefinition PutResourcePolicy PutRetentionPolicy PutSubscriptionFilter PutTransformer StartLiveTail StartQuery StopQuery TagLogGroup TagResource TestMetricFilter TestTransformer UntagLogGroup UntagResource UpdateAnomaly UpdateDeliveryConfiguration UpdateLogAnomalyDetector / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs - Perl Interface to AWS Amazon CloudWatch Logs

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudWatchLogs');
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

You can use Amazon CloudWatch Logs to monitor, store, and access your
log files from EC2 instances, CloudTrail, and other sources. You can
then retrieve the associated log data from CloudWatch Logs using the
CloudWatch console. Alternatively, you can use CloudWatch Logs commands
in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs
SDK.

You can use CloudWatch Logs to:

=over

=item *

B<Monitor logs from EC2 instances in real time>: You can use CloudWatch
Logs to monitor applications and systems using log data. For example,
CloudWatch Logs can track the number of errors that occur in your
application logs. Then, it can send you a notification whenever the
rate of errors exceeds a threshold that you specify. CloudWatch Logs
uses your log data for monitoring so no code changes are required. For
example, you can monitor application logs for specific literal terms
(such as "NullReferenceException"). You can also count the number of
occurrences of a literal term at a particular position in log data
(such as "404" status codes in an Apache access log). When the term you
are searching for is found, CloudWatch Logs reports the data to a
CloudWatch metric that you specify.

=item *

B<Monitor CloudTrail logged events>: You can create alarms in
CloudWatch and receive notifications of particular API activity as
captured by CloudTrail. You can use the notification to perform
troubleshooting.

=item *

B<Archive log data>: You can use CloudWatch Logs to store your log data
in highly durable storage. You can change the log retention setting so
that any log events earlier than this setting are automatically
deleted. The CloudWatch Logs agent helps to quickly send both rotated
and non-rotated log data off of a host and into the log service. You
can then access the raw log data when you need it.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateKmsKey

=over

=item KmsKeyId => Str

=item [LogGroupName => Str]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::AssociateKmsKey>

Returns: nothing

Associates the specified KMS key with either one log group in the
account, or with all stored CloudWatch Logs query insights results in
the account.

When you use C<AssociateKmsKey>, you specify either the C<logGroupName>
parameter or the C<resourceIdentifier> parameter. You can't specify
both of those parameters in the same operation.

=over

=item *

Specify the C<logGroupName> parameter to cause log events ingested into
that log group to be encrypted with that key. Only the log events
ingested after the key is associated are encrypted with that key.

Associating a KMS key with a log group overrides any existing
associations between the log group and a KMS key. After a KMS key is
associated with a log group, all newly ingested data for the log group
is encrypted using the KMS key. This association is stored as long as
the data encrypted with the KMS key is still within CloudWatch Logs.
This enables CloudWatch Logs to decrypt this data whenever it is
requested.

Associating a key with a log group does not cause the results of
queries of that log group to be encrypted with that key. To have query
results encrypted with a KMS key, you must use an C<AssociateKmsKey>
operation with the C<resourceIdentifier> parameter that specifies a
C<query-result> resource.

=item *

Specify the C<resourceIdentifier> parameter with a C<query-result>
resource, to use that key to encrypt the stored results of all future
StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html)
operations in the account. The response from a GetQueryResults
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html)
operation will still return the query results in plain text.

Even if you have not associated a key with your query results, the
query results are encrypted when stored, using the default CloudWatch
Logs method.

If you run a query from a monitoring account that queries logs in a
source account, the query results key from the monitoring account, if
any, is used.

=back

If you delete the key that is used to encrypt log events or log group
query results, then all the associated stored log events or query
results that were encrypted with that key will be unencryptable and
unusable.

CloudWatch Logs supports only symmetric KMS keys. Do not associate an
asymmetric KMS key with your log group or query results. For more
information, see Using Symmetric and Asymmetric Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).

It can take up to 5 minutes for this operation to take effect.

If you attempt to associate a KMS key with a log group but the KMS key
does not exist or the KMS key is disabled, you receive an
C<InvalidParameterException> error.


=head2 CancelExportTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CancelExportTask>

Returns: nothing

Cancels the specified export task.

The task must be in the C<PENDING> or C<RUNNING> state.


=head2 CreateDelivery

=over

=item DeliveryDestinationArn => Str

=item DeliverySourceName => Str

=item [FieldDelimiter => Str]

=item [RecordFields => ArrayRef[Str|Undef]]

=item [S3DeliveryConfiguration => L<Paws::CloudWatchLogs::S3DeliveryConfiguration>]

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateDelivery>

Returns: a L<Paws::CloudWatchLogs::CreateDeliveryResponse> instance

Creates a I<delivery>. A delivery is a connection between a logical
I<delivery source> and a logical I<delivery destination> that you have
already created.

Only some Amazon Web Services services support being configured as a
delivery source using this operation. These services are listed as
B<Supported [V2 Permissions]> in the table at Enabling logging from
Amazon Web Services services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

A delivery destination can represent a log group in CloudWatch Logs, an
Amazon S3 bucket, or a delivery stream in Firehose.

To configure logs delivery between a supported Amazon Web Services
service and a destination, you must do the following:

=over

=item *

Create a delivery source, which is a logical object that represents the
resource that is actually sending the logs. For more information, see
PutDeliverySource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html).

=item *

Create a I<delivery destination>, which is a logical object that
represents the actual delivery destination. For more information, see
PutDeliveryDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).

=item *

If you are delivering logs cross-account, you must use
PutDeliveryDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html)
in the destination account to assign an IAM policy to the destination.
This policy allows delivery to that destination.

=item *

Use C<CreateDelivery> to create a I<delivery> by pairing exactly one
delivery source and one delivery destination.

=back

You can configure a single delivery source to send logs to multiple
destinations by creating multiple deliveries. You can also create
multiple deliveries to configure multiple delivery sources to send logs
to the same delivery destination.

To update an existing delivery configuration, use
UpdateDeliveryConfiguration
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html).


=head2 CreateExportTask

=over

=item Destination => Str

=item From => Int

=item LogGroupName => Str

=item To => Int

=item [DestinationPrefix => Str]

=item [LogStreamNamePrefix => Str]

=item [TaskName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateExportTask>

Returns: a L<Paws::CloudWatchLogs::CreateExportTaskResponse> instance

Creates an export task so that you can efficiently export data from a
log group to an Amazon S3 bucket. When you perform a
C<CreateExportTask> operation, you must use credentials that have
permission to write to the S3 bucket that you specify as the
destination.

Exporting log data to S3 buckets that are encrypted by KMS is
supported. Exporting log data to Amazon S3 buckets that have S3 Object
Lock enabled with a retention period is also supported.

Exporting to S3 buckets that are encrypted with AES-256 is supported.

This is an asynchronous call. If all the required information is
provided, this operation initiates an export task and responds with the
ID of the task. After the task has started, you can use
DescribeExportTasks
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html)
to get the status of the export task. Each account can only have one
active (C<RUNNING> or C<PENDING>) export task at a time. To cancel an
export task, use CancelExportTask
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html).

You can export logs from multiple log groups or multiple time ranges to
the same S3 bucket. To separate log data for each export task, specify
a prefix to be used as the Amazon S3 key prefix for all exported
objects.

We recommend that you don't regularly export to Amazon S3 as a way to
continuously archive your logs. For that use case, we instead recommend
that you use subscriptions. For more information about subscriptions,
see Real-time processing of log data with subscriptions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions.html).

Time-based sorting on chunks of log data inside an exported file is not
guaranteed. You can sort the exported log field data by using Linux
utilities.


=head2 CreateLogAnomalyDetector

=over

=item LogGroupArnList => ArrayRef[Str|Undef]

=item [AnomalyVisibilityTime => Int]

=item [DetectorName => Str]

=item [EvaluationFrequency => Str]

=item [FilterPattern => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogAnomalyDetector>

Returns: a L<Paws::CloudWatchLogs::CreateLogAnomalyDetectorResponse> instance

Creates an I<anomaly detector> that regularly scans one or more log
groups and look for patterns and anomalies in the logs.

An anomaly detector can help surface issues by automatically
discovering anomalies in your log event traffic. An anomaly detector
uses machine learning algorithms to scan log events and find
I<patterns>. A pattern is a shared text structure that recurs among
your log fields. Patterns provide a useful tool for analyzing large
sets of logs because a large number of log events can often be
compressed into a few patterns.

The anomaly detector uses pattern recognition to find C<anomalies>,
which are unusual log events. It uses the C<evaluationFrequency> to
compare current log events and patterns with trained baselines.

Fields within a pattern are called I<tokens>. Fields that vary within a
pattern, such as a request ID or timestamp, are referred to as
I<dynamic tokens> and represented by C<E<lt>*E<gt>>.

The following is an example of a pattern:

C<[INFO] Request time: E<lt>*E<gt> ms>

This pattern represents log events like C<[INFO] Request time: 327 ms>
and other similar log events that differ only by the number, in this
csse 327. When the pattern is displayed, the different numbers are
replaced by C<E<lt>*E<gt>>

Any parts of log events that are masked as sensitive data are not
scanned for anomalies. For more information about masking sensitive
data, see Help protect sensitive log data with masking
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).


=head2 CreateLogGroup

=over

=item LogGroupName => Str

=item [KmsKeyId => Str]

=item [LogGroupClass => Str]

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogGroup>

Returns: nothing

Creates a log group with the specified name. You can create up to
1,000,000 log groups per Region per account.

You must use the following guidelines when naming a log group:

=over

=item *

Log group names must be unique within a Region for an Amazon Web
Services account.

=item *

Log group names can be between 1 and 512 characters long.

=item *

Log group names consist of the following characters: a-z, A-Z, 0-9, '_'
(underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#'
(number sign)

=item *

Log group names can't start with the string C<aws/>

=back

When you create a log group, by default the log events in the log group
do not expire. To set a retention policy so that events expire and are
deleted after a specified time, use PutRetentionPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html).

If you associate an KMS key with the log group, ingested data is
encrypted using the KMS key. This association is stored as long as the
data encrypted with the KMS key is still within CloudWatch Logs. This
enables CloudWatch Logs to decrypt this data whenever it is requested.

If you attempt to associate a KMS key with the log group but the KMS
key does not exist or the KMS key is disabled, you receive an
C<InvalidParameterException> error.

CloudWatch Logs supports only symmetric KMS keys. Do not associate an
asymmetric KMS key with your log group. For more information, see Using
Symmetric and Asymmetric Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).


=head2 CreateLogStream

=over

=item LogGroupName => Str

=item LogStreamName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogStream>

Returns: nothing

Creates a log stream for the specified log group. A log stream is a
sequence of log events that originate from a single source, such as an
application instance or a resource that is being monitored.

There is no limit on the number of log streams that you can create for
a log group. There is a limit of 50 TPS on C<CreateLogStream>
operations, after which transactions are throttled.

You must use the following guidelines when naming a log stream:

=over

=item *

Log stream names must be unique within the log group.

=item *

Log stream names can be between 1 and 512 characters long.

=item *

Don't use ':' (colon) or '*' (asterisk) characters.

=back



=head2 DeleteAccountPolicy

=over

=item PolicyName => Str

=item PolicyType => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteAccountPolicy>

Returns: nothing

Deletes a CloudWatch Logs account policy. This stops the account-wide
policy from applying to log groups in the account. If you delete a data
protection policy or subscription filter policy, any log-group level
policies of those types remain in effect.

To use this operation, you must be signed on with the correct
permissions depending on the type of policy that you are deleting.

=over

=item *

To delete a data protection policy, you must have the
C<logs:DeleteDataProtectionPolicy> and C<logs:DeleteAccountPolicy>
permissions.

=item *

To delete a subscription filter policy, you must have the
C<logs:DeleteSubscriptionFilter> and C<logs:DeleteAccountPolicy>
permissions.

=item *

To delete a transformer policy, you must have the
C<logs:DeleteTransformer> and C<logs:DeleteAccountPolicy> permissions.

=item *

To delete a field index policy, you must have the
C<logs:DeleteIndexPolicy> and C<logs:DeleteAccountPolicy> permissions.

=back

If you delete a field index policy, the indexing of the log events that
happened before you deleted the policy will still be used for up to 30
days to improve CloudWatch Logs Insights queries.


=head2 DeleteDataProtectionPolicy

=over

=item LogGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDataProtectionPolicy>

Returns: nothing

Deletes the data protection policy from the specified log group.

For more information about data protection policies, see
PutDataProtectionPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html).


=head2 DeleteDelivery

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDelivery>

Returns: nothing

Deletes a I<delivery>. A delivery is a connection between a logical
I<delivery source> and a logical I<delivery destination>. Deleting a
delivery only deletes the connection between the delivery source and
delivery destination. It does not delete the delivery destination or
the delivery source.


=head2 DeleteDeliveryDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDeliveryDestination>

Returns: nothing

Deletes a I<delivery destination>. A delivery is a connection between a
logical I<delivery source> and a logical I<delivery destination>.

You can't delete a delivery destination if any current deliveries are
associated with it. To find whether any deliveries are associated with
this delivery destination, use the DescribeDeliveries
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html)
operation and check the C<deliveryDestinationArn> field in the results.


=head2 DeleteDeliveryDestinationPolicy

=over

=item DeliveryDestinationName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDeliveryDestinationPolicy>

Returns: nothing

Deletes a delivery destination policy. For more information about these
policies, see PutDeliveryDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html).


=head2 DeleteDeliverySource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDeliverySource>

Returns: nothing

Deletes a I<delivery source>. A delivery is a connection between a
logical I<delivery source> and a logical I<delivery destination>.

You can't delete a delivery source if any current deliveries are
associated with it. To find whether any deliveries are associated with
this delivery source, use the DescribeDeliveries
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html)
operation and check the C<deliverySourceName> field in the results.


=head2 DeleteDestination

=over

=item DestinationName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDestination>

Returns: nothing

Deletes the specified destination, and eventually disables all the
subscription filters that publish to it. This operation does not delete
the physical resource encapsulated by the destination.


=head2 DeleteIndexPolicy

=over

=item LogGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteIndexPolicy>

Returns: a L<Paws::CloudWatchLogs::DeleteIndexPolicyResponse> instance

Deletes a log-group level field index policy that was applied to a
single log group. The indexing of the log events that happened before
you delete the policy will still be used for as many as 30 days to
improve CloudWatch Logs Insights queries.

You can't use this operation to delete an account-level index policy.
Instead, use DeletAccountPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteAccountPolicy.html).

If you delete a log-group level field index policy and there is an
account-level field index policy, in a few minutes the log group begins
using that account-wide policy to index new incoming log events.


=head2 DeleteIntegration

=over

=item IntegrationName => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteIntegration>

Returns: a L<Paws::CloudWatchLogs::DeleteIntegrationResponse> instance

Deletes the integration between CloudWatch Logs and OpenSearch Service.
If your integration has active vended logs dashboards, you must specify
C<true> for the C<force> parameter, otherwise the operation will fail.
If you delete the integration by setting C<force> to C<true>, all your
vended logs dashboards powered by OpenSearch Service will be deleted
and the data that was on them will no longer be accessible.


=head2 DeleteLogAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogAnomalyDetector>

Returns: nothing

Deletes the specified CloudWatch Logs anomaly detector.


=head2 DeleteLogGroup

=over

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogGroup>

Returns: nothing

Deletes the specified log group and permanently deletes all the
archived log events associated with the log group.


=head2 DeleteLogStream

=over

=item LogGroupName => Str

=item LogStreamName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogStream>

Returns: nothing

Deletes the specified log stream and permanently deletes all the
archived log events associated with the log stream.


=head2 DeleteMetricFilter

=over

=item FilterName => Str

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteMetricFilter>

Returns: nothing

Deletes the specified metric filter.


=head2 DeleteQueryDefinition

=over

=item QueryDefinitionId => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteQueryDefinition>

Returns: a L<Paws::CloudWatchLogs::DeleteQueryDefinitionResponse> instance

Deletes a saved CloudWatch Logs Insights query definition. A query
definition contains details about a saved CloudWatch Logs Insights
query.

Each C<DeleteQueryDefinition> operation can delete one query
definition.

You must have the C<logs:DeleteQueryDefinition> permission to be able
to perform this operation.


=head2 DeleteResourcePolicy

=over

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteResourcePolicy>

Returns: nothing

Deletes a resource policy from this account. This revokes the access of
the identities in that policy to put log events to this account.


=head2 DeleteRetentionPolicy

=over

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteRetentionPolicy>

Returns: nothing

Deletes the specified retention policy.

Log events do not expire if they belong to log groups without a
retention policy.


=head2 DeleteSubscriptionFilter

=over

=item FilterName => Str

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteSubscriptionFilter>

Returns: nothing

Deletes the specified subscription filter.


=head2 DeleteTransformer

=over

=item LogGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteTransformer>

Returns: nothing

Deletes the log transformer for the specified log group. As soon as you
do this, the transformation of incoming log events according to that
transformer stops. If this account has an account-level transformer
that applies to this log group, the log group begins using that
account-level transformer when this log-group level transformer is
deleted.

After you delete a transformer, be sure to edit any metric filters or
subscription filters that relied on the transformed versions of the log
events.


=head2 DescribeAccountPolicies

=over

=item PolicyType => Str

=item [AccountIdentifiers => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeAccountPolicies>

Returns: a L<Paws::CloudWatchLogs::DescribeAccountPoliciesResponse> instance

Returns a list of all CloudWatch Logs account policies in the account.

To use this operation, you must be signed on with the correct
permissions depending on the type of policy that you are retrieving
information for.

=over

=item *

To see data protection policies, you must have the
C<logs:GetDataProtectionPolicy> and C<logs:DescribeAccountPolicies>
permissions.

=item *

To see subscription filter policies, you must have the
C<logs:DescribeSubscriptionFilters> and C<logs:DescribeAccountPolicies>
permissions.

=item *

To see transformer policies, you must have the C<logs:GetTransformer>
and C<logs:DescribeAccountPolicies> permissions.

=item *

To see field index policies, you must have the
C<logs:DescribeIndexPolicies> and C<logs:DescribeAccountPolicies>
permissions.

=back



=head2 DescribeConfigurationTemplates

=over

=item [DeliveryDestinationTypes => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [LogTypes => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [Service => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeConfigurationTemplates>

Returns: a L<Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse> instance

Use this operation to return the valid and default values that are used
when creating delivery sources, delivery destinations, and deliveries.
For more information about deliveries, see CreateDelivery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).


=head2 DescribeDeliveries

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDeliveries>

Returns: a L<Paws::CloudWatchLogs::DescribeDeliveriesResponse> instance

Retrieves a list of the deliveries that have been created in the
account.

A I<delivery> is a connection between a I<delivery source>
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html)
and a I<delivery destination>
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).

A delivery source represents an Amazon Web Services resource that sends
logs to an logs delivery destination. The destination can be CloudWatch
Logs, Amazon S3, or Firehose. Only some Amazon Web Services services
support being configured as a delivery source. These services are
listed in Enable logging from Amazon Web Services services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)


=head2 DescribeDeliveryDestinations

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDeliveryDestinations>

Returns: a L<Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse> instance

Retrieves a list of the delivery destinations that have been created in
the account.


=head2 DescribeDeliverySources

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDeliverySources>

Returns: a L<Paws::CloudWatchLogs::DescribeDeliverySourcesResponse> instance

Retrieves a list of the delivery sources that have been created in the
account.


=head2 DescribeDestinations

=over

=item [DestinationNamePrefix => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDestinations>

Returns: a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> instance

Lists all your destinations. The results are ASCII-sorted by
destination name.


=head2 DescribeExportTasks

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [StatusCode => Str]

=item [TaskId => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeExportTasks>

Returns: a L<Paws::CloudWatchLogs::DescribeExportTasksResponse> instance

Lists the specified export tasks. You can list all your export tasks or
filter the results based on task ID or task status.


=head2 DescribeFieldIndexes

=over

=item LogGroupIdentifiers => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeFieldIndexes>

Returns: a L<Paws::CloudWatchLogs::DescribeFieldIndexesResponse> instance

Returns a list of field indexes listed in the field index policies of
one or more log groups. For more information about field index
policies, see PutIndexPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html).


=head2 DescribeIndexPolicies

=over

=item LogGroupIdentifiers => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeIndexPolicies>

Returns: a L<Paws::CloudWatchLogs::DescribeIndexPoliciesResponse> instance

Returns the field index policies of one or more log groups. For more
information about field index policies, see PutIndexPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html).

If a specified log group has a log-group level index policy, that
policy is returned by this operation.

If a specified log group doesn't have a log-group level index policy,
but an account-wide index policy applies to it, that account-wide
policy is returned by this operation.

To find information about only account-level policies, use
DescribeAccountPolicies
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html)
instead.


=head2 DescribeLogGroups

=over

=item [AccountIdentifiers => ArrayRef[Str|Undef]]

=item [IncludeLinkedAccounts => Bool]

=item [Limit => Int]

=item [LogGroupClass => Str]

=item [LogGroupIdentifiers => ArrayRef[Str|Undef]]

=item [LogGroupNamePattern => Str]

=item [LogGroupNamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogGroups>

Returns: a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> instance

Returns information about log groups. You can return all your log
groups or filter the results by prefix. The results are ASCII-sorted by
log group name.

CloudWatch Logs doesn't support IAM policies that control access to the
C<DescribeLogGroups> action by using the C<aws:ResourceTag/I<key-name>
> condition key. Other CloudWatch Logs actions do support the use of
the C<aws:ResourceTag/I<key-name> > condition key to control access.
For more information about using tags to control access, see
Controlling access to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).


=head2 DescribeLogStreams

=over

=item [Descending => Bool]

=item [Limit => Int]

=item [LogGroupIdentifier => Str]

=item [LogGroupName => Str]

=item [LogStreamNamePrefix => Str]

=item [NextToken => Str]

=item [OrderBy => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogStreams>

Returns: a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> instance

Lists the log streams for the specified log group. You can list all the
log streams or filter the results by prefix. You can also control how
the results are ordered.

You can specify the log group to search by using either
C<logGroupIdentifier> or C<logGroupName>. You must include one of these
two parameters, but you can't include both.

This operation has a limit of 25 transactions per second, after which
transactions are throttled.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).


=head2 DescribeMetricFilters

=over

=item [FilterNamePrefix => Str]

=item [Limit => Int]

=item [LogGroupName => Str]

=item [MetricName => Str]

=item [MetricNamespace => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeMetricFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> instance

Lists the specified metric filters. You can list all of the metric
filters or filter the results by log name, prefix, metric name, or
metric namespace. The results are ASCII-sorted by filter name.


=head2 DescribeQueries

=over

=item [LogGroupName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryLanguage => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeQueries>

Returns: a L<Paws::CloudWatchLogs::DescribeQueriesResponse> instance

Returns a list of CloudWatch Logs Insights queries that are scheduled,
running, or have been run recently in this account. You can request all
queries or limit it to queries of a specific log group or queries with
a certain status.


=head2 DescribeQueryDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryDefinitionNamePrefix => Str]

=item [QueryLanguage => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeQueryDefinitions>

Returns: a L<Paws::CloudWatchLogs::DescribeQueryDefinitionsResponse> instance

This operation returns a paginated list of your saved CloudWatch Logs
Insights query definitions. You can retrieve query definitions from the
current account or from a source account that is linked to the current
account.

You can use the C<queryDefinitionNamePrefix> parameter to limit the
results to only the query definitions that have names that start with a
certain string.


=head2 DescribeResourcePolicies

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeResourcePolicies>

Returns: a L<Paws::CloudWatchLogs::DescribeResourcePoliciesResponse> instance

Lists the resource policies in this account.


=head2 DescribeSubscriptionFilters

=over

=item LogGroupName => Str

=item [FilterNamePrefix => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeSubscriptionFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse> instance

Lists the subscription filters for the specified log group. You can
list all the subscription filters or filter the results by prefix. The
results are ASCII-sorted by filter name.


=head2 DisassociateKmsKey

=over

=item [LogGroupName => Str]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::DisassociateKmsKey>

Returns: nothing

Disassociates the specified KMS key from the specified log group or
from all CloudWatch Logs Insights query results in the account.

When you use C<DisassociateKmsKey>, you specify either the
C<logGroupName> parameter or the C<resourceIdentifier> parameter. You
can't specify both of those parameters in the same operation.

=over

=item *

Specify the C<logGroupName> parameter to stop using the KMS key to
encrypt future log events ingested and stored in the log group.
Instead, they will be encrypted with the default CloudWatch Logs
method. The log events that were ingested while the key was associated
with the log group are still encrypted with that key. Therefore,
CloudWatch Logs will need permissions for the key whenever that data is
accessed.

=item *

Specify the C<resourceIdentifier> parameter with the C<query-result>
resource to stop using the KMS key to encrypt the results of all future
StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html)
operations in the account. They will instead be encrypted with the
default CloudWatch Logs method. The results from queries that ran while
the key was associated with the account are still encrypted with that
key. Therefore, CloudWatch Logs will need permissions for the key
whenever that data is accessed.

=back

It can take up to 5 minutes for this operation to take effect.


=head2 FilterLogEvents

=over

=item [EndTime => Int]

=item [FilterPattern => Str]

=item [Interleaved => Bool]

=item [Limit => Int]

=item [LogGroupIdentifier => Str]

=item [LogGroupName => Str]

=item [LogStreamNamePrefix => Str]

=item [LogStreamNames => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [StartTime => Int]

=item [Unmask => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::FilterLogEvents>

Returns: a L<Paws::CloudWatchLogs::FilterLogEventsResponse> instance

Lists log events from the specified log group. You can list all the log
events or filter the results using one or more of the following:

=over

=item *

A filter pattern

=item *

A time range

=item *

The log stream name, or a log stream name prefix that matches mutltiple
log streams

=back

You must have the C<logs:FilterLogEvents> permission to perform this
operation.

You can specify the log group to search by using either
C<logGroupIdentifier> or C<logGroupName>. You must include one of these
two parameters, but you can't include both.

C<FilterLogEvents> is a paginated operation. Each page returned can
contain up to 1 MB of log events or up to 10,000 log events. A returned
page might only be partially full, or even empty. For example, if the
result of a query would return 15,000 log events, the first page isn't
guaranteed to have 10,000 log events even if they all fit into 1 MB.

Partially full or empty pages don't necessarily mean that pagination is
finished. If the results include a C<nextToken>, there might be more
log events available. You can return these additional log events by
providing the nextToken in a subsequent C<FilterLogEvents> operation.
If the results don't include a C<nextToken>, then pagination is
finished.

Specifying the C<limit> parameter only guarantees that a single page
doesn't return more log events than the specified limit, but it might
return fewer events than the limit. This is the expected API behavior.

The returned log events are sorted by event timestamp, the timestamp
when the event was ingested by CloudWatch Logs, and the ID of the
C<PutLogEvents> request.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

If you are using log transformation
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html),
the C<FilterLogEvents> operation returns only the original versions of
log events, before they were transformed. To view the transformed
versions, you must use a CloudWatch Logs query.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html)


=head2 GetDataProtectionPolicy

=over

=item LogGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetDataProtectionPolicy>

Returns: a L<Paws::CloudWatchLogs::GetDataProtectionPolicyResponse> instance

Returns information about a log group data protection policy.


=head2 GetDelivery

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetDelivery>

Returns: a L<Paws::CloudWatchLogs::GetDeliveryResponse> instance

Returns complete information about one logical I<delivery>. A delivery
is a connection between a I<delivery source>
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html)
and a I<delivery destination>
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).

A delivery source represents an Amazon Web Services resource that sends
logs to an logs delivery destination. The destination can be CloudWatch
Logs, Amazon S3, or Firehose. Only some Amazon Web Services services
support being configured as a delivery source. These services are
listed in Enable logging from Amazon Web Services services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

You need to specify the delivery C<id> in this operation. You can find
the IDs of the deliveries in your account with the DescribeDeliveries
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html)
operation.


=head2 GetDeliveryDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetDeliveryDestination>

Returns: a L<Paws::CloudWatchLogs::GetDeliveryDestinationResponse> instance

Retrieves complete information about one delivery destination.


=head2 GetDeliveryDestinationPolicy

=over

=item DeliveryDestinationName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetDeliveryDestinationPolicy>

Returns: a L<Paws::CloudWatchLogs::GetDeliveryDestinationPolicyResponse> instance

Retrieves the delivery destination policy assigned to the delivery
destination that you specify. For more information about delivery
destinations and their policies, see PutDeliveryDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html).


=head2 GetDeliverySource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetDeliverySource>

Returns: a L<Paws::CloudWatchLogs::GetDeliverySourceResponse> instance

Retrieves complete information about one delivery source.


=head2 GetIntegration

=over

=item IntegrationName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetIntegration>

Returns: a L<Paws::CloudWatchLogs::GetIntegrationResponse> instance

Returns information about one integration between CloudWatch Logs and
OpenSearch Service.


=head2 GetLogAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogAnomalyDetector>

Returns: a L<Paws::CloudWatchLogs::GetLogAnomalyDetectorResponse> instance

Retrieves information about the log anomaly detector that you specify.
The KMS key ARN detected is valid.


=head2 GetLogEvents

=over

=item LogStreamName => Str

=item [EndTime => Int]

=item [Limit => Int]

=item [LogGroupIdentifier => Str]

=item [LogGroupName => Str]

=item [NextToken => Str]

=item [StartFromHead => Bool]

=item [StartTime => Int]

=item [Unmask => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogEvents>

Returns: a L<Paws::CloudWatchLogs::GetLogEventsResponse> instance

Lists log events from the specified log stream. You can list all of the
log events or filter using a time range.

C<GetLogEvents> is a paginated operation. Each page returned can
contain up to 1 MB of log events or up to 10,000 log events. A returned
page might only be partially full, or even empty. For example, if the
result of a query would return 15,000 log events, the first page isn't
guaranteed to have 10,000 log events even if they all fit into 1 MB.

Partially full or empty pages don't necessarily mean that pagination is
finished. As long as the C<nextBackwardToken> or C<nextForwardToken>
returned is NOT equal to the C<nextToken> that you passed into the API
call, there might be more log events available. The token that you use
depends on the direction you want to move in along the log stream. The
returned tokens are never null.

If you set C<startFromHead> to C<true> and you donE<rsquo>t include
C<endTime> in your request, you can end up in a situation where the
pagination doesn't terminate. This can happen when the new log events
are being added to the target log streams faster than they are being
read. This situation is a good use case for the CloudWatch Logs Live
Tail
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html)
feature.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

You can specify the log group to search by using either
C<logGroupIdentifier> or C<logGroupName>. You must include one of these
two parameters, but you can't include both.

If you are using log transformation
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html),
the C<GetLogEvents> operation returns only the original versions of log
events, before they were transformed. To view the transformed versions,
you must use a CloudWatch Logs query.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html)


=head2 GetLogGroupFields

=over

=item [LogGroupIdentifier => Str]

=item [LogGroupName => Str]

=item [Time => Int]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogGroupFields>

Returns: a L<Paws::CloudWatchLogs::GetLogGroupFieldsResponse> instance

Returns a list of the fields that are included in log events in the
specified log group. Includes the percentage of log events that contain
each field. The search is limited to a time period that you specify.

You can specify the log group to search by using either
C<logGroupIdentifier> or C<logGroupName>. You must specify one of these
parameters, but you can't specify both.

In the results, fields that start with C<@> are fields generated by
CloudWatch Logs. For example, C<@timestamp> is the timestamp of each
log event. For more information about the fields that are generated by
CloudWatch logs, see Supported Logs and Discovered Fields
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html).

The response results are sorted by the frequency percentage, starting
with the highest percentage.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).


=head2 GetLogRecord

=over

=item LogRecordPointer => Str

=item [Unmask => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogRecord>

Returns: a L<Paws::CloudWatchLogs::GetLogRecordResponse> instance

Retrieves all of the fields and values of a single log event. All
fields are retrieved, even if the original query that produced the
C<logRecordPointer> retrieved only a subset of fields. Fields are
returned as field name/field value pairs.

The full unparsed log event is returned within C<@message>.


=head2 GetQueryResults

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetQueryResults>

Returns: a L<Paws::CloudWatchLogs::GetQueryResultsResponse> instance

Returns the results from the specified query.

Only the fields requested in the query are returned, along with a
C<@ptr> field, which is the identifier for the log record. You can use
the value of C<@ptr> in a GetLogRecord
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html)
operation to get the full log record.

C<GetQueryResults> does not start running a query. To run a query, use
StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html).
For more information about how long results of previous queries are
available, see CloudWatch Logs quotas
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html).

If the value of the C<Status> field in the output is C<Running>, this
operation returns only partial results. If you see a value of
C<Scheduled> or C<Running> for the status, you can retry the operation
later to see the final results.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account to start queries in linked
source accounts. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).


=head2 GetTransformer

=over

=item LogGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetTransformer>

Returns: a L<Paws::CloudWatchLogs::GetTransformerResponse> instance

Returns the information about the log transformer associated with this
log group.

This operation returns data only for transformers created at the log
group level. To get information for an account-level transformer, use
DescribeAccountPolicies
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html).


=head2 ListAnomalies

=over

=item [AnomalyDetectorArn => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [SuppressionState => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListAnomalies>

Returns: a L<Paws::CloudWatchLogs::ListAnomaliesResponse> instance

Returns a list of anomalies that log anomaly detectors have found. For
details about the structure format of each anomaly object that is
returned, see the example in this section.


=head2 ListIntegrations

=over

=item [IntegrationNamePrefix => Str]

=item [IntegrationStatus => Str]

=item [IntegrationType => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListIntegrations>

Returns: a L<Paws::CloudWatchLogs::ListIntegrationsResponse> instance

Returns a list of integrations between CloudWatch Logs and other
services in this account. Currently, only one integration can be
created in an account, and this integration must be with OpenSearch
Service.


=head2 ListLogAnomalyDetectors

=over

=item [FilterLogGroupArn => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListLogAnomalyDetectors>

Returns: a L<Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse> instance

Retrieves a list of the log anomaly detectors in the account.


=head2 ListLogGroups

=over

=item [AccountIdentifiers => ArrayRef[Str|Undef]]

=item [IncludeLinkedAccounts => Bool]

=item [Limit => Int]

=item [LogGroupClass => Str]

=item [LogGroupNamePattern => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListLogGroups>

Returns: a L<Paws::CloudWatchLogs::ListLogGroupsResponse> instance

Returns a list of log groups in the Region in your account. If you are
performing this action in a monitoring account, you can choose to also
return log groups from source accounts that are linked to the
monitoring account. For more information about using cross-account
observability to set up monitoring accounts and source accounts, see
CloudWatch cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

You can optionally filter the list by log group class and by using
regular expressions in your request to match strings in the log group
names.

This operation is paginated. By default, your first use of this
operation returns 50 results, and includes a token to use in a
subsequent operation to return more results.


=head2 ListLogGroupsForQuery

=over

=item QueryId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListLogGroupsForQuery>

Returns: a L<Paws::CloudWatchLogs::ListLogGroupsForQueryResponse> instance

Returns a list of the log groups that were analyzed during a single
CloudWatch Logs Insights query. This can be useful for queries that use
log group name prefixes or the C<filterIndex> command, because the log
groups are dynamically selected in these cases.

For more information about field indexes, see Create field indexes to
improve query performance and reduce costs
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListTagsForResource>

Returns: a L<Paws::CloudWatchLogs::ListTagsForResourceResponse> instance

Displays the tags associated with a CloudWatch Logs resource.
Currently, log groups and destinations support tagging.


=head2 ListTagsLogGroup

=over

=item LogGroupName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListTagsLogGroup>

Returns: a L<Paws::CloudWatchLogs::ListTagsLogGroupResponse> instance

The ListTagsLogGroup operation is on the path to deprecation. We
recommend that you use ListTagsForResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html)
instead.

Lists the tags for the specified log group.


=head2 PutAccountPolicy

=over

=item PolicyDocument => Str

=item PolicyName => Str

=item PolicyType => Str

=item [Scope => Str]

=item [SelectionCriteria => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutAccountPolicy>

Returns: a L<Paws::CloudWatchLogs::PutAccountPolicyResponse> instance

Creates an account-level data protection policy, subscription filter
policy, or field index policy that applies to all log groups or a
subset of log groups in the account.

To use this operation, you must be signed on with the correct
permissions depending on the type of policy that you are creating.

=over

=item *

To create a data protection policy, you must have the
C<logs:PutDataProtectionPolicy> and C<logs:PutAccountPolicy>
permissions.

=item *

To create a subscription filter policy, you must have the
C<logs:PutSubscriptionFilter> and C<logs:PutccountPolicy> permissions.

=item *

To create a transformer policy, you must have the
C<logs:PutTransformer> and C<logs:PutAccountPolicy> permissions.

=item *

To create a field index policy, you must have the
C<logs:PutIndexPolicy> and C<logs:PutAccountPolicy> permissions.

=back

B<Data protection policy>

A data protection policy can help safeguard sensitive data that's
ingested by your log groups by auditing and masking the sensitive log
data. Each account can have only one account-level data protection
policy.

Sensitive data is detected and masked when it is ingested into a log
group. When you set a data protection policy, log events ingested into
the log groups before that time are not masked.

If you use C<PutAccountPolicy> to create a data protection policy for
your whole account, it applies to both existing log groups and all log
groups that are created later in this account. The account-level policy
is applied to existing log groups with eventual consistency. It might
take up to 5 minutes before sensitive data in existing log groups
begins to be masked.

By default, when a user views a log event that includes masked data,
the sensitive data is replaced by asterisks. A user who has the
C<logs:Unmask> permission can use a GetLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html)
or FilterLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html)
operation with the C<unmask> parameter set to C<true> to view the
unmasked log events. Users with the C<logs:Unmask> can also view
unmasked data in the CloudWatch Logs console by running a CloudWatch
Logs Insights query with the C<unmask> query command.

For more information, including a list of types of data that can be
audited and masked, see Protect sensitive log data with masking
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).

To use the C<PutAccountPolicy> operation for a data protection policy,
you must be signed on with the C<logs:PutDataProtectionPolicy> and
C<logs:PutAccountPolicy> permissions.

The C<PutAccountPolicy> operation applies to all log groups in the
account. You can use PutDataProtectionPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html)
to create a data protection policy that applies to just one log group.
If a log group has its own data protection policy and the account also
has an account-level data protection policy, then the two policies are
cumulative. Any sensitive term specified in either policy is masked.

B<Subscription filter policy>

A subscription filter policy sets up a real-time feed of log events
from CloudWatch Logs to other Amazon Web Services services.
Account-level subscription filter policies apply to both existing log
groups and log groups that are created later in this account. Supported
destinations are Kinesis Data Streams, Firehose, and Lambda. When log
events are sent to the receiving service, they are Base64 encoded and
compressed with the GZIP format.

The following destinations are supported for subscription filters:

=over

=item *

An Kinesis Data Streams data stream in the same account as the
subscription policy, for same-account delivery.

=item *

An Firehose data stream in the same account as the subscription policy,
for same-account delivery.

=item *

A Lambda function in the same account as the subscription policy, for
same-account delivery.

=item *

A logical destination in a different account created with
PutDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html),
for cross-account delivery. Kinesis Data Streams and Firehose are
supported as logical destinations.

=back

Each account can have one account-level subscription filter policy per
Region. If you are updating an existing filter, you must specify the
correct name in C<PolicyName>. To perform a C<PutAccountPolicy>
subscription filter operation for any destination except a Lambda
function, you must also have the C<iam:PassRole> permission.

B<Transformer policy>

Creates or updates a I<log transformer policy> for your account. You
use log transformers to transform log events into a different format,
making them easier for you to process and analyze. You can also
transform logs from different sources into standardized formats that
contain relevant, source-specific information. After you have created a
transformer, CloudWatch Logs performs this transformation at the time
of log ingestion. You can then refer to the transformed versions of the
logs during operations such as querying with CloudWatch Logs Insights
or creating metric filters or subscription filters.

You can also use a transformer to copy metadata from metadata keys into
the log events themselves. This metadata can include log group name,
log stream name, account ID and Region.

A transformer for a log group is a series of processors, where each
processor applies one type of transformation to the log events ingested
into this log group. For more information about the available
processors to use in a transformer, see Processors that you can use
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors).

Having log events in standardized format enables visibility across your
applications for your log analysis, reporting, and alarming needs.
CloudWatch Logs provides transformation for common log types with
out-of-the-box transformation templates for major Amazon Web Services
log sources such as VPC flow logs, Lambda, and Amazon RDS. You can use
pre-built transformation templates or create custom transformation
policies.

You can create transformers only for the log groups in the Standard log
class.

You can have one account-level transformer policy that applies to all
log groups in the account. Or you can create as many as 20
account-level transformer policies that are each scoped to a subset of
log groups with the C<selectionCriteria> parameter. If you have
multiple account-level transformer policies with selection criteria, no
two of them can use the same or overlapping log group name prefixes.
For example, if you have one policy filtered to log groups that start
with C<my-log>, you can't have another field index policy filtered to
C<my-logpprod> or C<my-logging>.

You can also set up a transformer at the log-group level. For more
information, see PutTransformer
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html).
If there is both a log-group level transformer created with
C<PutTransformer> and an account-level transformer that could apply to
the same log group, the log group uses only the log-group level
transformer. It ignores the account-level transformer.

B<Field index policy>

You can use field index policies to create indexes on fields found in
log events in the log group. Creating field indexes can help lower the
scan volume for CloudWatch Logs Insights queries that reference those
fields, because these queries attempt to skip the processing of log
events that are known to not match the indexed field. Good fields to
index are fields that you often need to query for and fields or values
that match only a small fraction of the total log events. Common
examples of indexes include request ID, session ID, user IDs, or
instance IDs. For more information, see Create field indexes to improve
query performance and reduce costs
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html)

To find the fields that are in your log group events, use the
GetLogGroupFields
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html)
operation.

For example, suppose you have created a field index for C<requestId>.
Then, any CloudWatch Logs Insights query on that log group that
includes C<requestId = I<value> > or C<requestId in [I<value>,
I<value>, ...]> will attempt to process only the log events where the
indexed field matches the specified value.

Matches of log events to the names of indexed fields are
case-sensitive. For example, an indexed field of C<RequestId> won't
match a log event containing C<requestId>.

You can have one account-level field index policy that applies to all
log groups in the account. Or you can create as many as 20
account-level field index policies that are each scoped to a subset of
log groups with the C<selectionCriteria> parameter. If you have
multiple account-level index policies with selection criteria, no two
of them can use the same or overlapping log group name prefixes. For
example, if you have one policy filtered to log groups that start with
C<my-log>, you can't have another field index policy filtered to
C<my-logpprod> or C<my-logging>.

If you create an account-level field index policy in a monitoring
account in cross-account observability, the policy is applied only to
the monitoring account and not to any source accounts.

If you want to create a field index policy for a single log group, you
can use PutIndexPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html)
instead of C<PutAccountPolicy>. If you do so, that log group will use
only that log-group level policy, and will ignore the account-level
policy that you create with PutAccountPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html).


=head2 PutDataProtectionPolicy

=over

=item LogGroupIdentifier => Str

=item PolicyDocument => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDataProtectionPolicy>

Returns: a L<Paws::CloudWatchLogs::PutDataProtectionPolicyResponse> instance

Creates a data protection policy for the specified log group. A data
protection policy can help safeguard sensitive data that's ingested by
the log group by auditing and masking the sensitive log data.

Sensitive data is detected and masked when it is ingested into the log
group. When you set a data protection policy, log events ingested into
the log group before that time are not masked.

By default, when a user views a log event that includes masked data,
the sensitive data is replaced by asterisks. A user who has the
C<logs:Unmask> permission can use a GetLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html)
or FilterLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html)
operation with the C<unmask> parameter set to C<true> to view the
unmasked log events. Users with the C<logs:Unmask> can also view
unmasked data in the CloudWatch Logs console by running a CloudWatch
Logs Insights query with the C<unmask> query command.

For more information, including a list of types of data that can be
audited and masked, see Protect sensitive log data with masking
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).

The C<PutDataProtectionPolicy> operation applies to only the specified
log group. You can also use PutAccountPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html)
to create an account-level data protection policy that applies to all
log groups in the account, including both existing log groups and log
groups that are created level. If a log group has its own data
protection policy and the account also has an account-level data
protection policy, then the two policies are cumulative. Any sensitive
term specified in either policy is masked.


=head2 PutDeliveryDestination

=over

=item DeliveryDestinationConfiguration => L<Paws::CloudWatchLogs::DeliveryDestinationConfiguration>

=item Name => Str

=item [OutputFormat => Str]

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDeliveryDestination>

Returns: a L<Paws::CloudWatchLogs::PutDeliveryDestinationResponse> instance

Creates or updates a logical I<delivery destination>. A delivery
destination is an Amazon Web Services resource that represents an
Amazon Web Services service that logs can be sent to. CloudWatch Logs,
Amazon S3, and Firehose are supported as logs delivery destinations.

To configure logs delivery between a supported Amazon Web Services
service and a destination, you must do the following:

=over

=item *

Create a delivery source, which is a logical object that represents the
resource that is actually sending the logs. For more information, see
PutDeliverySource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html).

=item *

Use C<PutDeliveryDestination> to create a I<delivery destination> in
the same account of the actual delivery destination. The delivery
destination that you create is a logical object that represents the
actual delivery destination.

=item *

If you are delivering logs cross-account, you must use
PutDeliveryDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html)
in the destination account to assign an IAM policy to the destination.
This policy allows delivery to that destination.

=item *

Use C<CreateDelivery> to create a I<delivery> by pairing exactly one
delivery source and one delivery destination. For more information, see
CreateDelivery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).

=back

You can configure a single delivery source to send logs to multiple
destinations by creating multiple deliveries. You can also create
multiple deliveries to configure multiple delivery sources to send logs
to the same delivery destination.

Only some Amazon Web Services services support being configured as a
delivery source. These services are listed as B<Supported [V2
Permissions]> in the table at Enabling logging from Amazon Web Services
services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

If you use this operation to update an existing delivery destination,
all the current delivery destination parameters are overwritten with
the new parameter values that you specify.


=head2 PutDeliveryDestinationPolicy

=over

=item DeliveryDestinationName => Str

=item DeliveryDestinationPolicy => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDeliveryDestinationPolicy>

Returns: a L<Paws::CloudWatchLogs::PutDeliveryDestinationPolicyResponse> instance

Creates and assigns an IAM policy that grants permissions to CloudWatch
Logs to deliver logs cross-account to a specified destination in this
account. To configure the delivery of logs from an Amazon Web Services
service in another account to a logs delivery destination in the
current account, you must do the following:

=over

=item *

Create a delivery source, which is a logical object that represents the
resource that is actually sending the logs. For more information, see
PutDeliverySource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html).

=item *

Create a I<delivery destination>, which is a logical object that
represents the actual delivery destination. For more information, see
PutDeliveryDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).

=item *

Use this operation in the destination account to assign an IAM policy
to the destination. This policy allows delivery to that destination.

=item *

Create a I<delivery> by pairing exactly one delivery source and one
delivery destination. For more information, see CreateDelivery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).

=back

Only some Amazon Web Services services support being configured as a
delivery source. These services are listed as B<Supported [V2
Permissions]> in the table at Enabling logging from Amazon Web Services
services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

The contents of the policy must include two statements. One statement
enables general logs delivery, and the other allows delivery to the
chosen destination. See the examples for the needed policies.


=head2 PutDeliverySource

=over

=item LogType => Str

=item Name => Str

=item ResourceArn => Str

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDeliverySource>

Returns: a L<Paws::CloudWatchLogs::PutDeliverySourceResponse> instance

Creates or updates a logical I<delivery source>. A delivery source
represents an Amazon Web Services resource that sends logs to an logs
delivery destination. The destination can be CloudWatch Logs, Amazon
S3, or Firehose.

To configure logs delivery between a delivery destination and an Amazon
Web Services service that is supported as a delivery source, you must
do the following:

=over

=item *

Use C<PutDeliverySource> to create a delivery source, which is a
logical object that represents the resource that is actually sending
the logs.

=item *

Use C<PutDeliveryDestination> to create a I<delivery destination>,
which is a logical object that represents the actual delivery
destination. For more information, see PutDeliveryDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).

=item *

If you are delivering logs cross-account, you must use
PutDeliveryDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html)
in the destination account to assign an IAM policy to the destination.
This policy allows delivery to that destination.

=item *

Use C<CreateDelivery> to create a I<delivery> by pairing exactly one
delivery source and one delivery destination. For more information, see
CreateDelivery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).

=back

You can configure a single delivery source to send logs to multiple
destinations by creating multiple deliveries. You can also create
multiple deliveries to configure multiple delivery sources to send logs
to the same delivery destination.

Only some Amazon Web Services services support being configured as a
delivery source. These services are listed as B<Supported [V2
Permissions]> in the table at Enabling logging from Amazon Web Services
services.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

If you use this operation to update an existing delivery source, all
the current delivery source parameters are overwritten with the new
parameter values that you specify.


=head2 PutDestination

=over

=item DestinationName => Str

=item RoleArn => Str

=item TargetArn => Str

=item [Tags => L<Paws::CloudWatchLogs::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestination>

Returns: a L<Paws::CloudWatchLogs::PutDestinationResponse> instance

Creates or updates a destination. This operation is used only to create
destinations for cross-account subscriptions.

A destination encapsulates a physical resource (such as an Amazon
Kinesis stream). With a destination, you can subscribe to a real-time
stream of log events for a different account, ingested using
PutLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).

Through an access policy, a destination controls what is written to it.
By default, C<PutDestination> does not set any access policy with the
destination, which means a cross-account user cannot call
PutSubscriptionFilter
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html)
against this destination. To enable this, the destination owner must
call PutDestinationPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html)
after C<PutDestination>.

To perform a C<PutDestination> operation, you must also have the
C<iam:PassRole> permission.


=head2 PutDestinationPolicy

=over

=item AccessPolicy => Str

=item DestinationName => Str

=item [ForceUpdate => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestinationPolicy>

Returns: nothing

Creates or updates an access policy associated with an existing
destination. An access policy is an IAM policy document
(https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
that is used to authorize claims to register a subscription filter
against a given destination.


=head2 PutIndexPolicy

=over

=item LogGroupIdentifier => Str

=item PolicyDocument => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutIndexPolicy>

Returns: a L<Paws::CloudWatchLogs::PutIndexPolicyResponse> instance

Creates or updates a I<field index policy> for the specified log group.
Only log groups in the Standard log class support field index policies.
For more information about log classes, see Log classes
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html).

You can use field index policies to create I<field indexes> on fields
found in log events in the log group. Creating field indexes speeds up
and lowers the costs for CloudWatch Logs Insights queries that
reference those field indexes, because these queries attempt to skip
the processing of log events that are known to not match the indexed
field. Good fields to index are fields that you often need to query for
and fields or values that match only a small fraction of the total log
events. Common examples of indexes include request ID, session ID,
userID, and instance IDs. For more information, see Create field
indexes to improve query performance and reduce costs
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html).

To find the fields that are in your log group events, use the
GetLogGroupFields
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html)
operation.

For example, suppose you have created a field index for C<requestId>.
Then, any CloudWatch Logs Insights query on that log group that
includes C<requestId = I<value> > or C<requestId IN [I<value>,
I<value>, ...]> will process fewer log events to reduce costs, and have
improved performance.

Each index policy has the following quotas and restrictions:

=over

=item *

As many as 20 fields can be included in the policy.

=item *

Each field name can include as many as 100 characters.

=back

Matches of log events to the names of indexed fields are
case-sensitive. For example, a field index of C<RequestId> won't match
a log event containing C<requestId>.

Log group-level field index policies created with C<PutIndexPolicy>
override account-level field index policies created with
PutAccountPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html).
If you use C<PutIndexPolicy> to create a field index policy for a log
group, that log group uses only that policy. The log group ignores any
account-wide field index policy that you might have created.


=head2 PutIntegration

=over

=item IntegrationName => Str

=item IntegrationType => Str

=item ResourceConfig => L<Paws::CloudWatchLogs::ResourceConfig>


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutIntegration>

Returns: a L<Paws::CloudWatchLogs::PutIntegrationResponse> instance

Creates an integration between CloudWatch Logs and another service in
this account. Currently, only integrations with OpenSearch Service are
supported, and currently you can have only one integration in your
account.

Integrating with OpenSearch Service makes it possible for you to create
curated vended logs dashboards, powered by OpenSearch Service
analytics. For more information, see Vended log dashboards powered by
Amazon OpenSearch Service
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-OpenSearch-Dashboards.html).

You can use this operation only to create a new integration. You can't
modify an existing integration.


=head2 PutLogEvents

=over

=item LogEvents => ArrayRef[L<Paws::CloudWatchLogs::InputLogEvent>]

=item LogGroupName => Str

=item LogStreamName => Str

=item [Entity => L<Paws::CloudWatchLogs::Entity>]

=item [SequenceToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutLogEvents>

Returns: a L<Paws::CloudWatchLogs::PutLogEventsResponse> instance

Uploads a batch of log events to the specified log stream.

The sequence token is now ignored in C<PutLogEvents> actions.
C<PutLogEvents> actions are always accepted and never return
C<InvalidSequenceTokenException> or C<DataAlreadyAcceptedException>
even if the sequence token is not valid. You can use parallel
C<PutLogEvents> actions on the same log stream.

The batch of events must satisfy the following constraints:

=over

=item *

The maximum batch size is 1,048,576 bytes. This size is calculated as
the sum of all event messages in UTF-8, plus 26 bytes for each log
event.

=item *

None of the log events in the batch can be more than 2 hours in the
future.

=item *

None of the log events in the batch can be more than 14 days in the
past. Also, none of the log events can be from earlier than the
retention period of the log group.

=item *

The log events in the batch must be in chronological order by their
timestamp. The timestamp is the time that the event occurred, expressed
as the number of milliseconds after C<Jan 1, 1970 00:00:00 UTC>. (In
Amazon Web Services Tools for PowerShell and the Amazon Web Services
SDK for .NET, the timestamp is specified in .NET format:
C<yyyy-mm-ddThh:mm:ss>. For example, C<2017-09-15T13:45:30>.)

=item *

A batch of log events in a single request cannot span more than 24
hours. Otherwise, the operation fails.

=item *

Each log event can be no larger than 1 MB.

=item *

The maximum number of log events in a batch is 10,000.

=item *

The quota of five requests per second per log stream has been removed.
Instead, C<PutLogEvents> actions are throttled based on a per-second
per-account quota. You can request an increase to the per-second
throttling quota by using the Service Quotas service.

=back

If a call to C<PutLogEvents> returns "UnrecognizedClientException" the
most likely cause is a non-valid Amazon Web Services access key ID or
secret key.


=head2 PutMetricFilter

=over

=item FilterName => Str

=item FilterPattern => Str

=item LogGroupName => Str

=item MetricTransformations => ArrayRef[L<Paws::CloudWatchLogs::MetricTransformation>]

=item [ApplyOnTransformedLogs => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutMetricFilter>

Returns: nothing

Creates or updates a metric filter and associates it with the specified
log group. With metric filters, you can configure rules to extract
metric data from log events ingested through PutLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).

The maximum number of metric filters that can be associated with a log
group is 100.

Using regular expressions in filter patterns is supported. For these
filters, there is a quota of two regular expression patterns within a
single filter pattern. There is also a quota of five regular expression
patterns per log group. For more information about using regular
expressions in filter patterns, see Filter pattern syntax for metric
filters, subscription filters, filter log events, and Live Tail
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).

When you create a metric filter, you can also optionally assign a unit
and dimensions to the metric that is created.

Metrics extracted from log events are charged as custom metrics. To
prevent unexpected high charges, do not specify high-cardinality fields
such as C<IPAddress> or C<requestID> as dimensions. Each different
value found for a dimension is treated as a separate metric and accrues
charges as a separate custom metric.

CloudWatch Logs might disable a metric filter if it generates 1,000
different name/value pairs for your specified dimensions within one
hour.

You can also set up a billing alarm to alert you if your charges are
higher than expected. For more information, see Creating a Billing
Alarm to Monitor Your Estimated Amazon Web Services Charges
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).


=head2 PutQueryDefinition

=over

=item Name => Str

=item QueryString => Str

=item [ClientToken => Str]

=item [LogGroupNames => ArrayRef[Str|Undef]]

=item [QueryDefinitionId => Str]

=item [QueryLanguage => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutQueryDefinition>

Returns: a L<Paws::CloudWatchLogs::PutQueryDefinitionResponse> instance

Creates or updates a query definition for CloudWatch Logs Insights. For
more information, see Analyzing Log Data with CloudWatch Logs Insights
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html).

To update a query definition, specify its C<queryDefinitionId> in your
request. The values of C<name>, C<queryString>, and C<logGroupNames>
are changed to the values that you specify in your update operation. No
current values are retained from the current query definition. For
example, imagine updating a current query definition that includes log
groups. If you don't specify the C<logGroupNames> parameter in your
update operation, the query definition changes to contain no log
groups.

You must have the C<logs:PutQueryDefinition> permission to be able to
perform this operation.


=head2 PutResourcePolicy

=over

=item [PolicyDocument => Str]

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutResourcePolicy>

Returns: a L<Paws::CloudWatchLogs::PutResourcePolicyResponse> instance

Creates or updates a resource policy allowing other Amazon Web Services
services to put log events to this account, such as Amazon Route 53. An
account can have up to 10 resource policies per Amazon Web Services
Region.


=head2 PutRetentionPolicy

=over

=item LogGroupName => Str

=item RetentionInDays => Int


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutRetentionPolicy>

Returns: nothing

Sets the retention of the specified log group. With a retention policy,
you can configure the number of days for which to retain log events in
the specified log group.

CloudWatch Logs doesn't immediately delete log events when they reach
their retention setting. It typically takes up to 72 hours after that
before log events are deleted, but in rare situations might take
longer.

To illustrate, imagine that you change a log group to have a longer
retention setting when it contains log events that are past the
expiration date, but haven't been deleted. Those log events will take
up to 72 hours to be deleted after the new retention date is reached.
To make sure that log data is deleted permanently, keep a log group at
its lower retention setting until 72 hours after the previous retention
period ends. Alternatively, wait to change the retention setting until
you confirm that the earlier log events are deleted.

When log events reach their retention setting they are marked for
deletion. After they are marked for deletion, they do not add to your
archival storage costs anymore, even if they are not actually deleted
until later. These log events marked for deletion are also not included
when you use an API to retrieve the C<storedBytes> value to see how
many bytes a log group is storing.


=head2 PutSubscriptionFilter

=over

=item DestinationArn => Str

=item FilterName => Str

=item FilterPattern => Str

=item LogGroupName => Str

=item [ApplyOnTransformedLogs => Bool]

=item [Distribution => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutSubscriptionFilter>

Returns: nothing

Creates or updates a subscription filter and associates it with the
specified log group. With subscription filters, you can subscribe to a
real-time stream of log events ingested through PutLogEvents
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html)
and have them delivered to a specific destination. When log events are
sent to the receiving service, they are Base64 encoded and compressed
with the GZIP format.

The following destinations are supported for subscription filters:

=over

=item *

An Amazon Kinesis data stream belonging to the same account as the
subscription filter, for same-account delivery.

=item *

A logical destination created with PutDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html)
that belongs to a different account, for cross-account delivery. We
currently support Kinesis Data Streams and Firehose as logical
destinations.

=item *

An Amazon Kinesis Data Firehose delivery stream that belongs to the
same account as the subscription filter, for same-account delivery.

=item *

An Lambda function that belongs to the same account as the subscription
filter, for same-account delivery.

=back

Each log group can have up to two subscription filters associated with
it. If you are updating an existing filter, you must specify the
correct name in C<filterName>.

Using regular expressions in filter patterns is supported. For these
filters, there is a quotas of quota of two regular expression patterns
within a single filter pattern. There is also a quota of five regular
expression patterns per log group. For more information about using
regular expressions in filter patterns, see Filter pattern syntax for
metric filters, subscription filters, filter log events, and Live Tail
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).

To perform a C<PutSubscriptionFilter> operation for any destination
except a Lambda function, you must also have the C<iam:PassRole>
permission.


=head2 PutTransformer

=over

=item LogGroupIdentifier => Str

=item TransformerConfig => ArrayRef[L<Paws::CloudWatchLogs::Processor>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutTransformer>

Returns: nothing

Creates or updates a I<log transformer> for a single log group. You use
log transformers to transform log events into a different format,
making them easier for you to process and analyze. You can also
transform logs from different sources into standardized formats that
contains relevant, source-specific information.

After you have created a transformer, CloudWatch Logs performs the
transformations at the time of log ingestion. You can then refer to the
transformed versions of the logs during operations such as querying
with CloudWatch Logs Insights or creating metric filters or
subscription filers.

You can also use a transformer to copy metadata from metadata keys into
the log events themselves. This metadata can include log group name,
log stream name, account ID and Region.

A transformer for a log group is a series of processors, where each
processor applies one type of transformation to the log events ingested
into this log group. The processors work one after another, in the
order that you list them, like a pipeline. For more information about
the available processors to use in a transformer, see Processors that
you can use
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors).

Having log events in standardized format enables visibility across your
applications for your log analysis, reporting, and alarming needs.
CloudWatch Logs provides transformation for common log types with
out-of-the-box transformation templates for major Amazon Web Services
log sources such as VPC flow logs, Lambda, and Amazon RDS. You can use
pre-built transformation templates or create custom transformation
policies.

You can create transformers only for the log groups in the Standard log
class.

You can also set up a transformer at the account level. For more
information, see PutAccountPolicy
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html).
If there is both a log-group level transformer created with
C<PutTransformer> and an account-level transformer that could apply to
the same log group, the log group uses only the log-group level
transformer. It ignores the account-level transformer.


=head2 StartLiveTail

=over

=item LogGroupIdentifiers => ArrayRef[Str|Undef]

=item [LogEventFilterPattern => Str]

=item [LogStreamNamePrefixes => ArrayRef[Str|Undef]]

=item [LogStreamNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::StartLiveTail>

Returns: a L<Paws::CloudWatchLogs::StartLiveTailResponse> instance

Starts a Live Tail streaming session for one or more log groups. A Live
Tail session returns a stream of log events that have been recently
ingested in the log groups. For more information, see Use Live Tail to
view logs in near real time
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html).

The response to this operation is a response stream, over which the
server sends live log events and the client receives them.

The following objects are sent over the stream:

=over

=item *

A single LiveTailSessionStart
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionStart.html)
object is sent at the start of the session.

=item *

Every second, a LiveTailSessionUpdate
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionUpdate.html)
object is sent. Each of these objects contains an array of the actual
log events.

If no new log events were ingested in the past second, the
C<LiveTailSessionUpdate> object will contain an empty array.

The array of log events contained in a C<LiveTailSessionUpdate> can
include as many as 500 log events. If the number of log events matching
the request exceeds 500 per second, the log events are sampled down to
500 log events to be included in each C<LiveTailSessionUpdate> object.

If your client consumes the log events slower than the server produces
them, CloudWatch Logs buffers up to 10 C<LiveTailSessionUpdate> events
or 5000 log events, after which it starts dropping the oldest events.

=item *

A SessionStreamingException
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionStreamingException)
object is returned if an unknown error occurs on the server side.

=item *

A SessionTimeoutException
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionTimeoutException)
object is returned when the session times out, after it has been kept
open for three hours.

=back

The C<StartLiveTail> API routes requests to
C<streaming-logs.I<Region>.amazonaws.com> using SDK host prefix
injection. VPC endpoint support is not available for this API.

You can end a session before it times out by closing the session stream
or by closing the client that is receiving the stream. The session also
ends if the established connection between the client and the server
breaks.

For examples of using an SDK to start a Live Tail session, see Start a
Live Tail session using an Amazon Web Services SDK
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/example_cloudwatch-logs_StartLiveTail_section.html).


=head2 StartQuery

=over

=item EndTime => Int

=item QueryString => Str

=item StartTime => Int

=item [Limit => Int]

=item [LogGroupIdentifiers => ArrayRef[Str|Undef]]

=item [LogGroupName => Str]

=item [LogGroupNames => ArrayRef[Str|Undef]]

=item [QueryLanguage => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::StartQuery>

Returns: a L<Paws::CloudWatchLogs::StartQueryResponse> instance

Starts a query of one or more log groups using CloudWatch Logs
Insights. You specify the log groups and time range to query and the
query string to use.

For more information, see CloudWatch Logs Insights Query Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).

After you run a query using C<StartQuery>, the query results are stored
by CloudWatch Logs. You can use GetQueryResults
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html)
to retrieve the results of a query, using the C<queryId> that
C<StartQuery> returns.

To specify the log groups to query, a C<StartQuery> operation must
include one of the following:

=over

=item *

Either exactly one of the following parameters: C<logGroupName>,
C<logGroupNames>, or C<logGroupIdentifiers>

=item *

Or the C<queryString> must include a C<SOURCE> command to select log
groups for the query. The C<SOURCE> command can select log groups based
on log group name prefix, account ID, and log class.

For more information about the C<SOURCE> command, see SOURCE
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax-Source.html).

=back

If you have associated a KMS key with the query results in this
account, then StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html)
uses that key to encrypt the results when it stores them. If no key is
associated with query results, the query results are encrypted with the
default CloudWatch Logs encryption method.

Queries time out after 60 minutes of runtime. If your queries are
timing out, reduce the time range being searched or partition your
query into a number of queries.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account to start a query in a linked
source account. For more information, see CloudWatch cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
For a cross-account C<StartQuery> operation, the query definition must
be defined in the monitoring account.

You can have up to 30 concurrent CloudWatch Logs insights queries,
including queries that have been added to dashboards.


=head2 StopQuery

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::StopQuery>

Returns: a L<Paws::CloudWatchLogs::StopQueryResponse> instance

Stops a CloudWatch Logs Insights query that is in progress. If the
query has already ended, the operation returns an error indicating that
the specified query is not running.


=head2 TagLogGroup

=over

=item LogGroupName => Str

=item Tags => L<Paws::CloudWatchLogs::Tags>


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::TagLogGroup>

Returns: nothing

The TagLogGroup operation is on the path to deprecation. We recommend
that you use TagResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html)
instead.

Adds or updates the specified tags for the specified log group.

To list the tags for a log group, use ListTagsForResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html).
To remove tags, use UntagResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html).

For more information about tags, see Tag Log Groups in Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging)
in the I<Amazon CloudWatch Logs User Guide>.

CloudWatch Logs doesn't support IAM policies that prevent users from
assigning specified tags to log groups using the
C<aws:Resource/I<key-name> > or C<aws:TagKeys> condition keys. For more
information about using tags to control access, see Controlling access
to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CloudWatchLogs::Tags>


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::TagResource>

Returns: nothing

Assigns one or more tags (key-value pairs) to the specified CloudWatch
Logs resource. Currently, the only CloudWatch Logs resources that can
be tagged are log groups and destinations.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a resource that already has
tags. If you specify a new tag key for the alarm, this tag is appended
to the list of tags associated with the alarm. If you specify a tag key
that is already associated with the alarm, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a CloudWatch Logs resource.


=head2 TestMetricFilter

=over

=item FilterPattern => Str

=item LogEventMessages => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::TestMetricFilter>

Returns: a L<Paws::CloudWatchLogs::TestMetricFilterResponse> instance

Tests the filter pattern of a metric filter against a sample of log
event messages. You can use this operation to validate the correctness
of a metric filter pattern.


=head2 TestTransformer

=over

=item LogEventMessages => ArrayRef[Str|Undef]

=item TransformerConfig => ArrayRef[L<Paws::CloudWatchLogs::Processor>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::TestTransformer>

Returns: a L<Paws::CloudWatchLogs::TestTransformerResponse> instance

Use this operation to test a log transformer. You enter the transformer
configuration and a set of log events to test with. The operation
responds with an array that includes the original log events and the
transformed versions.


=head2 UntagLogGroup

=over

=item LogGroupName => Str

=item Tags => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::UntagLogGroup>

Returns: nothing

The UntagLogGroup operation is on the path to deprecation. We recommend
that you use UntagResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html)
instead.

Removes the specified tags from the specified log group.

To list the tags for a log group, use ListTagsForResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html).
To add tags, use TagResource
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html).

CloudWatch Logs doesn't support IAM policies that prevent users from
assigning specified tags to log groups using the
C<aws:Resource/I<key-name> > or C<aws:TagKeys> condition keys.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::UntagResource>

Returns: nothing

Removes one or more tags from the specified resource.


=head2 UpdateAnomaly

=over

=item AnomalyDetectorArn => Str

=item [AnomalyId => Str]

=item [Baseline => Bool]

=item [PatternId => Str]

=item [SuppressionPeriod => L<Paws::CloudWatchLogs::SuppressionPeriod>]

=item [SuppressionType => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::UpdateAnomaly>

Returns: nothing

Use this operation to I<suppress> anomaly detection for a specified
anomaly or pattern. If you suppress an anomaly, CloudWatch Logs won't
report new occurrences of that anomaly and won't update that anomaly
with new data. If you suppress a pattern, CloudWatch Logs won't report
any anomalies related to that pattern.

You must specify either C<anomalyId> or C<patternId>, but you can't
specify both parameters in the same operation.

If you have previously used this operation to suppress detection of a
pattern or anomaly, you can use it again to cause CloudWatch Logs to
end the suppression. To do this, use this operation and specify the
anomaly or pattern to stop suppressing, and omit the C<suppressionType>
and C<suppressionPeriod> parameters.


=head2 UpdateDeliveryConfiguration

=over

=item Id => Str

=item [FieldDelimiter => Str]

=item [RecordFields => ArrayRef[Str|Undef]]

=item [S3DeliveryConfiguration => L<Paws::CloudWatchLogs::S3DeliveryConfiguration>]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::UpdateDeliveryConfiguration>

Returns: a L<Paws::CloudWatchLogs::UpdateDeliveryConfigurationResponse> instance

Use this operation to update the configuration of a delivery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Delivery.html)
to change either the S3 path pattern or the format of the delivered
logs. You can't use this operation to change the source or destination
of the delivery.


=head2 UpdateLogAnomalyDetector

=over

=item AnomalyDetectorArn => Str

=item Enabled => Bool

=item [AnomalyVisibilityTime => Int]

=item [EvaluationFrequency => Str]

=item [FilterPattern => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchLogs::UpdateLogAnomalyDetector>

Returns: nothing

Updates an existing log anomaly detector.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllConfigurationTemplates(sub { },[DeliveryDestinationTypes => ArrayRef[Str|Undef], Limit => Int, LogTypes => ArrayRef[Str|Undef], NextToken => Str, ResourceTypes => ArrayRef[Str|Undef], Service => Str])

=head2 DescribeAllConfigurationTemplates([DeliveryDestinationTypes => ArrayRef[Str|Undef], Limit => Int, LogTypes => ArrayRef[Str|Undef], NextToken => Str, ResourceTypes => ArrayRef[Str|Undef], Service => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configurationTemplates, passing the object as the first parameter, and the string 'configurationTemplates' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDeliveries(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllDeliveries([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deliveries, passing the object as the first parameter, and the string 'deliveries' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeDeliveriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDeliveryDestinations(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllDeliveryDestinations([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deliveryDestinations, passing the object as the first parameter, and the string 'deliveryDestinations' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDeliverySources(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllDeliverySources([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deliverySources, passing the object as the first parameter, and the string 'deliverySources' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeDeliverySourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDestinations(sub { },[DestinationNamePrefix => Str, Limit => Int, NextToken => Str])

=head2 DescribeAllDestinations([DestinationNamePrefix => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - destinations, passing the object as the first parameter, and the string 'destinations' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportTasks(sub { },[Limit => Int, NextToken => Str, StatusCode => Str, TaskId => Str])

=head2 DescribeAllExportTasks([Limit => Int, NextToken => Str, StatusCode => Str, TaskId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exportTasks, passing the object as the first parameter, and the string 'exportTasks' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeExportTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLogGroups(sub { },[AccountIdentifiers => ArrayRef[Str|Undef], IncludeLinkedAccounts => Bool, Limit => Int, LogGroupClass => Str, LogGroupIdentifiers => ArrayRef[Str|Undef], LogGroupNamePattern => Str, LogGroupNamePrefix => Str, NextToken => Str])

=head2 DescribeAllLogGroups([AccountIdentifiers => ArrayRef[Str|Undef], IncludeLinkedAccounts => Bool, Limit => Int, LogGroupClass => Str, LogGroupIdentifiers => ArrayRef[Str|Undef], LogGroupNamePattern => Str, LogGroupNamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logGroups, passing the object as the first parameter, and the string 'logGroups' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLogStreams(sub { },[Descending => Bool, Limit => Int, LogGroupIdentifier => Str, LogGroupName => Str, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])

=head2 DescribeAllLogStreams([Descending => Bool, Limit => Int, LogGroupIdentifier => Str, LogGroupName => Str, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logStreams, passing the object as the first parameter, and the string 'logStreams' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMetricFilters(sub { },[FilterNamePrefix => Str, Limit => Int, LogGroupName => Str, MetricName => Str, MetricNamespace => Str, NextToken => Str])

=head2 DescribeAllMetricFilters([FilterNamePrefix => Str, Limit => Int, LogGroupName => Str, MetricName => Str, MetricNamespace => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - metricFilters, passing the object as the first parameter, and the string 'metricFilters' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllQueries(sub { },[LogGroupName => Str, MaxResults => Int, NextToken => Str, QueryLanguage => Str, Status => Str])

=head2 DescribeAllQueries([LogGroupName => Str, MaxResults => Int, NextToken => Str, QueryLanguage => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queries, passing the object as the first parameter, and the string 'queries' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeQueriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllResourcePolicies(sub { },[Limit => Int, NextToken => Str])

=head2 DescribeAllResourcePolicies([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourcePolicies, passing the object as the first parameter, and the string 'resourcePolicies' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeResourcePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubscriptionFilters(sub { },LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])

=head2 DescribeAllSubscriptionFilters(LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscriptionFilters, passing the object as the first parameter, and the string 'subscriptionFilters' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 FilterAllLogEvents(sub { },[EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogGroupIdentifier => Str, LogGroupName => Str, LogStreamNamePrefix => Str, LogStreamNames => ArrayRef[Str|Undef], NextToken => Str, StartTime => Int, Unmask => Bool])

=head2 FilterAllLogEvents([EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogGroupIdentifier => Str, LogGroupName => Str, LogStreamNamePrefix => Str, LogStreamNames => ArrayRef[Str|Undef], NextToken => Str, StartTime => Int, Unmask => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

 - searchedLogStreams, passing the object as the first parameter, and the string 'searchedLogStreams' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::FilterLogEventsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnomalies(sub { },[AnomalyDetectorArn => Str, Limit => Int, NextToken => Str, SuppressionState => Str])

=head2 ListAllAnomalies([AnomalyDetectorArn => Str, Limit => Int, NextToken => Str, SuppressionState => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - anomalies, passing the object as the first parameter, and the string 'anomalies' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::ListAnomaliesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLogAnomalyDetectors(sub { },[FilterLogGroupArn => Str, Limit => Int, NextToken => Str])

=head2 ListAllLogAnomalyDetectors([FilterLogGroupArn => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - anomalyDetectors, passing the object as the first parameter, and the string 'anomalyDetectors' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLogGroupsForQuery(sub { },QueryId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLogGroupsForQuery(QueryId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logGroupIdentifiers, passing the object as the first parameter, and the string 'logGroupIdentifiers' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::ListLogGroupsForQueryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

