package Paws::IoTWireless;
  use Moose;
  sub service { 'api.iotwireless' }
  sub signing_name { 'iotwireless' }
  sub version { '2020-11-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAwsAccountWithPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMulticastGroupWithFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateMulticastGroupWithFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessDeviceWithFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessDeviceWithMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessDeviceWithMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessDeviceWithThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessDeviceWithThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessGatewayWithCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessGatewayWithCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessGatewayWithThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessGatewayWithThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMulticastGroupSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CancelMulticastGroupSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAnalyzerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateNetworkAnalyzerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAnalyzerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteNetworkAnalyzerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueuedMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteQueuedMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeregisterWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAwsAccountFromPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMulticastGroupFromFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateMulticastGroupFromFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessDeviceFromFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessDeviceFromMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessDeviceFromMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessDeviceFromThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessDeviceFromThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessGatewayFromCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessGatewayFromCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessGatewayFromThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessGatewayFromThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventConfigurationByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetEventConfigurationByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogLevelsByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetLogLevelsByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetMetricConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMulticastGroupSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetMulticastGroupSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkAnalyzerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetNetworkAnalyzerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetPosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPositionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetPositionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPositionEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetPositionEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceEventConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetResourceEventConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetResourcePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetServiceEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessDeviceStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessDeviceStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayFirmwareInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayFirmwareInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListDeviceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevicesForWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListDevicesForWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListEventConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFuotaTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListFuotaTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMulticastGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListMulticastGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMulticastGroupsByFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListMulticastGroupsByFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworkAnalyzerConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListNetworkAnalyzerConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListPartnerAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPositionConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListPositionConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueuedMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListQueuedMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListServiceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessDeviceImportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessDeviceImportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessGatewayTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessGatewayTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPositionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::PutPositionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::PutResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetAllResourceLogLevels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ResetAllResourceLogLevels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ResetResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDataToMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::SendDataToMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDataToWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::SendDataToWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBulkAssociateWirelessDeviceWithMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartBulkAssociateWirelessDeviceWithMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBulkDisassociateWirelessDeviceFromMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartBulkDisassociateWirelessDeviceFromMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMulticastGroupSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartMulticastGroupSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSingleWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartSingleWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::StartWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::TestWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventConfigurationByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateEventConfigurationByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFuotaTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateFuotaTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLogLevelsByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateLogLevelsByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMetricConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateMetricConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMulticastGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateMulticastGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkAnalyzerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateNetworkAnalyzerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdatePartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdatePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceEventConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateResourceEventConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourcePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateResourcePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWirelessDeviceImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateWirelessDeviceImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateAwsAccountWithPartnerAccount AssociateMulticastGroupWithFuotaTask AssociateWirelessDeviceWithFuotaTask AssociateWirelessDeviceWithMulticastGroup AssociateWirelessDeviceWithThing AssociateWirelessGatewayWithCertificate AssociateWirelessGatewayWithThing CancelMulticastGroupSession CreateDestination CreateDeviceProfile CreateFuotaTask CreateMulticastGroup CreateNetworkAnalyzerConfiguration CreateServiceProfile CreateWirelessDevice CreateWirelessGateway CreateWirelessGatewayTask CreateWirelessGatewayTaskDefinition DeleteDestination DeleteDeviceProfile DeleteFuotaTask DeleteMulticastGroup DeleteNetworkAnalyzerConfiguration DeleteQueuedMessages DeleteServiceProfile DeleteWirelessDevice DeleteWirelessDeviceImportTask DeleteWirelessGateway DeleteWirelessGatewayTask DeleteWirelessGatewayTaskDefinition DeregisterWirelessDevice DisassociateAwsAccountFromPartnerAccount DisassociateMulticastGroupFromFuotaTask DisassociateWirelessDeviceFromFuotaTask DisassociateWirelessDeviceFromMulticastGroup DisassociateWirelessDeviceFromThing DisassociateWirelessGatewayFromCertificate DisassociateWirelessGatewayFromThing GetDestination GetDeviceProfile GetEventConfigurationByResourceTypes GetFuotaTask GetLogLevelsByResourceTypes GetMetricConfiguration GetMetrics GetMulticastGroup GetMulticastGroupSession GetNetworkAnalyzerConfiguration GetPartnerAccount GetPosition GetPositionConfiguration GetPositionEstimate GetResourceEventConfiguration GetResourceLogLevel GetResourcePosition GetServiceEndpoint GetServiceProfile GetWirelessDevice GetWirelessDeviceImportTask GetWirelessDeviceStatistics GetWirelessGateway GetWirelessGatewayCertificate GetWirelessGatewayFirmwareInformation GetWirelessGatewayStatistics GetWirelessGatewayTask GetWirelessGatewayTaskDefinition ListDestinations ListDeviceProfiles ListDevicesForWirelessDeviceImportTask ListEventConfigurations ListFuotaTasks ListMulticastGroups ListMulticastGroupsByFuotaTask ListNetworkAnalyzerConfigurations ListPartnerAccounts ListPositionConfigurations ListQueuedMessages ListServiceProfiles ListTagsForResource ListWirelessDeviceImportTasks ListWirelessDevices ListWirelessGateways ListWirelessGatewayTaskDefinitions PutPositionConfiguration PutResourceLogLevel ResetAllResourceLogLevels ResetResourceLogLevel SendDataToMulticastGroup SendDataToWirelessDevice StartBulkAssociateWirelessDeviceWithMulticastGroup StartBulkDisassociateWirelessDeviceFromMulticastGroup StartFuotaTask StartMulticastGroupSession StartSingleWirelessDeviceImportTask StartWirelessDeviceImportTask TagResource TestWirelessDevice UntagResource UpdateDestination UpdateEventConfigurationByResourceTypes UpdateFuotaTask UpdateLogLevelsByResourceTypes UpdateMetricConfiguration UpdateMulticastGroup UpdateNetworkAnalyzerConfiguration UpdatePartnerAccount UpdatePosition UpdateResourceEventConfiguration UpdateResourcePosition UpdateWirelessDevice UpdateWirelessDeviceImportTask UpdateWirelessGateway / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless - Perl Interface to AWS AWS IoT Wireless

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTWireless');
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

AWS IoT Wireless provides bi-directional communication between
internet-connected wireless devices and the AWS Cloud. To onboard both
LoRaWAN and Sidewalk devices to AWS IoT, use the IoT Wireless API.
These wireless devices use the Low Power Wide Area Networking (LPWAN)
communication protocol to communicate with AWS IoT.

Using the API, you can perform create, read, update, and delete
operations for your wireless devices, gateways, destinations, and
profiles. After onboarding your devices, you can use the API operations
to set log levels and monitor your devices with CloudWatch.

You can also use the API operations to create multicast groups and
schedule a multicast session for sending a downlink message to devices
in the group. By using Firmware Updates Over-The-Air (FUOTA) API
operations, you can create a FUOTA task and schedule a session to
update the firmware of individual devices or an entire group of devices
in a multicast group.

To connect to the AWS IoT Wireless Service, use the Service endpoints
as described in IoT Wireless Service endpoints
(https://docs.aws.amazon.com/general/latest/gr/iot-lorawan.html#iot-wireless_region).
You can use both IPv4 and IPv6 protocols to connect to the endpoints
and send requests to the AWS IoT Wireless service. For more
information, see Using IPv6 with AWS IoT Wireless
(https://docs.aws.amazon.com/iot-wireless/latest/developerguide/wireless-ipv6-access.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateAwsAccountWithPartnerAccount

=over

=item Sidewalk => L<Paws::IoTWireless::SidewalkAccountInfo>

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount>

Returns: a L<Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse> instance

Associates a partner account with your AWS account.


=head2 AssociateMulticastGroupWithFuotaTask

=over

=item Id => Str

=item MulticastGroupId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateMulticastGroupWithFuotaTask>

Returns: a L<Paws::IoTWireless::AssociateMulticastGroupWithFuotaTaskResponse> instance

Associate a multicast group with a FUOTA task.


=head2 AssociateWirelessDeviceWithFuotaTask

=over

=item Id => Str

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTask>

Returns: a L<Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTaskResponse> instance

Associate a wireless device with a FUOTA task.


=head2 AssociateWirelessDeviceWithMulticastGroup

=over

=item Id => Str

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessDeviceWithMulticastGroup>

Returns: a L<Paws::IoTWireless::AssociateWirelessDeviceWithMulticastGroupResponse> instance

Associates a wireless device with a multicast group.


=head2 AssociateWirelessDeviceWithThing

=over

=item Id => Str

=item ThingArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessDeviceWithThing>

Returns: a L<Paws::IoTWireless::AssociateWirelessDeviceWithThingResponse> instance

Associates a wireless device with a thing.


=head2 AssociateWirelessGatewayWithCertificate

=over

=item Id => Str

=item IotCertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessGatewayWithCertificate>

Returns: a L<Paws::IoTWireless::AssociateWirelessGatewayWithCertificateResponse> instance

Associates a wireless gateway with a certificate.


=head2 AssociateWirelessGatewayWithThing

=over

=item Id => Str

=item ThingArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessGatewayWithThing>

Returns: a L<Paws::IoTWireless::AssociateWirelessGatewayWithThingResponse> instance

Associates a wireless gateway with a thing.


=head2 CancelMulticastGroupSession

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::CancelMulticastGroupSession>

Returns: a L<Paws::IoTWireless::CancelMulticastGroupSessionResponse> instance

Cancels an existing multicast group session.


=head2 CreateDestination

=over

=item Expression => Str

=item ExpressionType => Str

=item Name => Str

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateDestination>

Returns: a L<Paws::IoTWireless::CreateDestinationResponse> instance

Creates a new destination that maps a device message to an AWS IoT
rule.


=head2 CreateDeviceProfile

=over

=item [ClientRequestToken => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANDeviceProfile>]

=item [Name => Str]

=item [Sidewalk => L<Paws::IoTWireless::SidewalkCreateDeviceProfile>]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateDeviceProfile>

Returns: a L<Paws::IoTWireless::CreateDeviceProfileResponse> instance

Creates a new device profile.


=head2 CreateFuotaTask

=over

=item FirmwareUpdateImage => Str

=item FirmwareUpdateRole => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Descriptor => Str]

=item [FragmentIntervalMS => Int]

=item [FragmentSizeBytes => Int]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANFuotaTask>]

=item [Name => Str]

=item [RedundancyPercent => Int]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateFuotaTask>

Returns: a L<Paws::IoTWireless::CreateFuotaTaskResponse> instance

Creates a FUOTA task.


=head2 CreateMulticastGroup

=over

=item LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticast>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateMulticastGroup>

Returns: a L<Paws::IoTWireless::CreateMulticastGroupResponse> instance

Creates a multicast group.


=head2 CreateNetworkAnalyzerConfiguration

=over

=item Name => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [MulticastGroups => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]

=item [TraceContent => L<Paws::IoTWireless::TraceContent>]

=item [WirelessDevices => ArrayRef[Str|Undef]]

=item [WirelessGateways => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateNetworkAnalyzerConfiguration>

Returns: a L<Paws::IoTWireless::CreateNetworkAnalyzerConfigurationResponse> instance

Creates a new network analyzer configuration.


=head2 CreateServiceProfile

=over

=item [ClientRequestToken => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANServiceProfile>]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateServiceProfile>

Returns: a L<Paws::IoTWireless::CreateServiceProfileResponse> instance

Creates a new service profile.


=head2 CreateWirelessDevice

=over

=item DestinationName => Str

=item Type => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANDevice>]

=item [Name => Str]

=item [Positioning => Str]

=item [Sidewalk => L<Paws::IoTWireless::SidewalkCreateWirelessDevice>]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessDevice>

Returns: a L<Paws::IoTWireless::CreateWirelessDeviceResponse> instance

Provisions a wireless device.


=head2 CreateWirelessGateway

=over

=item LoRaWAN => L<Paws::IoTWireless::LoRaWANGateway>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGateway>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayResponse> instance

Provisions a wireless gateway.

When provisioning a wireless gateway, you might run into duplication
errors for the following reasons.

=over

=item *

If you specify a C<GatewayEui> value that already exists.

=item *

If you used a C<ClientRequestToken> with the same parameters within the
last 10 minutes.

=back

To avoid this error, make sure that you use unique identifiers and
parameters for each request within the specified time period.


=head2 CreateWirelessGatewayTask

=over

=item Id => Str

=item WirelessGatewayTaskDefinitionId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayTaskResponse> instance

Creates a task for a wireless gateway.


=head2 CreateWirelessGatewayTaskDefinition

=over

=item AutoCreateTasks => Bool

=item [ClientRequestToken => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]

=item [Update => L<Paws::IoTWireless::UpdateWirelessGatewayTaskCreate>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayTaskDefinitionResponse> instance

Creates a gateway task definition.


=head2 DeleteDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteDestination>

Returns: a L<Paws::IoTWireless::DeleteDestinationResponse> instance

Deletes a destination.


=head2 DeleteDeviceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteDeviceProfile>

Returns: a L<Paws::IoTWireless::DeleteDeviceProfileResponse> instance

Deletes a device profile.


=head2 DeleteFuotaTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteFuotaTask>

Returns: a L<Paws::IoTWireless::DeleteFuotaTaskResponse> instance

Deletes a FUOTA task.


=head2 DeleteMulticastGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteMulticastGroup>

Returns: a L<Paws::IoTWireless::DeleteMulticastGroupResponse> instance

Deletes a multicast group if it is not in use by a FUOTA task.


=head2 DeleteNetworkAnalyzerConfiguration

=over

=item ConfigurationName => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteNetworkAnalyzerConfiguration>

Returns: a L<Paws::IoTWireless::DeleteNetworkAnalyzerConfigurationResponse> instance

Deletes a network analyzer configuration.


=head2 DeleteQueuedMessages

=over

=item Id => Str

=item MessageId => Str

=item [WirelessDeviceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteQueuedMessages>

Returns: a L<Paws::IoTWireless::DeleteQueuedMessagesResponse> instance

Remove queued messages from the downlink queue.


=head2 DeleteServiceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteServiceProfile>

Returns: a L<Paws::IoTWireless::DeleteServiceProfileResponse> instance

Deletes a service profile.


=head2 DeleteWirelessDevice

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessDevice>

Returns: a L<Paws::IoTWireless::DeleteWirelessDeviceResponse> instance

Deletes a wireless device.


=head2 DeleteWirelessDeviceImportTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::DeleteWirelessDeviceImportTaskResponse> instance

Delete an import task.


=head2 DeleteWirelessGateway

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGateway>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayResponse> instance

Deletes a wireless gateway.

When deleting a wireless gateway, you might run into duplication errors
for the following reasons.

=over

=item *

If you specify a C<GatewayEui> value that already exists.

=item *

If you used a C<ClientRequestToken> with the same parameters within the
last 10 minutes.

=back

To avoid this error, make sure that you use unique identifiers and
parameters for each request within the specified time period.


=head2 DeleteWirelessGatewayTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayTaskResponse> instance

Deletes a wireless gateway task.


=head2 DeleteWirelessGatewayTaskDefinition

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayTaskDefinitionResponse> instance

Deletes a wireless gateway task definition. Deleting this task
definition does not affect tasks that are currently in progress.


=head2 DeregisterWirelessDevice

=over

=item Identifier => Str

=item [WirelessDeviceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeregisterWirelessDevice>

Returns: a L<Paws::IoTWireless::DeregisterWirelessDeviceResponse> instance

Deregister a wireless device from AWS IoT Wireless.


=head2 DisassociateAwsAccountFromPartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccount>

Returns: a L<Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccountResponse> instance

Disassociates your AWS account from a partner account. If
C<PartnerAccountId> and C<PartnerType> are C<null>, disassociates your
AWS account from all partner accounts.


=head2 DisassociateMulticastGroupFromFuotaTask

=over

=item Id => Str

=item MulticastGroupId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateMulticastGroupFromFuotaTask>

Returns: a L<Paws::IoTWireless::DisassociateMulticastGroupFromFuotaTaskResponse> instance

Disassociates a multicast group from a FUOTA task.


=head2 DisassociateWirelessDeviceFromFuotaTask

=over

=item Id => Str

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTask>

Returns: a L<Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTaskResponse> instance

Disassociates a wireless device from a FUOTA task.


=head2 DisassociateWirelessDeviceFromMulticastGroup

=over

=item Id => Str

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessDeviceFromMulticastGroup>

Returns: a L<Paws::IoTWireless::DisassociateWirelessDeviceFromMulticastGroupResponse> instance

Disassociates a wireless device from a multicast group.


=head2 DisassociateWirelessDeviceFromThing

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessDeviceFromThing>

Returns: a L<Paws::IoTWireless::DisassociateWirelessDeviceFromThingResponse> instance

Disassociates a wireless device from its currently associated thing.


=head2 DisassociateWirelessGatewayFromCertificate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessGatewayFromCertificate>

Returns: a L<Paws::IoTWireless::DisassociateWirelessGatewayFromCertificateResponse> instance

Disassociates a wireless gateway from its currently associated
certificate.


=head2 DisassociateWirelessGatewayFromThing

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessGatewayFromThing>

Returns: a L<Paws::IoTWireless::DisassociateWirelessGatewayFromThingResponse> instance

Disassociates a wireless gateway from its currently associated thing.


=head2 GetDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetDestination>

Returns: a L<Paws::IoTWireless::GetDestinationResponse> instance

Gets information about a destination.


=head2 GetDeviceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetDeviceProfile>

Returns: a L<Paws::IoTWireless::GetDeviceProfileResponse> instance

Gets information about a device profile.


=head2 GetEventConfigurationByResourceTypes






Each argument is described in detail in: L<Paws::IoTWireless::GetEventConfigurationByResourceTypes>

Returns: a L<Paws::IoTWireless::GetEventConfigurationByResourceTypesResponse> instance

Get the event configuration based on resource types.


=head2 GetFuotaTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetFuotaTask>

Returns: a L<Paws::IoTWireless::GetFuotaTaskResponse> instance

Gets information about a FUOTA task.


=head2 GetLogLevelsByResourceTypes






Each argument is described in detail in: L<Paws::IoTWireless::GetLogLevelsByResourceTypes>

Returns: a L<Paws::IoTWireless::GetLogLevelsByResourceTypesResponse> instance

Returns current default log levels or log levels by resource types.
Based on the resource type, log levels can be returned for wireless
device, wireless gateway, or FUOTA task log options.


=head2 GetMetricConfiguration






Each argument is described in detail in: L<Paws::IoTWireless::GetMetricConfiguration>

Returns: a L<Paws::IoTWireless::GetMetricConfigurationResponse> instance

Get the metric configuration status for this AWS account.


=head2 GetMetrics

=over

=item [SummaryMetricQueries => ArrayRef[L<Paws::IoTWireless::SummaryMetricQuery>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetMetrics>

Returns: a L<Paws::IoTWireless::GetMetricsResponse> instance

Get the summary metrics for this AWS account.


=head2 GetMulticastGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetMulticastGroup>

Returns: a L<Paws::IoTWireless::GetMulticastGroupResponse> instance

Gets information about a multicast group.


=head2 GetMulticastGroupSession

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetMulticastGroupSession>

Returns: a L<Paws::IoTWireless::GetMulticastGroupSessionResponse> instance

Gets information about a multicast group session.


=head2 GetNetworkAnalyzerConfiguration

=over

=item ConfigurationName => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetNetworkAnalyzerConfiguration>

Returns: a L<Paws::IoTWireless::GetNetworkAnalyzerConfigurationResponse> instance

Get network analyzer configuration.


=head2 GetPartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetPartnerAccount>

Returns: a L<Paws::IoTWireless::GetPartnerAccountResponse> instance

Gets information about a partner account. If C<PartnerAccountId> and
C<PartnerType> are C<null>, returns all partner accounts.


=head2 GetPosition

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetPosition>

Returns: a L<Paws::IoTWireless::GetPositionResponse> instance

Get the position information for a given resource.

This action is no longer supported. Calls to retrieve the position
information should use the GetResourcePosition
(https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
API operation instead.


=head2 GetPositionConfiguration

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetPositionConfiguration>

Returns: a L<Paws::IoTWireless::GetPositionConfigurationResponse> instance

Get position configuration for a given resource.

This action is no longer supported. Calls to retrieve the position
configuration should use the GetResourcePosition
(https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
API operation instead.


=head2 GetPositionEstimate

=over

=item [CellTowers => L<Paws::IoTWireless::CellTowers>]

=item [Gnss => L<Paws::IoTWireless::Gnss>]

=item [Ip => L<Paws::IoTWireless::Ip>]

=item [Timestamp => Str]

=item [WiFiAccessPoints => ArrayRef[L<Paws::IoTWireless::WiFiAccessPoint>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetPositionEstimate>

Returns: a L<Paws::IoTWireless::GetPositionEstimateResponse> instance

Get estimated position information as a payload in GeoJSON format. The
payload measurement data is resolved using solvers that are provided by
third-party vendors.


=head2 GetResourceEventConfiguration

=over

=item Identifier => Str

=item IdentifierType => Str

=item [PartnerType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetResourceEventConfiguration>

Returns: a L<Paws::IoTWireless::GetResourceEventConfigurationResponse> instance

Get the event configuration for a particular resource identifier.


=head2 GetResourceLogLevel

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetResourceLogLevel>

Returns: a L<Paws::IoTWireless::GetResourceLogLevelResponse> instance

Fetches the log-level override, if any, for a given resource ID and
resource type..


=head2 GetResourcePosition

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetResourcePosition>

Returns: a L<Paws::IoTWireless::GetResourcePositionResponse> instance

Get the position information for a given wireless device or a wireless
gateway resource. The position information uses the World Geodetic
System (WGS84) (https://gisgeography.com/wgs84-world-geodetic-system/).


=head2 GetServiceEndpoint

=over

=item [ServiceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetServiceEndpoint>

Returns: a L<Paws::IoTWireless::GetServiceEndpointResponse> instance

Gets the account-specific endpoint for Configuration and Update Server
(CUPS) protocol or LoRaWAN Network Server (LNS) connections.


=head2 GetServiceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetServiceProfile>

Returns: a L<Paws::IoTWireless::GetServiceProfileResponse> instance

Gets information about a service profile.


=head2 GetWirelessDevice

=over

=item Identifier => Str

=item IdentifierType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessDevice>

Returns: a L<Paws::IoTWireless::GetWirelessDeviceResponse> instance

Gets information about a wireless device.


=head2 GetWirelessDeviceImportTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::GetWirelessDeviceImportTaskResponse> instance

Get information about an import task and count of device onboarding
summary information for the import task.


=head2 GetWirelessDeviceStatistics

=over

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessDeviceStatistics>

Returns: a L<Paws::IoTWireless::GetWirelessDeviceStatisticsResponse> instance

Gets operating information about a wireless device.


=head2 GetWirelessGateway

=over

=item Identifier => Str

=item IdentifierType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGateway>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayResponse> instance

Gets information about a wireless gateway.


=head2 GetWirelessGatewayCertificate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayCertificate>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayCertificateResponse> instance

Gets the ID of the certificate that is currently associated with a
wireless gateway.


=head2 GetWirelessGatewayFirmwareInformation

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayFirmwareInformation>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayFirmwareInformationResponse> instance

Gets the firmware version and other information about a wireless
gateway.


=head2 GetWirelessGatewayStatistics

=over

=item WirelessGatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayStatistics>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayStatisticsResponse> instance

Gets operating information about a wireless gateway.


=head2 GetWirelessGatewayTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayTaskResponse> instance

Gets information about a wireless gateway task.


=head2 GetWirelessGatewayTaskDefinition

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayTaskDefinitionResponse> instance

Gets information about a wireless gateway task definition.


=head2 ListDestinations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListDestinations>

Returns: a L<Paws::IoTWireless::ListDestinationsResponse> instance

Lists the destinations registered to your AWS account.


=head2 ListDeviceProfiles

=over

=item [DeviceProfileType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListDeviceProfiles>

Returns: a L<Paws::IoTWireless::ListDeviceProfilesResponse> instance

Lists the device profiles registered to your AWS account.


=head2 ListDevicesForWirelessDeviceImportTask

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListDevicesForWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::ListDevicesForWirelessDeviceImportTaskResponse> instance

List the Sidewalk devices in an import task and their onboarding
status.


=head2 ListEventConfigurations

=over

=item ResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListEventConfigurations>

Returns: a L<Paws::IoTWireless::ListEventConfigurationsResponse> instance

List event configurations where at least one event topic has been
enabled.


=head2 ListFuotaTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListFuotaTasks>

Returns: a L<Paws::IoTWireless::ListFuotaTasksResponse> instance

Lists the FUOTA tasks registered to your AWS account.


=head2 ListMulticastGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListMulticastGroups>

Returns: a L<Paws::IoTWireless::ListMulticastGroupsResponse> instance

Lists the multicast groups registered to your AWS account.


=head2 ListMulticastGroupsByFuotaTask

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListMulticastGroupsByFuotaTask>

Returns: a L<Paws::IoTWireless::ListMulticastGroupsByFuotaTaskResponse> instance

List all multicast groups associated with a FUOTA task.


=head2 ListNetworkAnalyzerConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListNetworkAnalyzerConfigurations>

Returns: a L<Paws::IoTWireless::ListNetworkAnalyzerConfigurationsResponse> instance

Lists the network analyzer configurations.


=head2 ListPartnerAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListPartnerAccounts>

Returns: a L<Paws::IoTWireless::ListPartnerAccountsResponse> instance

Lists the partner accounts associated with your AWS account.


=head2 ListPositionConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListPositionConfigurations>

Returns: a L<Paws::IoTWireless::ListPositionConfigurationsResponse> instance

List position configurations for a given resource, such as positioning
solvers.

This action is no longer supported. Calls to retrieve position
information should use the GetResourcePosition
(https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
API operation instead.


=head2 ListQueuedMessages

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WirelessDeviceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListQueuedMessages>

Returns: a L<Paws::IoTWireless::ListQueuedMessagesResponse> instance

List queued messages in the downlink queue.


=head2 ListServiceProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListServiceProfiles>

Returns: a L<Paws::IoTWireless::ListServiceProfilesResponse> instance

Lists the service profiles registered to your AWS account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListTagsForResource>

Returns: a L<Paws::IoTWireless::ListTagsForResourceResponse> instance

Lists the tags (metadata) you have assigned to the resource.


=head2 ListWirelessDeviceImportTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessDeviceImportTasks>

Returns: a L<Paws::IoTWireless::ListWirelessDeviceImportTasksResponse> instance

List wireless devices that have been added to an import task.


=head2 ListWirelessDevices

=over

=item [DestinationName => Str]

=item [DeviceProfileId => Str]

=item [FuotaTaskId => Str]

=item [MaxResults => Int]

=item [MulticastGroupId => Str]

=item [NextToken => Str]

=item [ServiceProfileId => Str]

=item [WirelessDeviceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessDevices>

Returns: a L<Paws::IoTWireless::ListWirelessDevicesResponse> instance

Lists the wireless devices registered to your AWS account.


=head2 ListWirelessGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessGateways>

Returns: a L<Paws::IoTWireless::ListWirelessGatewaysResponse> instance

Lists the wireless gateways registered to your AWS account.


=head2 ListWirelessGatewayTaskDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskDefinitionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessGatewayTaskDefinitions>

Returns: a L<Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse> instance

List the wireless gateway tasks definitions registered to your AWS
account.


=head2 PutPositionConfiguration

=over

=item ResourceIdentifier => Str

=item ResourceType => Str

=item [Destination => Str]

=item [Solvers => L<Paws::IoTWireless::PositionSolverConfigurations>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::PutPositionConfiguration>

Returns: a L<Paws::IoTWireless::PutPositionConfigurationResponse> instance

Put position configuration for a given resource.

This action is no longer supported. Calls to update the position
configuration should use the UpdateResourcePosition
(https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html)
API operation instead.


=head2 PutResourceLogLevel

=over

=item LogLevel => Str

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::PutResourceLogLevel>

Returns: a L<Paws::IoTWireless::PutResourceLogLevelResponse> instance

Sets the log-level override for a resource ID and resource type. A
limit of 200 log level override can be set per account.


=head2 ResetAllResourceLogLevels






Each argument is described in detail in: L<Paws::IoTWireless::ResetAllResourceLogLevels>

Returns: a L<Paws::IoTWireless::ResetAllResourceLogLevelsResponse> instance

Removes the log-level overrides for all resources; wireless devices,
wireless gateways, and FUOTA tasks.


=head2 ResetResourceLogLevel

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::ResetResourceLogLevel>

Returns: a L<Paws::IoTWireless::ResetResourceLogLevelResponse> instance

Removes the log-level override, if any, for a specific resource ID and
resource type. It can be used for a wireless device, a wireless
gateway, or a FUOTA task.


=head2 SendDataToMulticastGroup

=over

=item Id => Str

=item PayloadData => Str

=item WirelessMetadata => L<Paws::IoTWireless::MulticastWirelessMetadata>


=back

Each argument is described in detail in: L<Paws::IoTWireless::SendDataToMulticastGroup>

Returns: a L<Paws::IoTWireless::SendDataToMulticastGroupResponse> instance

Sends the specified data to a multicast group.


=head2 SendDataToWirelessDevice

=over

=item Id => Str

=item PayloadData => Str

=item TransmitMode => Int

=item [WirelessMetadata => L<Paws::IoTWireless::WirelessMetadata>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::SendDataToWirelessDevice>

Returns: a L<Paws::IoTWireless::SendDataToWirelessDeviceResponse> instance

Sends a decrypted application data frame to a device.


=head2 StartBulkAssociateWirelessDeviceWithMulticastGroup

=over

=item Id => Str

=item [QueryString => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartBulkAssociateWirelessDeviceWithMulticastGroup>

Returns: a L<Paws::IoTWireless::StartBulkAssociateWirelessDeviceWithMulticastGroupResponse> instance

Starts a bulk association of all qualifying wireless devices with a
multicast group.


=head2 StartBulkDisassociateWirelessDeviceFromMulticastGroup

=over

=item Id => Str

=item [QueryString => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartBulkDisassociateWirelessDeviceFromMulticastGroup>

Returns: a L<Paws::IoTWireless::StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse> instance

Starts a bulk disassociatin of all qualifying wireless devices from a
multicast group.


=head2 StartFuotaTask

=over

=item Id => Str

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANStartFuotaTask>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartFuotaTask>

Returns: a L<Paws::IoTWireless::StartFuotaTaskResponse> instance

Starts a FUOTA task.


=head2 StartMulticastGroupSession

=over

=item Id => Str

=item LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticastSession>


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartMulticastGroupSession>

Returns: a L<Paws::IoTWireless::StartMulticastGroupSessionResponse> instance

Starts a multicast group session.


=head2 StartSingleWirelessDeviceImportTask

=over

=item DestinationName => Str

=item Sidewalk => L<Paws::IoTWireless::SidewalkSingleStartImportInfo>

=item [ClientRequestToken => Str]

=item [DeviceName => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartSingleWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::StartSingleWirelessDeviceImportTaskResponse> instance

Start import task for a single wireless device.


=head2 StartWirelessDeviceImportTask

=over

=item DestinationName => Str

=item Sidewalk => L<Paws::IoTWireless::SidewalkStartImportInfo>

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::StartWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::StartWirelessDeviceImportTaskResponse> instance

Start import task for provisioning Sidewalk devices in bulk using an S3
CSV file.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::IoTWireless::Tag>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::TagResource>

Returns: a L<Paws::IoTWireless::TagResourceResponse> instance

Adds a tag to a resource.


=head2 TestWirelessDevice

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::TestWirelessDevice>

Returns: a L<Paws::IoTWireless::TestWirelessDeviceResponse> instance

Simulates a provisioned device by sending an uplink data payload of
C<Hello>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UntagResource>

Returns: a L<Paws::IoTWireless::UntagResourceResponse> instance

Removes one or more tags from a resource.


=head2 UpdateDestination

=over

=item Name => Str

=item [Description => Str]

=item [Expression => Str]

=item [ExpressionType => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateDestination>

Returns: a L<Paws::IoTWireless::UpdateDestinationResponse> instance

Updates properties of a destination.


=head2 UpdateEventConfigurationByResourceTypes

=over

=item [ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusResourceTypeEventConfiguration>]

=item [DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateResourceTypeEventConfiguration>]

=item [Join => L<Paws::IoTWireless::JoinResourceTypeEventConfiguration>]

=item [MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusResourceTypeEventConfiguration>]

=item [Proximity => L<Paws::IoTWireless::ProximityResourceTypeEventConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateEventConfigurationByResourceTypes>

Returns: a L<Paws::IoTWireless::UpdateEventConfigurationByResourceTypesResponse> instance

Update the event configuration based on resource types.


=head2 UpdateFuotaTask

=over

=item Id => Str

=item [Description => Str]

=item [Descriptor => Str]

=item [FirmwareUpdateImage => Str]

=item [FirmwareUpdateRole => Str]

=item [FragmentIntervalMS => Int]

=item [FragmentSizeBytes => Int]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANFuotaTask>]

=item [Name => Str]

=item [RedundancyPercent => Int]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateFuotaTask>

Returns: a L<Paws::IoTWireless::UpdateFuotaTaskResponse> instance

Updates properties of a FUOTA task.


=head2 UpdateLogLevelsByResourceTypes

=over

=item [DefaultLogLevel => Str]

=item [FuotaTaskLogOptions => ArrayRef[L<Paws::IoTWireless::FuotaTaskLogOption>]]

=item [WirelessDeviceLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessDeviceLogOption>]]

=item [WirelessGatewayLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessGatewayLogOption>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateLogLevelsByResourceTypes>

Returns: a L<Paws::IoTWireless::UpdateLogLevelsByResourceTypesResponse> instance

Set default log level, or log levels by resource types. This can be for
wireless device, wireless gateway, or FUOTA task log options, and is
used to control the log messages that'll be displayed in CloudWatch.


=head2 UpdateMetricConfiguration

=over

=item [SummaryMetric => L<Paws::IoTWireless::SummaryMetricConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateMetricConfiguration>

Returns: a L<Paws::IoTWireless::UpdateMetricConfigurationResponse> instance

Update the summary metric configuration.


=head2 UpdateMulticastGroup

=over

=item Id => Str

=item [Description => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticast>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateMulticastGroup>

Returns: a L<Paws::IoTWireless::UpdateMulticastGroupResponse> instance

Updates properties of a multicast group session.


=head2 UpdateNetworkAnalyzerConfiguration

=over

=item ConfigurationName => Str

=item [Description => Str]

=item [MulticastGroupsToAdd => ArrayRef[Str|Undef]]

=item [MulticastGroupsToRemove => ArrayRef[Str|Undef]]

=item [TraceContent => L<Paws::IoTWireless::TraceContent>]

=item [WirelessDevicesToAdd => ArrayRef[Str|Undef]]

=item [WirelessDevicesToRemove => ArrayRef[Str|Undef]]

=item [WirelessGatewaysToAdd => ArrayRef[Str|Undef]]

=item [WirelessGatewaysToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateNetworkAnalyzerConfiguration>

Returns: a L<Paws::IoTWireless::UpdateNetworkAnalyzerConfigurationResponse> instance

Update network analyzer configuration.


=head2 UpdatePartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str

=item Sidewalk => L<Paws::IoTWireless::SidewalkUpdateAccount>


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdatePartnerAccount>

Returns: a L<Paws::IoTWireless::UpdatePartnerAccountResponse> instance

Updates properties of a partner account.


=head2 UpdatePosition

=over

=item Position => ArrayRef[Num]

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdatePosition>

Returns: a L<Paws::IoTWireless::UpdatePositionResponse> instance

Update the position information of a resource.

This action is no longer supported. Calls to update the position
information should use the UpdateResourcePosition
(https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html)
API operation instead.


=head2 UpdateResourceEventConfiguration

=over

=item Identifier => Str

=item IdentifierType => Str

=item [ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusEventConfiguration>]

=item [DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateEventConfiguration>]

=item [Join => L<Paws::IoTWireless::JoinEventConfiguration>]

=item [MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusEventConfiguration>]

=item [PartnerType => Str]

=item [Proximity => L<Paws::IoTWireless::ProximityEventConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateResourceEventConfiguration>

Returns: a L<Paws::IoTWireless::UpdateResourceEventConfigurationResponse> instance

Update the event configuration for a particular resource identifier.


=head2 UpdateResourcePosition

=over

=item ResourceIdentifier => Str

=item ResourceType => Str

=item [GeoJsonPayload => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateResourcePosition>

Returns: a L<Paws::IoTWireless::UpdateResourcePositionResponse> instance

Update the position information of a given wireless device or a
wireless gateway resource. The position coordinates are based on the
World Geodetic System (WGS84)
(https://gisgeography.com/wgs84-world-geodetic-system/).


=head2 UpdateWirelessDevice

=over

=item Id => Str

=item [Description => Str]

=item [DestinationName => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANUpdateDevice>]

=item [Name => Str]

=item [Positioning => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateWirelessDevice>

Returns: a L<Paws::IoTWireless::UpdateWirelessDeviceResponse> instance

Updates properties of a wireless device.


=head2 UpdateWirelessDeviceImportTask

=over

=item Id => Str

=item Sidewalk => L<Paws::IoTWireless::SidewalkUpdateImportInfo>


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateWirelessDeviceImportTask>

Returns: a L<Paws::IoTWireless::UpdateWirelessDeviceImportTaskResponse> instance

Update an import task to add more devices to the task.


=head2 UpdateWirelessGateway

=over

=item Id => Str

=item [Description => Str]

=item [JoinEuiFilters => ArrayRef[ArrayRef[Str|Undef]]]

=item [MaxEirp => Num]

=item [Name => Str]

=item [NetIdFilters => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateWirelessGateway>

Returns: a L<Paws::IoTWireless::UpdateWirelessGatewayResponse> instance

Updates properties of a wireless gateway.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

