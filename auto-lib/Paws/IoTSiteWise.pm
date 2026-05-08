package Paws::IoTSiteWise;
  use Moose;
  sub service { 'iotsitewise' }
  sub signing_name { 'iotsitewise' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::AssociateAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTimeSeriesToAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::AssociateTimeSeriesToAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchAssociateProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchDisassociateProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAssetPropertyAggregates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchGetAssetPropertyAggregates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAssetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchGetAssetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAssetPropertyValueHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchGetAssetPropertyValueHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutAssetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchPutAssetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetModelCompositeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAssetModelCompositeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBulkImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateBulkImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssetModelCompositeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAssetModelCompositeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeletePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTimeSeries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteTimeSeries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetCompositeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetCompositeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetModelCompositeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetModelCompositeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBulkImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeBulkImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGatewayCapabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorageConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeStorageConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTimeSeries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeTimeSeries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DisassociateAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTimeSeriesFromAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DisassociateTimeSeriesFromAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ExecuteAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ExecuteQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyAggregates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyAggregates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyValueHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyValueHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInterpolatedAssetPropertyValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::InvokeAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetModelCompositeModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetModelCompositeModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetModelProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetModelProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetRelationships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetRelationships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssociatedAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBulkImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListBulkImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCompositionRelationships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListCompositionRelationships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListPortals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTimeSeries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListTimeSeries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::PutDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::PutLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutStorageConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::PutStorageConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetModelCompositeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAssetModelCompositeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayCapabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ExecuteAllQuery {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ExecuteQuery(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ExecuteQuery(@_, nextToken => $next_result->nextToken);
        push @{ $result->rows }, @{ $next_result->rows };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rows') foreach (@{ $result->rows });
        $result = $self->ExecuteQuery(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rows') foreach (@{ $result->rows });
    }

    return undef
  }
  sub GetAllAssetPropertyAggregates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssetPropertyAggregates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetAssetPropertyAggregates(@_, nextToken => $next_result->nextToken);
        push @{ $result->aggregatedValues }, @{ $next_result->aggregatedValues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aggregatedValues') foreach (@{ $result->aggregatedValues });
        $result = $self->GetAssetPropertyAggregates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aggregatedValues') foreach (@{ $result->aggregatedValues });
    }

    return undef
  }
  sub GetAllAssetPropertyValueHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssetPropertyValueHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetAssetPropertyValueHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetPropertyValueHistory }, @{ $next_result->assetPropertyValueHistory };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetPropertyValueHistory') foreach (@{ $result->assetPropertyValueHistory });
        $result = $self->GetAssetPropertyValueHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetPropertyValueHistory') foreach (@{ $result->assetPropertyValueHistory });
    }

    return undef
  }
  sub GetAllInterpolatedAssetPropertyValues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInterpolatedAssetPropertyValues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetInterpolatedAssetPropertyValues(@_, nextToken => $next_result->nextToken);
        push @{ $result->interpolatedAssetPropertyValues }, @{ $next_result->interpolatedAssetPropertyValues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'interpolatedAssetPropertyValues') foreach (@{ $result->interpolatedAssetPropertyValues });
        $result = $self->GetInterpolatedAssetPropertyValues(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'interpolatedAssetPropertyValues') foreach (@{ $result->interpolatedAssetPropertyValues });
    }

    return undef
  }
  sub ListAllAccessPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessPolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->accessPolicySummaries }, @{ $next_result->accessPolicySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accessPolicySummaries') foreach (@{ $result->accessPolicySummaries });
        $result = $self->ListAccessPolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accessPolicySummaries') foreach (@{ $result->accessPolicySummaries });
    }

    return undef
  }
  sub ListAllActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->actionSummaries }, @{ $next_result->actionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'actionSummaries') foreach (@{ $result->actionSummaries });
        $result = $self->ListActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'actionSummaries') foreach (@{ $result->actionSummaries });
    }

    return undef
  }
  sub ListAllAssetModelCompositeModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetModelCompositeModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetModelCompositeModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetModelCompositeModelSummaries }, @{ $next_result->assetModelCompositeModelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetModelCompositeModelSummaries') foreach (@{ $result->assetModelCompositeModelSummaries });
        $result = $self->ListAssetModelCompositeModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetModelCompositeModelSummaries') foreach (@{ $result->assetModelCompositeModelSummaries });
    }

    return undef
  }
  sub ListAllAssetModelProperties {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetModelProperties(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetModelProperties(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetModelPropertySummaries }, @{ $next_result->assetModelPropertySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetModelPropertySummaries') foreach (@{ $result->assetModelPropertySummaries });
        $result = $self->ListAssetModelProperties(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetModelPropertySummaries') foreach (@{ $result->assetModelPropertySummaries });
    }

    return undef
  }
  sub ListAllAssetModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetModelSummaries }, @{ $next_result->assetModelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetModelSummaries') foreach (@{ $result->assetModelSummaries });
        $result = $self->ListAssetModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetModelSummaries') foreach (@{ $result->assetModelSummaries });
    }

    return undef
  }
  sub ListAllAssetProperties {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetProperties(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetProperties(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetPropertySummaries }, @{ $next_result->assetPropertySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetPropertySummaries') foreach (@{ $result->assetPropertySummaries });
        $result = $self->ListAssetProperties(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetPropertySummaries') foreach (@{ $result->assetPropertySummaries });
    }

    return undef
  }
  sub ListAllAssetRelationships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetRelationships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetRelationships(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetRelationshipSummaries }, @{ $next_result->assetRelationshipSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetRelationshipSummaries') foreach (@{ $result->assetRelationshipSummaries });
        $result = $self->ListAssetRelationships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetRelationshipSummaries') foreach (@{ $result->assetRelationshipSummaries });
    }

    return undef
  }
  sub ListAllAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetSummaries }, @{ $next_result->assetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
        $result = $self->ListAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
    }

    return undef
  }
  sub ListAllAssociatedAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssociatedAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetSummaries }, @{ $next_result->assetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
        $result = $self->ListAssociatedAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
    }

    return undef
  }
  sub ListAllBulkImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBulkImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBulkImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaries }, @{ $next_result->jobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
        $result = $self->ListBulkImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
    }

    return undef
  }
  sub ListAllCompositionRelationships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCompositionRelationships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCompositionRelationships(@_, nextToken => $next_result->nextToken);
        push @{ $result->compositionRelationshipSummaries }, @{ $next_result->compositionRelationshipSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'compositionRelationshipSummaries') foreach (@{ $result->compositionRelationshipSummaries });
        $result = $self->ListCompositionRelationships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'compositionRelationshipSummaries') foreach (@{ $result->compositionRelationshipSummaries });
    }

    return undef
  }
  sub ListAllDashboards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDashboards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDashboards(@_, nextToken => $next_result->nextToken);
        push @{ $result->dashboardSummaries }, @{ $next_result->dashboardSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dashboardSummaries') foreach (@{ $result->dashboardSummaries });
        $result = $self->ListDashboards(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dashboardSummaries') foreach (@{ $result->dashboardSummaries });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetSummaries }, @{ $next_result->datasetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetSummaries') foreach (@{ $result->datasetSummaries });
        $result = $self->ListDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetSummaries') foreach (@{ $result->datasetSummaries });
    }

    return undef
  }
  sub ListAllGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGateways(@_, nextToken => $next_result->nextToken);
        push @{ $result->gatewaySummaries }, @{ $next_result->gatewaySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'gatewaySummaries') foreach (@{ $result->gatewaySummaries });
        $result = $self->ListGateways(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'gatewaySummaries') foreach (@{ $result->gatewaySummaries });
    }

    return undef
  }
  sub ListAllPortals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPortals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPortals(@_, nextToken => $next_result->nextToken);
        push @{ $result->portalSummaries }, @{ $next_result->portalSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'portalSummaries') foreach (@{ $result->portalSummaries });
        $result = $self->ListPortals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'portalSummaries') foreach (@{ $result->portalSummaries });
    }

    return undef
  }
  sub ListAllProjectAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjectAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjectAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetIds }, @{ $next_result->assetIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetIds') foreach (@{ $result->assetIds });
        $result = $self->ListProjectAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetIds') foreach (@{ $result->assetIds });
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
        push @{ $result->projectSummaries }, @{ $next_result->projectSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projectSummaries') foreach (@{ $result->projectSummaries });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projectSummaries') foreach (@{ $result->projectSummaries });
    }

    return undef
  }
  sub ListAllTimeSeries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTimeSeries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTimeSeries(@_, nextToken => $next_result->nextToken);
        push @{ $result->TimeSeriesSummaries }, @{ $next_result->TimeSeriesSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'TimeSeriesSummaries') foreach (@{ $result->TimeSeriesSummaries });
        $result = $self->ListTimeSeries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'TimeSeriesSummaries') foreach (@{ $result->TimeSeriesSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateAssets AssociateTimeSeriesToAssetProperty BatchAssociateProjectAssets BatchDisassociateProjectAssets BatchGetAssetPropertyAggregates BatchGetAssetPropertyValue BatchGetAssetPropertyValueHistory BatchPutAssetPropertyValue CreateAccessPolicy CreateAsset CreateAssetModel CreateAssetModelCompositeModel CreateBulkImportJob CreateDashboard CreateDataset CreateGateway CreatePortal CreateProject DeleteAccessPolicy DeleteAsset DeleteAssetModel DeleteAssetModelCompositeModel DeleteDashboard DeleteDataset DeleteGateway DeletePortal DeleteProject DeleteTimeSeries DescribeAccessPolicy DescribeAction DescribeAsset DescribeAssetCompositeModel DescribeAssetModel DescribeAssetModelCompositeModel DescribeAssetProperty DescribeBulkImportJob DescribeDashboard DescribeDataset DescribeDefaultEncryptionConfiguration DescribeGateway DescribeGatewayCapabilityConfiguration DescribeLoggingOptions DescribePortal DescribeProject DescribeStorageConfiguration DescribeTimeSeries DisassociateAssets DisassociateTimeSeriesFromAssetProperty ExecuteAction ExecuteQuery GetAssetPropertyAggregates GetAssetPropertyValue GetAssetPropertyValueHistory GetInterpolatedAssetPropertyValues InvokeAssistant ListAccessPolicies ListActions ListAssetModelCompositeModels ListAssetModelProperties ListAssetModels ListAssetProperties ListAssetRelationships ListAssets ListAssociatedAssets ListBulkImportJobs ListCompositionRelationships ListDashboards ListDatasets ListGateways ListPortals ListProjectAssets ListProjects ListTagsForResource ListTimeSeries PutDefaultEncryptionConfiguration PutLoggingOptions PutStorageConfiguration TagResource UntagResource UpdateAccessPolicy UpdateAsset UpdateAssetModel UpdateAssetModelCompositeModel UpdateAssetProperty UpdateDashboard UpdateDataset UpdateGateway UpdateGatewayCapabilityConfiguration UpdatePortal UpdateProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise - Perl Interface to AWS AWS IoT SiteWise

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTSiteWise');
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

Welcome to the IoT SiteWise API Reference. IoT SiteWise is an Amazon
Web Services service that connects Industrial Internet of Things (IIoT)
(https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
devices to the power of the Amazon Web Services Cloud. For more
information, see the IoT SiteWise User Guide
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
information about IoT SiteWise quotas, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateAssets

=over

=item AssetId => Str

=item ChildAssetId => Str

=item HierarchyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::AssociateAssets>

Returns: nothing

Associates a child asset with the given parent asset through a
hierarchy defined in the parent asset's model. For more information,
see Associating assets
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
in the I<IoT SiteWise User Guide>.


=head2 AssociateTimeSeriesToAssetProperty

=over

=item Alias => Str

=item AssetId => Str

=item PropertyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::AssociateTimeSeriesToAssetProperty>

Returns: nothing

Associates a time series (data stream) with an asset property.


=head2 BatchAssociateProjectAssets

=over

=item AssetIds => ArrayRef[Str|Undef]

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchAssociateProjectAssets>

Returns: a L<Paws::IoTSiteWise::BatchAssociateProjectAssetsResponse> instance

Associates a group (batch) of assets with an IoT SiteWise Monitor
project.


=head2 BatchDisassociateProjectAssets

=over

=item AssetIds => ArrayRef[Str|Undef]

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchDisassociateProjectAssets>

Returns: a L<Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse> instance

Disassociates a group (batch) of assets from an IoT SiteWise Monitor
project.


=head2 BatchGetAssetPropertyAggregates

=over

=item Entries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesEntry>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchGetAssetPropertyAggregates>

Returns: a L<Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesResponse> instance

Gets aggregated values (for example, average, minimum, and maximum) for
one or more asset properties. For more information, see Querying
aggregates
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
in the I<IoT SiteWise User Guide>.


=head2 BatchGetAssetPropertyValue

=over

=item Entries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueEntry>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchGetAssetPropertyValue>

Returns: a L<Paws::IoTSiteWise::BatchGetAssetPropertyValueResponse> instance

Gets the current value for one or more asset properties. For more
information, see Querying current values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
in the I<IoT SiteWise User Guide>.


=head2 BatchGetAssetPropertyValueHistory

=over

=item Entries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueHistoryEntry>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchGetAssetPropertyValueHistory>

Returns: a L<Paws::IoTSiteWise::BatchGetAssetPropertyValueHistoryResponse> instance

Gets the historical values for one or more asset properties. For more
information, see Querying historical values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
in the I<IoT SiteWise User Guide>.


=head2 BatchPutAssetPropertyValue

=over

=item Entries => ArrayRef[L<Paws::IoTSiteWise::PutAssetPropertyValueEntry>]

=item [EnablePartialEntryProcessing => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchPutAssetPropertyValue>

Returns: a L<Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse> instance

Sends a list of asset property values to IoT SiteWise. Each value is a
timestamp-quality-value (TQV) data point. For more information, see
Ingesting data using the API
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
in the I<IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back

With respect to Unix epoch time, IoT SiteWise accepts only TQVs that
have a timestamp of no more than 7 days in the past and no more than 10
minutes in the future. IoT SiteWise rejects timestamps outside of the
inclusive range of [-7 days, +10 minutes] and returns a
C<TimestampOutOfRangeException> error.

For each asset property, IoT SiteWise overwrites TQVs with duplicate
timestamps unless the newer TQV has a different quality. For example,
if you store a TQV C<{T1, GOOD, V1}>, then storing C<{T1, GOOD, V2}>
replaces the existing TQV.

IoT SiteWise authorizes access to each C<BatchPutAssetPropertyValue>
entry individually. For more information, see
BatchPutAssetPropertyValue authorization
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action)
in the I<IoT SiteWise User Guide>.


=head2 CreateAccessPolicy

=over

=item AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

=item AccessPolicyPermission => Str

=item AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAccessPolicy>

Returns: a L<Paws::IoTSiteWise::CreateAccessPolicyResponse> instance

Creates an access policy that grants the specified identity (IAM
Identity Center user, IAM Identity Center group, or IAM user) access to
the specified IoT SiteWise Monitor portal or project resource.


=head2 CreateAsset

=over

=item AssetModelId => Str

=item AssetName => Str

=item [AssetDescription => Str]

=item [AssetExternalId => Str]

=item [AssetId => Str]

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAsset>

Returns: a L<Paws::IoTSiteWise::CreateAssetResponse> instance

Creates an asset from an existing asset model. For more information,
see Creating assets
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
in the I<IoT SiteWise User Guide>.


=head2 CreateAssetModel

=over

=item AssetModelName => Str

=item [AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelDefinition>]]

=item [AssetModelDescription => Str]

=item [AssetModelExternalId => Str]

=item [AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchyDefinition>]]

=item [AssetModelId => Str]

=item [AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]]

=item [AssetModelType => Str]

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAssetModel>

Returns: a L<Paws::IoTSiteWise::CreateAssetModelResponse> instance

Creates an asset model from specified property and hierarchy
definitions. You create assets from asset models. With asset models,
you can easily create assets of the same type that have standardized
definitions. Each asset created from a model inherits the asset model's
property and hierarchy definitions. For more information, see Defining
asset models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
in the I<IoT SiteWise User Guide>.

You can create two types of asset models, C<ASSET_MODEL> or
C<COMPONENT_MODEL>.

=over

=item *

B<ASSET_MODEL> E<ndash> (default) An asset model that you can use to
create assets. Can't be included as a component in another asset model.

=item *

B<COMPONENT_MODEL> E<ndash> A reusable component that you can include
in the composite models of other asset models. You can't create assets
directly from this type of asset model.

=back



=head2 CreateAssetModelCompositeModel

=over

=item AssetModelCompositeModelName => Str

=item AssetModelCompositeModelType => Str

=item AssetModelId => Str

=item [AssetModelCompositeModelDescription => Str]

=item [AssetModelCompositeModelExternalId => Str]

=item [AssetModelCompositeModelId => Str]

=item [AssetModelCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]]

=item [ClientToken => Str]

=item [ComposedAssetModelId => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MatchForVersionType => Str]

=item [ParentAssetModelCompositeModelId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAssetModelCompositeModel>

Returns: a L<Paws::IoTSiteWise::CreateAssetModelCompositeModelResponse> instance

Creates a custom composite model from specified property and hierarchy
definitions. There are two types of custom composite models, C<inline>
and C<component-model-based>.

Use component-model-based custom composite models to define standard,
reusable components. A component-model-based custom composite model
consists of a name, a description, and the ID of the component model it
references. A component-model-based custom composite model has no
properties of its own; its referenced component model provides its
associated properties to any created assets. For more information, see
Custom composite models (Components)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
in the I<IoT SiteWise User Guide>.

Use inline custom composite models to organize the properties of an
asset model. The properties of inline custom composite models are local
to the asset model where they are included and can't be used to create
multiple assets.

To create a component-model-based model, specify the
C<composedAssetModelId> of an existing asset model with
C<assetModelType> of C<COMPONENT_MODEL>.

To create an inline model, specify the
C<assetModelCompositeModelProperties> and don't include an
C<composedAssetModelId>.


=head2 CreateBulkImportJob

=over

=item ErrorReportLocation => L<Paws::IoTSiteWise::ErrorReportLocation>

=item Files => ArrayRef[L<Paws::IoTSiteWise::File>]

=item JobConfiguration => L<Paws::IoTSiteWise::JobConfiguration>

=item JobName => Str

=item JobRoleArn => Str

=item [AdaptiveIngestion => Bool]

=item [DeleteFilesAfterImport => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateBulkImportJob>

Returns: a L<Paws::IoTSiteWise::CreateBulkImportJobResponse> instance

Defines a job to ingest data to IoT SiteWise from Amazon S3. For more
information, see Create a bulk import job (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html)
in the I<Amazon Simple Storage Service User Guide>.

Before you create a bulk import job, you must enable IoT SiteWise warm
tier or IoT SiteWise cold tier. For more information about how to
configure storage settings, see PutStorageConfiguration
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html).

Bulk import is designed to store historical data to IoT SiteWise. It
does not trigger computations or notifications on IoT SiteWise warm or
cold tier storage.


=head2 CreateDashboard

=over

=item DashboardDefinition => Str

=item DashboardName => Str

=item ProjectId => Str

=item [ClientToken => Str]

=item [DashboardDescription => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateDashboard>

Returns: a L<Paws::IoTSiteWise::CreateDashboardResponse> instance

Creates a dashboard in an IoT SiteWise Monitor project.


=head2 CreateDataset

=over

=item DatasetName => Str

=item DatasetSource => L<Paws::IoTSiteWise::DatasetSource>

=item [ClientToken => Str]

=item [DatasetDescription => Str]

=item [DatasetId => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateDataset>

Returns: a L<Paws::IoTSiteWise::CreateDatasetResponse> instance

Creates a dataset to connect an external datasource.


=head2 CreateGateway

=over

=item GatewayName => Str

=item GatewayPlatform => L<Paws::IoTSiteWise::GatewayPlatform>

=item [GatewayVersion => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateGateway>

Returns: a L<Paws::IoTSiteWise::CreateGatewayResponse> instance

Creates a gateway, which is a virtual or edge device that delivers
industrial data streams from local servers to IoT SiteWise. For more
information, see Ingesting data using a gateway
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
in the I<IoT SiteWise User Guide>.


=head2 CreatePortal

=over

=item PortalContactEmail => Str

=item PortalName => Str

=item RoleArn => Str

=item [Alarms => L<Paws::IoTSiteWise::Alarms>]

=item [ClientToken => Str]

=item [NotificationSenderEmail => Str]

=item [PortalAuthMode => Str]

=item [PortalDescription => Str]

=item [PortalLogoImageFile => L<Paws::IoTSiteWise::ImageFile>]

=item [PortalType => Str]

=item [PortalTypeConfiguration => L<Paws::IoTSiteWise::PortalTypeConfiguration>]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreatePortal>

Returns: a L<Paws::IoTSiteWise::CreatePortalResponse> instance

Creates a portal, which can contain projects and dashboards. IoT
SiteWise Monitor uses IAM Identity Center or IAM to authenticate portal
users and manage user permissions.

Before you can sign in to a new portal, you must add at least one
identity to that portal. For more information, see Adding or removing
portal administrators
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins)
in the I<IoT SiteWise User Guide>.


=head2 CreateProject

=over

=item PortalId => Str

=item ProjectName => Str

=item [ClientToken => Str]

=item [ProjectDescription => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateProject>

Returns: a L<Paws::IoTSiteWise::CreateProjectResponse> instance

Creates a project in the specified portal.

Make sure that the project name and description don't contain
confidential information.


=head2 DeleteAccessPolicy

=over

=item AccessPolicyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAccessPolicy>

Returns: a L<Paws::IoTSiteWise::DeleteAccessPolicyResponse> instance

Deletes an access policy that grants the specified identity access to
the specified IoT SiteWise Monitor resource. You can use this operation
to revoke access to an IoT SiteWise Monitor resource.


=head2 DeleteAsset

=over

=item AssetId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAsset>

Returns: a L<Paws::IoTSiteWise::DeleteAssetResponse> instance

Deletes an asset. This action can't be undone. For more information,
see Deleting assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
in the I<IoT SiteWise User Guide>.

You can't delete an asset that's associated to another asset. For more
information, see DisassociateAssets
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).


=head2 DeleteAssetModel

=over

=item AssetModelId => Str

=item [ClientToken => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MatchForVersionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAssetModel>

Returns: a L<Paws::IoTSiteWise::DeleteAssetModelResponse> instance

Deletes an asset model. This action can't be undone. You must delete
all assets created from an asset model before you can delete the model.
Also, you can't delete an asset model if a parent asset model exists
that contains a property formula expression that depends on the asset
model that you want to delete. For more information, see Deleting
assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
in the I<IoT SiteWise User Guide>.


=head2 DeleteAssetModelCompositeModel

=over

=item AssetModelCompositeModelId => Str

=item AssetModelId => Str

=item [ClientToken => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MatchForVersionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAssetModelCompositeModel>

Returns: a L<Paws::IoTSiteWise::DeleteAssetModelCompositeModelResponse> instance

Deletes a composite model. This action can't be undone. You must delete
all assets created from a composite model before you can delete the
model. Also, you can't delete a composite model if a parent asset model
exists that contains a property formula expression that depends on the
asset model that you want to delete. For more information, see Deleting
assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
in the I<IoT SiteWise User Guide>.


=head2 DeleteDashboard

=over

=item DashboardId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteDashboard>

Returns: a L<Paws::IoTSiteWise::DeleteDashboardResponse> instance

Deletes a dashboard from IoT SiteWise Monitor.


=head2 DeleteDataset

=over

=item DatasetId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteDataset>

Returns: a L<Paws::IoTSiteWise::DeleteDatasetResponse> instance

Deletes a dataset. This cannot be undone.


=head2 DeleteGateway

=over

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteGateway>

Returns: nothing

Deletes a gateway from IoT SiteWise. When you delete a gateway, some of
the gateway's files remain in your gateway's file system.


=head2 DeletePortal

=over

=item PortalId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeletePortal>

Returns: a L<Paws::IoTSiteWise::DeletePortalResponse> instance

Deletes a portal from IoT SiteWise Monitor.


=head2 DeleteProject

=over

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteProject>

Returns: a L<Paws::IoTSiteWise::DeleteProjectResponse> instance

Deletes a project from IoT SiteWise Monitor.


=head2 DeleteTimeSeries

=over

=item [Alias => Str]

=item [AssetId => Str]

=item [ClientToken => Str]

=item [PropertyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteTimeSeries>

Returns: nothing

Deletes a time series (data stream). If you delete a time series that's
associated with an asset property, the asset property still exists, but
the time series will no longer be associated with this asset property.

To identify a time series, do one of the following:

=over

=item *

If the time series isn't associated with an asset property, specify the
C<alias> of the time series.

=item *

If the time series is associated with an asset property, specify one of
the following:

=over

=item *

The C<alias> of the time series.

=item *

The C<assetId> and C<propertyId> that identifies the asset property.

=back

=back



=head2 DescribeAccessPolicy

=over

=item AccessPolicyId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAccessPolicy>

Returns: a L<Paws::IoTSiteWise::DescribeAccessPolicyResponse> instance

Describes an access policy, which specifies an identity's access to an
IoT SiteWise Monitor portal or project.


=head2 DescribeAction

=over

=item ActionId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAction>

Returns: a L<Paws::IoTSiteWise::DescribeActionResponse> instance

Retrieves information about an action.


=head2 DescribeAsset

=over

=item AssetId => Str

=item [ExcludeProperties => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAsset>

Returns: a L<Paws::IoTSiteWise::DescribeAssetResponse> instance

Retrieves information about an asset.


=head2 DescribeAssetCompositeModel

=over

=item AssetCompositeModelId => Str

=item AssetId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetCompositeModel>

Returns: a L<Paws::IoTSiteWise::DescribeAssetCompositeModelResponse> instance

Retrieves information about an asset composite model (also known as an
asset component). An C<AssetCompositeModel> is an instance of an
C<AssetModelCompositeModel>. If you want to see information about the
model this is based on, call DescribeAssetModelCompositeModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html).


=head2 DescribeAssetModel

=over

=item AssetModelId => Str

=item [AssetModelVersion => Str]

=item [ExcludeProperties => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetModel>

Returns: a L<Paws::IoTSiteWise::DescribeAssetModelResponse> instance

Retrieves information about an asset model.


=head2 DescribeAssetModelCompositeModel

=over

=item AssetModelCompositeModelId => Str

=item AssetModelId => Str

=item [AssetModelVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetModelCompositeModel>

Returns: a L<Paws::IoTSiteWise::DescribeAssetModelCompositeModelResponse> instance

Retrieves information about an asset model composite model (also known
as an asset model component). For more information, see Custom
composite models (Components)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
in the I<IoT SiteWise User Guide>.


=head2 DescribeAssetProperty

=over

=item AssetId => Str

=item PropertyId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetProperty>

Returns: a L<Paws::IoTSiteWise::DescribeAssetPropertyResponse> instance

Retrieves information about an asset property.

When you call this operation for an attribute property, this response
includes the default attribute value that you define in the asset
model. If you update the default value in the model, this operation's
response includes the new default value.

This operation doesn't return the value of the asset property. To get
the value of an asset property, use GetAssetPropertyValue
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html).


=head2 DescribeBulkImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeBulkImportJob>

Returns: a L<Paws::IoTSiteWise::DescribeBulkImportJobResponse> instance

Retrieves information about a bulk import job request. For more
information, see Describe a bulk import job (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html)
in the I<Amazon Simple Storage Service User Guide>.


=head2 DescribeDashboard

=over

=item DashboardId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeDashboard>

Returns: a L<Paws::IoTSiteWise::DescribeDashboardResponse> instance

Retrieves information about a dashboard.


=head2 DescribeDataset

=over

=item DatasetId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeDataset>

Returns: a L<Paws::IoTSiteWise::DescribeDatasetResponse> instance

Retrieves information about a dataset.


=head2 DescribeDefaultEncryptionConfiguration






Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTSiteWise::DescribeDefaultEncryptionConfigurationResponse> instance

Retrieves information about the default encryption configuration for
the Amazon Web Services account in the default or specified Region. For
more information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the I<IoT SiteWise User Guide>.


=head2 DescribeGateway

=over

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeGateway>

Returns: a L<Paws::IoTSiteWise::DescribeGatewayResponse> instance

Retrieves information about a gateway.


=head2 DescribeGatewayCapabilityConfiguration

=over

=item CapabilityNamespace => Str

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration>

Returns: a L<Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse> instance

Retrieves information about a gateway capability configuration. Each
gateway capability defines data sources for a gateway. A capability
configuration can contain multiple data source configurations. If you
define OPC-UA sources for a gateway in the IoT SiteWise console, all of
your OPC-UA sources are stored in one capability configuration. To list
all capability configurations for a gateway, use DescribeGateway
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).


=head2 DescribeLoggingOptions






Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeLoggingOptions>

Returns: a L<Paws::IoTSiteWise::DescribeLoggingOptionsResponse> instance

Retrieves the current IoT SiteWise logging options.


=head2 DescribePortal

=over

=item PortalId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribePortal>

Returns: a L<Paws::IoTSiteWise::DescribePortalResponse> instance

Retrieves information about a portal.


=head2 DescribeProject

=over

=item ProjectId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeProject>

Returns: a L<Paws::IoTSiteWise::DescribeProjectResponse> instance

Retrieves information about a project.


=head2 DescribeStorageConfiguration






Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeStorageConfiguration>

Returns: a L<Paws::IoTSiteWise::DescribeStorageConfigurationResponse> instance

Retrieves information about the storage configuration for IoT SiteWise.


=head2 DescribeTimeSeries

=over

=item [Alias => Str]

=item [AssetId => Str]

=item [PropertyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeTimeSeries>

Returns: a L<Paws::IoTSiteWise::DescribeTimeSeriesResponse> instance

Retrieves information about a time series (data stream).

To identify a time series, do one of the following:

=over

=item *

If the time series isn't associated with an asset property, specify the
C<alias> of the time series.

=item *

If the time series is associated with an asset property, specify one of
the following:

=over

=item *

The C<alias> of the time series.

=item *

The C<assetId> and C<propertyId> that identifies the asset property.

=back

=back



=head2 DisassociateAssets

=over

=item AssetId => Str

=item ChildAssetId => Str

=item HierarchyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DisassociateAssets>

Returns: nothing

Disassociates a child asset from the given parent asset through a
hierarchy defined in the parent asset's model.


=head2 DisassociateTimeSeriesFromAssetProperty

=over

=item Alias => Str

=item AssetId => Str

=item PropertyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DisassociateTimeSeriesFromAssetProperty>

Returns: nothing

Disassociates a time series (data stream) from an asset property.


=head2 ExecuteAction

=over

=item ActionDefinitionId => Str

=item ActionPayload => L<Paws::IoTSiteWise::ActionPayload>

=item TargetResource => L<Paws::IoTSiteWise::TargetResource>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ExecuteAction>

Returns: a L<Paws::IoTSiteWise::ExecuteActionResponse> instance

Executes an action on a target resource.


=head2 ExecuteQuery

=over

=item QueryStatement => Str

=item [ClientToken => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ExecuteQuery>

Returns: a L<Paws::IoTSiteWise::ExecuteQueryResponse> instance

Run SQL queries to retrieve metadata and time-series data from asset
models, assets, measurements, metrics, transforms, and aggregates.


=head2 GetAssetPropertyAggregates

=over

=item AggregateTypes => ArrayRef[Str|Undef]

=item EndDate => Str

=item Resolution => Str

=item StartDate => Str

=item [AssetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [Qualities => ArrayRef[Str|Undef]]

=item [TimeOrdering => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyAggregates>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse> instance

Gets aggregated values for an asset property. For more information, see
Querying aggregates
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
in the I<IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetAssetPropertyValue

=over

=item [AssetId => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyValue>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyValueResponse> instance

Gets an asset property's current value. For more information, see
Querying current values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
in the I<IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetAssetPropertyValueHistory

=over

=item [AssetId => Str]

=item [EndDate => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [Qualities => ArrayRef[Str|Undef]]

=item [StartDate => Str]

=item [TimeOrdering => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyValueHistory>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse> instance

Gets the history of an asset property's values. For more information,
see Querying historical values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
in the I<IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetInterpolatedAssetPropertyValues

=over

=item EndTimeInSeconds => Int

=item IntervalInSeconds => Int

=item Quality => Str

=item StartTimeInSeconds => Int

=item Type => Str

=item [AssetId => Str]

=item [EndTimeOffsetInNanos => Int]

=item [IntervalWindowInSeconds => Int]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [StartTimeOffsetInNanos => Int]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues>

Returns: a L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse> instance

Get interpolated values for an asset property for a specified time
interval, during a period of time. If your time series is missing data
points during the specified time interval, you can use interpolation to
estimate the missing data.

For example, you can use this operation to return the interpolated
temperature values for a wind turbine every 24 hours over a duration of
7 days.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 InvokeAssistant

=over

=item Message => Str

=item [ConversationId => Str]

=item [EnableTrace => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::InvokeAssistant>

Returns: a L<Paws::IoTSiteWise::InvokeAssistantResponse> instance

Invokes SiteWise Assistant to start or continue a conversation.


=head2 ListAccessPolicies

=over

=item [IamArn => Str]

=item [IdentityId => Str]

=item [IdentityType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAccessPolicies>

Returns: a L<Paws::IoTSiteWise::ListAccessPoliciesResponse> instance

Retrieves a paginated list of access policies for an identity (an IAM
Identity Center user, an IAM Identity Center group, or an IAM user) or
an IoT SiteWise Monitor resource (a portal or project).


=head2 ListActions

=over

=item TargetResourceId => Str

=item TargetResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListActions>

Returns: a L<Paws::IoTSiteWise::ListActionsResponse> instance

Retrieves a paginated list of actions for a specific target resource.


=head2 ListAssetModelCompositeModels

=over

=item AssetModelId => Str

=item [AssetModelVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetModelCompositeModels>

Returns: a L<Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse> instance

Retrieves a paginated list of composite models associated with the
asset model


=head2 ListAssetModelProperties

=over

=item AssetModelId => Str

=item [AssetModelVersion => Str]

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetModelProperties>

Returns: a L<Paws::IoTSiteWise::ListAssetModelPropertiesResponse> instance

Retrieves a paginated list of properties associated with an asset
model. If you update properties associated with the model before you
finish listing all the properties, you need to start all over again.


=head2 ListAssetModels

=over

=item [AssetModelTypes => ArrayRef[Str|Undef]]

=item [AssetModelVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetModels>

Returns: a L<Paws::IoTSiteWise::ListAssetModelsResponse> instance

Retrieves a paginated list of summaries of all asset models.


=head2 ListAssetProperties

=over

=item AssetId => Str

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetProperties>

Returns: a L<Paws::IoTSiteWise::ListAssetPropertiesResponse> instance

Retrieves a paginated list of properties associated with an asset. If
you update properties associated with the model before you finish
listing all the properties, you need to start all over again.


=head2 ListAssetRelationships

=over

=item AssetId => Str

=item TraversalType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetRelationships>

Returns: a L<Paws::IoTSiteWise::ListAssetRelationshipsResponse> instance

Retrieves a paginated list of asset relationships for an asset. You can
use this operation to identify an asset's root asset and all associated
assets between that asset and its root.


=head2 ListAssets

=over

=item [AssetModelId => Str]

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssets>

Returns: a L<Paws::IoTSiteWise::ListAssetsResponse> instance

Retrieves a paginated list of asset summaries.

You can use this operation to do the following:

=over

=item *

List assets based on a specific asset model.

=item *

List top-level assets.

=back

You can't use this operation to list all assets. To retrieve summaries
for all of your assets, use ListAssetModels
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html)
to get all of your asset model IDs. Then, use ListAssets to get all
assets for each asset model.


=head2 ListAssociatedAssets

=over

=item AssetId => Str

=item [HierarchyId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TraversalDirection => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssociatedAssets>

Returns: a L<Paws::IoTSiteWise::ListAssociatedAssetsResponse> instance

Retrieves a paginated list of associated assets.

You can use this operation to do the following:

=over

=item *

C<CHILD> - List all child assets associated to the asset.

=item *

C<PARENT> - List the asset's parent asset.

=back



=head2 ListBulkImportJobs

=over

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListBulkImportJobs>

Returns: a L<Paws::IoTSiteWise::ListBulkImportJobsResponse> instance

Retrieves a paginated list of bulk import job requests. For more
information, see List bulk import jobs (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html)
in the I<IoT SiteWise User Guide>.


=head2 ListCompositionRelationships

=over

=item AssetModelId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListCompositionRelationships>

Returns: a L<Paws::IoTSiteWise::ListCompositionRelationshipsResponse> instance

Retrieves a paginated list of composition relationships for an asset
model of type C<COMPONENT_MODEL>.


=head2 ListDashboards

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListDashboards>

Returns: a L<Paws::IoTSiteWise::ListDashboardsResponse> instance

Retrieves a paginated list of dashboards for an IoT SiteWise Monitor
project.


=head2 ListDatasets

=over

=item SourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListDatasets>

Returns: a L<Paws::IoTSiteWise::ListDatasetsResponse> instance

Retrieves a paginated list of datasets for a specific target resource.


=head2 ListGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListGateways>

Returns: a L<Paws::IoTSiteWise::ListGatewaysResponse> instance

Retrieves a paginated list of gateways.


=head2 ListPortals

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListPortals>

Returns: a L<Paws::IoTSiteWise::ListPortalsResponse> instance

Retrieves a paginated list of IoT SiteWise Monitor portals.


=head2 ListProjectAssets

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListProjectAssets>

Returns: a L<Paws::IoTSiteWise::ListProjectAssetsResponse> instance

Retrieves a paginated list of assets associated with an IoT SiteWise
Monitor project.


=head2 ListProjects

=over

=item PortalId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListProjects>

Returns: a L<Paws::IoTSiteWise::ListProjectsResponse> instance

Retrieves a paginated list of projects for an IoT SiteWise Monitor
portal.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListTagsForResource>

Returns: a L<Paws::IoTSiteWise::ListTagsForResourceResponse> instance

Retrieves the list of tags for an IoT SiteWise resource.


=head2 ListTimeSeries

=over

=item [AliasPrefix => Str]

=item [AssetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TimeSeriesType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListTimeSeries>

Returns: a L<Paws::IoTSiteWise::ListTimeSeriesResponse> instance

Retrieves a paginated list of time series (data streams).


=head2 PutDefaultEncryptionConfiguration

=over

=item EncryptionType => Str

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::PutDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse> instance

Sets the default encryption configuration for the Amazon Web Services
account. For more information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the I<IoT SiteWise User Guide>.


=head2 PutLoggingOptions

=over

=item LoggingOptions => L<Paws::IoTSiteWise::LoggingOptions>


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::PutLoggingOptions>

Returns: a L<Paws::IoTSiteWise::PutLoggingOptionsResponse> instance

Sets logging options for IoT SiteWise.


=head2 PutStorageConfiguration

=over

=item StorageType => Str

=item [DisallowIngestNullNaN => Bool]

=item [DisassociatedDataStorage => Str]

=item [MultiLayerStorage => L<Paws::IoTSiteWise::MultiLayerStorage>]

=item [RetentionPeriod => L<Paws::IoTSiteWise::RetentionPeriod>]

=item [WarmTier => Str]

=item [WarmTierRetentionPeriod => L<Paws::IoTSiteWise::WarmTierRetentionPeriod>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::PutStorageConfiguration>

Returns: a L<Paws::IoTSiteWise::PutStorageConfigurationResponse> instance

Configures storage settings for IoT SiteWise.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IoTSiteWise::TagMap>


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::TagResource>

Returns: a L<Paws::IoTSiteWise::TagResourceResponse> instance

Adds tags to an IoT SiteWise resource. If a tag already exists for the
resource, this operation updates the tag's value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UntagResource>

Returns: a L<Paws::IoTSiteWise::UntagResourceResponse> instance

Removes a tag from an IoT SiteWise resource.


=head2 UpdateAccessPolicy

=over

=item AccessPolicyId => Str

=item AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

=item AccessPolicyPermission => Str

=item AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAccessPolicy>

Returns: a L<Paws::IoTSiteWise::UpdateAccessPolicyResponse> instance

Updates an existing access policy that specifies an identity's access
to an IoT SiteWise Monitor portal or project resource.


=head2 UpdateAsset

=over

=item AssetId => Str

=item AssetName => Str

=item [AssetDescription => Str]

=item [AssetExternalId => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAsset>

Returns: a L<Paws::IoTSiteWise::UpdateAssetResponse> instance

Updates an asset's name. For more information, see Updating assets and
models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
in the I<IoT SiteWise User Guide>.


=head2 UpdateAssetModel

=over

=item AssetModelId => Str

=item AssetModelName => Str

=item [AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModel>]]

=item [AssetModelDescription => Str]

=item [AssetModelExternalId => Str]

=item [AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchy>]]

=item [AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]]

=item [ClientToken => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MatchForVersionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAssetModel>

Returns: a L<Paws::IoTSiteWise::UpdateAssetModelResponse> instance

Updates an asset model and all of the assets that were created from the
model. Each asset created from the model inherits the updated asset
model's property and hierarchy definitions. For more information, see
Updating assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
in the I<IoT SiteWise User Guide>.

If you remove a property from an asset model, IoT SiteWise deletes all
previous data for that property. You canE<rsquo>t change the type or
data type of an existing property.

To replace an existing asset model property with a new one with the
same C<name>, do the following:

=over

=item 1.

Submit an C<UpdateAssetModel> request with the entire existing property
removed.

=item 2.

Submit a second C<UpdateAssetModel> request that includes the new
property. The new asset property will have the same C<name> as the
previous one and IoT SiteWise will generate a new unique C<id>.

=back



=head2 UpdateAssetModelCompositeModel

=over

=item AssetModelCompositeModelId => Str

=item AssetModelCompositeModelName => Str

=item AssetModelId => Str

=item [AssetModelCompositeModelDescription => Str]

=item [AssetModelCompositeModelExternalId => Str]

=item [AssetModelCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]]

=item [ClientToken => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MatchForVersionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAssetModelCompositeModel>

Returns: a L<Paws::IoTSiteWise::UpdateAssetModelCompositeModelResponse> instance

Updates a composite model and all of the assets that were created from
the model. Each asset created from the model inherits the updated asset
model's property and hierarchy definitions. For more information, see
Updating assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
in the I<IoT SiteWise User Guide>.

If you remove a property from a composite asset model, IoT SiteWise
deletes all previous data for that property. You canE<rsquo>t change
the type or data type of an existing property.

To replace an existing composite asset model property with a new one
with the same C<name>, do the following:

=over

=item 1.

Submit an C<UpdateAssetModelCompositeModel> request with the entire
existing property removed.

=item 2.

Submit a second C<UpdateAssetModelCompositeModel> request that includes
the new property. The new asset property will have the same C<name> as
the previous one and IoT SiteWise will generate a new unique C<id>.

=back



=head2 UpdateAssetProperty

=over

=item AssetId => Str

=item PropertyId => Str

=item [ClientToken => Str]

=item [PropertyAlias => Str]

=item [PropertyNotificationState => Str]

=item [PropertyUnit => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAssetProperty>

Returns: nothing

Updates an asset property's alias and notification state.

This operation overwrites the property's existing alias and
notification state. To keep your existing property's alias or
notification state, you must include the existing values in the
UpdateAssetProperty request. For more information, see
DescribeAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html).


=head2 UpdateDashboard

=over

=item DashboardDefinition => Str

=item DashboardId => Str

=item DashboardName => Str

=item [ClientToken => Str]

=item [DashboardDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateDashboard>

Returns: a L<Paws::IoTSiteWise::UpdateDashboardResponse> instance

Updates an IoT SiteWise Monitor dashboard.


=head2 UpdateDataset

=over

=item DatasetId => Str

=item DatasetName => Str

=item DatasetSource => L<Paws::IoTSiteWise::DatasetSource>

=item [ClientToken => Str]

=item [DatasetDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateDataset>

Returns: a L<Paws::IoTSiteWise::UpdateDatasetResponse> instance

Updates a dataset.


=head2 UpdateGateway

=over

=item GatewayId => Str

=item GatewayName => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateGateway>

Returns: nothing

Updates a gateway's name.


=head2 UpdateGatewayCapabilityConfiguration

=over

=item CapabilityConfiguration => Str

=item CapabilityNamespace => Str

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration>

Returns: a L<Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse> instance

Updates a gateway capability configuration or defines a new capability
configuration. Each gateway capability defines data sources for a
gateway. A capability configuration can contain multiple data source
configurations. If you define OPC-UA sources for a gateway in the IoT
SiteWise console, all of your OPC-UA sources are stored in one
capability configuration. To list all capability configurations for a
gateway, use DescribeGateway
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).


=head2 UpdatePortal

=over

=item PortalContactEmail => Str

=item PortalId => Str

=item PortalName => Str

=item RoleArn => Str

=item [Alarms => L<Paws::IoTSiteWise::Alarms>]

=item [ClientToken => Str]

=item [NotificationSenderEmail => Str]

=item [PortalDescription => Str]

=item [PortalLogoImage => L<Paws::IoTSiteWise::Image>]

=item [PortalType => Str]

=item [PortalTypeConfiguration => L<Paws::IoTSiteWise::PortalTypeConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdatePortal>

Returns: a L<Paws::IoTSiteWise::UpdatePortalResponse> instance

Updates an IoT SiteWise Monitor portal.


=head2 UpdateProject

=over

=item ProjectId => Str

=item ProjectName => Str

=item [ClientToken => Str]

=item [ProjectDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateProject>

Returns: a L<Paws::IoTSiteWise::UpdateProjectResponse> instance

Updates an IoT SiteWise Monitor project.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ExecuteAllQuery(sub { },QueryStatement => Str, [ClientToken => Str, MaxResults => Int, NextToken => Str])

=head2 ExecuteAllQuery(QueryStatement => Str, [ClientToken => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rows, passing the object as the first parameter, and the string 'rows' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ExecuteQueryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAssetPropertyAggregates(sub { },AggregateTypes => ArrayRef[Str|Undef], EndDate => Str, Resolution => Str, StartDate => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], TimeOrdering => Str])

=head2 GetAllAssetPropertyAggregates(AggregateTypes => ArrayRef[Str|Undef], EndDate => Str, Resolution => Str, StartDate => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], TimeOrdering => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aggregatedValues, passing the object as the first parameter, and the string 'aggregatedValues' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAssetPropertyValueHistory(sub { },[AssetId => Str, EndDate => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], StartDate => Str, TimeOrdering => Str])

=head2 GetAllAssetPropertyValueHistory([AssetId => Str, EndDate => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], StartDate => Str, TimeOrdering => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetPropertyValueHistory, passing the object as the first parameter, and the string 'assetPropertyValueHistory' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInterpolatedAssetPropertyValues(sub { },EndTimeInSeconds => Int, IntervalInSeconds => Int, Quality => Str, StartTimeInSeconds => Int, Type => Str, [AssetId => Str, EndTimeOffsetInNanos => Int, IntervalWindowInSeconds => Int, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, StartTimeOffsetInNanos => Int])

=head2 GetAllInterpolatedAssetPropertyValues(EndTimeInSeconds => Int, IntervalInSeconds => Int, Quality => Str, StartTimeInSeconds => Int, Type => Str, [AssetId => Str, EndTimeOffsetInNanos => Int, IntervalWindowInSeconds => Int, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, StartTimeOffsetInNanos => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - interpolatedAssetPropertyValues, passing the object as the first parameter, and the string 'interpolatedAssetPropertyValues' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccessPolicies(sub { },[IamArn => Str, IdentityId => Str, IdentityType => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])

=head2 ListAllAccessPolicies([IamArn => Str, IdentityId => Str, IdentityType => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accessPolicySummaries, passing the object as the first parameter, and the string 'accessPolicySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAccessPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActions(sub { },TargetResourceId => Str, TargetResourceType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllActions(TargetResourceId => Str, TargetResourceType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actionSummaries, passing the object as the first parameter, and the string 'actionSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetModelCompositeModels(sub { },AssetModelId => Str, [AssetModelVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssetModelCompositeModels(AssetModelId => Str, [AssetModelVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetModelCompositeModelSummaries, passing the object as the first parameter, and the string 'assetModelCompositeModelSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetModelProperties(sub { },AssetModelId => Str, [AssetModelVersion => Str, Filter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssetModelProperties(AssetModelId => Str, [AssetModelVersion => Str, Filter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetModelPropertySummaries, passing the object as the first parameter, and the string 'assetModelPropertySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetModelPropertiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetModels(sub { },[AssetModelTypes => ArrayRef[Str|Undef], AssetModelVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssetModels([AssetModelTypes => ArrayRef[Str|Undef], AssetModelVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetModelSummaries, passing the object as the first parameter, and the string 'assetModelSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetProperties(sub { },AssetId => Str, [Filter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssetProperties(AssetId => Str, [Filter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetPropertySummaries, passing the object as the first parameter, and the string 'assetPropertySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetPropertiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetRelationships(sub { },AssetId => Str, TraversalType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssetRelationships(AssetId => Str, TraversalType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetRelationshipSummaries, passing the object as the first parameter, and the string 'assetRelationshipSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetRelationshipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssets(sub { },[AssetModelId => Str, Filter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssets([AssetModelId => Str, Filter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetSummaries, passing the object as the first parameter, and the string 'assetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedAssets(sub { },AssetId => Str, [HierarchyId => Str, MaxResults => Int, NextToken => Str, TraversalDirection => Str])

=head2 ListAllAssociatedAssets(AssetId => Str, [HierarchyId => Str, MaxResults => Int, NextToken => Str, TraversalDirection => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetSummaries, passing the object as the first parameter, and the string 'assetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssociatedAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBulkImportJobs(sub { },[Filter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllBulkImportJobs([Filter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaries, passing the object as the first parameter, and the string 'jobSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListBulkImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCompositionRelationships(sub { },AssetModelId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCompositionRelationships(AssetModelId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - compositionRelationshipSummaries, passing the object as the first parameter, and the string 'compositionRelationshipSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListCompositionRelationshipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDashboards(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDashboards(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dashboardSummaries, passing the object as the first parameter, and the string 'dashboardSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListDashboardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },SourceType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets(SourceType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetSummaries, passing the object as the first parameter, and the string 'datasetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGateways(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGateways([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - gatewaySummaries, passing the object as the first parameter, and the string 'gatewaySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListGatewaysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPortals(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPortals([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - portalSummaries, passing the object as the first parameter, and the string 'portalSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListPortalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjectAssets(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllProjectAssets(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetIds, passing the object as the first parameter, and the string 'assetIds' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListProjectAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },PortalId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllProjects(PortalId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projectSummaries, passing the object as the first parameter, and the string 'projectSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTimeSeries(sub { },[AliasPrefix => Str, AssetId => Str, MaxResults => Int, NextToken => Str, TimeSeriesType => Str])

=head2 ListAllTimeSeries([AliasPrefix => Str, AssetId => Str, MaxResults => Int, NextToken => Str, TimeSeriesType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TimeSeriesSummaries, passing the object as the first parameter, and the string 'TimeSeriesSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListTimeSeriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

