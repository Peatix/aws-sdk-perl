package Paws::EC2;
  use Moose;
  sub service { 'ec2' }
  sub signing_name { 'ec2' }
  sub version { '2016-11-15' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 503 and $_[0]->code eq 'EC2ThrottledException' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 503 and $_[0]->code eq 'RequestLimitExceeded' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::EC2Caller';

  
  sub AcceptAddressTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptAddressTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptCapacityReservationBillingOwnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptCapacityReservationBillingOwnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdvertiseByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AdvertiseByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateIpamPoolCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateIpamPoolCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplySecurityGroupsToClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignPrivateNatGatewayAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignPrivateNatGatewayAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateCapacityReservationBillingOwner {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateCapacityReservationBillingOwner', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateEnclaveCertificateIamRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateEnclaveCertificateIamRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateInstanceEventWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateInstanceEventWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIpamByoasn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateIpamByoasn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIpamResourceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateIpamResourceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateNatGatewayAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateNatGatewayAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRouteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateRouteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSecurityGroupVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateSecurityGroupVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayPolicyTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTransitGatewayPolicyTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTrunkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTrunkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVerifiedAccessTrustProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVerifiedAccessTrustProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeClientVpnIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeClientVpnIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BundleInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::BundleInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelBundleTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelBundleTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCapacityReservationFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelCapacityReservationFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelConversionTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelConversionTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDeclarativePoliciesReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelDeclarativePoliciesReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelImageLaunchPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelImageLaunchPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmProductInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ConfirmProductInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCapacityReservationBySplitting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCapacityReservationBySplitting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCapacityReservationFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCapacityReservationFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCarrierGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCarrierGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClientVpnRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateClientVpnRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCoipPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCoipPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDefaultSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDefaultSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDefaultVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDefaultVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDelegateMacVolumeOwnershipTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDelegateMacVolumeOwnershipTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceConnectEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInstanceConnectEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceEventWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInstanceEventWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInstanceExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateIpam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpamExternalResourceVerificationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateIpamExternalResourceVerificationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateIpamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpamResourceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateIpamResourceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpamScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateIpamScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLaunchTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRouteTableVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRouteTableVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayVirtualInterfaceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayVirtualInterfaceGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMacSystemIntegrityProtectionModificationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateMacSystemIntegrityProtectionModificationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInsightsAccessScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInsightsAccessScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInsightsPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInsightsPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreatePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicIpv4Pool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreatePublicIpv4Pool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplaceRootVolumeTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateReplaceRootVolumeTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRestoreImageTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRestoreImageTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteServerEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteServerEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteServerPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteServerPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStoreImageTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateStoreImageTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnetCidrReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSubnetCidrReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPolicyTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayPolicyTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRouteTableAnnouncement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayRouteTableAnnouncement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVerifiedAccessEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVerifiedAccessEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVerifiedAccessGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVerifiedAccessGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVerifiedAccessInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVerifiedAccessInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVerifiedAccessTrustProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVerifiedAccessTrustProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcBlockPublicAccessExclusion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcBlockPublicAccessExclusion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpointConnectionNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpointConnectionNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpointServiceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpointServiceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCarrierGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCarrierGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientVpnRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteClientVpnRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoipPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCoipPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceConnectEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteInstanceConnectEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceEventWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteInstanceEventWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteIpam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpamExternalResourceVerificationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteIpamExternalResourceVerificationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteIpamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpamResourceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteIpamResourceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpamScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteIpamScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLaunchTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRouteTableVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayVirtualInterfaceGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayVirtualInterfaceGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsAccessScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsAccessScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsAccessScopeAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsAccessScopeAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeletePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicIpv4Pool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeletePublicIpv4Pool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueuedReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteQueuedReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteServerEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteServerEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteServerPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteServerPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnetCidrReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSubnetCidrReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayPolicyTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayPolicyTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayRouteTableAnnouncement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayRouteTableAnnouncement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedAccessEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVerifiedAccessEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedAccessGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVerifiedAccessGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedAccessInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVerifiedAccessInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedAccessTrustProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVerifiedAccessTrustProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcBlockPublicAccessExclusion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcBlockPublicAccessExclusion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpointConnectionNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpointConnectionNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpointServiceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpointServiceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeprovisionByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionIpamByoasn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeprovisionIpamByoasn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionIpamPoolCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeprovisionIpamPoolCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionPublicIpv4PoolCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeprovisionPublicIpv4PoolCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGatewayMulticastGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGatewayMulticastGroupSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterTransitGatewayMulticastGroupSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddressesAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddressesAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddressTransfers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddressTransfers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAggregateIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAggregateIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAvailabilityZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAwsNetworkPerformanceMetricSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBundleTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeBundleTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeByoipCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeByoipCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityBlockExtensionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityBlockExtensionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityBlockExtensionOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityBlockExtensionOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityBlockOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityBlockOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityReservationBillingRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityReservationBillingRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityReservationFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityReservationFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCarrierGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCarrierGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClassicLinkInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClassicLinkInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnAuthorizationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnAuthorizationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnTargetNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnTargetNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCoipPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCoipPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConversionTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeConversionTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCustomerGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeclarativePoliciesReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeDeclarativePoliciesReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEgressOnlyInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeEgressOnlyInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticGpus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeElasticGpus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeExportImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFastLaunchImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFastLaunchImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleetHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservationOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservationOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIamInstanceProfileAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIamInstanceProfileAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportSnapshotTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportSnapshotTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceConnectEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceConnectEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceCreditSpecifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceCreditSpecifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceEventWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceEventWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceImageMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceImageMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTopology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceTopology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTypeOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceTypeOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamByoasn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamByoasn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamExternalResourceVerificationTokens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamExternalResourceVerificationTokens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamResourceDiscoveries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamResourceDiscoveries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamResourceDiscoveryAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamResourceDiscoveryAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpamScopes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpamScopes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpv6Pools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpv6Pools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyPairs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeKeyPairs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLaunchTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLaunchTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTableVpcAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayVirtualInterfaceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayVirtualInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayVirtualInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLockedSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLockedSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMacHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeMacHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMacModificationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeMacModificationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedPrefixLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeManagedPrefixLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMovingAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeMovingAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNatGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNatGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkAcls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsAccessScopeAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsAccessScopeAnalyses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsAccessScopes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsAccessScopes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsAnalyses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfacePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfacePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOutpostLags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeOutpostLags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlacementGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePlacementGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrefixLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePrefixLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrincipalIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePrincipalIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePublicIpv4Pools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePublicIpv4Pools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplaceRootVolumeTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReplaceRootVolumeTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesListings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteServerEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteServerEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteServerPeers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteServerPeers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstanceAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstanceAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroupReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroupReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroupRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroupRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroupVpcAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroupVpcAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceLinkVirtualInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeServiceLinkVirtualInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotTierStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshotTierStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequestHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequestHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotPriceHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStaleSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeStaleSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStoreImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeStoreImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorFilterRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorFilterRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayConnectPeers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayConnectPeers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayMulticastDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayMulticastDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayPeeringAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayPeeringAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayPolicyTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayPolicyTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayRouteTableAnnouncements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayRouteTableAnnouncements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayVpcAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayVpcAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrunkInterfaceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrunkInterfaceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedAccessEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVerifiedAccessEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedAccessGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVerifiedAccessGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedAccessInstanceLoggingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedAccessInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVerifiedAccessInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVerifiedAccessTrustProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVerifiedAccessTrustProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcBlockPublicAccessExclusions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcBlockPublicAccessExclusions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcBlockPublicAccessOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcBlockPublicAccessOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointConnectionNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointConnectionNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServiceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServiceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServicePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServicePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcPeeringConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVerifiedAccessTrustProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVerifiedAccessTrustProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAddressTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableAddressTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAllowedImagesSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableAllowedImagesSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAwsNetworkPerformanceMetricSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableAwsNetworkPerformanceMetricSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableFastLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableFastLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImageBlockPublicAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableImageBlockPublicAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImageDeprecation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableImageDeprecation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImageDeregistrationProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableImageDeregistrationProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableIpamOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableIpamOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableRouteServerPropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableRouteServerPropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSerialConsoleAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableSerialConsoleAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSnapshotBlockPublicAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableSnapshotBlockPublicAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTransitGatewayRouteTablePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableTransitGatewayRouteTablePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCapacityReservationBillingOwner {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateCapacityReservationBillingOwner', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateEnclaveCertificateIamRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateEnclaveCertificateIamRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateInstanceEventWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateInstanceEventWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIpamByoasn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateIpamByoasn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIpamResourceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateIpamResourceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateNatGatewayAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateNatGatewayAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRouteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateRouteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSecurityGroupVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateSecurityGroupVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayPolicyTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTransitGatewayPolicyTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrunkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTrunkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAddressTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableAddressTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAllowedImagesSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableAllowedImagesSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAwsNetworkPerformanceMetricSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableAwsNetworkPerformanceMetricSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableFastLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableFastLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImageBlockPublicAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableImageBlockPublicAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImageDeprecation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableImageDeprecation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImageDeregistrationProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableImageDeregistrationProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableIpamOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableIpamOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableReachabilityAnalyzerOrganizationSharing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableReachabilityAnalyzerOrganizationSharing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableRouteServerPropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableRouteServerPropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSerialConsoleAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableSerialConsoleAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSnapshotBlockPublicAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableSnapshotBlockPublicAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTransitGatewayRouteTablePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableTransitGatewayRouteTablePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVolumeIO {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVolumeIO', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportClientVpnClientCertificateRevocationList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportClientVpnClientCertificateRevocationList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportClientVpnClientConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportClientVpnClientConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportTransitGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportTransitGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportVerifiedAccessInstanceClientConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportVerifiedAccessInstanceClientConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAllowedImagesSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAllowedImagesSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociatedEnclaveCertificateIamRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAssociatedEnclaveCertificateIamRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociatedIpv6PoolCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAssociatedIpv6PoolCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAwsNetworkPerformanceData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAwsNetworkPerformanceData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapacityReservationUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetCapacityReservationUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoipPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetCoipPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleScreenshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleScreenshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeclarativePoliciesReportSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetDeclarativePoliciesReportSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetDefaultCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowLogsIntegrationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetFlowLogsIntegrationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupsForCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetGroupsForCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostReservationPurchasePreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetHostReservationPurchasePreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageBlockPublicAccessState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetImageBlockPublicAccessState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceMetadataDefaults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetInstanceMetadataDefaults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceTpmEkPub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetInstanceTpmEkPub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceTypesFromInstanceRequirements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetInstanceTypesFromInstanceRequirements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceUefiData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetInstanceUefiData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamAddressHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamAddressHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamDiscoveredAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamDiscoveredAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamDiscoveredPublicAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamDiscoveredPublicAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamDiscoveredResourceCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamDiscoveredResourceCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamPoolAllocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamPoolAllocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamPoolCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamPoolCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIpamResourceCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetIpamResourceCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchTemplateData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetLaunchTemplateData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedPrefixListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetManagedPrefixListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedPrefixListEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetManagedPrefixListEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkInsightsAccessScopeAnalysisFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkInsightsAccessScopeContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetNetworkInsightsAccessScopeContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPasswordData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetPasswordData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteServerAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetRouteServerAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteServerPropagations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetRouteServerPropagations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteServerRoutingDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetRouteServerRoutingDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityGroupsForVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSecurityGroupsForVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSerialConsoleAccessStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSerialConsoleAccessStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnapshotBlockPublicAccessState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSnapshotBlockPublicAccessState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpotPlacementScores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSpotPlacementScores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubnetCidrReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSubnetCidrReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayAttachmentPropagations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayAttachmentPropagations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayPolicyTableAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayPolicyTableAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayPolicyTableEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayPolicyTableEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayPrefixListReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayPrefixListReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRouteTableAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayRouteTableAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRouteTablePropagations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayRouteTablePropagations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVerifiedAccessEndpointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVerifiedAccessEndpointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVerifiedAccessEndpointTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVerifiedAccessEndpointTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVerifiedAccessGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVerifiedAccessGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpnConnectionDeviceSampleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVpnConnectionDeviceSampleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpnConnectionDeviceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVpnConnectionDeviceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpnTunnelReplacementStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetVpnTunnelReplacementStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportClientVpnClientCertificateRevocationList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportClientVpnClientCertificateRevocationList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagesInRecycleBin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ListImagesInRecycleBin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSnapshotsInRecycleBin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ListSnapshotsInRecycleBin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LockSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::LockSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAddressAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyAddressAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAvailabilityZoneGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyAvailabilityZoneGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCapacityReservationFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyCapacityReservationFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDefaultCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyDefaultCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceCapacityReservationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceCapacityReservationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceCpuOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceCpuOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceEventStartTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceEventStartTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceEventWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceEventWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceMaintenanceOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceMaintenanceOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceMetadataDefaults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceMetadataDefaults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceMetadataOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceMetadataOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceNetworkPerformanceOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceNetworkPerformanceOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstancePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstancePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIpam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIpam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIpamPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIpamPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIpamResourceCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIpamResourceCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIpamResourceDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIpamResourceDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIpamScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIpamScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLocalGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyLocalGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyPrivateDnsNameOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyPrivateDnsNameOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyRouteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyRouteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySecurityGroupRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySecurityGroupRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotTier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySnapshotTier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySpotFleetRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySpotFleetRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySubnetAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySubnetAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorFilterNetworkServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorFilterNetworkServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessEndpointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessEndpointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessInstanceLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVerifiedAccessTrustProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVerifiedAccessTrustProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcBlockPublicAccessExclusion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcBlockPublicAccessExclusion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcBlockPublicAccessOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcBlockPublicAccessOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointConnectionNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointConnectionNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointServiceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointServiceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointServicePayerResponsibility {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointServicePayerResponsibility', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointServicePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointServicePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcPeeringConnectionOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcPeeringConnectionOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcTenancy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcTenancy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnConnectionOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnConnectionOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnTunnelCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnTunnelCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnTunnelOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnTunnelOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveAddressToVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MoveAddressToVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveByoipCidrToIpam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MoveByoipCidrToIpam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveCapacityReservationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MoveCapacityReservationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ProvisionByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionIpamByoasn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ProvisionIpamByoasn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionIpamPoolCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ProvisionIpamPoolCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionPublicIpv4PoolCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ProvisionPublicIpv4PoolCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseCapacityBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseCapacityBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseCapacityBlockExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseCapacityBlockExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseHostReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseHostReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseReservedInstancesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RebootInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGatewayMulticastGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterTransitGatewayMulticastGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGatewayMulticastGroupSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterTransitGatewayMulticastGroupSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectCapacityReservationBillingOwnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectCapacityReservationBillingOwnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseIpamPoolAllocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseIpamPoolAllocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceIamInstanceProfileAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceIamInstanceProfileAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceImageCriteriaInAllowedImagesSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRouteTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceVpnTunnel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceVpnTunnel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReportInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReportInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetAddressAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetAddressAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreAddressToClassic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreAddressToClassic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreImageFromRecycleBin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreImageFromRecycleBin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreManagedPrefixListVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreManagedPrefixListVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreSnapshotFromRecycleBin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreSnapshotFromRecycleBin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreSnapshotTier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreSnapshotTier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeClientVpnIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeClientVpnIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchLocalGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchLocalGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTransitGatewayMulticastGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchTransitGatewayMulticastGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTransitGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchTransitGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDiagnosticInterrupt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SendDiagnosticInterrupt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeclarativePoliciesReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartDeclarativePoliciesReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNetworkInsightsAccessScopeAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartNetworkInsightsAccessScopeAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNetworkInsightsAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartNetworkInsightsAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVpcEndpointServicePrivateDnsVerification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartVpcEndpointServicePrivateDnsVerification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StopInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateClientVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::TerminateClientVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::TerminateInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignPrivateNatGatewayAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignPrivateNatGatewayAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnlockSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnlockSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnmonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnmonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub WithdrawByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::WithdrawByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAllAddressesAttribute {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAddressesAttribute(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAddressesAttribute(@_, NextToken => $next_result->NextToken);
        push @{ $result->Addresses }, @{ $next_result->Addresses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
        $result = $self->DescribeAddressesAttribute(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
    }

    return undef
  }
  sub DescribeAllAddressTransfers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAddressTransfers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAddressTransfers(@_, NextToken => $next_result->NextToken);
        push @{ $result->AddressTransfers }, @{ $next_result->AddressTransfers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AddressTransfers') foreach (@{ $result->AddressTransfers });
        $result = $self->DescribeAddressTransfers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AddressTransfers') foreach (@{ $result->AddressTransfers });
    }

    return undef
  }
  sub DescribeAllAwsNetworkPerformanceMetricSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAwsNetworkPerformanceMetricSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAwsNetworkPerformanceMetricSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subscriptions }, @{ $next_result->Subscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
        $result = $self->DescribeAwsNetworkPerformanceMetricSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
    }

    return undef
  }
  sub DescribeAllByoipCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeByoipCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeByoipCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ByoipCidrs }, @{ $next_result->ByoipCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
        $result = $self->DescribeByoipCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
    }

    return undef
  }
  sub DescribeAllCapacityBlockExtensionHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityBlockExtensionHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityBlockExtensionHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityBlockExtensions }, @{ $next_result->CapacityBlockExtensions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityBlockExtensions') foreach (@{ $result->CapacityBlockExtensions });
        $result = $self->DescribeCapacityBlockExtensionHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityBlockExtensions') foreach (@{ $result->CapacityBlockExtensions });
    }

    return undef
  }
  sub DescribeAllCapacityBlockExtensionOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityBlockExtensionOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityBlockExtensionOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityBlockExtensionOfferings }, @{ $next_result->CapacityBlockExtensionOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityBlockExtensionOfferings') foreach (@{ $result->CapacityBlockExtensionOfferings });
        $result = $self->DescribeCapacityBlockExtensionOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityBlockExtensionOfferings') foreach (@{ $result->CapacityBlockExtensionOfferings });
    }

    return undef
  }
  sub DescribeAllCapacityBlockOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityBlockOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityBlockOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityBlockOfferings }, @{ $next_result->CapacityBlockOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityBlockOfferings') foreach (@{ $result->CapacityBlockOfferings });
        $result = $self->DescribeCapacityBlockOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityBlockOfferings') foreach (@{ $result->CapacityBlockOfferings });
    }

    return undef
  }
  sub DescribeAllCapacityReservationBillingRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityReservationBillingRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityReservationBillingRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservationBillingRequests }, @{ $next_result->CapacityReservationBillingRequests };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservationBillingRequests') foreach (@{ $result->CapacityReservationBillingRequests });
        $result = $self->DescribeCapacityReservationBillingRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservationBillingRequests') foreach (@{ $result->CapacityReservationBillingRequests });
    }

    return undef
  }
  sub DescribeAllCapacityReservationFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityReservationFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityReservationFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservationFleets }, @{ $next_result->CapacityReservationFleets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservationFleets') foreach (@{ $result->CapacityReservationFleets });
        $result = $self->DescribeCapacityReservationFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservationFleets') foreach (@{ $result->CapacityReservationFleets });
    }

    return undef
  }
  sub DescribeAllCapacityReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservations }, @{ $next_result->CapacityReservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservations') foreach (@{ $result->CapacityReservations });
        $result = $self->DescribeCapacityReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservations') foreach (@{ $result->CapacityReservations });
    }

    return undef
  }
  sub DescribeAllCarrierGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCarrierGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCarrierGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->CarrierGateways }, @{ $next_result->CarrierGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CarrierGateways') foreach (@{ $result->CarrierGateways });
        $result = $self->DescribeCarrierGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CarrierGateways') foreach (@{ $result->CarrierGateways });
    }

    return undef
  }
  sub DescribeAllClassicLinkInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClassicLinkInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClassicLinkInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->DescribeClassicLinkInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub DescribeAllClientVpnAuthorizationRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnAuthorizationRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnAuthorizationRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthorizationRules }, @{ $next_result->AuthorizationRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthorizationRules') foreach (@{ $result->AuthorizationRules });
        $result = $self->DescribeClientVpnAuthorizationRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthorizationRules') foreach (@{ $result->AuthorizationRules });
    }

    return undef
  }
  sub DescribeAllClientVpnConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->DescribeClientVpnConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub DescribeAllClientVpnEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientVpnEndpoints }, @{ $next_result->ClientVpnEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientVpnEndpoints') foreach (@{ $result->ClientVpnEndpoints });
        $result = $self->DescribeClientVpnEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientVpnEndpoints') foreach (@{ $result->ClientVpnEndpoints });
    }

    return undef
  }
  sub DescribeAllClientVpnRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Routes }, @{ $next_result->Routes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Routes') foreach (@{ $result->Routes });
        $result = $self->DescribeClientVpnRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Routes') foreach (@{ $result->Routes });
    }

    return undef
  }
  sub DescribeAllClientVpnTargetNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnTargetNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnTargetNetworks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientVpnTargetNetworks }, @{ $next_result->ClientVpnTargetNetworks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientVpnTargetNetworks') foreach (@{ $result->ClientVpnTargetNetworks });
        $result = $self->DescribeClientVpnTargetNetworks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientVpnTargetNetworks') foreach (@{ $result->ClientVpnTargetNetworks });
    }

    return undef
  }
  sub DescribeAllCoipPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCoipPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCoipPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoipPools }, @{ $next_result->CoipPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoipPools') foreach (@{ $result->CoipPools });
        $result = $self->DescribeCoipPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoipPools') foreach (@{ $result->CoipPools });
    }

    return undef
  }
  sub DescribeAllDhcpOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDhcpOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDhcpOptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->DhcpOptions }, @{ $next_result->DhcpOptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DhcpOptions') foreach (@{ $result->DhcpOptions });
        $result = $self->DescribeDhcpOptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DhcpOptions') foreach (@{ $result->DhcpOptions });
    }

    return undef
  }
  sub DescribeAllEgressOnlyInternetGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEgressOnlyInternetGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEgressOnlyInternetGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->EgressOnlyInternetGateways }, @{ $next_result->EgressOnlyInternetGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EgressOnlyInternetGateways') foreach (@{ $result->EgressOnlyInternetGateways });
        $result = $self->DescribeEgressOnlyInternetGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EgressOnlyInternetGateways') foreach (@{ $result->EgressOnlyInternetGateways });
    }

    return undef
  }
  sub DescribeAllExportImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeExportImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExportImageTasks }, @{ $next_result->ExportImageTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExportImageTasks') foreach (@{ $result->ExportImageTasks });
        $result = $self->DescribeExportImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExportImageTasks') foreach (@{ $result->ExportImageTasks });
    }

    return undef
  }
  sub DescribeAllFastLaunchImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFastLaunchImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFastLaunchImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->FastLaunchImages }, @{ $next_result->FastLaunchImages };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FastLaunchImages') foreach (@{ $result->FastLaunchImages });
        $result = $self->DescribeFastLaunchImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FastLaunchImages') foreach (@{ $result->FastLaunchImages });
    }

    return undef
  }
  sub DescribeAllFastSnapshotRestores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFastSnapshotRestores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFastSnapshotRestores(@_, NextToken => $next_result->NextToken);
        push @{ $result->FastSnapshotRestores }, @{ $next_result->FastSnapshotRestores };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FastSnapshotRestores') foreach (@{ $result->FastSnapshotRestores });
        $result = $self->DescribeFastSnapshotRestores(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FastSnapshotRestores') foreach (@{ $result->FastSnapshotRestores });
    }

    return undef
  }
  sub DescribeAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Fleets }, @{ $next_result->Fleets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
        $result = $self->DescribeFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
    }

    return undef
  }
  sub DescribeAllFlowLogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFlowLogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFlowLogs(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowLogs }, @{ $next_result->FlowLogs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowLogs') foreach (@{ $result->FlowLogs });
        $result = $self->DescribeFlowLogs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowLogs') foreach (@{ $result->FlowLogs });
    }

    return undef
  }
  sub DescribeAllFpgaImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFpgaImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFpgaImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->FpgaImages }, @{ $next_result->FpgaImages };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FpgaImages') foreach (@{ $result->FpgaImages });
        $result = $self->DescribeFpgaImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FpgaImages') foreach (@{ $result->FpgaImages });
    }

    return undef
  }
  sub DescribeAllHostReservationOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHostReservationOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHostReservationOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->OfferingSet }, @{ $next_result->OfferingSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OfferingSet') foreach (@{ $result->OfferingSet });
        $result = $self->DescribeHostReservationOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OfferingSet') foreach (@{ $result->OfferingSet });
    }

    return undef
  }
  sub DescribeAllHostReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHostReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHostReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HostReservationSet }, @{ $next_result->HostReservationSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HostReservationSet') foreach (@{ $result->HostReservationSet });
        $result = $self->DescribeHostReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HostReservationSet') foreach (@{ $result->HostReservationSet });
    }

    return undef
  }
  sub DescribeAllHosts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHosts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHosts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Hosts }, @{ $next_result->Hosts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Hosts') foreach (@{ $result->Hosts });
        $result = $self->DescribeHosts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Hosts') foreach (@{ $result->Hosts });
    }

    return undef
  }
  sub DescribeAllIamInstanceProfileAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIamInstanceProfileAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIamInstanceProfileAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IamInstanceProfileAssociations }, @{ $next_result->IamInstanceProfileAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IamInstanceProfileAssociations') foreach (@{ $result->IamInstanceProfileAssociations });
        $result = $self->DescribeIamInstanceProfileAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IamInstanceProfileAssociations') foreach (@{ $result->IamInstanceProfileAssociations });
    }

    return undef
  }
  sub DescribeAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->DescribeImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub DescribeAllImportImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImportImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImportImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImportImageTasks }, @{ $next_result->ImportImageTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImportImageTasks') foreach (@{ $result->ImportImageTasks });
        $result = $self->DescribeImportImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImportImageTasks') foreach (@{ $result->ImportImageTasks });
    }

    return undef
  }
  sub DescribeAllImportSnapshotTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImportSnapshotTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImportSnapshotTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImportSnapshotTasks }, @{ $next_result->ImportSnapshotTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImportSnapshotTasks') foreach (@{ $result->ImportSnapshotTasks });
        $result = $self->DescribeImportSnapshotTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImportSnapshotTasks') foreach (@{ $result->ImportSnapshotTasks });
    }

    return undef
  }
  sub DescribeAllInstanceConnectEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceConnectEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceConnectEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceConnectEndpoints }, @{ $next_result->InstanceConnectEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceConnectEndpoints') foreach (@{ $result->InstanceConnectEndpoints });
        $result = $self->DescribeInstanceConnectEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceConnectEndpoints') foreach (@{ $result->InstanceConnectEndpoints });
    }

    return undef
  }
  sub DescribeAllInstanceCreditSpecifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceCreditSpecifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceCreditSpecifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceCreditSpecifications }, @{ $next_result->InstanceCreditSpecifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceCreditSpecifications') foreach (@{ $result->InstanceCreditSpecifications });
        $result = $self->DescribeInstanceCreditSpecifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceCreditSpecifications') foreach (@{ $result->InstanceCreditSpecifications });
    }

    return undef
  }
  sub DescribeAllInstanceEventWindows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceEventWindows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceEventWindows(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceEventWindows }, @{ $next_result->InstanceEventWindows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceEventWindows') foreach (@{ $result->InstanceEventWindows });
        $result = $self->DescribeInstanceEventWindows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceEventWindows') foreach (@{ $result->InstanceEventWindows });
    }

    return undef
  }
  sub DescribeAllInstanceImageMetadata {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceImageMetadata(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceImageMetadata(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceImageMetadata }, @{ $next_result->InstanceImageMetadata };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceImageMetadata') foreach (@{ $result->InstanceImageMetadata });
        $result = $self->DescribeInstanceImageMetadata(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceImageMetadata') foreach (@{ $result->InstanceImageMetadata });
    }

    return undef
  }
  sub DescribeAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Reservations }, @{ $next_result->Reservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
        $result = $self->DescribeInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
    }

    return undef
  }
  sub DescribeAllInstanceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceStatuses }, @{ $next_result->InstanceStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
        $result = $self->DescribeInstanceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
    }

    return undef
  }
  sub DescribeAllInstanceTopology {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceTopology(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceTopology(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->DescribeInstanceTopology(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub DescribeAllInstanceTypeOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceTypeOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceTypeOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypeOfferings }, @{ $next_result->InstanceTypeOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypeOfferings') foreach (@{ $result->InstanceTypeOfferings });
        $result = $self->DescribeInstanceTypeOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypeOfferings') foreach (@{ $result->InstanceTypeOfferings });
    }

    return undef
  }
  sub DescribeAllInstanceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypes }, @{ $next_result->InstanceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
        $result = $self->DescribeInstanceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
    }

    return undef
  }
  sub DescribeAllInternetGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInternetGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInternetGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->InternetGateways }, @{ $next_result->InternetGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InternetGateways') foreach (@{ $result->InternetGateways });
        $result = $self->DescribeInternetGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InternetGateways') foreach (@{ $result->InternetGateways });
    }

    return undef
  }
  sub DescribeAllIpamPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpamPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpamPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamPools }, @{ $next_result->IpamPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamPools') foreach (@{ $result->IpamPools });
        $result = $self->DescribeIpamPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamPools') foreach (@{ $result->IpamPools });
    }

    return undef
  }
  sub DescribeAllIpamResourceDiscoveries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpamResourceDiscoveries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpamResourceDiscoveries(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamResourceDiscoveries }, @{ $next_result->IpamResourceDiscoveries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamResourceDiscoveries') foreach (@{ $result->IpamResourceDiscoveries });
        $result = $self->DescribeIpamResourceDiscoveries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamResourceDiscoveries') foreach (@{ $result->IpamResourceDiscoveries });
    }

    return undef
  }
  sub DescribeAllIpamResourceDiscoveryAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpamResourceDiscoveryAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpamResourceDiscoveryAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamResourceDiscoveryAssociations }, @{ $next_result->IpamResourceDiscoveryAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamResourceDiscoveryAssociations') foreach (@{ $result->IpamResourceDiscoveryAssociations });
        $result = $self->DescribeIpamResourceDiscoveryAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamResourceDiscoveryAssociations') foreach (@{ $result->IpamResourceDiscoveryAssociations });
    }

    return undef
  }
  sub DescribeAllIpams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpams(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ipams }, @{ $next_result->Ipams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ipams') foreach (@{ $result->Ipams });
        $result = $self->DescribeIpams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ipams') foreach (@{ $result->Ipams });
    }

    return undef
  }
  sub DescribeAllIpamScopes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpamScopes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpamScopes(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamScopes }, @{ $next_result->IpamScopes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamScopes') foreach (@{ $result->IpamScopes });
        $result = $self->DescribeIpamScopes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamScopes') foreach (@{ $result->IpamScopes });
    }

    return undef
  }
  sub DescribeAllIpv6Pools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpv6Pools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpv6Pools(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ipv6Pools }, @{ $next_result->Ipv6Pools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ipv6Pools') foreach (@{ $result->Ipv6Pools });
        $result = $self->DescribeIpv6Pools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ipv6Pools') foreach (@{ $result->Ipv6Pools });
    }

    return undef
  }
  sub DescribeAllLaunchTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLaunchTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->LaunchTemplates }, @{ $next_result->LaunchTemplates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LaunchTemplates') foreach (@{ $result->LaunchTemplates });
        $result = $self->DescribeLaunchTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LaunchTemplates') foreach (@{ $result->LaunchTemplates });
    }

    return undef
  }
  sub DescribeAllLaunchTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLaunchTemplateVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LaunchTemplateVersions }, @{ $next_result->LaunchTemplateVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LaunchTemplateVersions') foreach (@{ $result->LaunchTemplateVersions });
        $result = $self->DescribeLaunchTemplateVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LaunchTemplateVersions') foreach (@{ $result->LaunchTemplateVersions });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTables }, @{ $next_result->LocalGatewayRouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTables') foreach (@{ $result->LocalGatewayRouteTables });
        $result = $self->DescribeLocalGatewayRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTables') foreach (@{ $result->LocalGatewayRouteTables });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations }, @{ $next_result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations') foreach (@{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations });
        $result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations') foreach (@{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTableVpcAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTableVpcAssociations }, @{ $next_result->LocalGatewayRouteTableVpcAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTableVpcAssociations') foreach (@{ $result->LocalGatewayRouteTableVpcAssociations });
        $result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTableVpcAssociations') foreach (@{ $result->LocalGatewayRouteTableVpcAssociations });
    }

    return undef
  }
  sub DescribeAllLocalGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGateways }, @{ $next_result->LocalGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGateways') foreach (@{ $result->LocalGateways });
        $result = $self->DescribeLocalGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGateways') foreach (@{ $result->LocalGateways });
    }

    return undef
  }
  sub DescribeAllLocalGatewayVirtualInterfaceGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayVirtualInterfaceGroups }, @{ $next_result->LocalGatewayVirtualInterfaceGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayVirtualInterfaceGroups') foreach (@{ $result->LocalGatewayVirtualInterfaceGroups });
        $result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayVirtualInterfaceGroups') foreach (@{ $result->LocalGatewayVirtualInterfaceGroups });
    }

    return undef
  }
  sub DescribeAllLocalGatewayVirtualInterfaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayVirtualInterfaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayVirtualInterfaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayVirtualInterfaces }, @{ $next_result->LocalGatewayVirtualInterfaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayVirtualInterfaces') foreach (@{ $result->LocalGatewayVirtualInterfaces });
        $result = $self->DescribeLocalGatewayVirtualInterfaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayVirtualInterfaces') foreach (@{ $result->LocalGatewayVirtualInterfaces });
    }

    return undef
  }
  sub DescribeAllMacHosts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMacHosts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMacHosts(@_, NextToken => $next_result->NextToken);
        push @{ $result->MacHosts }, @{ $next_result->MacHosts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MacHosts') foreach (@{ $result->MacHosts });
        $result = $self->DescribeMacHosts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MacHosts') foreach (@{ $result->MacHosts });
    }

    return undef
  }
  sub DescribeAllMacModificationTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMacModificationTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMacModificationTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->MacModificationTasks }, @{ $next_result->MacModificationTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MacModificationTasks') foreach (@{ $result->MacModificationTasks });
        $result = $self->DescribeMacModificationTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MacModificationTasks') foreach (@{ $result->MacModificationTasks });
    }

    return undef
  }
  sub DescribeAllManagedPrefixLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeManagedPrefixLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeManagedPrefixLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixLists }, @{ $next_result->PrefixLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
        $result = $self->DescribeManagedPrefixLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
    }

    return undef
  }
  sub DescribeAllMovingAddresses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMovingAddresses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMovingAddresses(@_, NextToken => $next_result->NextToken);
        push @{ $result->MovingAddressStatuses }, @{ $next_result->MovingAddressStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MovingAddressStatuses') foreach (@{ $result->MovingAddressStatuses });
        $result = $self->DescribeMovingAddresses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MovingAddressStatuses') foreach (@{ $result->MovingAddressStatuses });
    }

    return undef
  }
  sub DescribeAllNatGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNatGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNatGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->NatGateways }, @{ $next_result->NatGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
        $result = $self->DescribeNatGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
    }

    return undef
  }
  sub DescribeAllNetworkAcls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkAcls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkAcls(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkAcls }, @{ $next_result->NetworkAcls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkAcls') foreach (@{ $result->NetworkAcls });
        $result = $self->DescribeNetworkAcls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkAcls') foreach (@{ $result->NetworkAcls });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsAccessScopeAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsAccessScopeAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsAccessScopeAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsAccessScopeAnalyses }, @{ $next_result->NetworkInsightsAccessScopeAnalyses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsAccessScopeAnalyses') foreach (@{ $result->NetworkInsightsAccessScopeAnalyses });
        $result = $self->DescribeNetworkInsightsAccessScopeAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsAccessScopeAnalyses') foreach (@{ $result->NetworkInsightsAccessScopeAnalyses });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsAccessScopes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsAccessScopes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsAccessScopes(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsAccessScopes }, @{ $next_result->NetworkInsightsAccessScopes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsAccessScopes') foreach (@{ $result->NetworkInsightsAccessScopes });
        $result = $self->DescribeNetworkInsightsAccessScopes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsAccessScopes') foreach (@{ $result->NetworkInsightsAccessScopes });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsAnalyses }, @{ $next_result->NetworkInsightsAnalyses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsAnalyses') foreach (@{ $result->NetworkInsightsAnalyses });
        $result = $self->DescribeNetworkInsightsAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsAnalyses') foreach (@{ $result->NetworkInsightsAnalyses });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsPaths {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsPaths(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsPaths(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsPaths }, @{ $next_result->NetworkInsightsPaths };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsPaths') foreach (@{ $result->NetworkInsightsPaths });
        $result = $self->DescribeNetworkInsightsPaths(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsPaths') foreach (@{ $result->NetworkInsightsPaths });
    }

    return undef
  }
  sub DescribeAllNetworkInterfacePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInterfacePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInterfacePermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInterfacePermissions }, @{ $next_result->NetworkInterfacePermissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInterfacePermissions') foreach (@{ $result->NetworkInterfacePermissions });
        $result = $self->DescribeNetworkInterfacePermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInterfacePermissions') foreach (@{ $result->NetworkInterfacePermissions });
    }

    return undef
  }
  sub DescribeAllNetworkInterfaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInterfaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInterfaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInterfaces }, @{ $next_result->NetworkInterfaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInterfaces') foreach (@{ $result->NetworkInterfaces });
        $result = $self->DescribeNetworkInterfaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInterfaces') foreach (@{ $result->NetworkInterfaces });
    }

    return undef
  }
  sub DescribeAllPrefixLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePrefixLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePrefixLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixLists }, @{ $next_result->PrefixLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
        $result = $self->DescribePrefixLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
    }

    return undef
  }
  sub DescribeAllPrincipalIdFormat {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePrincipalIdFormat(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePrincipalIdFormat(@_, NextToken => $next_result->NextToken);
        push @{ $result->Principals }, @{ $next_result->Principals };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Principals') foreach (@{ $result->Principals });
        $result = $self->DescribePrincipalIdFormat(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Principals') foreach (@{ $result->Principals });
    }

    return undef
  }
  sub DescribeAllPublicIpv4Pools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePublicIpv4Pools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePublicIpv4Pools(@_, NextToken => $next_result->NextToken);
        push @{ $result->PublicIpv4Pools }, @{ $next_result->PublicIpv4Pools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PublicIpv4Pools') foreach (@{ $result->PublicIpv4Pools });
        $result = $self->DescribePublicIpv4Pools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PublicIpv4Pools') foreach (@{ $result->PublicIpv4Pools });
    }

    return undef
  }
  sub DescribeAllReplaceRootVolumeTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplaceRootVolumeTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReplaceRootVolumeTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReplaceRootVolumeTasks }, @{ $next_result->ReplaceRootVolumeTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReplaceRootVolumeTasks') foreach (@{ $result->ReplaceRootVolumeTasks });
        $result = $self->DescribeReplaceRootVolumeTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReplaceRootVolumeTasks') foreach (@{ $result->ReplaceRootVolumeTasks });
    }

    return undef
  }
  sub DescribeAllReservedInstancesModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesModifications }, @{ $next_result->ReservedInstancesModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
        $result = $self->DescribeReservedInstancesModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
    }

    return undef
  }
  sub DescribeAllReservedInstancesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesOfferings }, @{ $next_result->ReservedInstancesOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
        $result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
    }

    return undef
  }
  sub DescribeAllRouteServerEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRouteServerEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRouteServerEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteServerEndpoints }, @{ $next_result->RouteServerEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteServerEndpoints') foreach (@{ $result->RouteServerEndpoints });
        $result = $self->DescribeRouteServerEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteServerEndpoints') foreach (@{ $result->RouteServerEndpoints });
    }

    return undef
  }
  sub DescribeAllRouteServerPeers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRouteServerPeers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRouteServerPeers(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteServerPeers }, @{ $next_result->RouteServerPeers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteServerPeers') foreach (@{ $result->RouteServerPeers });
        $result = $self->DescribeRouteServerPeers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteServerPeers') foreach (@{ $result->RouteServerPeers });
    }

    return undef
  }
  sub DescribeAllRouteServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRouteServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRouteServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteServers }, @{ $next_result->RouteServers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteServers') foreach (@{ $result->RouteServers });
        $result = $self->DescribeRouteServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteServers') foreach (@{ $result->RouteServers });
    }

    return undef
  }
  sub DescribeAllRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteTables }, @{ $next_result->RouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteTables') foreach (@{ $result->RouteTables });
        $result = $self->DescribeRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteTables') foreach (@{ $result->RouteTables });
    }

    return undef
  }
  sub DescribeAllScheduledInstanceAvailability {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScheduledInstanceAvailability(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScheduledInstanceAvailability(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledInstanceAvailabilitySet }, @{ $next_result->ScheduledInstanceAvailabilitySet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledInstanceAvailabilitySet') foreach (@{ $result->ScheduledInstanceAvailabilitySet });
        $result = $self->DescribeScheduledInstanceAvailability(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledInstanceAvailabilitySet') foreach (@{ $result->ScheduledInstanceAvailabilitySet });
    }

    return undef
  }
  sub DescribeAllScheduledInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScheduledInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScheduledInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledInstanceSet }, @{ $next_result->ScheduledInstanceSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledInstanceSet') foreach (@{ $result->ScheduledInstanceSet });
        $result = $self->DescribeScheduledInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledInstanceSet') foreach (@{ $result->ScheduledInstanceSet });
    }

    return undef
  }
  sub DescribeAllSecurityGroupRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSecurityGroupRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSecurityGroupRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityGroupRules }, @{ $next_result->SecurityGroupRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityGroupRules') foreach (@{ $result->SecurityGroupRules });
        $result = $self->DescribeSecurityGroupRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityGroupRules') foreach (@{ $result->SecurityGroupRules });
    }

    return undef
  }
  sub DescribeAllSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSecurityGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityGroups }, @{ $next_result->SecurityGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityGroups') foreach (@{ $result->SecurityGroups });
        $result = $self->DescribeSecurityGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityGroups') foreach (@{ $result->SecurityGroups });
    }

    return undef
  }
  sub DescribeAllSecurityGroupVpcAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSecurityGroupVpcAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSecurityGroupVpcAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityGroupVpcAssociations }, @{ $next_result->SecurityGroupVpcAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityGroupVpcAssociations') foreach (@{ $result->SecurityGroupVpcAssociations });
        $result = $self->DescribeSecurityGroupVpcAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityGroupVpcAssociations') foreach (@{ $result->SecurityGroupVpcAssociations });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllSnapshotTierStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshotTierStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshotTierStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->SnapshotTierStatuses }, @{ $next_result->SnapshotTierStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SnapshotTierStatuses') foreach (@{ $result->SnapshotTierStatuses });
        $result = $self->DescribeSnapshotTierStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SnapshotTierStatuses') foreach (@{ $result->SnapshotTierStatuses });
    }

    return undef
  }
  sub DescribeAllSpotFleetInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotFleetInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotFleetInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActiveInstances }, @{ $next_result->ActiveInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActiveInstances') foreach (@{ $result->ActiveInstances });
        $result = $self->DescribeSpotFleetInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActiveInstances') foreach (@{ $result->ActiveInstances });
    }

    return undef
  }
  sub DescribeAllSpotFleetRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotFleetRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotFleetRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotFleetRequestConfigs }, @{ $next_result->SpotFleetRequestConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
        $result = $self->DescribeSpotFleetRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
    }

    return undef
  }
  sub DescribeAllSpotInstanceRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotInstanceRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotInstanceRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotInstanceRequests }, @{ $next_result->SpotInstanceRequests };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotInstanceRequests') foreach (@{ $result->SpotInstanceRequests });
        $result = $self->DescribeSpotInstanceRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotInstanceRequests') foreach (@{ $result->SpotInstanceRequests });
    }

    return undef
  }
  sub DescribeAllSpotPriceHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotPriceHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotPriceHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotPriceHistory }, @{ $next_result->SpotPriceHistory };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
        $result = $self->DescribeSpotPriceHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
    }

    return undef
  }
  sub DescribeAllStaleSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStaleSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStaleSecurityGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->StaleSecurityGroupSet }, @{ $next_result->StaleSecurityGroupSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StaleSecurityGroupSet') foreach (@{ $result->StaleSecurityGroupSet });
        $result = $self->DescribeStaleSecurityGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StaleSecurityGroupSet') foreach (@{ $result->StaleSecurityGroupSet });
    }

    return undef
  }
  sub DescribeAllStoreImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStoreImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStoreImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->StoreImageTaskResults }, @{ $next_result->StoreImageTaskResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StoreImageTaskResults') foreach (@{ $result->StoreImageTaskResults });
        $result = $self->DescribeStoreImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StoreImageTaskResults') foreach (@{ $result->StoreImageTaskResults });
    }

    return undef
  }
  sub DescribeAllSubnets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubnets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSubnets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subnets }, @{ $next_result->Subnets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subnets') foreach (@{ $result->Subnets });
        $result = $self->DescribeSubnets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subnets') foreach (@{ $result->Subnets });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->DescribeTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorFilters(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorFilters }, @{ $next_result->TrafficMirrorFilters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorFilters') foreach (@{ $result->TrafficMirrorFilters });
        $result = $self->DescribeTrafficMirrorFilters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorFilters') foreach (@{ $result->TrafficMirrorFilters });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorSessions }, @{ $next_result->TrafficMirrorSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorSessions') foreach (@{ $result->TrafficMirrorSessions });
        $result = $self->DescribeTrafficMirrorSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorSessions') foreach (@{ $result->TrafficMirrorSessions });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorTargets(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorTargets }, @{ $next_result->TrafficMirrorTargets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorTargets') foreach (@{ $result->TrafficMirrorTargets });
        $result = $self->DescribeTrafficMirrorTargets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorTargets') foreach (@{ $result->TrafficMirrorTargets });
    }

    return undef
  }
  sub DescribeAllTransitGatewayAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayAttachments }, @{ $next_result->TransitGatewayAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayAttachments') foreach (@{ $result->TransitGatewayAttachments });
        $result = $self->DescribeTransitGatewayAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayAttachments') foreach (@{ $result->TransitGatewayAttachments });
    }

    return undef
  }
  sub DescribeAllTransitGatewayConnectPeers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayConnectPeers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayConnectPeers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnectPeers }, @{ $next_result->TransitGatewayConnectPeers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnectPeers') foreach (@{ $result->TransitGatewayConnectPeers });
        $result = $self->DescribeTransitGatewayConnectPeers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnectPeers') foreach (@{ $result->TransitGatewayConnectPeers });
    }

    return undef
  }
  sub DescribeAllTransitGatewayConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnects }, @{ $next_result->TransitGatewayConnects };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnects') foreach (@{ $result->TransitGatewayConnects });
        $result = $self->DescribeTransitGatewayConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnects') foreach (@{ $result->TransitGatewayConnects });
    }

    return undef
  }
  sub DescribeAllTransitGatewayMulticastDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayMulticastDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayMulticastDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayMulticastDomains }, @{ $next_result->TransitGatewayMulticastDomains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayMulticastDomains') foreach (@{ $result->TransitGatewayMulticastDomains });
        $result = $self->DescribeTransitGatewayMulticastDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayMulticastDomains') foreach (@{ $result->TransitGatewayMulticastDomains });
    }

    return undef
  }
  sub DescribeAllTransitGatewayPeeringAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayPeeringAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayPeeringAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayPeeringAttachments }, @{ $next_result->TransitGatewayPeeringAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayPeeringAttachments') foreach (@{ $result->TransitGatewayPeeringAttachments });
        $result = $self->DescribeTransitGatewayPeeringAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayPeeringAttachments') foreach (@{ $result->TransitGatewayPeeringAttachments });
    }

    return undef
  }
  sub DescribeAllTransitGatewayPolicyTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayPolicyTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayPolicyTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayPolicyTables }, @{ $next_result->TransitGatewayPolicyTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayPolicyTables') foreach (@{ $result->TransitGatewayPolicyTables });
        $result = $self->DescribeTransitGatewayPolicyTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayPolicyTables') foreach (@{ $result->TransitGatewayPolicyTables });
    }

    return undef
  }
  sub DescribeAllTransitGatewayRouteTableAnnouncements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayRouteTableAnnouncements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayRouteTableAnnouncements(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRouteTableAnnouncements }, @{ $next_result->TransitGatewayRouteTableAnnouncements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRouteTableAnnouncements') foreach (@{ $result->TransitGatewayRouteTableAnnouncements });
        $result = $self->DescribeTransitGatewayRouteTableAnnouncements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRouteTableAnnouncements') foreach (@{ $result->TransitGatewayRouteTableAnnouncements });
    }

    return undef
  }
  sub DescribeAllTransitGatewayRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRouteTables }, @{ $next_result->TransitGatewayRouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRouteTables') foreach (@{ $result->TransitGatewayRouteTables });
        $result = $self->DescribeTransitGatewayRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRouteTables') foreach (@{ $result->TransitGatewayRouteTables });
    }

    return undef
  }
  sub DescribeAllTransitGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGateways }, @{ $next_result->TransitGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGateways') foreach (@{ $result->TransitGateways });
        $result = $self->DescribeTransitGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGateways') foreach (@{ $result->TransitGateways });
    }

    return undef
  }
  sub DescribeAllTransitGatewayVpcAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayVpcAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayVpcAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayVpcAttachments }, @{ $next_result->TransitGatewayVpcAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayVpcAttachments') foreach (@{ $result->TransitGatewayVpcAttachments });
        $result = $self->DescribeTransitGatewayVpcAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayVpcAttachments') foreach (@{ $result->TransitGatewayVpcAttachments });
    }

    return undef
  }
  sub DescribeAllTrunkInterfaceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrunkInterfaceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrunkInterfaceAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->InterfaceAssociations }, @{ $next_result->InterfaceAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InterfaceAssociations') foreach (@{ $result->InterfaceAssociations });
        $result = $self->DescribeTrunkInterfaceAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InterfaceAssociations') foreach (@{ $result->InterfaceAssociations });
    }

    return undef
  }
  sub DescribeAllVerifiedAccessEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedAccessEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedAccessEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->VerifiedAccessEndpoints }, @{ $next_result->VerifiedAccessEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VerifiedAccessEndpoints') foreach (@{ $result->VerifiedAccessEndpoints });
        $result = $self->DescribeVerifiedAccessEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VerifiedAccessEndpoints') foreach (@{ $result->VerifiedAccessEndpoints });
    }

    return undef
  }
  sub DescribeAllVerifiedAccessGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedAccessGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedAccessGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->VerifiedAccessGroups }, @{ $next_result->VerifiedAccessGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VerifiedAccessGroups') foreach (@{ $result->VerifiedAccessGroups });
        $result = $self->DescribeVerifiedAccessGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VerifiedAccessGroups') foreach (@{ $result->VerifiedAccessGroups });
    }

    return undef
  }
  sub DescribeAllVerifiedAccessInstanceLoggingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedAccessInstanceLoggingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedAccessInstanceLoggingConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LoggingConfigurations }, @{ $next_result->LoggingConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LoggingConfigurations') foreach (@{ $result->LoggingConfigurations });
        $result = $self->DescribeVerifiedAccessInstanceLoggingConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LoggingConfigurations') foreach (@{ $result->LoggingConfigurations });
    }

    return undef
  }
  sub DescribeAllVerifiedAccessInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedAccessInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedAccessInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->VerifiedAccessInstances }, @{ $next_result->VerifiedAccessInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VerifiedAccessInstances') foreach (@{ $result->VerifiedAccessInstances });
        $result = $self->DescribeVerifiedAccessInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VerifiedAccessInstances') foreach (@{ $result->VerifiedAccessInstances });
    }

    return undef
  }
  sub DescribeAllVerifiedAccessTrustProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVerifiedAccessTrustProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVerifiedAccessTrustProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->VerifiedAccessTrustProviders }, @{ $next_result->VerifiedAccessTrustProviders };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VerifiedAccessTrustProviders') foreach (@{ $result->VerifiedAccessTrustProviders });
        $result = $self->DescribeVerifiedAccessTrustProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VerifiedAccessTrustProviders') foreach (@{ $result->VerifiedAccessTrustProviders });
    }

    return undef
  }
  sub DescribeAllVolumes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Volumes }, @{ $next_result->Volumes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
        $result = $self->DescribeVolumes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
    }

    return undef
  }
  sub DescribeAllVolumesModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumesModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumesModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->VolumesModifications }, @{ $next_result->VolumesModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VolumesModifications') foreach (@{ $result->VolumesModifications });
        $result = $self->DescribeVolumesModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VolumesModifications') foreach (@{ $result->VolumesModifications });
    }

    return undef
  }
  sub DescribeAllVolumeStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumeStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumeStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->VolumeStatuses }, @{ $next_result->VolumeStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
        $result = $self->DescribeVolumeStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
    }

    return undef
  }
  sub DescribeAllVpcClassicLinkDnsSupport {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcClassicLinkDnsSupport(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcClassicLinkDnsSupport(@_, NextToken => $next_result->NextToken);
        push @{ $result->Vpcs }, @{ $next_result->Vpcs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
        $result = $self->DescribeVpcClassicLinkDnsSupport(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
    }

    return undef
  }
  sub DescribeAllVpcEndpointConnectionNotifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointConnectionNotifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointConnectionNotifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionNotificationSet }, @{ $next_result->ConnectionNotificationSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionNotificationSet') foreach (@{ $result->ConnectionNotificationSet });
        $result = $self->DescribeVpcEndpointConnectionNotifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionNotificationSet') foreach (@{ $result->ConnectionNotificationSet });
    }

    return undef
  }
  sub DescribeAllVpcEndpointConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcEndpointConnections }, @{ $next_result->VpcEndpointConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcEndpointConnections') foreach (@{ $result->VpcEndpointConnections });
        $result = $self->DescribeVpcEndpointConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcEndpointConnections') foreach (@{ $result->VpcEndpointConnections });
    }

    return undef
  }
  sub DescribeAllVpcEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcEndpoints }, @{ $next_result->VpcEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcEndpoints') foreach (@{ $result->VpcEndpoints });
        $result = $self->DescribeVpcEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcEndpoints') foreach (@{ $result->VpcEndpoints });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServiceConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServiceConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServiceConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceConfigurations }, @{ $next_result->ServiceConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceConfigurations') foreach (@{ $result->ServiceConfigurations });
        $result = $self->DescribeVpcEndpointServiceConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceConfigurations') foreach (@{ $result->ServiceConfigurations });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServicePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServicePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServicePermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->AllowedPrincipals }, @{ $next_result->AllowedPrincipals };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AllowedPrincipals') foreach (@{ $result->AllowedPrincipals });
        $result = $self->DescribeVpcEndpointServicePermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AllowedPrincipals') foreach (@{ $result->AllowedPrincipals });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceDetails }, @{ $next_result->ServiceDetails };
        push @{ $result->ServiceNames }, @{ $next_result->ServiceNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceDetails') foreach (@{ $result->ServiceDetails });
        $callback->($_ => 'ServiceNames') foreach (@{ $result->ServiceNames });
        $result = $self->DescribeVpcEndpointServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceDetails') foreach (@{ $result->ServiceDetails });
      $callback->($_ => 'ServiceNames') foreach (@{ $result->ServiceNames });
    }

    return undef
  }
  sub DescribeAllVpcPeeringConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcPeeringConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcPeeringConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcPeeringConnections }, @{ $next_result->VpcPeeringConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcPeeringConnections') foreach (@{ $result->VpcPeeringConnections });
        $result = $self->DescribeVpcPeeringConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcPeeringConnections') foreach (@{ $result->VpcPeeringConnections });
    }

    return undef
  }
  sub DescribeAllVpcs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Vpcs }, @{ $next_result->Vpcs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
        $result = $self->DescribeVpcs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
    }

    return undef
  }
  sub GetAllAssociatedIpv6PoolCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssociatedIpv6PoolCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAssociatedIpv6PoolCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ipv6CidrAssociations }, @{ $next_result->Ipv6CidrAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ipv6CidrAssociations') foreach (@{ $result->Ipv6CidrAssociations });
        $result = $self->GetAssociatedIpv6PoolCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ipv6CidrAssociations') foreach (@{ $result->Ipv6CidrAssociations });
    }

    return undef
  }
  sub GetAllAwsNetworkPerformanceData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAwsNetworkPerformanceData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAwsNetworkPerformanceData(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataResponses }, @{ $next_result->DataResponses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataResponses') foreach (@{ $result->DataResponses });
        $result = $self->GetAwsNetworkPerformanceData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataResponses') foreach (@{ $result->DataResponses });
    }

    return undef
  }
  sub GetAllGroupsForCapacityReservation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetGroupsForCapacityReservation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetGroupsForCapacityReservation(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservationGroups }, @{ $next_result->CapacityReservationGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservationGroups') foreach (@{ $result->CapacityReservationGroups });
        $result = $self->GetGroupsForCapacityReservation(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservationGroups') foreach (@{ $result->CapacityReservationGroups });
    }

    return undef
  }
  sub GetAllInstanceTypesFromInstanceRequirements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInstanceTypesFromInstanceRequirements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetInstanceTypesFromInstanceRequirements(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypes }, @{ $next_result->InstanceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
        $result = $self->GetInstanceTypesFromInstanceRequirements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
    }

    return undef
  }
  sub GetAllIpamAddressHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamAddressHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamAddressHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->HistoryRecords }, @{ $next_result->HistoryRecords };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HistoryRecords') foreach (@{ $result->HistoryRecords });
        $result = $self->GetIpamAddressHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HistoryRecords') foreach (@{ $result->HistoryRecords });
    }

    return undef
  }
  sub GetAllIpamDiscoveredAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamDiscoveredAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamDiscoveredAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamDiscoveredAccounts }, @{ $next_result->IpamDiscoveredAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamDiscoveredAccounts') foreach (@{ $result->IpamDiscoveredAccounts });
        $result = $self->GetIpamDiscoveredAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamDiscoveredAccounts') foreach (@{ $result->IpamDiscoveredAccounts });
    }

    return undef
  }
  sub GetAllIpamDiscoveredResourceCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamDiscoveredResourceCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamDiscoveredResourceCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamDiscoveredResourceCidrs }, @{ $next_result->IpamDiscoveredResourceCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamDiscoveredResourceCidrs') foreach (@{ $result->IpamDiscoveredResourceCidrs });
        $result = $self->GetIpamDiscoveredResourceCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamDiscoveredResourceCidrs') foreach (@{ $result->IpamDiscoveredResourceCidrs });
    }

    return undef
  }
  sub GetAllIpamPoolAllocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamPoolAllocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamPoolAllocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamPoolAllocations }, @{ $next_result->IpamPoolAllocations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamPoolAllocations') foreach (@{ $result->IpamPoolAllocations });
        $result = $self->GetIpamPoolAllocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamPoolAllocations') foreach (@{ $result->IpamPoolAllocations });
    }

    return undef
  }
  sub GetAllIpamPoolCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamPoolCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamPoolCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamPoolCidrs }, @{ $next_result->IpamPoolCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamPoolCidrs') foreach (@{ $result->IpamPoolCidrs });
        $result = $self->GetIpamPoolCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamPoolCidrs') foreach (@{ $result->IpamPoolCidrs });
    }

    return undef
  }
  sub GetAllIpamResourceCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIpamResourceCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIpamResourceCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpamResourceCidrs }, @{ $next_result->IpamResourceCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpamResourceCidrs') foreach (@{ $result->IpamResourceCidrs });
        $result = $self->GetIpamResourceCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpamResourceCidrs') foreach (@{ $result->IpamResourceCidrs });
    }

    return undef
  }
  sub GetAllManagedPrefixListAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetManagedPrefixListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetManagedPrefixListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixListAssociations }, @{ $next_result->PrefixListAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixListAssociations') foreach (@{ $result->PrefixListAssociations });
        $result = $self->GetManagedPrefixListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixListAssociations') foreach (@{ $result->PrefixListAssociations });
    }

    return undef
  }
  sub GetAllManagedPrefixListEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetManagedPrefixListEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetManagedPrefixListEntries(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->GetManagedPrefixListEntries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub GetAllNetworkInsightsAccessScopeAnalysisFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetNetworkInsightsAccessScopeAnalysisFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetNetworkInsightsAccessScopeAnalysisFindings(@_, NextToken => $next_result->NextToken);
        push @{ $result->AnalysisFindings }, @{ $next_result->AnalysisFindings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AnalysisFindings') foreach (@{ $result->AnalysisFindings });
        $result = $self->GetNetworkInsightsAccessScopeAnalysisFindings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AnalysisFindings') foreach (@{ $result->AnalysisFindings });
    }

    return undef
  }
  sub GetAllSecurityGroupsForVpc {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSecurityGroupsForVpc(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSecurityGroupsForVpc(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityGroupForVpcs }, @{ $next_result->SecurityGroupForVpcs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityGroupForVpcs') foreach (@{ $result->SecurityGroupForVpcs });
        $result = $self->GetSecurityGroupsForVpc(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityGroupForVpcs') foreach (@{ $result->SecurityGroupForVpcs });
    }

    return undef
  }
  sub GetAllSpotPlacementScores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSpotPlacementScores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSpotPlacementScores(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotPlacementScores }, @{ $next_result->SpotPlacementScores };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotPlacementScores') foreach (@{ $result->SpotPlacementScores });
        $result = $self->GetSpotPlacementScores(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotPlacementScores') foreach (@{ $result->SpotPlacementScores });
    }

    return undef
  }
  sub GetAllTransitGatewayAttachmentPropagations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayAttachmentPropagations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayAttachmentPropagations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayAttachmentPropagations }, @{ $next_result->TransitGatewayAttachmentPropagations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayAttachmentPropagations') foreach (@{ $result->TransitGatewayAttachmentPropagations });
        $result = $self->GetTransitGatewayAttachmentPropagations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayAttachmentPropagations') foreach (@{ $result->TransitGatewayAttachmentPropagations });
    }

    return undef
  }
  sub GetAllTransitGatewayMulticastDomainAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayMulticastDomainAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayMulticastDomainAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->MulticastDomainAssociations }, @{ $next_result->MulticastDomainAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MulticastDomainAssociations') foreach (@{ $result->MulticastDomainAssociations });
        $result = $self->GetTransitGatewayMulticastDomainAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MulticastDomainAssociations') foreach (@{ $result->MulticastDomainAssociations });
    }

    return undef
  }
  sub GetAllTransitGatewayPolicyTableAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayPolicyTableAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayPolicyTableAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Associations }, @{ $next_result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
        $result = $self->GetTransitGatewayPolicyTableAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Associations') foreach (@{ $result->Associations });
    }

    return undef
  }
  sub GetAllTransitGatewayPrefixListReferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayPrefixListReferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayPrefixListReferences(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayPrefixListReferences }, @{ $next_result->TransitGatewayPrefixListReferences };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayPrefixListReferences') foreach (@{ $result->TransitGatewayPrefixListReferences });
        $result = $self->GetTransitGatewayPrefixListReferences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayPrefixListReferences') foreach (@{ $result->TransitGatewayPrefixListReferences });
    }

    return undef
  }
  sub GetAllTransitGatewayRouteTableAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRouteTableAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRouteTableAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Associations }, @{ $next_result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
        $result = $self->GetTransitGatewayRouteTableAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Associations') foreach (@{ $result->Associations });
    }

    return undef
  }
  sub GetAllTransitGatewayRouteTablePropagations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRouteTablePropagations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRouteTablePropagations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRouteTablePropagations }, @{ $next_result->TransitGatewayRouteTablePropagations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRouteTablePropagations') foreach (@{ $result->TransitGatewayRouteTablePropagations });
        $result = $self->GetTransitGatewayRouteTablePropagations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRouteTablePropagations') foreach (@{ $result->TransitGatewayRouteTablePropagations });
    }

    return undef
  }
  sub GetAllVpnConnectionDeviceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetVpnConnectionDeviceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetVpnConnectionDeviceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpnConnectionDeviceTypes }, @{ $next_result->VpnConnectionDeviceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpnConnectionDeviceTypes') foreach (@{ $result->VpnConnectionDeviceTypes });
        $result = $self->GetVpnConnectionDeviceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpnConnectionDeviceTypes') foreach (@{ $result->VpnConnectionDeviceTypes });
    }

    return undef
  }
  sub ListAllImagesInRecycleBin {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImagesInRecycleBin(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImagesInRecycleBin(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->ListImagesInRecycleBin(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub ListAllSnapshotsInRecycleBin {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSnapshotsInRecycleBin(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSnapshotsInRecycleBin(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->ListSnapshotsInRecycleBin(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub SearchAllLocalGatewayRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchLocalGatewayRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchLocalGatewayRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Routes }, @{ $next_result->Routes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Routes') foreach (@{ $result->Routes });
        $result = $self->SearchLocalGatewayRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Routes') foreach (@{ $result->Routes });
    }

    return undef
  }
  sub SearchAllTransitGatewayMulticastGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchTransitGatewayMulticastGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchTransitGatewayMulticastGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->MulticastGroups }, @{ $next_result->MulticastGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MulticastGroups') foreach (@{ $result->MulticastGroups });
        $result = $self->SearchTransitGatewayMulticastGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MulticastGroups') foreach (@{ $result->MulticastGroups });
    }

    return undef
  }


  sub operations { qw/AcceptAddressTransfer AcceptCapacityReservationBillingOwnership AcceptReservedInstancesExchangeQuote AcceptTransitGatewayMulticastDomainAssociations AcceptTransitGatewayPeeringAttachment AcceptTransitGatewayVpcAttachment AcceptVpcEndpointConnections AcceptVpcPeeringConnection AdvertiseByoipCidr AllocateAddress AllocateHosts AllocateIpamPoolCidr ApplySecurityGroupsToClientVpnTargetNetwork AssignIpv6Addresses AssignPrivateIpAddresses AssignPrivateNatGatewayAddress AssociateAddress AssociateCapacityReservationBillingOwner AssociateClientVpnTargetNetwork AssociateDhcpOptions AssociateEnclaveCertificateIamRole AssociateIamInstanceProfile AssociateInstanceEventWindow AssociateIpamByoasn AssociateIpamResourceDiscovery AssociateNatGatewayAddress AssociateRouteServer AssociateRouteTable AssociateSecurityGroupVpc AssociateSubnetCidrBlock AssociateTransitGatewayMulticastDomain AssociateTransitGatewayPolicyTable AssociateTransitGatewayRouteTable AssociateTrunkInterface AssociateVpcCidrBlock AttachClassicLinkVpc AttachInternetGateway AttachNetworkInterface AttachVerifiedAccessTrustProvider AttachVolume AttachVpnGateway AuthorizeClientVpnIngress AuthorizeSecurityGroupEgress AuthorizeSecurityGroupIngress BundleInstance CancelBundleTask CancelCapacityReservation CancelCapacityReservationFleets CancelConversionTask CancelDeclarativePoliciesReport CancelExportTask CancelImageLaunchPermission CancelImportTask CancelReservedInstancesListing CancelSpotFleetRequests CancelSpotInstanceRequests ConfirmProductInstance CopyFpgaImage CopyImage CopySnapshot CreateCapacityReservation CreateCapacityReservationBySplitting CreateCapacityReservationFleet CreateCarrierGateway CreateClientVpnEndpoint CreateClientVpnRoute CreateCoipCidr CreateCoipPool CreateCustomerGateway CreateDefaultSubnet CreateDefaultVpc CreateDelegateMacVolumeOwnershipTask CreateDhcpOptions CreateEgressOnlyInternetGateway CreateFleet CreateFlowLogs CreateFpgaImage CreateImage CreateInstanceConnectEndpoint CreateInstanceEventWindow CreateInstanceExportTask CreateInternetGateway CreateIpam CreateIpamExternalResourceVerificationToken CreateIpamPool CreateIpamResourceDiscovery CreateIpamScope CreateKeyPair CreateLaunchTemplate CreateLaunchTemplateVersion CreateLocalGatewayRoute CreateLocalGatewayRouteTable CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation CreateLocalGatewayRouteTableVpcAssociation CreateLocalGatewayVirtualInterface CreateLocalGatewayVirtualInterfaceGroup CreateMacSystemIntegrityProtectionModificationTask CreateManagedPrefixList CreateNatGateway CreateNetworkAcl CreateNetworkAclEntry CreateNetworkInsightsAccessScope CreateNetworkInsightsPath CreateNetworkInterface CreateNetworkInterfacePermission CreatePlacementGroup CreatePublicIpv4Pool CreateReplaceRootVolumeTask CreateReservedInstancesListing CreateRestoreImageTask CreateRoute CreateRouteServer CreateRouteServerEndpoint CreateRouteServerPeer CreateRouteTable CreateSecurityGroup CreateSnapshot CreateSnapshots CreateSpotDatafeedSubscription CreateStoreImageTask CreateSubnet CreateSubnetCidrReservation CreateTags CreateTrafficMirrorFilter CreateTrafficMirrorFilterRule CreateTrafficMirrorSession CreateTrafficMirrorTarget CreateTransitGateway CreateTransitGatewayConnect CreateTransitGatewayConnectPeer CreateTransitGatewayMulticastDomain CreateTransitGatewayPeeringAttachment CreateTransitGatewayPolicyTable CreateTransitGatewayPrefixListReference CreateTransitGatewayRoute CreateTransitGatewayRouteTable CreateTransitGatewayRouteTableAnnouncement CreateTransitGatewayVpcAttachment CreateVerifiedAccessEndpoint CreateVerifiedAccessGroup CreateVerifiedAccessInstance CreateVerifiedAccessTrustProvider CreateVolume CreateVpc CreateVpcBlockPublicAccessExclusion CreateVpcEndpoint CreateVpcEndpointConnectionNotification CreateVpcEndpointServiceConfiguration CreateVpcPeeringConnection CreateVpnConnection CreateVpnConnectionRoute CreateVpnGateway DeleteCarrierGateway DeleteClientVpnEndpoint DeleteClientVpnRoute DeleteCoipCidr DeleteCoipPool DeleteCustomerGateway DeleteDhcpOptions DeleteEgressOnlyInternetGateway DeleteFleets DeleteFlowLogs DeleteFpgaImage DeleteInstanceConnectEndpoint DeleteInstanceEventWindow DeleteInternetGateway DeleteIpam DeleteIpamExternalResourceVerificationToken DeleteIpamPool DeleteIpamResourceDiscovery DeleteIpamScope DeleteKeyPair DeleteLaunchTemplate DeleteLaunchTemplateVersions DeleteLocalGatewayRoute DeleteLocalGatewayRouteTable DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation DeleteLocalGatewayRouteTableVpcAssociation DeleteLocalGatewayVirtualInterface DeleteLocalGatewayVirtualInterfaceGroup DeleteManagedPrefixList DeleteNatGateway DeleteNetworkAcl DeleteNetworkAclEntry DeleteNetworkInsightsAccessScope DeleteNetworkInsightsAccessScopeAnalysis DeleteNetworkInsightsAnalysis DeleteNetworkInsightsPath DeleteNetworkInterface DeleteNetworkInterfacePermission DeletePlacementGroup DeletePublicIpv4Pool DeleteQueuedReservedInstances DeleteRoute DeleteRouteServer DeleteRouteServerEndpoint DeleteRouteServerPeer DeleteRouteTable DeleteSecurityGroup DeleteSnapshot DeleteSpotDatafeedSubscription DeleteSubnet DeleteSubnetCidrReservation DeleteTags DeleteTrafficMirrorFilter DeleteTrafficMirrorFilterRule DeleteTrafficMirrorSession DeleteTrafficMirrorTarget DeleteTransitGateway DeleteTransitGatewayConnect DeleteTransitGatewayConnectPeer DeleteTransitGatewayMulticastDomain DeleteTransitGatewayPeeringAttachment DeleteTransitGatewayPolicyTable DeleteTransitGatewayPrefixListReference DeleteTransitGatewayRoute DeleteTransitGatewayRouteTable DeleteTransitGatewayRouteTableAnnouncement DeleteTransitGatewayVpcAttachment DeleteVerifiedAccessEndpoint DeleteVerifiedAccessGroup DeleteVerifiedAccessInstance DeleteVerifiedAccessTrustProvider DeleteVolume DeleteVpc DeleteVpcBlockPublicAccessExclusion DeleteVpcEndpointConnectionNotifications DeleteVpcEndpoints DeleteVpcEndpointServiceConfigurations DeleteVpcPeeringConnection DeleteVpnConnection DeleteVpnConnectionRoute DeleteVpnGateway DeprovisionByoipCidr DeprovisionIpamByoasn DeprovisionIpamPoolCidr DeprovisionPublicIpv4PoolCidr DeregisterImage DeregisterInstanceEventNotificationAttributes DeregisterTransitGatewayMulticastGroupMembers DeregisterTransitGatewayMulticastGroupSources DescribeAccountAttributes DescribeAddresses DescribeAddressesAttribute DescribeAddressTransfers DescribeAggregateIdFormat DescribeAvailabilityZones DescribeAwsNetworkPerformanceMetricSubscriptions DescribeBundleTasks DescribeByoipCidrs DescribeCapacityBlockExtensionHistory DescribeCapacityBlockExtensionOfferings DescribeCapacityBlockOfferings DescribeCapacityReservationBillingRequests DescribeCapacityReservationFleets DescribeCapacityReservations DescribeCarrierGateways DescribeClassicLinkInstances DescribeClientVpnAuthorizationRules DescribeClientVpnConnections DescribeClientVpnEndpoints DescribeClientVpnRoutes DescribeClientVpnTargetNetworks DescribeCoipPools DescribeConversionTasks DescribeCustomerGateways DescribeDeclarativePoliciesReports DescribeDhcpOptions DescribeEgressOnlyInternetGateways DescribeElasticGpus DescribeExportImageTasks DescribeExportTasks DescribeFastLaunchImages DescribeFastSnapshotRestores DescribeFleetHistory DescribeFleetInstances DescribeFleets DescribeFlowLogs DescribeFpgaImageAttribute DescribeFpgaImages DescribeHostReservationOfferings DescribeHostReservations DescribeHosts DescribeIamInstanceProfileAssociations DescribeIdentityIdFormat DescribeIdFormat DescribeImageAttribute DescribeImages DescribeImportImageTasks DescribeImportSnapshotTasks DescribeInstanceAttribute DescribeInstanceConnectEndpoints DescribeInstanceCreditSpecifications DescribeInstanceEventNotificationAttributes DescribeInstanceEventWindows DescribeInstanceImageMetadata DescribeInstances DescribeInstanceStatus DescribeInstanceTopology DescribeInstanceTypeOfferings DescribeInstanceTypes DescribeInternetGateways DescribeIpamByoasn DescribeIpamExternalResourceVerificationTokens DescribeIpamPools DescribeIpamResourceDiscoveries DescribeIpamResourceDiscoveryAssociations DescribeIpams DescribeIpamScopes DescribeIpv6Pools DescribeKeyPairs DescribeLaunchTemplates DescribeLaunchTemplateVersions DescribeLocalGatewayRouteTables DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations DescribeLocalGatewayRouteTableVpcAssociations DescribeLocalGateways DescribeLocalGatewayVirtualInterfaceGroups DescribeLocalGatewayVirtualInterfaces DescribeLockedSnapshots DescribeMacHosts DescribeMacModificationTasks DescribeManagedPrefixLists DescribeMovingAddresses DescribeNatGateways DescribeNetworkAcls DescribeNetworkInsightsAccessScopeAnalyses DescribeNetworkInsightsAccessScopes DescribeNetworkInsightsAnalyses DescribeNetworkInsightsPaths DescribeNetworkInterfaceAttribute DescribeNetworkInterfacePermissions DescribeNetworkInterfaces DescribeOutpostLags DescribePlacementGroups DescribePrefixLists DescribePrincipalIdFormat DescribePublicIpv4Pools DescribeRegions DescribeReplaceRootVolumeTasks DescribeReservedInstances DescribeReservedInstancesListings DescribeReservedInstancesModifications DescribeReservedInstancesOfferings DescribeRouteServerEndpoints DescribeRouteServerPeers DescribeRouteServers DescribeRouteTables DescribeScheduledInstanceAvailability DescribeScheduledInstances DescribeSecurityGroupReferences DescribeSecurityGroupRules DescribeSecurityGroups DescribeSecurityGroupVpcAssociations DescribeServiceLinkVirtualInterfaces DescribeSnapshotAttribute DescribeSnapshots DescribeSnapshotTierStatus DescribeSpotDatafeedSubscription DescribeSpotFleetInstances DescribeSpotFleetRequestHistory DescribeSpotFleetRequests DescribeSpotInstanceRequests DescribeSpotPriceHistory DescribeStaleSecurityGroups DescribeStoreImageTasks DescribeSubnets DescribeTags DescribeTrafficMirrorFilterRules DescribeTrafficMirrorFilters DescribeTrafficMirrorSessions DescribeTrafficMirrorTargets DescribeTransitGatewayAttachments DescribeTransitGatewayConnectPeers DescribeTransitGatewayConnects DescribeTransitGatewayMulticastDomains DescribeTransitGatewayPeeringAttachments DescribeTransitGatewayPolicyTables DescribeTransitGatewayRouteTableAnnouncements DescribeTransitGatewayRouteTables DescribeTransitGateways DescribeTransitGatewayVpcAttachments DescribeTrunkInterfaceAssociations DescribeVerifiedAccessEndpoints DescribeVerifiedAccessGroups DescribeVerifiedAccessInstanceLoggingConfigurations DescribeVerifiedAccessInstances DescribeVerifiedAccessTrustProviders DescribeVolumeAttribute DescribeVolumes DescribeVolumesModifications DescribeVolumeStatus DescribeVpcAttribute DescribeVpcBlockPublicAccessExclusions DescribeVpcBlockPublicAccessOptions DescribeVpcClassicLink DescribeVpcClassicLinkDnsSupport DescribeVpcEndpointAssociations DescribeVpcEndpointConnectionNotifications DescribeVpcEndpointConnections DescribeVpcEndpoints DescribeVpcEndpointServiceConfigurations DescribeVpcEndpointServicePermissions DescribeVpcEndpointServices DescribeVpcPeeringConnections DescribeVpcs DescribeVpnConnections DescribeVpnGateways DetachClassicLinkVpc DetachInternetGateway DetachNetworkInterface DetachVerifiedAccessTrustProvider DetachVolume DetachVpnGateway DisableAddressTransfer DisableAllowedImagesSettings DisableAwsNetworkPerformanceMetricSubscription DisableEbsEncryptionByDefault DisableFastLaunch DisableFastSnapshotRestores DisableImage DisableImageBlockPublicAccess DisableImageDeprecation DisableImageDeregistrationProtection DisableIpamOrganizationAdminAccount DisableRouteServerPropagation DisableSerialConsoleAccess DisableSnapshotBlockPublicAccess DisableTransitGatewayRouteTablePropagation DisableVgwRoutePropagation DisableVpcClassicLink DisableVpcClassicLinkDnsSupport DisassociateAddress DisassociateCapacityReservationBillingOwner DisassociateClientVpnTargetNetwork DisassociateEnclaveCertificateIamRole DisassociateIamInstanceProfile DisassociateInstanceEventWindow DisassociateIpamByoasn DisassociateIpamResourceDiscovery DisassociateNatGatewayAddress DisassociateRouteServer DisassociateRouteTable DisassociateSecurityGroupVpc DisassociateSubnetCidrBlock DisassociateTransitGatewayMulticastDomain DisassociateTransitGatewayPolicyTable DisassociateTransitGatewayRouteTable DisassociateTrunkInterface DisassociateVpcCidrBlock EnableAddressTransfer EnableAllowedImagesSettings EnableAwsNetworkPerformanceMetricSubscription EnableEbsEncryptionByDefault EnableFastLaunch EnableFastSnapshotRestores EnableImage EnableImageBlockPublicAccess EnableImageDeprecation EnableImageDeregistrationProtection EnableIpamOrganizationAdminAccount EnableReachabilityAnalyzerOrganizationSharing EnableRouteServerPropagation EnableSerialConsoleAccess EnableSnapshotBlockPublicAccess EnableTransitGatewayRouteTablePropagation EnableVgwRoutePropagation EnableVolumeIO EnableVpcClassicLink EnableVpcClassicLinkDnsSupport ExportClientVpnClientCertificateRevocationList ExportClientVpnClientConfiguration ExportImage ExportTransitGatewayRoutes ExportVerifiedAccessInstanceClientConfiguration GetAllowedImagesSettings GetAssociatedEnclaveCertificateIamRoles GetAssociatedIpv6PoolCidrs GetAwsNetworkPerformanceData GetCapacityReservationUsage GetCoipPoolUsage GetConsoleOutput GetConsoleScreenshot GetDeclarativePoliciesReportSummary GetDefaultCreditSpecification GetEbsDefaultKmsKeyId GetEbsEncryptionByDefault GetFlowLogsIntegrationTemplate GetGroupsForCapacityReservation GetHostReservationPurchasePreview GetImageBlockPublicAccessState GetInstanceMetadataDefaults GetInstanceTpmEkPub GetInstanceTypesFromInstanceRequirements GetInstanceUefiData GetIpamAddressHistory GetIpamDiscoveredAccounts GetIpamDiscoveredPublicAddresses GetIpamDiscoveredResourceCidrs GetIpamPoolAllocations GetIpamPoolCidrs GetIpamResourceCidrs GetLaunchTemplateData GetManagedPrefixListAssociations GetManagedPrefixListEntries GetNetworkInsightsAccessScopeAnalysisFindings GetNetworkInsightsAccessScopeContent GetPasswordData GetReservedInstancesExchangeQuote GetRouteServerAssociations GetRouteServerPropagations GetRouteServerRoutingDatabase GetSecurityGroupsForVpc GetSerialConsoleAccessStatus GetSnapshotBlockPublicAccessState GetSpotPlacementScores GetSubnetCidrReservations GetTransitGatewayAttachmentPropagations GetTransitGatewayMulticastDomainAssociations GetTransitGatewayPolicyTableAssociations GetTransitGatewayPolicyTableEntries GetTransitGatewayPrefixListReferences GetTransitGatewayRouteTableAssociations GetTransitGatewayRouteTablePropagations GetVerifiedAccessEndpointPolicy GetVerifiedAccessEndpointTargets GetVerifiedAccessGroupPolicy GetVpnConnectionDeviceSampleConfiguration GetVpnConnectionDeviceTypes GetVpnTunnelReplacementStatus ImportClientVpnClientCertificateRevocationList ImportImage ImportInstance ImportKeyPair ImportSnapshot ImportVolume ListImagesInRecycleBin ListSnapshotsInRecycleBin LockSnapshot ModifyAddressAttribute ModifyAvailabilityZoneGroup ModifyCapacityReservation ModifyCapacityReservationFleet ModifyClientVpnEndpoint ModifyDefaultCreditSpecification ModifyEbsDefaultKmsKeyId ModifyFleet ModifyFpgaImageAttribute ModifyHosts ModifyIdentityIdFormat ModifyIdFormat ModifyImageAttribute ModifyInstanceAttribute ModifyInstanceCapacityReservationAttributes ModifyInstanceCpuOptions ModifyInstanceCreditSpecification ModifyInstanceEventStartTime ModifyInstanceEventWindow ModifyInstanceMaintenanceOptions ModifyInstanceMetadataDefaults ModifyInstanceMetadataOptions ModifyInstanceNetworkPerformanceOptions ModifyInstancePlacement ModifyIpam ModifyIpamPool ModifyIpamResourceCidr ModifyIpamResourceDiscovery ModifyIpamScope ModifyLaunchTemplate ModifyLocalGatewayRoute ModifyManagedPrefixList ModifyNetworkInterfaceAttribute ModifyPrivateDnsNameOptions ModifyReservedInstances ModifyRouteServer ModifySecurityGroupRules ModifySnapshotAttribute ModifySnapshotTier ModifySpotFleetRequest ModifySubnetAttribute ModifyTrafficMirrorFilterNetworkServices ModifyTrafficMirrorFilterRule ModifyTrafficMirrorSession ModifyTransitGateway ModifyTransitGatewayPrefixListReference ModifyTransitGatewayVpcAttachment ModifyVerifiedAccessEndpoint ModifyVerifiedAccessEndpointPolicy ModifyVerifiedAccessGroup ModifyVerifiedAccessGroupPolicy ModifyVerifiedAccessInstance ModifyVerifiedAccessInstanceLoggingConfiguration ModifyVerifiedAccessTrustProvider ModifyVolume ModifyVolumeAttribute ModifyVpcAttribute ModifyVpcBlockPublicAccessExclusion ModifyVpcBlockPublicAccessOptions ModifyVpcEndpoint ModifyVpcEndpointConnectionNotification ModifyVpcEndpointServiceConfiguration ModifyVpcEndpointServicePayerResponsibility ModifyVpcEndpointServicePermissions ModifyVpcPeeringConnectionOptions ModifyVpcTenancy ModifyVpnConnection ModifyVpnConnectionOptions ModifyVpnTunnelCertificate ModifyVpnTunnelOptions MonitorInstances MoveAddressToVpc MoveByoipCidrToIpam MoveCapacityReservationInstances ProvisionByoipCidr ProvisionIpamByoasn ProvisionIpamPoolCidr ProvisionPublicIpv4PoolCidr PurchaseCapacityBlock PurchaseCapacityBlockExtension PurchaseHostReservation PurchaseReservedInstancesOffering PurchaseScheduledInstances RebootInstances RegisterImage RegisterInstanceEventNotificationAttributes RegisterTransitGatewayMulticastGroupMembers RegisterTransitGatewayMulticastGroupSources RejectCapacityReservationBillingOwnership RejectTransitGatewayMulticastDomainAssociations RejectTransitGatewayPeeringAttachment RejectTransitGatewayVpcAttachment RejectVpcEndpointConnections RejectVpcPeeringConnection ReleaseAddress ReleaseHosts ReleaseIpamPoolAllocation ReplaceIamInstanceProfileAssociation ReplaceImageCriteriaInAllowedImagesSettings ReplaceNetworkAclAssociation ReplaceNetworkAclEntry ReplaceRoute ReplaceRouteTableAssociation ReplaceTransitGatewayRoute ReplaceVpnTunnel ReportInstanceStatus RequestSpotFleet RequestSpotInstances ResetAddressAttribute ResetEbsDefaultKmsKeyId ResetFpgaImageAttribute ResetImageAttribute ResetInstanceAttribute ResetNetworkInterfaceAttribute ResetSnapshotAttribute RestoreAddressToClassic RestoreImageFromRecycleBin RestoreManagedPrefixListVersion RestoreSnapshotFromRecycleBin RestoreSnapshotTier RevokeClientVpnIngress RevokeSecurityGroupEgress RevokeSecurityGroupIngress RunInstances RunScheduledInstances SearchLocalGatewayRoutes SearchTransitGatewayMulticastGroups SearchTransitGatewayRoutes SendDiagnosticInterrupt StartDeclarativePoliciesReport StartInstances StartNetworkInsightsAccessScopeAnalysis StartNetworkInsightsAnalysis StartVpcEndpointServicePrivateDnsVerification StopInstances TerminateClientVpnConnections TerminateInstances UnassignIpv6Addresses UnassignPrivateIpAddresses UnassignPrivateNatGatewayAddress UnlockSnapshot UnmonitorInstances UpdateSecurityGroupRuleDescriptionsEgress UpdateSecurityGroupRuleDescriptionsIngress WithdrawByoipCidr / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2 - Perl Interface to AWS Amazon Elastic Compute Cloud

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EC2');
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

Amazon Elastic Compute Cloud

You can access the features of Amazon Elastic Compute Cloud (Amazon
EC2) programmatically. For more information, see the Amazon EC2
Developer Guide (https://docs.aws.amazon.com/ec2/latest/devguide).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15>


=head1 METHODS

=head2 AcceptAddressTransfer

=over

=item Address => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptAddressTransfer>

Returns: a L<Paws::EC2::AcceptAddressTransferResult> instance

Accepts an Elastic IP address transfer. For more information, see
Accept a transferred Elastic IP address
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#using-instance-addressing-eips-transfer-accept)
in the I<Amazon VPC User Guide>.


=head2 AcceptCapacityReservationBillingOwnership

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptCapacityReservationBillingOwnership>

Returns: a L<Paws::EC2::AcceptCapacityReservationBillingOwnershipResult> instance

Accepts a request to assign billing of the available capacity of a
shared Capacity Reservation to your account. For more information, see
Billing assignment for shared Amazon EC2 Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/assign-billing.html).


=head2 AcceptReservedInstancesExchangeQuote

=over

=item ReservedInstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::AcceptReservedInstancesExchangeQuoteResult> instance

Accepts the Convertible Reserved Instance exchange quote described in
the GetReservedInstancesExchangeQuote call.


=head2 AcceptTransitGatewayMulticastDomainAssociations

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::AcceptTransitGatewayMulticastDomainAssociationsResult> instance

Accepts a request to associate subnets with a transit gateway multicast
domain.


=head2 AcceptTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::AcceptTransitGatewayPeeringAttachmentResult> instance

Accepts a transit gateway peering attachment request. The peering
attachment must be in the C<pendingAcceptance> state.


=head2 AcceptTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::AcceptTransitGatewayVpcAttachmentResult> instance

Accepts a request to attach a VPC to a transit gateway.

The VPC attachment must be in the C<pendingAcceptance> state. Use
DescribeTransitGatewayVpcAttachments to view your pending VPC
attachment requests. Use RejectTransitGatewayVpcAttachment to reject a
VPC attachment request.


=head2 AcceptVpcEndpointConnections

=over

=item ServiceId => Str

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptVpcEndpointConnections>

Returns: a L<Paws::EC2::AcceptVpcEndpointConnectionsResult> instance

Accepts connection requests to your VPC endpoint service.


=head2 AcceptVpcPeeringConnection

=over

=item VpcPeeringConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptVpcPeeringConnection>

Returns: a L<Paws::EC2::AcceptVpcPeeringConnectionResult> instance

Accept a VPC peering connection request. To accept a request, the VPC
peering connection must be in the C<pending-acceptance> state, and you
must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to
view your outstanding VPC peering connection requests.

For an inter-Region VPC peering connection request, you must accept the
VPC peering connection in the Region of the accepter VPC.


=head2 AdvertiseByoipCidr

=over

=item Cidr => Str

=item [Asn => Str]

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AdvertiseByoipCidr>

Returns: a L<Paws::EC2::AdvertiseByoipCidrResult> instance

Advertises an IPv4 or IPv6 address range that is provisioned for use
with your Amazon Web Services resources through bring your own IP
addresses (BYOIP).

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

We recommend that you stop advertising the BYOIP CIDR from other
locations when you advertise it from Amazon Web Services. To minimize
down time, you can configure your Amazon Web Services resources to use
an address from a BYOIP CIDR before it is advertised, and then
simultaneously stop advertising it from the current location and start
advertising it through Amazon Web Services.

It can take a few minutes before traffic to the specified addresses
starts routing to Amazon Web Services because of BGP propagation
delays.

To stop advertising the BYOIP CIDR, use WithdrawByoipCidr.


=head2 AllocateAddress

=over

=item [Address => Str]

=item [CustomerOwnedIpv4Pool => Str]

=item [Domain => Str]

=item [DryRun => Bool]

=item [IpamPoolId => Str]

=item [NetworkBorderGroup => Str]

=item [PublicIpv4Pool => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AllocateAddress>

Returns: a L<Paws::EC2::AllocateAddressResult> instance

Allocates an Elastic IP address to your Amazon Web Services account.
After you allocate the Elastic IP address you can associate it with an
instance or network interface. After you release an Elastic IP address,
it is released to the IP address pool and can be allocated to a
different Amazon Web Services account.

You can allocate an Elastic IP address from an address pool owned by
Amazon Web Services or from an address pool created from a public IPv4
address range that you have brought to Amazon Web Services for use with
your Amazon Web Services resources using bring your own IP addresses
(BYOIP). For more information, see Bring Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
the I<Amazon EC2 User Guide>.

If you release an Elastic IP address, you might be able to recover it.
You cannot recover an Elastic IP address that you released after it is
allocated to another Amazon Web Services account. To attempt to recover
an Elastic IP address that you released, specify it in this operation.

For more information, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon EC2 User Guide>.

You can allocate a carrier IP address which is a public IP address from
a telecommunication carrier, to a network interface which resides in a
subnet in a Wavelength Zone (for example an EC2 instance).


=head2 AllocateHosts

=over

=item [AssetIds => ArrayRef[Str|Undef]]

=item [AutoPlacement => Str]

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [ClientToken => Str]

=item [HostMaintenance => Str]

=item [HostRecovery => Str]

=item [InstanceFamily => Str]

=item [InstanceType => Str]

=item [OutpostArn => Str]

=item [Quantity => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AllocateHosts>

Returns: a L<Paws::EC2::AllocateHostsResult> instance

Allocates a Dedicated Host to your account. At a minimum, specify the
supported instance type or instance family, the Availability Zone in
which to allocate the host, and the number of hosts to allocate.


=head2 AllocateIpamPoolCidr

=over

=item IpamPoolId => Str

=item [AllowedCidrs => ArrayRef[Str|Undef]]

=item [Cidr => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [DisallowedCidrs => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [NetmaskLength => Int]

=item [PreviewNextCidr => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AllocateIpamPoolCidr>

Returns: a L<Paws::EC2::AllocateIpamPoolCidrResult> instance

Allocate a CIDR from an IPAM pool. The Region you use should be the
IPAM pool locale. The locale is the Amazon Web Services Region where
this IPAM pool is available for allocations.

In IPAM, an allocation is a CIDR assignment from an IPAM pool to
another IPAM pool or to a resource. For more information, see Allocate
CIDRs
(https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html)
in the I<Amazon VPC IPAM User Guide>.

This action creates an allocation with strong consistency. The returned
CIDR will not overlap with any other allocations from the same pool.


=head2 ApplySecurityGroupsToClientVpnTargetNetwork

=over

=item ClientVpnEndpointId => Str

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork>

Returns: a L<Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult> instance

Applies a security group to the association between the target network
and the Client VPN endpoint. This action replaces the existing security
groups with the specified security groups.


=head2 AssignIpv6Addresses

=over

=item NetworkInterfaceId => Str

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[Str|Undef]]

=item [Ipv6PrefixCount => Int]

=item [Ipv6Prefixes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::AssignIpv6Addresses>

Returns: a L<Paws::EC2::AssignIpv6AddressesResult> instance

Assigns the specified IPv6 addresses to the specified network
interface. You can specify specific IPv6 addresses, or you can specify
the number of IPv6 addresses to be automatically assigned from the
subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses
to a network interface as you can assign private IPv4 addresses, and
the limit varies by instance type.

You must specify either the IPv6 addresses or the IPv6 address count in
the request.

You can optionally use Prefix Delegation on the network interface. You
must specify either the IPV6 Prefix Delegation prefixes, or the IPv6
Prefix Delegation count. For information, see Assigning prefixes to
network interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
in the I<Amazon EC2 User Guide>.


=head2 AssignPrivateIpAddresses

=over

=item NetworkInterfaceId => Str

=item [AllowReassignment => Bool]

=item [Ipv4PrefixCount => Int]

=item [Ipv4Prefixes => ArrayRef[Str|Undef]]

=item [PrivateIpAddresses => ArrayRef[Str|Undef]]

=item [SecondaryPrivateIpAddressCount => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AssignPrivateIpAddresses>

Returns: a L<Paws::EC2::AssignPrivateIpAddressesResult> instance

Assigns the specified secondary private IP addresses to the specified
network interface.

You can specify specific secondary IP addresses, or you can specify the
number of secondary IP addresses to be automatically assigned from the
subnet's CIDR block range. The number of secondary IP addresses that
you can assign to an instance varies by instance type. For more
information about Elastic IP addresses, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon EC2 User Guide>.

When you move a secondary private IP address to another network
interface, any Elastic IP address that is associated with the IP
address is also moved.

Remapping an IP address is an asynchronous operation. When you move an
IP address from one network interface to another, check
C<network/interfaces/macs/mac/local-ipv4s> in the instance metadata to
confirm that the remapping is complete.

You must specify either the IP addresses or the IP address count in the
request.

You can optionally use Prefix Delegation on the network interface. You
must specify either the IPv4 Prefix Delegation prefixes, or the IPv4
Prefix Delegation count. For information, see Assigning prefixes to
network interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
in the I<Amazon EC2 User Guide>.


=head2 AssignPrivateNatGatewayAddress

=over

=item NatGatewayId => Str

=item [DryRun => Bool]

=item [PrivateIpAddressCount => Int]

=item [PrivateIpAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::AssignPrivateNatGatewayAddress>

Returns: a L<Paws::EC2::AssignPrivateNatGatewayAddressResult> instance

Assigns private IPv4 addresses to a private NAT gateway. For more
information, see Work with NAT gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html)
in the I<Amazon VPC User Guide>.


=head2 AssociateAddress

=over

=item [AllocationId => Str]

=item [AllowReassociation => Bool]

=item [DryRun => Bool]

=item [InstanceId => Str]

=item [NetworkInterfaceId => Str]

=item [PrivateIpAddress => Str]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateAddress>

Returns: a L<Paws::EC2::AssociateAddressResult> instance

Associates an Elastic IP address, or carrier IP address (for instances
that are in subnets in Wavelength Zones) with an instance or a network
interface. Before you can use an Elastic IP address, you must allocate
it to your account.

If the Elastic IP address is already associated with a different
instance, it is disassociated from that instance and associated with
the specified instance. If you associate an Elastic IP address with an
instance that has an existing Elastic IP address, the existing address
is disassociated from the instance, but remains allocated to your
account.

[Subnets in Wavelength Zones] You can associate an IP address from the
telecommunication carrier to the instance or network interface.

You cannot associate an Elastic IP address with an interface in a
different network border group.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error, and you may be charged for
each time the Elastic IP address is remapped to the same instance. For
more information, see the I<Elastic IP Addresses> section of Amazon EC2
Pricing (http://aws.amazon.com/ec2/pricing/).


=head2 AssociateCapacityReservationBillingOwner

=over

=item CapacityReservationId => Str

=item UnusedReservationBillingOwnerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateCapacityReservationBillingOwner>

Returns: a L<Paws::EC2::AssociateCapacityReservationBillingOwnerResult> instance

Initiates a request to assign billing of the unused capacity of a
shared Capacity Reservation to a consumer account that is consolidated
under the same Amazon Web Services organizations payer account. For
more information, see Billing assignment for shared Amazon EC2 Capacity
Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/assign-billing.html).


=head2 AssociateClientVpnTargetNetwork

=over

=item ClientVpnEndpointId => Str

=item SubnetId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateClientVpnTargetNetwork>

Returns: a L<Paws::EC2::AssociateClientVpnTargetNetworkResult> instance

Associates a target network with a Client VPN endpoint. A target
network is a subnet in a VPC. You can associate multiple subnets from
the same VPC with a Client VPN endpoint. You can associate only one
subnet in each Availability Zone. We recommend that you associate at
least two subnets to provide Availability Zone redundancy.

If you specified a VPC when you created the Client VPN endpoint or if
you have previous subnet associations, the specified subnet must be in
the same VPC. To specify a subnet that's in a different VPC, you must
first modify the Client VPN endpoint (ModifyClientVpnEndpoint) and
change the VPC that's associated with it.


=head2 AssociateDhcpOptions

=over

=item DhcpOptionsId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateDhcpOptions>

Returns: nothing

Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances
and all new instances that you launch in that VPC use the options. You
don't need to restart or relaunch the instances. They automatically
pick up the changes within a few hours, depending on how frequently the
instance renews its DHCP lease. You can explicitly renew the lease
using the operating system on the instance.

For more information, see DHCP option sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon VPC User Guide>.


=head2 AssociateEnclaveCertificateIamRole

=over

=item CertificateArn => Str

=item RoleArn => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateEnclaveCertificateIamRole>

Returns: a L<Paws::EC2::AssociateEnclaveCertificateIamRoleResult> instance

Associates an Identity and Access Management (IAM) role with an
Certificate Manager (ACM) certificate. This enables the certificate to
be used by the ACM for Nitro Enclaves application inside an enclave.
For more information, see Certificate Manager for Nitro Enclaves
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html)
in the I<Amazon Web Services Nitro Enclaves User Guide>.

When the IAM role is associated with the ACM certificate, the
certificate, certificate chain, and encrypted private key are placed in
an Amazon S3 location that only the associated IAM role can access. The
private key of the certificate is encrypted with an Amazon Web Services
managed key that has an attached attestation-based key policy.

To enable the IAM role to access the Amazon S3 object, you must grant
it permission to call C<s3:GetObject> on the Amazon S3 bucket returned
by the command. To enable the IAM role to access the KMS key, you must
grant it permission to call C<kms:Decrypt> on the KMS key returned by
the command. For more information, see Grant the role permission to
access the certificate and encryption key
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy)
in the I<Amazon Web Services Nitro Enclaves User Guide>.


=head2 AssociateIamInstanceProfile

=over

=item IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::EC2::AssociateIamInstanceProfile>

Returns: a L<Paws::EC2::AssociateIamInstanceProfileResult> instance

Associates an IAM instance profile with a running or stopped instance.
You cannot associate more than one IAM instance profile with an
instance.


=head2 AssociateInstanceEventWindow

=over

=item AssociationTarget => L<Paws::EC2::InstanceEventWindowAssociationRequest>

=item InstanceEventWindowId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateInstanceEventWindow>

Returns: a L<Paws::EC2::AssociateInstanceEventWindowResult> instance

Associates one or more targets with an event window. Only one type of
target (instance IDs, Dedicated Host IDs, or tags) can be specified
with an event window.

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 AssociateIpamByoasn

=over

=item Asn => Str

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateIpamByoasn>

Returns: a L<Paws::EC2::AssociateIpamByoasnResult> instance

Associates your Autonomous System Number (ASN) with a BYOIP CIDR that
you own in the same Amazon Web Services Region. For more information,
see Tutorial: Bring your ASN to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
the I<Amazon VPC IPAM guide>.

After the association succeeds, the ASN is eligible for advertisement.
You can view the association with DescribeByoipCidrs
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeByoipCidrs.html).
You can advertise the CIDR with AdvertiseByoipCidr
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AdvertiseByoipCidr.html).


=head2 AssociateIpamResourceDiscovery

=over

=item IpamId => Str

=item IpamResourceDiscoveryId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateIpamResourceDiscovery>

Returns: a L<Paws::EC2::AssociateIpamResourceDiscoveryResult> instance

Associates an IPAM resource discovery with an Amazon VPC IPAM. A
resource discovery is an IPAM component that enables IPAM to manage and
monitor resources that belong to the owning account.


=head2 AssociateNatGatewayAddress

=over

=item AllocationIds => ArrayRef[Str|Undef]

=item NatGatewayId => Str

=item [DryRun => Bool]

=item [PrivateIpAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateNatGatewayAddress>

Returns: a L<Paws::EC2::AssociateNatGatewayAddressResult> instance

Associates Elastic IP addresses (EIPs) and private IPv4 addresses with
a public NAT gateway. For more information, see Work with NAT gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html)
in the I<Amazon VPC User Guide>.

By default, you can associate up to 2 Elastic IP addresses per public
NAT gateway. You can increase the limit by requesting a quota
adjustment. For more information, see Elastic IP address quotas
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips)
in the I<Amazon VPC User Guide>.

When you associate an EIP or secondary EIPs with a public NAT gateway,
the network border group of the EIPs must match the network border
group of the Availability Zone (AZ) that the public NAT gateway is in.
If it's not the same, the EIP will fail to associate. You can see the
network border group for the subnet's AZ by viewing the details of the
subnet. Similarly, you can view the network border group of an EIP by
viewing the details of the EIP address. For more information about
network border groups and EIPs, see Allocate an Elastic IP address
(https://docs.aws.amazon.com/vpc/latest/userguide/WorkWithEIPs.html) in
the I<Amazon VPC User Guide>.


=head2 AssociateRouteServer

=over

=item RouteServerId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateRouteServer>

Returns: a L<Paws::EC2::AssociateRouteServerResult> instance

Associates a route server with a VPC to enable dynamic route updates.

A route server association is the connection established between a
route server and a VPC.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 AssociateRouteTable

=over

=item RouteTableId => Str

=item [DryRun => Bool]

=item [GatewayId => Str]

=item [SubnetId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateRouteTable>

Returns: a L<Paws::EC2::AssociateRouteTableResult> instance

Associates a subnet in your VPC or an internet gateway or virtual
private gateway attached to your VPC with a route table in your VPC.
This association causes traffic from the subnet or gateway to be routed
according to the routes in the route table. The action returns an
association ID, which you need in order to disassociate the route table
later. A route table can be associated with multiple subnets.

For more information, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 AssociateSecurityGroupVpc

=over

=item GroupId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateSecurityGroupVpc>

Returns: a L<Paws::EC2::AssociateSecurityGroupVpcResult> instance

Associates a security group with another VPC in the same Region. This
enables you to use the same security group with network interfaces and
instances in the specified VPC.

=over

=item *

The VPC you want to associate the security group with must be in the
same Region.

=item *

You can associate the security group with another VPC if your account
owns the VPC or if the VPC was shared with you.

=item *

You must own the security group and the VPC that it was created in.

=item *

You cannot use this feature with default security groups.

=item *

You cannot use this feature with the default VPC.

=back



=head2 AssociateSubnetCidrBlock

=over

=item SubnetId => Str

=item [Ipv6CidrBlock => Str]

=item [Ipv6IpamPoolId => Str]

=item [Ipv6NetmaskLength => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateSubnetCidrBlock>

Returns: a L<Paws::EC2::AssociateSubnetCidrBlockResult> instance

Associates a CIDR block with your subnet. You can only associate a
single IPv6 CIDR block with your subnet.


=head2 AssociateTransitGatewayMulticastDomain

=over

=item SubnetIds => ArrayRef[Str|Undef]

=item TransitGatewayAttachmentId => Str

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::AssociateTransitGatewayMulticastDomainResult> instance

Associates the specified subnets and transit gateway attachments with
the specified transit gateway multicast domain.

The transit gateway attachment must be in the available state before
you can add a resource. Use DescribeTransitGatewayAttachments
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
to see the state of the attachment.


=head2 AssociateTransitGatewayPolicyTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayPolicyTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTransitGatewayPolicyTable>

Returns: a L<Paws::EC2::AssociateTransitGatewayPolicyTableResult> instance

Associates the specified transit gateway attachment with a transit
gateway policy table.


=head2 AssociateTransitGatewayRouteTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::AssociateTransitGatewayRouteTableResult> instance

Associates the specified attachment with the specified transit gateway
route table. You can associate only one route table with an attachment.


=head2 AssociateTrunkInterface

=over

=item BranchInterfaceId => Str

=item TrunkInterfaceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [GreKey => Int]

=item [VlanId => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTrunkInterface>

Returns: a L<Paws::EC2::AssociateTrunkInterfaceResult> instance

Associates a branch network interface with a trunk network interface.

Before you create the association, use CreateNetworkInterface
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html)
command and set the interface type to C<trunk>. You must also create a
network interface for each branch network interface that you want to
associate with the trunk network interface.


=head2 AssociateVpcCidrBlock

=over

=item VpcId => Str

=item [AmazonProvidedIpv6CidrBlock => Bool]

=item [CidrBlock => Str]

=item [Ipv4IpamPoolId => Str]

=item [Ipv4NetmaskLength => Int]

=item [Ipv6CidrBlock => Str]

=item [Ipv6CidrBlockNetworkBorderGroup => Str]

=item [Ipv6IpamPoolId => Str]

=item [Ipv6NetmaskLength => Int]

=item [Ipv6Pool => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateVpcCidrBlock>

Returns: a L<Paws::EC2::AssociateVpcCidrBlockResult> instance

Associates a CIDR block with your VPC. You can associate a secondary
IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR
block from an IPv6 address pool that you provisioned through bring your
own IP addresses (BYOIP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).

You must specify one of the following in the request: an IPv4 CIDR
block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.

For more information about associating CIDR blocks with your VPC and
applicable restrictions, see IP addressing for your VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html)
in the I<Amazon VPC User Guide>.


=head2 AttachClassicLinkVpc

=over

=item Groups => ArrayRef[Str|Undef]

=item InstanceId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachClassicLinkVpc>

Returns: a L<Paws::EC2::AttachClassicLinkVpcResult> instance

This action is deprecated.

Links an EC2-Classic instance to a ClassicLink-enabled VPC through one
or more of the VPC security groups. You cannot link an EC2-Classic
instance to more than one VPC at a time. You can only link an instance
that's in the C<running> state. An instance is automatically unlinked
from a VPC when it's stopped - you can link it to the VPC again when
you restart it.

After you've linked an instance, you cannot change the VPC security
groups that are associated with it. To change the security groups, you
must first unlink the instance, and then link it again.

Linking your instance to a VPC is sometimes referred to as I<attaching>
your instance.


=head2 AttachInternetGateway

=over

=item InternetGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachInternetGateway>

Returns: nothing

Attaches an internet gateway or a virtual private gateway to a VPC,
enabling connectivity between the internet and the VPC. For more
information, see Internet gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
in the I<Amazon VPC User Guide>.


=head2 AttachNetworkInterface

=over

=item DeviceIndex => Int

=item InstanceId => Str

=item NetworkInterfaceId => Str

=item [DryRun => Bool]

=item [EnaQueueCount => Int]

=item [EnaSrdSpecification => L<Paws::EC2::EnaSrdSpecification>]

=item [NetworkCardIndex => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AttachNetworkInterface>

Returns: a L<Paws::EC2::AttachNetworkInterfaceResult> instance

Attaches a network interface to an instance.


=head2 AttachVerifiedAccessTrustProvider

=over

=item VerifiedAccessInstanceId => Str

=item VerifiedAccessTrustProviderId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachVerifiedAccessTrustProvider>

Returns: a L<Paws::EC2::AttachVerifiedAccessTrustProviderResult> instance

Attaches the specified Amazon Web Services Verified Access trust
provider to the specified Amazon Web Services Verified Access instance.


=head2 AttachVolume

=over

=item Device => Str

=item InstanceId => Str

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

Attaches an EBS volume to a running or stopped instance and exposes it
to the instance with the specified device name.

Encrypted EBS volumes must be attached to instances that support Amazon
EBS encryption. For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.

After you attach an EBS volume, you must make it available. For more
information, see Make an EBS volume available for use
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-using-volumes.html).

If a volume has an Amazon Web Services Marketplace product code:

=over

=item *

The volume can be attached only to a stopped instance.

=item *

Amazon Web Services Marketplace product codes are copied from the
volume to the instance.

=item *

You must be subscribed to the product.

=item *

The instance type and operating system of the instance must support the
product. For example, you can't detach a volume from a Windows instance
and attach it to a Linux instance.

=back

For more information, see Attach an Amazon EBS volume to an instance
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html)
in the I<Amazon EBS User Guide>.


=head2 AttachVpnGateway

=over

=item VpcId => Str

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachVpnGateway>

Returns: a L<Paws::EC2::AttachVpnGatewayResult> instance

Attaches an available virtual private gateway to a VPC. You can attach
one virtual private gateway to one VPC at a time.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 AuthorizeClientVpnIngress

=over

=item ClientVpnEndpointId => Str

=item TargetNetworkCidr => Str

=item [AccessGroupId => Str]

=item [AuthorizeAllGroups => Bool]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeClientVpnIngress>

Returns: a L<Paws::EC2::AuthorizeClientVpnIngressResult> instance

Adds an ingress authorization rule to a Client VPN endpoint. Ingress
authorization rules act as firewall rules that grant access to
networks. You must configure ingress authorization rules to enable
clients to access resources in Amazon Web Services or on-premises
networks.


=head2 AuthorizeSecurityGroupEgress

=over

=item GroupId => Str

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupEgress>

Returns: a L<Paws::EC2::AuthorizeSecurityGroupEgressResult> instance

Adds the specified outbound (egress) rules to a security group.

An outbound rule permits instances to send traffic to the specified
IPv4 or IPv6 address ranges, the IP address ranges specified by a
prefix list, or the instances that are associated with a source
security group. For more information, see Security group rules
(https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html).

You must specify exactly one of the following destinations: an IPv4 or
IPv6 address range, a prefix list, or a security group. You must
specify a protocol for each rule (for example, TCP). If the protocol is
TCP or UDP, you must also specify a port or port range. If the protocol
is ICMP or ICMPv6, you must also specify the ICMP type and code.

Rule changes are propagated to instances associated with the security
group as quickly as possible. However, a small delay might occur.

For examples of rules that you can add to security groups for specific
access scenarios, see Security group rules for different use cases
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules-reference.html)
in the I<Amazon EC2 User Guide>.

For information about security group quotas, see Amazon VPC quotas
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html)
in the I<Amazon VPC User Guide>.


=head2 AuthorizeSecurityGroupIngress

=over

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupIngress>

Returns: a L<Paws::EC2::AuthorizeSecurityGroupIngressResult> instance

Adds the specified inbound (ingress) rules to a security group.

An inbound rule permits instances to receive traffic from the specified
IPv4 or IPv6 address range, the IP address ranges that are specified by
a prefix list, or the instances that are associated with a destination
security group. For more information, see Security group rules
(https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html).

You must specify exactly one of the following sources: an IPv4 or IPv6
address range, a prefix list, or a security group. You must specify a
protocol for each rule (for example, TCP). If the protocol is TCP or
UDP, you must also specify a port or port range. If the protocol is
ICMP or ICMPv6, you must also specify the ICMP/ICMPv6 type and code.

Rule changes are propagated to instances associated with the security
group as quickly as possible. However, a small delay might occur.

For examples of rules that you can add to security groups for specific
access scenarios, see Security group rules for different use cases
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules-reference.html)
in the I<Amazon EC2 User Guide>.

For more information about security group quotas, see Amazon VPC quotas
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html)
in the I<Amazon VPC User Guide>.


=head2 BundleInstance

=over

=item InstanceId => Str

=item Storage => L<Paws::EC2::Storage>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::BundleInstance>

Returns: a L<Paws::EC2::BundleInstanceResult> instance

Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\) is bundled. Data on
other instance store volumes is not preserved.

This action is not applicable for Linux/Unix instances or Windows
instances that are backed by Amazon EBS.


=head2 CancelBundleTask

=over

=item BundleId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelBundleTask>

Returns: a L<Paws::EC2::CancelBundleTaskResult> instance

Cancels a bundling operation for an instance store-backed Windows
instance.


=head2 CancelCapacityReservation

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelCapacityReservation>

Returns: a L<Paws::EC2::CancelCapacityReservationResult> instance

Cancels the specified Capacity Reservation, releases the reserved
capacity, and changes the Capacity Reservation's state to C<cancelled>.

You can cancel a Capacity Reservation that is in the following states:

=over

=item *

C<assessing>

=item *

C<active> and there is no commitment duration or the commitment
duration has elapsed. You can't cancel a future-dated Capacity
Reservation during the commitment duration.

=back

You can't modify or cancel a Capacity Block. For more information, see
Capacity Blocks for ML
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-blocks.html).

If a future-dated Capacity Reservation enters the C<delayed> state, the
commitment duration is waived, and you can cancel it as soon as it
enters the C<active> state.

Instances running in the reserved capacity continue running until you
stop them. Stopped instances that target the Capacity Reservation can
no longer launch. Modify these instances to either target a different
Capacity Reservation, launch On-Demand Instance capacity, or run in any
open Capacity Reservation that has matching attributes and sufficient
capacity.


=head2 CancelCapacityReservationFleets

=over

=item CapacityReservationFleetIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelCapacityReservationFleets>

Returns: a L<Paws::EC2::CancelCapacityReservationFleetsResult> instance

Cancels one or more Capacity Reservation Fleets. When you cancel a
Capacity Reservation Fleet, the following happens:

=over

=item *

The Capacity Reservation Fleet's status changes to C<cancelled>.

=item *

The individual Capacity Reservations in the Fleet are cancelled.
Instances running in the Capacity Reservations at the time of
cancelling the Fleet continue to run in shared capacity.

=item *

The Fleet stops creating new Capacity Reservations.

=back



=head2 CancelConversionTask

=over

=item ConversionTaskId => Str

=item [DryRun => Bool]

=item [ReasonMessage => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CancelConversionTask>

Returns: nothing

Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.


=head2 CancelDeclarativePoliciesReport

=over

=item ReportId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelDeclarativePoliciesReport>

Returns: a L<Paws::EC2::CancelDeclarativePoliciesReportResult> instance

Cancels the generation of an account status report.

You can only cancel a report while it has the C<running> status.
Reports with other statuses (C<complete>, C<cancelled>, or C<error>)
can't be canceled.

For more information, see Generating the account status report for
declarative policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_status-report.html)
in the I<Amazon Web Services Organizations User Guide>.


=head2 CancelExportTask

=over

=item ExportTaskId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CancelExportTask>

Returns: nothing

Cancels an active export task. The request removes all artifacts of the
export, including any partially-created Amazon S3 objects. If the
export task is complete or is in the process of transferring the final
disk image, the command fails and returns an error.


=head2 CancelImageLaunchPermission

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelImageLaunchPermission>

Returns: a L<Paws::EC2::CancelImageLaunchPermissionResult> instance

Removes your Amazon Web Services account from the launch permissions
for the specified AMI. For more information, see Cancel having an AMI
shared with your Amazon Web Services account
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cancel-sharing-an-AMI.html)
in the I<Amazon EC2 User Guide>.


=head2 CancelImportTask

=over

=item [CancelReason => Str]

=item [DryRun => Bool]

=item [ImportTaskId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CancelImportTask>

Returns: a L<Paws::EC2::CancelImportTaskResult> instance

Cancels an in-process import virtual machine or import snapshot task.


=head2 CancelReservedInstancesListing

=over

=item ReservedInstancesListingId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CancelReservedInstancesListing>

Returns: a L<Paws::EC2::CancelReservedInstancesListingResult> instance

Cancels the specified Reserved Instance listing in the Reserved
Instance Marketplace.

For more information, see Sell in the Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 CancelSpotFleetRequests

=over

=item SpotFleetRequestIds => ArrayRef[Str|Undef]

=item TerminateInstances => Bool

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelSpotFleetRequests>

Returns: a L<Paws::EC2::CancelSpotFleetRequestsResponse> instance

Cancels the specified Spot Fleet requests.

After you cancel a Spot Fleet request, the Spot Fleet launches no new
instances.

You must also specify whether a canceled Spot Fleet request should
terminate its instances. If you choose to terminate the instances, the
Spot Fleet request enters the C<cancelled_terminating> state.
Otherwise, the Spot Fleet request enters the C<cancelled_running> state
and the instances continue to run until they are interrupted or you
terminate them manually.

B<Restrictions>

=over

=item *

You can delete up to 100 fleets in a single request. If you exceed the
specified number, no fleets are deleted.

=back



=head2 CancelSpotInstanceRequests

=over

=item SpotInstanceRequestIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelSpotInstanceRequests>

Returns: a L<Paws::EC2::CancelSpotInstanceRequestsResult> instance

Cancels one or more Spot Instance requests.

Canceling a Spot Instance request does not terminate running Spot
Instances associated with the request.


=head2 ConfirmProductInstance

=over

=item InstanceId => Str

=item ProductCode => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ConfirmProductInstance>

Returns: a L<Paws::EC2::ConfirmProductInstanceResult> instance

Determines whether a product code is associated with an instance. This
action can only be used by the owner of the product code. It is useful
when a product code owner must verify whether another user's instance
is eligible for support.


=head2 CopyFpgaImage

=over

=item SourceFpgaImageId => Str

=item SourceRegion => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CopyFpgaImage>

Returns: a L<Paws::EC2::CopyFpgaImageResult> instance

Copies the specified Amazon FPGA Image (AFI) to the current Region.


=head2 CopyImage

=over

=item Name => Str

=item SourceImageId => Str

=item SourceRegion => Str

=item [ClientToken => Str]

=item [CopyImageTags => Bool]

=item [Description => Str]

=item [DestinationOutpostArn => Str]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [SnapshotCopyCompletionDurationMinutes => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CopyImage>

Returns: a L<Paws::EC2::CopyImageResult> instance

Initiates an AMI copy operation. You can copy an AMI from one Region to
another, or from a Region to an Outpost. You can't copy an AMI from an
Outpost to a Region, from one Outpost to another, or within the same
Outpost. To copy an AMI to another partition, see CreateStoreImageTask
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).

When you copy an AMI from one Region to another, the destination Region
is the current Region.

When you copy an AMI from a Region to an Outpost, specify the ARN of
the Outpost as the destination. Backing snapshots copied to an Outpost
are encrypted by default using the default encryption key for the
Region or the key that you specify. Outposts do not support unencrypted
snapshots.

For information about the prerequisites when copying an AMI, see Copy
an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html)
in the I<Amazon EC2 User Guide>.


=head2 CopySnapshot

=over

=item SourceRegion => Str

=item SourceSnapshotId => Str

=item [CompletionDurationMinutes => Int]

=item [Description => Str]

=item [DestinationOutpostArn => Str]

=item [DestinationRegion => Str]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [PresignedUrl => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CopySnapshot>

Returns: a L<Paws::EC2::CopySnapshotResult> instance

Copies a point-in-time snapshot of an EBS volume and stores it in
Amazon S3. You can copy a snapshot within the same Region, from one
Region to another, or from a Region to an Outpost. You can't copy a
snapshot from an Outpost to a Region, from one Outpost to another, or
within the same Outpost.

You can use the snapshot to create EBS volumes or Amazon Machine Images
(AMIs).

When copying snapshots to a Region, copies of encrypted EBS snapshots
remain encrypted. Copies of unencrypted snapshots remain unencrypted,
unless you enable encryption for the snapshot copy operation. By
default, encrypted snapshot copies use the default KMS key; however,
you can specify a different KMS key. To copy an encrypted snapshot that
has been shared from another account, you must have permissions for the
KMS key used to encrypt the snapshot.

Snapshots copied to an Outpost are encrypted by default using the
default encryption key for the Region, or a different key that you
specify in the request using B<KmsKeyId>. Outposts do not support
unencrypted snapshots. For more information, see Amazon EBS local
snapshots on Outposts
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#ami)
in the I<Amazon EBS User Guide>.

Snapshots created by copying another snapshot have an arbitrary volume
ID that should not be used for any purpose.

For more information, see Copy an Amazon EBS snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-copy-snapshot.html)
in the I<Amazon EBS User Guide>.


=head2 CreateCapacityReservation

=over

=item InstanceCount => Int

=item InstancePlatform => Str

=item InstanceType => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [ClientToken => Str]

=item [CommitmentDuration => Int]

=item [DeliveryPreference => Str]

=item [DryRun => Bool]

=item [EbsOptimized => Bool]

=item [EndDate => Str]

=item [EndDateType => Str]

=item [EphemeralStorage => Bool]

=item [InstanceMatchCriteria => Str]

=item [OutpostArn => Str]

=item [PlacementGroupArn => Str]

=item [StartDate => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Tenancy => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCapacityReservation>

Returns: a L<Paws::EC2::CreateCapacityReservationResult> instance

Creates a new Capacity Reservation with the specified attributes.
Capacity Reservations enable you to reserve capacity for your Amazon
EC2 instances in a specific Availability Zone for any duration.

You can create a Capacity Reservation at any time, and you can choose
when it starts. You can create a Capacity Reservation for immediate use
or you can request a Capacity Reservation for a future date.

For more information, see Reserve compute capacity with On-Demand
Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html)
in the I<Amazon EC2 User Guide>.

Your request to create a Capacity Reservation could fail if:

=over

=item *

Amazon EC2 does not have sufficient capacity. In this case, try again
at a later time, try in a different Availability Zone, or request a
smaller Capacity Reservation. If your workload is flexible across
instance types and sizes, try with different instance attributes.

=item *

The requested quantity exceeds your On-Demand Instance quota. In this
case, increase your On-Demand Instance quota for the requested instance
type and try again. For more information, see Amazon EC2 Service Quotas
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html)
in the I<Amazon EC2 User Guide>.

=back



=head2 CreateCapacityReservationBySplitting

=over

=item InstanceCount => Int

=item SourceCapacityReservationId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCapacityReservationBySplitting>

Returns: a L<Paws::EC2::CreateCapacityReservationBySplittingResult> instance

Create a new Capacity Reservation by splitting the capacity of the
source Capacity Reservation. The new Capacity Reservation will have the
same attributes as the source Capacity Reservation except for tags. The
source Capacity Reservation must be C<active> and owned by your Amazon
Web Services account.


=head2 CreateCapacityReservationFleet

=over

=item InstanceTypeSpecifications => ArrayRef[L<Paws::EC2::ReservationFleetInstanceSpecification>]

=item TotalTargetCapacity => Int

=item [AllocationStrategy => Str]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [EndDate => Str]

=item [InstanceMatchCriteria => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Tenancy => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCapacityReservationFleet>

Returns: a L<Paws::EC2::CreateCapacityReservationFleetResult> instance

Creates a Capacity Reservation Fleet. For more information, see Create
a Capacity Reservation Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-cr-fleets.html#create-crfleet)
in the I<Amazon EC2 User Guide>.


=head2 CreateCarrierGateway

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCarrierGateway>

Returns: a L<Paws::EC2::CreateCarrierGatewayResult> instance

Creates a carrier gateway. For more information about carrier gateways,
see Carrier gateways
(https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#wavelength-carrier-gateway)
in the I<Amazon Web Services Wavelength Developer Guide>.


=head2 CreateClientVpnEndpoint

=over

=item AuthenticationOptions => ArrayRef[L<Paws::EC2::ClientVpnAuthenticationRequest>]

=item ClientCidrBlock => Str

=item ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>

=item ServerCertificateArn => Str

=item [ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>]

=item [ClientLoginBannerOptions => L<Paws::EC2::ClientLoginBannerOptions>]

=item [ClientRouteEnforcementOptions => L<Paws::EC2::ClientRouteEnforcementOptions>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DisconnectOnSessionTimeout => Bool]

=item [DnsServers => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SelfServicePortal => Str]

=item [SessionTimeoutHours => Int]

=item [SplitTunnel => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransportProtocol => Str]

=item [VpcId => Str]

=item [VpnPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::CreateClientVpnEndpoint>

Returns: a L<Paws::EC2::CreateClientVpnEndpointResult> instance

Creates a Client VPN endpoint. A Client VPN endpoint is the resource
you create and configure to enable and manage client VPN sessions. It
is the destination endpoint at which all client VPN sessions are
terminated.


=head2 CreateClientVpnRoute

=over

=item ClientVpnEndpointId => Str

=item DestinationCidrBlock => Str

=item TargetVpcSubnetId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateClientVpnRoute>

Returns: a L<Paws::EC2::CreateClientVpnRouteResult> instance

Adds a route to a network to a Client VPN endpoint. Each Client VPN
endpoint has a route table that describes the available destination
network routes. Each route in the route table specifies the path for
trac to specic resources or networks.


=head2 CreateCoipCidr

=over

=item Cidr => Str

=item CoipPoolId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCoipCidr>

Returns: a L<Paws::EC2::CreateCoipCidrResult> instance

Creates a range of customer-owned IP addresses.


=head2 CreateCoipPool

=over

=item LocalGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCoipPool>

Returns: a L<Paws::EC2::CreateCoipPoolResult> instance

Creates a pool of customer-owned IP (CoIP) addresses.


=head2 CreateCustomerGateway

=over

=item Type => Str

=item [BgpAsn => Int]

=item [BgpAsnExtended => Int]

=item [CertificateArn => Str]

=item [DeviceName => Str]

=item [DryRun => Bool]

=item [IpAddress => Str]

=item [PublicIp => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCustomerGateway>

Returns: a L<Paws::EC2::CreateCustomerGatewayResult> instance

Provides information to Amazon Web Services about your customer gateway
device. The customer gateway device is the appliance at your end of the
VPN connection. You must provide the IP address of the customer gateway
deviceE<rsquo>s external interface. The IP address must be static and
can be behind a device performing network address translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also
provide the device's BGP Autonomous System Number (ASN). You can use an
existing ASN assigned to your network. If you don't have an ASN
already, you can use a private ASN. For more information, see Customer
gateway options for your Site-to-Site VPN connection
(https://docs.aws.amazon.com/vpn/latest/s2svpn/cgw-options.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.

To create more than one customer gateway with the same VPN type, IP
address, and BGP ASN, specify a unique device name for each customer
gateway. An identical request returns information about the existing
customer gateway; it doesn't create a new customer gateway.


=head2 CreateDefaultSubnet

=over

=item AvailabilityZone => Str

=item [DryRun => Bool]

=item [Ipv6Native => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDefaultSubnet>

Returns: a L<Paws::EC2::CreateDefaultSubnetResult> instance

Creates a default subnet with a size C</20> IPv4 CIDR block in the
specified Availability Zone in your default VPC. You can have only one
default subnet per Availability Zone. For more information, see Create
a default subnet
(https://docs.aws.amazon.com/vpc/latest/userguide/work-with-default-vpc.html#create-default-subnet)
in the I<Amazon VPC User Guide>.


=head2 CreateDefaultVpc

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDefaultVpc>

Returns: a L<Paws::EC2::CreateDefaultVpcResult> instance

Creates a default VPC with a size C</16> IPv4 CIDR block and a default
subnet in each Availability Zone. For more information about the
components of a default VPC, see Default VPCs
(https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html) in
the I<Amazon VPC User Guide>. You cannot specify the components of the
default VPC yourself.

If you deleted your previous default VPC, you can create a default VPC.
You cannot have more than one default VPC per Region.


=head2 CreateDelegateMacVolumeOwnershipTask

=over

=item InstanceId => Str

=item MacCredentials => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDelegateMacVolumeOwnershipTask>

Returns: a L<Paws::EC2::CreateDelegateMacVolumeOwnershipTaskResult> instance

Delegates ownership of the Amazon EBS root volume for an Apple silicon
Mac instance to an administrative user.


=head2 CreateDhcpOptions

=over

=item DhcpConfigurations => ArrayRef[L<Paws::EC2::NewDhcpConfiguration>]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDhcpOptions>

Returns: a L<Paws::EC2::CreateDhcpOptionsResult> instance

Creates a custom set of DHCP options. After you create a DHCP option
set, you associate it with a VPC. After you associate a DHCP option set
with a VPC, all existing and newly launched instances in the VPC use
this set of DHCP options.

The following are the individual DHCP options you can specify. For more
information, see DHCP option sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon VPC User Guide>.

=over

=item *

C<domain-name> - If you're using AmazonProvidedDNS in C<us-east-1>,
specify C<ec2.internal>. If you're using AmazonProvidedDNS in any other
Region, specify C<region.compute.internal>. Otherwise, specify a custom
domain name. This value is used to complete unqualified DNS hostnames.

Some Linux operating systems accept multiple domain names separated by
spaces. However, Windows and other Linux operating systems treat the
value as a single domain, which results in unexpected behavior. If your
DHCP option set is associated with a VPC that has instances running
operating systems that treat the value as a single domain, specify only
one domain name.

=item *

C<domain-name-servers> - The IP addresses of up to four DNS servers, or
AmazonProvidedDNS. To specify multiple domain name servers in a single
parameter, separate the IP addresses using commas. To have your
instances receive custom DNS hostnames as specified in C<domain-name>,
you must specify a custom DNS server.

=item *

C<ntp-servers> - The IP addresses of up to eight Network Time Protocol
(NTP) servers (four IPv4 addresses and four IPv6 addresses).

=item *

C<netbios-name-servers> - The IP addresses of up to four NetBIOS name
servers.

=item *

C<netbios-node-type> - The NetBIOS node type (1, 2, 4, or 8). We
recommend that you specify 2. Broadcast and multicast are not
supported. For more information about NetBIOS node types, see RFC 2132
(https://www.ietf.org/rfc/rfc2132.txt).

=item *

C<ipv6-address-preferred-lease-time> - A value (in seconds, minutes,
hours, or years) for how frequently a running instance with an IPv6
assigned to it goes through DHCPv6 lease renewal. Acceptable values are
between 140 and 2147483647 seconds (approximately 68 years). If no
value is entered, the default lease time is 140 seconds. If you use
long-term addressing for EC2 instances, you can increase the lease time
and avoid frequent lease renewal requests. Lease renewal typically
occurs when half of the lease time has elapsed.

=back



=head2 CreateEgressOnlyInternetGateway

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::CreateEgressOnlyInternetGatewayResult> instance

[IPv6 only] Creates an egress-only internet gateway for your VPC. An
egress-only internet gateway is used to enable outbound communication
over IPv6 from instances in your VPC to the internet, and prevents
hosts outside of your VPC from initiating an IPv6 connection with your
instance.


=head2 CreateFleet

=over

=item LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::FleetLaunchTemplateConfigRequest>]

=item TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

=item [ClientToken => Str]

=item [Context => Str]

=item [DryRun => Bool]

=item [ExcessCapacityTerminationPolicy => Str]

=item [OnDemandOptions => L<Paws::EC2::OnDemandOptionsRequest>]

=item [ReplaceUnhealthyInstances => Bool]

=item [SpotOptions => L<Paws::EC2::SpotOptionsRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TerminateInstancesWithExpiration => Bool]

=item [Type => Str]

=item [ValidFrom => Str]

=item [ValidUntil => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFleet>

Returns: a L<Paws::EC2::CreateFleetResult> instance

Creates an EC2 Fleet that contains the configuration information for
On-Demand Instances and Spot Instances. Instances are launched
immediately if there is available capacity.

A single EC2 Fleet can include multiple launch specifications that vary
by instance type, AMI, Availability Zone, or subnet.

For more information, see EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in
the I<Amazon EC2 User Guide>.


=head2 CreateFlowLogs

=over

=item ResourceIds => ArrayRef[Str|Undef]

=item ResourceType => Str

=item [ClientToken => Str]

=item [DeliverCrossAccountRole => Str]

=item [DeliverLogsPermissionArn => Str]

=item [DestinationOptions => L<Paws::EC2::DestinationOptionsRequest>]

=item [DryRun => Bool]

=item [LogDestination => Str]

=item [LogDestinationType => Str]

=item [LogFormat => Str]

=item [LogGroupName => Str]

=item [MaxAggregationInterval => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TrafficType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFlowLogs>

Returns: a L<Paws::EC2::CreateFlowLogsResult> instance

Creates one or more flow logs to capture information about IP traffic
for a specific network interface, subnet, or VPC.

Flow log data for a monitored network interface is recorded as flow log
records, which are log events consisting of fields that describe the
traffic flow. For more information, see Flow log records
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-log-records.html)
in the I<Amazon VPC User Guide>.

When publishing to CloudWatch Logs, flow log records are published to a
log group, and each network interface has a unique log stream in the
log group. When publishing to Amazon S3, flow log records for all of
the monitored network interfaces are published to a single log file
object that is stored in the specified bucket.

For more information, see VPC Flow Logs
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html) in
the I<Amazon VPC User Guide>.


=head2 CreateFpgaImage

=over

=item InputStorageLocation => L<Paws::EC2::StorageLocation>

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [LogsStorageLocation => L<Paws::EC2::StorageLocation>]

=item [Name => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFpgaImage>

Returns: a L<Paws::EC2::CreateFpgaImageResult> instance

Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP).

The create operation is asynchronous. To verify that the AFI is ready
for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an
FPGA. You can securely deploy an AFI on multiple FPGA-accelerated
instances. For more information, see the Amazon Web Services FPGA
Hardware Development Kit (https://github.com/aws/aws-fpga/).


=head2 CreateImage

=over

=item InstanceId => Str

=item Name => Str

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [Description => Str]

=item [DryRun => Bool]

=item [NoReboot => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateImage>

Returns: a L<Paws::EC2::CreateImageResult> instance

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
that is either running or stopped.

If you customized your instance with instance store volumes or Amazon
EBS volumes in addition to the root device volume, the new AMI contains
block device mapping information for those volumes. When you launch an
instance from this new AMI, the instance automatically launches with
those additional volumes.

For more information, see Create an Amazon EBS-backed Linux AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateInstanceConnectEndpoint

=over

=item SubnetId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [PreserveClientIp => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInstanceConnectEndpoint>

Returns: a L<Paws::EC2::CreateInstanceConnectEndpointResult> instance

Creates an EC2 Instance Connect Endpoint.

An EC2 Instance Connect Endpoint allows you to connect to an instance,
without requiring the instance to have a public IPv4 address. For more
information, see Connect to your instances without requiring a public
IPv4 address using EC2 Instance Connect Endpoint
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect-Endpoint.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateInstanceEventWindow

=over

=item [CronExpression => Str]

=item [DryRun => Bool]

=item [Name => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TimeRanges => ArrayRef[L<Paws::EC2::InstanceEventWindowTimeRangeRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInstanceEventWindow>

Returns: a L<Paws::EC2::CreateInstanceEventWindowResult> instance

Creates an event window in which scheduled events for the associated
Amazon EC2 instances can run.

You can define either a set of time ranges or a cron expression when
creating the event window, but not both. All event window times are in
UTC.

You can create up to 200 event windows per Amazon Web Services Region.

When you create the event window, targets (instance IDs, Dedicated Host
IDs, or tags) are not yet associated with it. To ensure that the event
window can be used, you must associate one or more targets with it by
using the AssociateInstanceEventWindow API.

Event windows are applicable only for scheduled events that stop,
reboot, or terminate instances.

Event windows are I<not> applicable for:

=over

=item *

Expedited scheduled events and network maintenance events.

=item *

Unscheduled maintenance such as AutoRecovery and unplanned reboots.

=back

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateInstanceExportTask

=over

=item ExportToS3Task => L<Paws::EC2::ExportToS3TaskSpecification>

=item InstanceId => Str

=item TargetEnvironment => Str

=item [Description => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInstanceExportTask>

Returns: a L<Paws::EC2::CreateInstanceExportTaskResult> instance

Exports a running or stopped instance to an Amazon S3 bucket.

For information about the prerequisites for your Amazon S3 bucket,
supported operating systems, image formats, and known limitations for
the types of instances you can export, see Exporting an instance as a
VM Using VM Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)
in the I<VM Import/Export User Guide>.


=head2 CreateInternetGateway

=over

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInternetGateway>

Returns: a L<Paws::EC2::CreateInternetGatewayResult> instance

Creates an internet gateway for use with a VPC. After creating the
internet gateway, you attach it to a VPC using AttachInternetGateway.

For more information, see Internet gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
in the I<Amazon VPC User Guide>.


=head2 CreateIpam

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [EnablePrivateGua => Bool]

=item [MeteredAccount => Str]

=item [OperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateIpam>

Returns: a L<Paws::EC2::CreateIpamResult> instance

Create an IPAM. Amazon VPC IP Address Manager (IPAM) is a VPC feature
that you can use to automate your IP address management workflows
including assigning, tracking, troubleshooting, and auditing IP
addresses across Amazon Web Services Regions and accounts throughout
your Amazon Web Services Organization.

For more information, see Create an IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 CreateIpamExternalResourceVerificationToken

=over

=item IpamId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateIpamExternalResourceVerificationToken>

Returns: a L<Paws::EC2::CreateIpamExternalResourceVerificationTokenResult> instance

Create a verification token. A verification token is an Amazon Web
Services-generated random value that you can use to prove ownership of
an external resource. For example, you can use a verification token to
validate that you control a public IP address range when you bring an
IP address range to Amazon Web Services (BYOIP).


=head2 CreateIpamPool

=over

=item AddressFamily => Str

=item IpamScopeId => Str

=item [AllocationDefaultNetmaskLength => Int]

=item [AllocationMaxNetmaskLength => Int]

=item [AllocationMinNetmaskLength => Int]

=item [AllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]]

=item [AutoImport => Bool]

=item [AwsService => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [Locale => Str]

=item [PublicIpSource => Str]

=item [PubliclyAdvertisable => Bool]

=item [SourceIpamPoolId => Str]

=item [SourceResource => L<Paws::EC2::IpamPoolSourceResourceRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateIpamPool>

Returns: a L<Paws::EC2::CreateIpamPoolResult> instance

Create an IP address pool for Amazon VPC IP Address Manager (IPAM). In
IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools
enable you to organize your IP addresses according to your routing and
security needs. For example, if you have separate routing and security
needs for development and production applications, you can create a
pool for each.

For more information, see Create a top-level pool
(https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 CreateIpamResourceDiscovery

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [OperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateIpamResourceDiscovery>

Returns: a L<Paws::EC2::CreateIpamResourceDiscoveryResult> instance

Creates an IPAM resource discovery. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.


=head2 CreateIpamScope

=over

=item IpamId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateIpamScope>

Returns: a L<Paws::EC2::CreateIpamScopeResult> instance

Create an IPAM scope. In IPAM, a scope is the highest-level container
within IPAM. An IPAM contains two default scopes. Each scope represents
the IP space for a single network. The private scope is intended for
all private IP address space. The public scope is intended for all
public IP address space. Scopes enable you to reuse IP addresses across
multiple unconnected networks without causing IP address overlap or
conflict.

For more information, see Add a scope
(https://docs.aws.amazon.com/vpc/latest/ipam/add-scope-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 CreateKeyPair

=over

=item KeyName => Str

=item [DryRun => Bool]

=item [KeyFormat => Str]

=item [KeyType => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateKeyPair>

Returns: a L<Paws::EC2::KeyPair> instance

Creates an ED25519 or 2048-bit RSA key pair with the specified name and
in the specified format. Amazon EC2 stores the public key and displays
the private key for you to save to a file. The private key is returned
as an unencrypted PEM encoded PKCS#1 private key or an unencrypted PPK
formatted private key for use with PuTTY. If a key with the specified
name already exists, Amazon EC2 returns an error.

The key pair returned to you is available only in the Amazon Web
Services Region in which you create it. If you prefer, you can create
your own key pair using a third-party tool and upload it to any Region
using ImportKeyPair.

You can have up to 5,000 key pairs per Amazon Web Services Region.

For more information, see Amazon EC2 key pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateLaunchTemplate

=over

=item LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

=item LaunchTemplateName => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [Operator => L<Paws::EC2::OperatorRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLaunchTemplate>

Returns: a L<Paws::EC2::CreateLaunchTemplateResult> instance

Creates a launch template.

A launch template contains the parameters to launch an instance. When
you launch an instance using RunInstances, you can specify a launch
template instead of providing the launch parameters in the request. For
more information, see Store instance launch parameters in Amazon EC2
launch templates
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
in the I<Amazon EC2 User Guide>.

To clone an existing launch template as the basis for a new launch
template, use the Amazon EC2 console. The API, SDKs, and CLI do not
support cloning a template. For more information, see Create a launch
template from an existing launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#create-launch-template-from-existing-launch-template)
in the I<Amazon EC2 User Guide>.


=head2 CreateLaunchTemplateVersion

=over

=item LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]

=item [ResolveAlias => Bool]

=item [SourceVersion => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLaunchTemplateVersion>

Returns: a L<Paws::EC2::CreateLaunchTemplateVersionResult> instance

Creates a new version of a launch template. You must specify an
existing launch template, either by name or ID. You can determine
whether the new version inherits parameters from a source version, and
add or overwrite parameters as needed.

Launch template versions are numbered in the order in which they are
created. You can't specify, change, or replace the numbering of launch
template versions.

Launch templates are immutable; after you create a launch template, you
can't modify it. Instead, you can create a new version of the launch
template that includes the changes that you require.

For more information, see Modify a launch template (manage launch
template versions)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-launch-template-versions.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateLocalGatewayRoute

=over

=item LocalGatewayRouteTableId => Str

=item [DestinationCidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [LocalGatewayVirtualInterfaceGroupId => Str]

=item [NetworkInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRoute>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteResult> instance

Creates a static route for the specified local gateway route table. You
must specify one of the following targets:

=over

=item *

C<LocalGatewayVirtualInterfaceGroupId>

=item *

C<NetworkInterfaceId>

=back



=head2 CreateLocalGatewayRouteTable

=over

=item LocalGatewayId => Str

=item [DryRun => Bool]

=item [Mode => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRouteTable>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteTableResult> instance

Creates a local gateway route table.


=head2 CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation

=over

=item LocalGatewayRouteTableId => Str

=item LocalGatewayVirtualInterfaceGroupId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult> instance

Creates a local gateway route table virtual interface group
association.


=head2 CreateLocalGatewayRouteTableVpcAssociation

=over

=item LocalGatewayRouteTableId => Str

=item VpcId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRouteTableVpcAssociation>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteTableVpcAssociationResult> instance

Associates the specified VPC with the specified local gateway route
table.


=head2 CreateLocalGatewayVirtualInterface

=over

=item LocalAddress => Str

=item LocalGatewayVirtualInterfaceGroupId => Str

=item OutpostLagId => Str

=item PeerAddress => Str

=item Vlan => Int

=item [DryRun => Bool]

=item [PeerBgpAsn => Int]

=item [PeerBgpAsnExtended => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayVirtualInterface>

Returns: a L<Paws::EC2::CreateLocalGatewayVirtualInterfaceResult> instance

Create a virtual interface for a local gateway.


=head2 CreateLocalGatewayVirtualInterfaceGroup

=over

=item LocalGatewayId => Str

=item [DryRun => Bool]

=item [LocalBgpAsn => Int]

=item [LocalBgpAsnExtended => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayVirtualInterfaceGroup>

Returns: a L<Paws::EC2::CreateLocalGatewayVirtualInterfaceGroupResult> instance

Create a local gateway virtual interface group.


=head2 CreateMacSystemIntegrityProtectionModificationTask

=over

=item InstanceId => Str

=item MacSystemIntegrityProtectionStatus => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [MacCredentials => Str]

=item [MacSystemIntegrityProtectionConfiguration => L<Paws::EC2::MacSystemIntegrityProtectionConfigurationRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateMacSystemIntegrityProtectionModificationTask>

Returns: a L<Paws::EC2::CreateMacSystemIntegrityProtectionModificationTaskResult> instance

Creates a System Integrity Protection (SIP) modification task to
configure the SIP settings for an x86 Mac instance or Apple silicon Mac
instance. For more information, see Configure SIP for Amazon EC2
instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/mac-sip-settings.html#mac-sip-configure)
in the I<Amazon EC2 User Guide>.

When you configure the SIP settings for your instance, you can either
enable or disable all SIP settings, or you can specify a custom SIP
configuration that selectively enables or disables specific SIP
settings.

If you implement a custom configuration, connect to the instance and
verify the settings
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/mac-sip-settings.html#mac-sip-check-settings)
to ensure that your requirements are properly implemented and
functioning as intended.

SIP configurations might change with macOS updates. We recommend that
you review custom SIP settings after any macOS version upgrade to
ensure continued compatibility and proper functionality of your
security configurations.

To enable or disable all SIP settings, use the
B<MacSystemIntegrityProtectionStatus> parameter only. For example, to
enable all SIP settings, specify the following:

=over

=item *

C<MacSystemIntegrityProtectionStatus=enabled>

=back

To specify a custom configuration that selectively enables or disables
specific SIP settings, use the B<MacSystemIntegrityProtectionStatus>
parameter to enable or disable all SIP settings, and then use the
B<MacSystemIntegrityProtectionConfiguration> parameter to specify
exceptions. In this case, the exceptions you specify for
B<MacSystemIntegrityProtectionConfiguration> override the value you
specify for B<MacSystemIntegrityProtectionStatus>. For example, to
enable all SIP settings, except C<NvramProtections>, specify the
following:

=over

=item *

C<MacSystemIntegrityProtectionStatus=enabled>

=item *

C<MacSystemIntegrityProtectionConfigurationRequest
"NvramProtections=disabled">

=back



=head2 CreateManagedPrefixList

=over

=item AddressFamily => Str

=item MaxEntries => Int

=item PrefixListName => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [Entries => ArrayRef[L<Paws::EC2::AddPrefixListEntry>]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateManagedPrefixList>

Returns: a L<Paws::EC2::CreateManagedPrefixListResult> instance

Creates a managed prefix list. You can specify entries for the prefix
list. Each entry consists of a CIDR block and an optional description.


=head2 CreateNatGateway

=over

=item SubnetId => Str

=item [AllocationId => Str]

=item [ClientToken => Str]

=item [ConnectivityType => Str]

=item [DryRun => Bool]

=item [PrivateIpAddress => Str]

=item [SecondaryAllocationIds => ArrayRef[Str|Undef]]

=item [SecondaryPrivateIpAddressCount => Int]

=item [SecondaryPrivateIpAddresses => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNatGateway>

Returns: a L<Paws::EC2::CreateNatGatewayResult> instance

Creates a NAT gateway in the specified subnet. This action creates a
network interface in the specified subnet with a private IP address
from the IP address range of the subnet. You can create either a public
NAT gateway or a private NAT gateway.

With a public NAT gateway, internet-bound traffic from a private subnet
can be routed to the NAT gateway, so that instances in a private subnet
can connect to the internet.

With a private NAT gateway, private communication is routed across VPCs
and on-premises networks through a transit gateway or virtual private
gateway. Common use cases include running large workloads behind a
small pool of allowlisted IPv4 addresses, preserving private IPv4
addresses, and communicating between overlapping networks.

For more information, see NAT gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
in the I<Amazon VPC User Guide>.

When you create a public NAT gateway and assign it an EIP or secondary
EIPs, the network border group of the EIPs must match the network
border group of the Availability Zone (AZ) that the public NAT gateway
is in. If it's not the same, the NAT gateway will fail to launch. You
can see the network border group for the subnet's AZ by viewing the
details of the subnet. Similarly, you can view the network border group
of an EIP by viewing the details of the EIP address. For more
information about network border groups and EIPs, see Allocate an
Elastic IP address
(https://docs.aws.amazon.com/vpc/latest/userguide/WorkWithEIPs.html) in
the I<Amazon VPC User Guide>.


=head2 CreateNetworkAcl

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAcl>

Returns: a L<Paws::EC2::CreateNetworkAclResult> instance

Creates a network ACL in a VPC. Network ACLs provide an optional layer
of security (in addition to security groups) for the instances in your
VPC.

For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon VPC User Guide>.


=head2 CreateNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item Protocol => Str

=item RuleAction => Str

=item RuleNumber => Int

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>]

=item [Ipv6CidrBlock => Str]

=item [PortRange => L<Paws::EC2::PortRange>]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAclEntry>

Returns: nothing

Creates an entry (a rule) in a network ACL with the specified rule
number. Each network ACL has a set of numbered ingress rules and a
separate set of numbered egress rules. When determining whether a
packet should be allowed in or out of a subnet associated with the ACL,
we process the entries in the ACL according to the rule numbers, in
ascending order. Each network ACL has a set of ingress rules and a
separate set of egress rules.

We recommend that you leave room between the rule numbers (for example,
100, 110, 120, ...), and not number them one right after the other (for
example, 101, 102, 103, ...). This makes it easier to add a rule
between existing ones without having to renumber the rules.

After you add an entry, you can't modify it; you must either replace
it, or create an entry and delete the old one.

For more information about network ACLs, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon VPC User Guide>.


=head2 CreateNetworkInsightsAccessScope

=over

=item ClientToken => Str

=item [DryRun => Bool]

=item [ExcludePaths => ArrayRef[L<Paws::EC2::AccessScopePathRequest>]]

=item [MatchPaths => ArrayRef[L<Paws::EC2::AccessScopePathRequest>]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInsightsAccessScope>

Returns: a L<Paws::EC2::CreateNetworkInsightsAccessScopeResult> instance

Creates a Network Access Scope.

Amazon Web Services Network Access Analyzer enables cloud networking
and cloud operations teams to verify that their networks on Amazon Web
Services conform to their network security and governance objectives.
For more information, see the Amazon Web Services Network Access
Analyzer Guide
(https://docs.aws.amazon.com/vpc/latest/network-access-analyzer/).


=head2 CreateNetworkInsightsPath

=over

=item ClientToken => Str

=item Protocol => Str

=item Source => Str

=item [Destination => Str]

=item [DestinationIp => Str]

=item [DestinationPort => Int]

=item [DryRun => Bool]

=item [FilterAtDestination => L<Paws::EC2::PathRequestFilter>]

=item [FilterAtSource => L<Paws::EC2::PathRequestFilter>]

=item [SourceIp => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInsightsPath>

Returns: a L<Paws::EC2::CreateNetworkInsightsPathResult> instance

Creates a path to analyze for reachability.

Reachability Analyzer enables you to analyze and debug network
reachability between two resources in your virtual private cloud (VPC).
For more information, see the Reachability Analyzer Guide
(https://docs.aws.amazon.com/vpc/latest/reachability/).


=head2 CreateNetworkInterface

=over

=item SubnetId => Str

=item [ClientToken => Str]

=item [ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>]

=item [Description => Str]

=item [DryRun => Bool]

=item [EnablePrimaryIpv6 => Bool]

=item [Groups => ArrayRef[Str|Undef]]

=item [InterfaceType => Str]

=item [Ipv4PrefixCount => Int]

=item [Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecificationRequest>]]

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]]

=item [Ipv6PrefixCount => Int]

=item [Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecificationRequest>]]

=item [Operator => L<Paws::EC2::OperatorRequest>]

=item [PrivateIpAddress => Str]

=item [PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]]

=item [SecondaryPrivateIpAddressCount => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterface>

Returns: a L<Paws::EC2::CreateNetworkInterfaceResult> instance

Creates a network interface in the specified subnet.

The number of IP addresses you can assign to a network interface varies
by instance type.

For more information about network interfaces, see Elastic network
interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in
the I<Amazon EC2 User Guide>.


=head2 CreateNetworkInterfacePermission

=over

=item NetworkInterfaceId => Str

=item Permission => Str

=item [AwsAccountId => Str]

=item [AwsService => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterfacePermission>

Returns: a L<Paws::EC2::CreateNetworkInterfacePermissionResult> instance

Grants an Amazon Web Services-authorized account permission to attach
the specified network interface to an instance in their account.

You can grant permission to a single Amazon Web Services account only,
and only one account at a time.


=head2 CreatePlacementGroup

=over

=item [DryRun => Bool]

=item [GroupName => Str]

=item [PartitionCount => Int]

=item [SpreadLevel => Str]

=item [Strategy => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreatePlacementGroup>

Returns: a L<Paws::EC2::CreatePlacementGroupResult> instance

Creates a placement group in which to launch instances. The strategy of
the placement group determines how the instances are organized within
the group.

A C<cluster> placement group is a logical grouping of instances within
a single Availability Zone that benefit from low network latency, high
network throughput. A C<spread> placement group places instances on
distinct hardware. A C<partition> placement group places groups of
instances in different partitions, where instances in one partition do
not share the same hardware with instances in another partition.

For more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 CreatePublicIpv4Pool

=over

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreatePublicIpv4Pool>

Returns: a L<Paws::EC2::CreatePublicIpv4PoolResult> instance

Creates a public IPv4 address pool. A public IPv4 pool is an EC2 IP
address pool required for the public IPv4 CIDRs that you own and bring
to Amazon Web Services to manage with IPAM. IPv6 addresses you bring to
Amazon Web Services, however, use IPAM pools only. To monitor the
status of pool creation, use DescribePublicIpv4Pools
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html).


=head2 CreateReplaceRootVolumeTask

=over

=item InstanceId => Str

=item [ClientToken => Str]

=item [DeleteReplacedRootVolume => Bool]

=item [DryRun => Bool]

=item [ImageId => Str]

=item [SnapshotId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VolumeInitializationRate => Int]


=back

Each argument is described in detail in: L<Paws::EC2::CreateReplaceRootVolumeTask>

Returns: a L<Paws::EC2::CreateReplaceRootVolumeTaskResult> instance

Replaces the EBS-backed root volume for a C<running> instance with a
new volume that is restored to the original root volume's launch state,
that is restored to a specific snapshot taken from the original root
volume, or that is restored from an AMI that has the same key
characteristics as that of the instance.

For more information, see Replace a root volume
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateReservedInstancesListing

=over

=item ClientToken => Str

=item InstanceCount => Int

=item PriceSchedules => ArrayRef[L<Paws::EC2::PriceScheduleSpecification>]

=item ReservedInstancesId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CreateReservedInstancesListing>

Returns: a L<Paws::EC2::CreateReservedInstancesListingResult> instance

Creates a listing for Amazon EC2 Standard Reserved Instances to be sold
in the Reserved Instance Marketplace. You can submit one Standard
Reserved Instance listing at a time. To get a list of your Standard
Reserved Instances, you can use the DescribeReservedInstances
operation.

Only Standard Reserved Instances can be sold in the Reserved Instance
Marketplace. Convertible Reserved Instances cannot be sold.

The Reserved Instance Marketplace matches sellers who want to resell
Standard Reserved Instance capacity that they no longer need with
buyers who want to purchase additional capacity. Reserved Instances
bought and sold through the Reserved Instance Marketplace work like any
other Reserved Instances.

To sell your Standard Reserved Instances, you must first register as a
seller in the Reserved Instance Marketplace. After completing the
registration process, you can create a Reserved Instance Marketplace
listing of some or all of your Standard Reserved Instances, and specify
the upfront price to receive for them. Your Standard Reserved Instance
listings then become available for purchase. To view the details of
your Standard Reserved Instance listing, you can use the
DescribeReservedInstancesListings operation.

For more information, see Sell in the Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateRestoreImageTask

=over

=item Bucket => Str

=item ObjectKey => Str

=item [DryRun => Bool]

=item [Name => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRestoreImageTask>

Returns: a L<Paws::EC2::CreateRestoreImageTaskResult> instance

Starts a task that restores an AMI from an Amazon S3 object that was
previously created by using CreateStoreImageTask
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using
Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon EC2 User Guide>.

For more information, see Store and restore an AMI using Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateRoute

=over

=item RouteTableId => Str

=item [CarrierGatewayId => Str]

=item [CoreNetworkArn => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayId => Str]

=item [GatewayId => Str]

=item [InstanceId => Str]

=item [LocalGatewayId => Str]

=item [NatGatewayId => Str]

=item [NetworkInterfaceId => Str]

=item [TransitGatewayId => Str]

=item [VpcEndpointId => Str]

=item [VpcPeeringConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRoute>

Returns: a L<Paws::EC2::CreateRouteResult> instance

Creates a route in a route table within a VPC.

You must specify either a destination CIDR block or a prefix list ID.
You must also specify exactly one of the resources from the parameter
list.

When determining how to route traffic, we use the route with the most
specific match. For example, traffic is destined for the IPv4 address
C<192.0.2.3>, and the route table includes the following two IPv4
routes:

=over

=item *

C<192.0.2.0/24> (goes to some target A)

=item *

C<192.0.2.0/28> (goes to some target B)

=back

Both routes apply to the traffic destined for C<192.0.2.3>. However,
the second route in the list covers a smaller number of IP addresses
and is therefore more specific, so we use that route to determine where
to target the traffic.

For more information about route tables, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 CreateRouteServer

=over

=item AmazonSideAsn => Int

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [PersistRoutes => Str]

=item [PersistRoutesDuration => Int]

=item [SnsNotificationsEnabled => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRouteServer>

Returns: a L<Paws::EC2::CreateRouteServerResult> instance

Creates a new route server to manage dynamic routing in a VPC.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 CreateRouteServerEndpoint

=over

=item RouteServerId => Str

=item SubnetId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRouteServerEndpoint>

Returns: a L<Paws::EC2::CreateRouteServerEndpointResult> instance

Creates a new endpoint for a route server in a specified subnet.

A route server endpoint is an Amazon Web Services-managed component
inside a subnet that facilitates BGP (Border Gateway Protocol)
(https://en.wikipedia.org/wiki/Border_Gateway_Protocol) connections
between your route server and your BGP peers.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 CreateRouteServerPeer

=over

=item BgpOptions => L<Paws::EC2::RouteServerBgpOptionsRequest>

=item PeerAddress => Str

=item RouteServerEndpointId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRouteServerPeer>

Returns: a L<Paws::EC2::CreateRouteServerPeerResult> instance

Creates a new BGP peer for a specified route server endpoint.

A route server peer is a session between a route server endpoint and
the device deployed in Amazon Web Services (such as a firewall
appliance or other network security function running on an EC2
instance). The device must meet these requirements:

=over

=item *

Have an elastic network interface in the VPC

=item *

Support BGP (Border Gateway Protocol)

=item *

Can initiate BGP sessions

=back

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 CreateRouteTable

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRouteTable>

Returns: a L<Paws::EC2::CreateRouteTableResult> instance

Creates a route table for the specified VPC. After you create a route
table, you can add routes and associate the table with a subnet.

For more information, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 CreateSecurityGroup

=over

=item Description => Str

=item GroupName => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSecurityGroup>

Returns: a L<Paws::EC2::CreateSecurityGroupResult> instance

Creates a security group.

A security group acts as a virtual firewall for your instance to
control inbound and outbound traffic. For more information, see Amazon
EC2 security groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
in the I<Amazon EC2 User Guide> and Security groups for your VPC
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
in the I<Amazon VPC User Guide>.

When you create a security group, you specify a friendly name of your
choice. You can't have two security groups for the same VPC with the
same name.

You have a default security group for use in your VPC. If you don't
specify a security group when you launch an instance, the instance is
launched into the appropriate default security group. A default
security group includes a default rule that grants instances
unrestricted network access to each other.

You can add or remove rules from your security groups using
AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress,
RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.

For more information about VPC security group limits, see Amazon VPC
Limits
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).


=head2 CreateSnapshot

=over

=item VolumeId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [Location => Str]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSnapshot>

Returns: a L<Paws::EC2::Snapshot> instance

Creates a snapshot of an EBS volume and stores it in Amazon S3. You can
use snapshots for backups, to make copies of EBS volumes, and to save
data before shutting down an instance.

The location of the source EBS volume determines where you can create
the snapshot.

=over

=item *

If the source volume is in a Region, you must create the snapshot in
the same Region as the volume.

=item *

If the source volume is in a Local Zone, you can create the snapshot in
the same Local Zone or in its parent Amazon Web Services Region.

=item *

If the source volume is on an Outpost, you can create the snapshot on
the same Outpost or in its parent Amazon Web Services Region.

=back

When a snapshot is created, any Amazon Web Services Marketplace product
codes that are associated with the source volume are propagated to the
snapshot.

You can take a snapshot of an attached volume that is in use. However,
snapshots only capture data that has been written to your Amazon EBS
volume at the time the snapshot command is issued; this might exclude
any data that has been cached by any applications or the operating
system. If you can pause any file systems on the volume long enough to
take a snapshot, your snapshot should be complete. However, if you
cannot pause all file writes to the volume, you should unmount the
volume from within the instance, issue the snapshot command, and then
remount the volume to ensure a consistent and complete snapshot. You
may remount and use your volume while the snapshot status is
C<pending>.

When you create a snapshot for an EBS volume that serves as a root
device, we recommend that you stop the instance before taking the
snapshot.

Snapshots that are taken from encrypted volumes are automatically
encrypted. Volumes that are created from encrypted snapshots are also
automatically encrypted. Your encrypted volumes and any associated
snapshots always remain protected. For more information, see Amazon EBS
encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 CreateSnapshots

=over

=item InstanceSpecification => L<Paws::EC2::InstanceSpecification>

=item [CopyTagsFromSource => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [Location => Str]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSnapshots>

Returns: a L<Paws::EC2::CreateSnapshotsResult> instance

Creates crash-consistent snapshots of multiple EBS volumes attached to
an Amazon EC2 instance. Volumes are chosen by specifying an instance.
Each volume attached to the specified instance will produce one
snapshot that is crash-consistent across the instance. You can include
all of the volumes currently attached to the instance, or you can
exclude the root volume or specific data (non-root) volumes from the
multi-volume snapshot set.

The location of the source instance determines where you can create the
snapshots.

=over

=item *

If the source instance is in a Region, you must create the snapshots in
the same Region as the instance.

=item *

If the source instance is in a Local Zone, you can create the snapshots
in the same Local Zone or in its parent Amazon Web Services Region.

=item *

If the source instance is on an Outpost, you can create the snapshots
on the same Outpost or in its parent Amazon Web Services Region.

=back



=head2 CreateSpotDatafeedSubscription

=over

=item Bucket => Str

=item [DryRun => Bool]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSpotDatafeedSubscription>

Returns: a L<Paws::EC2::CreateSpotDatafeedSubscriptionResult> instance

Creates a data feed for Spot Instances, enabling you to view Spot
Instance usage logs. You can create one data feed per Amazon Web
Services account. For more information, see Spot Instance data feed
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateStoreImageTask

=over

=item Bucket => Str

=item ImageId => Str

=item [DryRun => Bool]

=item [S3ObjectTags => ArrayRef[L<Paws::EC2::S3ObjectTag>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateStoreImageTask>

Returns: a L<Paws::EC2::CreateStoreImageTaskResult> instance

Stores an AMI as a single object in an Amazon S3 bucket.

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using
Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon EC2 User Guide>.

For more information, see Store and restore an AMI using Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateSubnet

=over

=item VpcId => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [Ipv4IpamPoolId => Str]

=item [Ipv4NetmaskLength => Int]

=item [Ipv6CidrBlock => Str]

=item [Ipv6IpamPoolId => Str]

=item [Ipv6Native => Bool]

=item [Ipv6NetmaskLength => Int]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSubnet>

Returns: a L<Paws::EC2::CreateSubnetResult> instance

Creates a subnet in the specified VPC. For an IPv4 only subnet, specify
an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create
an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only
subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify
both an IPv4 CIDR block and an IPv6 CIDR block.

A subnet CIDR block must not overlap the CIDR block of an existing
subnet in the VPC. After you create a subnet, you can't change its CIDR
block.

The allowed size for an IPv4 subnet is between a /28 netmask (16 IP
addresses) and a /16 netmask (65,536 IP addresses). Amazon Web Services
reserves both the first four and the last IPv4 address in each subnet's
CIDR block. They're not available for your use.

If you've associated an IPv6 CIDR block with your VPC, you can
associate an IPv6 CIDR block with a subnet when you create it.

If you add more than one subnet to a VPC, they're set up in a star
topology with a logical router in the middle.

When you stop an instance in a subnet, it retains its private IPv4
address. It's therefore possible to have a subnet with no running
instances (they're all stopped), but no remaining IP addresses
available.

For more information, see Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)
in the I<Amazon VPC User Guide>.


=head2 CreateSubnetCidrReservation

=over

=item Cidr => Str

=item ReservationType => Str

=item SubnetId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSubnetCidrReservation>

Returns: a L<Paws::EC2::CreateSubnetCidrReservationResult> instance

Creates a subnet CIDR reservation. For more information, see Subnet
CIDR reservations
(https://docs.aws.amazon.com/vpc/latest/userguide/subnet-cidr-reservation.html)
in the I<Amazon VPC User Guide> and Manage prefixes for your network
interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-prefixes.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateTags

=over

=item Resources => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::EC2::Tag>]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTags>

Returns: nothing

Adds or overwrites only the specified tags for the specified Amazon EC2
resource or resources. When you specify an existing tag key, the value
is overwritten with the new value. Each resource can have a maximum of
50 tags. Each tag consists of a key and optional value. Tag keys must
be unique per resource.

For more information about tags, see Tag your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>. For more information
about creating IAM policies that control users' access to resources
based on tags, see Supported resource-level permissions for Amazon EC2
API actions
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateTrafficMirrorFilter

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorFilter>

Returns: a L<Paws::EC2::CreateTrafficMirrorFilterResult> instance

Creates a Traffic Mirror filter.

A Traffic Mirror filter is a set of rules that defines the traffic to
mirror.

By default, no traffic is mirrored. To mirror traffic, use
CreateTrafficMirrorFilterRule
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm)
to add Traffic Mirror rules to the filter. The rules you add define
what traffic gets mirrored. You can also use
ModifyTrafficMirrorFilterNetworkServices
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html)
to mirror supported network services.


=head2 CreateTrafficMirrorFilterRule

=over

=item DestinationCidrBlock => Str

=item RuleAction => Str

=item RuleNumber => Int

=item SourceCidrBlock => Str

=item TrafficDirection => Str

=item TrafficMirrorFilterId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [DryRun => Bool]

=item [Protocol => Int]

=item [SourcePortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::CreateTrafficMirrorFilterRuleResult> instance

Creates a Traffic Mirror filter rule.

A Traffic Mirror rule defines the Traffic Mirror source traffic to
mirror.

You need the Traffic Mirror filter ID when you create the rule.


=head2 CreateTrafficMirrorSession

=over

=item NetworkInterfaceId => Str

=item SessionNumber => Int

=item TrafficMirrorFilterId => Str

=item TrafficMirrorTargetId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [PacketLength => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VirtualNetworkId => Int]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorSession>

Returns: a L<Paws::EC2::CreateTrafficMirrorSessionResult> instance

Creates a Traffic Mirror session.

A Traffic Mirror session actively copies packets from a Traffic Mirror
source to a Traffic Mirror target. Create a filter, and then assign it
to the session to define a subset of the traffic to mirror, for example
all TCP traffic.

The Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in a different VPC connected via
VPC peering or a transit gateway.

By default, no traffic is mirrored. Use CreateTrafficMirrorFilter
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilter.html)
to create filter rules that specify the traffic to mirror.


=head2 CreateTrafficMirrorTarget

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [GatewayLoadBalancerEndpointId => Str]

=item [NetworkInterfaceId => Str]

=item [NetworkLoadBalancerArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorTarget>

Returns: a L<Paws::EC2::CreateTrafficMirrorTargetResult> instance

Creates a target for your Traffic Mirror session.

A Traffic Mirror target is the destination for mirrored traffic. The
Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in different VPCs connected via
VPC peering or a transit gateway.

A Traffic Mirror target can be a network interface, a Network Load
Balancer, or a Gateway Load Balancer endpoint.

To use the target in a Traffic Mirror session, use
CreateTrafficMirrorSession
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm).


=head2 CreateTransitGateway

=over

=item [Description => Str]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::TransitGatewayRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGateway>

Returns: a L<Paws::EC2::CreateTransitGatewayResult> instance

Creates a transit gateway.

You can use a transit gateway to interconnect your virtual private
clouds (VPC) and on-premises networks. After the transit gateway enters
the C<available> state, you can attach your VPCs and VPN connections to
the transit gateway.

To attach your VPCs, use CreateTransitGatewayVpcAttachment.

To attach a VPN connection, use CreateCustomerGateway to create a
customer gateway and specify the ID of the customer gateway and the ID
of the transit gateway in a call to CreateVpnConnection.

When you create a transit gateway, we create a default transit gateway
route table and use it as the default association route table and the
default propagation route table. You can use
CreateTransitGatewayRouteTable to create additional transit gateway
route tables. If you disable automatic route propagation, we do not
create a default transit gateway route table. You can use
EnableTransitGatewayRouteTablePropagation to propagate routes from a
resource attachment to a transit gateway route table. If you disable
automatic associations, you can use AssociateTransitGatewayRouteTable
to associate a resource attachment with a transit gateway route table.


=head2 CreateTransitGatewayConnect

=over

=item Options => L<Paws::EC2::CreateTransitGatewayConnectRequestOptions>

=item TransportTransitGatewayAttachmentId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayConnect>

Returns: a L<Paws::EC2::CreateTransitGatewayConnectResult> instance

Creates a Connect attachment from a specified transit gateway
attachment. A Connect attachment is a GRE-based tunnel attachment that
you can use to establish a connection between a transit gateway and an
appliance.

A Connect attachment uses an existing VPC or Amazon Web Services Direct
Connect attachment as the underlying transport mechanism.


=head2 CreateTransitGatewayConnectPeer

=over

=item InsideCidrBlocks => ArrayRef[Str|Undef]

=item PeerAddress => Str

=item TransitGatewayAttachmentId => Str

=item [BgpOptions => L<Paws::EC2::TransitGatewayConnectRequestBgpOptions>]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransitGatewayAddress => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayConnectPeer>

Returns: a L<Paws::EC2::CreateTransitGatewayConnectPeerResult> instance

Creates a Connect peer for a specified transit gateway Connect
attachment between a transit gateway and an appliance.

The peer address and transit gateway address must be the same IP
address family (IPv4 or IPv6).

For more information, see Connect peers
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer)
in the I<Amazon Web Services Transit Gateways Guide>.


=head2 CreateTransitGatewayMulticastDomain

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::CreateTransitGatewayMulticastDomainResult> instance

Creates a multicast domain using the specified transit gateway.

The transit gateway must be in the available state before you create a
domain. Use DescribeTransitGateways
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html)
to see the state of transit gateway.


=head2 CreateTransitGatewayPeeringAttachment

=over

=item PeerAccountId => Str

=item PeerRegion => Str

=item PeerTransitGatewayId => Str

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::CreateTransitGatewayPeeringAttachmentRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::CreateTransitGatewayPeeringAttachmentResult> instance

Requests a transit gateway peering attachment between the specified
transit gateway (requester) and a peer transit gateway (accepter). The
peer transit gateway can be in your account or a different Amazon Web
Services account.

After you create the peering attachment, the owner of the accepter
transit gateway must accept the attachment request.


=head2 CreateTransitGatewayPolicyTable

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayPolicyTable>

Returns: a L<Paws::EC2::CreateTransitGatewayPolicyTableResult> instance

Creates a transit gateway policy table.


=head2 CreateTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::CreateTransitGatewayPrefixListReferenceResult> instance

Creates a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 CreateTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayRoute>

Returns: a L<Paws::EC2::CreateTransitGatewayRouteResult> instance

Creates a static route for the specified transit gateway route table.


=head2 CreateTransitGatewayRouteTable

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::CreateTransitGatewayRouteTableResult> instance

Creates a route table for the specified transit gateway.


=head2 CreateTransitGatewayRouteTableAnnouncement

=over

=item PeeringAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayRouteTableAnnouncement>

Returns: a L<Paws::EC2::CreateTransitGatewayRouteTableAnnouncementResult> instance

Advertises a new transit gateway route table.


=head2 CreateTransitGatewayVpcAttachment

=over

=item SubnetIds => ArrayRef[Str|Undef]

=item TransitGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::CreateTransitGatewayVpcAttachmentResult> instance

Attaches the specified VPC to the specified transit gateway.

If you attach a VPC with a CIDR range that overlaps the CIDR range of a
VPC that is already attached, the new VPC CIDR range is not propagated
to the default propagation route table.

To send VPC traffic to an attached transit gateway, add a route to the
VPC route table using CreateRoute.


=head2 CreateVerifiedAccessEndpoint

=over

=item AttachmentType => Str

=item EndpointType => Str

=item VerifiedAccessGroupId => Str

=item [ApplicationDomain => Str]

=item [CidrOptions => L<Paws::EC2::CreateVerifiedAccessEndpointCidrOptions>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DomainCertificateArn => Str]

=item [DryRun => Bool]

=item [EndpointDomainPrefix => Str]

=item [LoadBalancerOptions => L<Paws::EC2::CreateVerifiedAccessEndpointLoadBalancerOptions>]

=item [NetworkInterfaceOptions => L<Paws::EC2::CreateVerifiedAccessEndpointEniOptions>]

=item [PolicyDocument => Str]

=item [RdsOptions => L<Paws::EC2::CreateVerifiedAccessEndpointRdsOptions>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVerifiedAccessEndpoint>

Returns: a L<Paws::EC2::CreateVerifiedAccessEndpointResult> instance

An Amazon Web Services Verified Access endpoint is where you define
your application along with an optional endpoint-level access policy.


=head2 CreateVerifiedAccessGroup

=over

=item VerifiedAccessInstanceId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [PolicyDocument => Str]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVerifiedAccessGroup>

Returns: a L<Paws::EC2::CreateVerifiedAccessGroupResult> instance

An Amazon Web Services Verified Access group is a collection of Amazon
Web Services Verified Access endpoints who's associated applications
have similar security requirements. Each instance within a Verified
Access group shares an Verified Access policy. For example, you can
group all Verified Access instances associated with "sales"
applications together and use one common Verified Access policy.


=head2 CreateVerifiedAccessInstance

=over

=item [CidrEndpointsCustomSubDomain => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [FIPSEnabled => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVerifiedAccessInstance>

Returns: a L<Paws::EC2::CreateVerifiedAccessInstanceResult> instance

An Amazon Web Services Verified Access instance is a regional entity
that evaluates application requests and grants access only when your
security requirements are met.


=head2 CreateVerifiedAccessTrustProvider

=over

=item PolicyReferenceName => Str

=item TrustProviderType => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DeviceOptions => L<Paws::EC2::CreateVerifiedAccessTrustProviderDeviceOptions>]

=item [DeviceTrustProviderType => Str]

=item [DryRun => Bool]

=item [NativeApplicationOidcOptions => L<Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions>]

=item [OidcOptions => L<Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions>]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [UserTrustProviderType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVerifiedAccessTrustProvider>

Returns: a L<Paws::EC2::CreateVerifiedAccessTrustProviderResult> instance

A trust provider is a third-party entity that creates, maintains, and
manages identity information for users and devices. When an application
request is made, the identity information sent by the trust provider is
evaluated by Verified Access before allowing or denying the application
request.


=head2 CreateVolume

=over

=item AvailabilityZone => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [MultiAttachEnabled => Bool]

=item [Operator => L<Paws::EC2::OperatorRequest>]

=item [OutpostArn => Str]

=item [Size => Int]

=item [SnapshotId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Throughput => Int]

=item [VolumeInitializationRate => Int]

=item [VolumeType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVolume>

Returns: a L<Paws::EC2::Volume> instance

Creates an EBS volume that can be attached to an instance in the same
Availability Zone.

You can create a new empty volume or restore a volume from an EBS
snapshot. Any Amazon Web Services Marketplace product codes from the
snapshot are propagated to the volume.

You can create encrypted volumes. Encrypted volumes must be attached to
instances that support Amazon EBS encryption. Volumes that are created
from encrypted snapshots are also automatically encrypted. For more
information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.

You can tag your volumes during creation. For more information, see Tag
your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon EC2 User Guide>.

For more information, see Create an Amazon EBS volume
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-creating-volume.html)
in the I<Amazon EBS User Guide>.


=head2 CreateVpc

=over

=item [AmazonProvidedIpv6CidrBlock => Bool]

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [InstanceTenancy => Str]

=item [Ipv4IpamPoolId => Str]

=item [Ipv4NetmaskLength => Int]

=item [Ipv6CidrBlock => Str]

=item [Ipv6CidrBlockNetworkBorderGroup => Str]

=item [Ipv6IpamPoolId => Str]

=item [Ipv6NetmaskLength => Int]

=item [Ipv6Pool => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpc>

Returns: a L<Paws::EC2::CreateVpcResult> instance

Creates a VPC with the specified CIDR blocks. For more information, see
IP addressing for your VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html)
in the I<Amazon VPC User Guide>.

You can optionally request an IPv6 CIDR block for the VPC. You can
request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6
addresses or an IPv6 CIDR block from an IPv6 address pool that you
provisioned through bring your own IP addresses (BYOIP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).

By default, each instance that you launch in the VPC has the default
DHCP options, which include only a default DNS server that we provide
(AmazonProvidedDNS). For more information, see DHCP option sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon VPC User Guide>.

You can specify the instance tenancy value for the VPC when you create
it. You can't change this value for the VPC after you create it. For
more information, see Dedicated Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateVpcBlockPublicAccessExclusion

=over

=item InternetGatewayExclusionMode => Str

=item [DryRun => Bool]

=item [SubnetId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcBlockPublicAccessExclusion>

Returns: a L<Paws::EC2::CreateVpcBlockPublicAccessExclusionResult> instance

Create a VPC Block Public Access (BPA) exclusion. A VPC BPA exclusion
is a mode that can be applied to a single VPC or subnet that exempts it
from the accountE<rsquo>s BPA mode and will allow bidirectional or
egress-only access. You can create BPA exclusions for VPCs and subnets
even when BPA is not enabled on the account to ensure that there is no
traffic disruption to the exclusions when VPC BPA is turned on. To
learn more about VPC BPA, see Block public access to VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 CreateVpcEndpoint

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DnsOptions => L<Paws::EC2::DnsOptionsSpecification>]

=item [DryRun => Bool]

=item [IpAddressType => Str]

=item [PolicyDocument => Str]

=item [PrivateDnsEnabled => Bool]

=item [ResourceConfigurationArn => Str]

=item [RouteTableIds => ArrayRef[Str|Undef]]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [ServiceName => Str]

=item [ServiceNetworkArn => Str]

=item [ServiceRegion => Str]

=item [SubnetConfigurations => ArrayRef[L<Paws::EC2::SubnetConfiguration>]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcEndpointType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpoint>

Returns: a L<Paws::EC2::CreateVpcEndpointResult> instance

Creates a VPC endpoint. A VPC endpoint provides a private connection
between the specified VPC and the specified endpoint service. You can
use an endpoint service provided by Amazon Web Services, an Amazon Web
Services Marketplace Partner, or another Amazon Web Services account.
For more information, see the Amazon Web Services PrivateLink User
Guide (https://docs.aws.amazon.com/vpc/latest/privatelink/).


=head2 CreateVpcEndpointConnectionNotification

=over

=item ConnectionEvents => ArrayRef[Str|Undef]

=item ConnectionNotificationArn => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [ServiceId => Str]

=item [VpcEndpointId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpointConnectionNotification>

Returns: a L<Paws::EC2::CreateVpcEndpointConnectionNotificationResult> instance

Creates a connection notification for a specified VPC endpoint or VPC
endpoint service. A connection notification notifies you of specific
endpoint events. You must create an SNS topic to receive notifications.
For more information, see Creating an Amazon SNS topic
(https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in the
I<Amazon SNS Developer Guide>.

You can create a connection notification for interface endpoints only.


=head2 CreateVpcEndpointServiceConfiguration

=over

=item [AcceptanceRequired => Bool]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [GatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [NetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [PrivateDnsName => Str]

=item [SupportedIpAddressTypes => ArrayRef[Str|Undef]]

=item [SupportedRegions => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpointServiceConfiguration>

Returns: a L<Paws::EC2::CreateVpcEndpointServiceConfigurationResult> instance

Creates a VPC endpoint service to which service consumers (Amazon Web
Services accounts, users, and IAM roles) can connect.

Before you create an endpoint service, you must create one of the
following for your service:

=over

=item *

A Network Load Balancer
(https://docs.aws.amazon.com/elasticloadbalancing/latest/network/).
Service consumers connect to your service using an interface endpoint.

=item *

A Gateway Load Balancer
(https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/).
Service consumers connect to your service using a Gateway Load Balancer
endpoint.

=back

If you set the private DNS name, you must prove that you own the
private DNS domain name.

For more information, see the Amazon Web Services PrivateLink Guide
(https://docs.aws.amazon.com/vpc/latest/privatelink/).


=head2 CreateVpcPeeringConnection

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [PeerOwnerId => Str]

=item [PeerRegion => Str]

=item [PeerVpcId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcPeeringConnection>

Returns: a L<Paws::EC2::CreateVpcPeeringConnectionResult> instance

Requests a VPC peering connection between two VPCs: a requester VPC
that you own and an accepter VPC with which to create the connection.
The accepter VPC can belong to another Amazon Web Services account and
can be in a different Region to the requester VPC. The requester VPC
and accepter VPC cannot have overlapping CIDR blocks.

Limitations and rules apply to a VPC peering connection. For more
information, see the VPC peering limitations
(https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations)
in the I<VPC Peering Guide>.

The owner of the accepter VPC must accept the peering request to
activate the peering connection. The VPC peering connection request
expires after 7 days, after which it cannot be accepted or rejected.

If you create a VPC peering connection request between VPCs with
overlapping CIDR blocks, the VPC peering connection has a status of
C<failed>.


=head2 CreateVpnConnection

=over

=item CustomerGatewayId => Str

=item Type => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::VpnConnectionOptionsSpecification>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransitGatewayId => Str]

=item [VpnGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnection>

Returns: a L<Paws::EC2::CreateVpnConnectionResult> instance

Creates a VPN connection between an existing virtual private gateway or
transit gateway and a customer gateway. The supported connection type
is C<ipsec.1>.

The response includes information that you need to give to your network
administrator to configure your customer gateway.

We strongly recommend that you use HTTPS when calling this operation
because the response contains sensitive cryptographic information for
configuring your customer gateway device.

If you decide to shut down your VPN connection for any reason and later
create a new VPN connection, you must reconfigure your customer gateway
with the new information returned from this call.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 CreateVpnConnectionRoute

=over

=item DestinationCidrBlock => Str

=item VpnConnectionId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnectionRoute>

Returns: nothing

Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 CreateVpnGateway

=over

=item Type => Str

=item [AmazonSideAsn => Int]

=item [AvailabilityZone => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnGateway>

Returns: a L<Paws::EC2::CreateVpnGatewayResult> instance

Creates a virtual private gateway. A virtual private gateway is the
endpoint on the VPC side of your VPN connection. You can create a
virtual private gateway before creating the VPC itself.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 DeleteCarrierGateway

=over

=item CarrierGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCarrierGateway>

Returns: a L<Paws::EC2::DeleteCarrierGatewayResult> instance

Deletes a carrier gateway.

If you do not delete the route that contains the carrier gateway as the
Target, the route is a blackhole route. For information about how to
delete a route, see DeleteRoute
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html).


=head2 DeleteClientVpnEndpoint

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteClientVpnEndpoint>

Returns: a L<Paws::EC2::DeleteClientVpnEndpointResult> instance

Deletes the specified Client VPN endpoint. You must disassociate all
target networks before you can delete a Client VPN endpoint.


=head2 DeleteClientVpnRoute

=over

=item ClientVpnEndpointId => Str

=item DestinationCidrBlock => Str

=item [DryRun => Bool]

=item [TargetVpcSubnetId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteClientVpnRoute>

Returns: a L<Paws::EC2::DeleteClientVpnRouteResult> instance

Deletes a route from a Client VPN endpoint. You can only delete routes
that you manually added using the B<CreateClientVpnRoute> action. You
cannot delete routes that were automatically added when associating a
subnet. To remove routes that have been automatically added,
disassociate the target subnet from the Client VPN endpoint.


=head2 DeleteCoipCidr

=over

=item Cidr => Str

=item CoipPoolId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCoipCidr>

Returns: a L<Paws::EC2::DeleteCoipCidrResult> instance

Deletes a range of customer-owned IP addresses.


=head2 DeleteCoipPool

=over

=item CoipPoolId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCoipPool>

Returns: a L<Paws::EC2::DeleteCoipPoolResult> instance

Deletes a pool of customer-owned IP (CoIP) addresses.


=head2 DeleteCustomerGateway

=over

=item CustomerGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCustomerGateway>

Returns: nothing

Deletes the specified customer gateway. You must delete the VPN
connection before you can delete the customer gateway.


=head2 DeleteDhcpOptions

=over

=item DhcpOptionsId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteDhcpOptions>

Returns: nothing

Deletes the specified set of DHCP options. You must disassociate the
set of DHCP options before you can delete it. You can disassociate the
set of DHCP options by associating either a new set of options or the
default set of options with the VPC.


=head2 DeleteEgressOnlyInternetGateway

=over

=item EgressOnlyInternetGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::DeleteEgressOnlyInternetGatewayResult> instance

Deletes an egress-only internet gateway.


=head2 DeleteFleets

=over

=item FleetIds => ArrayRef[Str|Undef]

=item TerminateInstances => Bool

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFleets>

Returns: a L<Paws::EC2::DeleteFleetsResult> instance

Deletes the specified EC2 Fleet request.

After you delete an EC2 Fleet request, it launches no new instances.

You must also specify whether a deleted EC2 Fleet request should
terminate its instances. If you choose to terminate the instances, the
EC2 Fleet request enters the C<deleted_terminating> state. Otherwise,
it enters the C<deleted_running> state, and the instances continue to
run until they are interrupted or you terminate them manually.

A deleted C<instant> fleet with running instances is not supported.
When you delete an C<instant> fleet, Amazon EC2 automatically
terminates all its instances. For fleets with more than 1000 instances,
the deletion request might fail. If your fleet has more than 1000
instances, first terminate most of the instances manually, leaving 1000
or fewer. Then delete the fleet, and the remaining instances will be
terminated automatically.

B<Restrictions>

=over

=item *

You can delete up to 25 fleets of type C<instant> in a single request.

=item *

You can delete up to 100 fleets of type C<maintain> or C<request> in a
single request.

=item *

You can delete up to 125 fleets in a single request, provided you do
not exceed the quota for each fleet type, as specified above.

=item *

If you exceed the specified number of fleets to delete, no fleets are
deleted.

=back

For more information, see Delete an EC2 Fleet request and the instances
in the fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/delete-fleet.html)
in the I<Amazon EC2 User Guide>.


=head2 DeleteFlowLogs

=over

=item FlowLogIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFlowLogs>

Returns: a L<Paws::EC2::DeleteFlowLogsResult> instance

Deletes one or more flow logs.


=head2 DeleteFpgaImage

=over

=item FpgaImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFpgaImage>

Returns: a L<Paws::EC2::DeleteFpgaImageResult> instance

Deletes the specified Amazon FPGA Image (AFI).


=head2 DeleteInstanceConnectEndpoint

=over

=item InstanceConnectEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteInstanceConnectEndpoint>

Returns: a L<Paws::EC2::DeleteInstanceConnectEndpointResult> instance

Deletes the specified EC2 Instance Connect Endpoint.


=head2 DeleteInstanceEventWindow

=over

=item InstanceEventWindowId => Str

=item [DryRun => Bool]

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteInstanceEventWindow>

Returns: a L<Paws::EC2::DeleteInstanceEventWindowResult> instance

Deletes the specified event window.

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 DeleteInternetGateway

=over

=item InternetGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteInternetGateway>

Returns: nothing

Deletes the specified internet gateway. You must detach the internet
gateway from the VPC before you can delete it.


=head2 DeleteIpam

=over

=item IpamId => Str

=item [Cascade => Bool]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteIpam>

Returns: a L<Paws::EC2::DeleteIpamResult> instance

Delete an IPAM. Deleting an IPAM removes all monitored data associated
with the IPAM including the historical data for CIDRs.

For more information, see Delete an IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/delete-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 DeleteIpamExternalResourceVerificationToken

=over

=item IpamExternalResourceVerificationTokenId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteIpamExternalResourceVerificationToken>

Returns: a L<Paws::EC2::DeleteIpamExternalResourceVerificationTokenResult> instance

Delete a verification token. A verification token is an Amazon Web
Services-generated random value that you can use to prove ownership of
an external resource. For example, you can use a verification token to
validate that you control a public IP address range when you bring an
IP address range to Amazon Web Services (BYOIP).


=head2 DeleteIpamPool

=over

=item IpamPoolId => Str

=item [Cascade => Bool]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteIpamPool>

Returns: a L<Paws::EC2::DeleteIpamPoolResult> instance

Delete an IPAM pool.

You cannot delete an IPAM pool if there are allocations in it or CIDRs
provisioned to it. To release allocations, see
ReleaseIpamPoolAllocation
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html).
To deprovision pool CIDRs, see DeprovisionIpamPoolCidr
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html).

For more information, see Delete a pool
(https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 DeleteIpamResourceDiscovery

=over

=item IpamResourceDiscoveryId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteIpamResourceDiscovery>

Returns: a L<Paws::EC2::DeleteIpamResourceDiscoveryResult> instance

Deletes an IPAM resource discovery. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.


=head2 DeleteIpamScope

=over

=item IpamScopeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteIpamScope>

Returns: a L<Paws::EC2::DeleteIpamScopeResult> instance

Delete the scope for an IPAM. You cannot delete the default scopes.

For more information, see Delete a scope
(https://docs.aws.amazon.com/vpc/latest/ipam/delete-scope-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 DeleteKeyPair

=over

=item [DryRun => Bool]

=item [KeyName => Str]

=item [KeyPairId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteKeyPair>

Returns: a L<Paws::EC2::DeleteKeyPairResult> instance

Deletes the specified key pair, by removing the public key from Amazon
EC2.


=head2 DeleteLaunchTemplate

=over

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLaunchTemplate>

Returns: a L<Paws::EC2::DeleteLaunchTemplateResult> instance

Deletes a launch template. Deleting a launch template deletes all of
its versions.


=head2 DeleteLaunchTemplateVersions

=over

=item Versions => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLaunchTemplateVersions>

Returns: a L<Paws::EC2::DeleteLaunchTemplateVersionsResult> instance

Deletes one or more versions of a launch template.

You can't delete the default version of a launch template; you must
first assign a different version as the default. If the default version
is the only version for the launch template, you must delete the entire
launch template using DeleteLaunchTemplate.

You can delete up to 200 launch template versions in a single request.
To delete more than 200 versions in a single request, use
DeleteLaunchTemplate, which deletes the launch template and all of its
versions.

For more information, see Delete a launch template version
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/delete-launch-template.html#delete-launch-template-version)
in the I<Amazon EC2 User Guide>.


=head2 DeleteLocalGatewayRoute

=over

=item LocalGatewayRouteTableId => Str

=item [DestinationCidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRoute>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteResult> instance

Deletes the specified route from the specified local gateway route
table.


=head2 DeleteLocalGatewayRouteTable

=over

=item LocalGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRouteTable>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteTableResult> instance

Deletes a local gateway route table.


=head2 DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation

=over

=item LocalGatewayRouteTableVirtualInterfaceGroupAssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult> instance

Deletes a local gateway route table virtual interface group
association.


=head2 DeleteLocalGatewayRouteTableVpcAssociation

=over

=item LocalGatewayRouteTableVpcAssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociation>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociationResult> instance

Deletes the specified association between a VPC and local gateway route
table.


=head2 DeleteLocalGatewayVirtualInterface

=over

=item LocalGatewayVirtualInterfaceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayVirtualInterface>

Returns: a L<Paws::EC2::DeleteLocalGatewayVirtualInterfaceResult> instance

Deletes the specified local gateway virtual interface.


=head2 DeleteLocalGatewayVirtualInterfaceGroup

=over

=item LocalGatewayVirtualInterfaceGroupId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayVirtualInterfaceGroup>

Returns: a L<Paws::EC2::DeleteLocalGatewayVirtualInterfaceGroupResult> instance

Delete the specified local gateway interface group.


=head2 DeleteManagedPrefixList

=over

=item PrefixListId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteManagedPrefixList>

Returns: a L<Paws::EC2::DeleteManagedPrefixListResult> instance

Deletes the specified managed prefix list. You must first remove all
references to the prefix list in your resources.


=head2 DeleteNatGateway

=over

=item NatGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNatGateway>

Returns: a L<Paws::EC2::DeleteNatGatewayResult> instance

Deletes the specified NAT gateway. Deleting a public NAT gateway
disassociates its Elastic IP address, but does not release the address
from your account. Deleting a NAT gateway does not delete any NAT
gateway routes in your route tables.


=head2 DeleteNetworkAcl

=over

=item NetworkAclId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAcl>

Returns: nothing

Deletes the specified network ACL. You can't delete the ACL if it's
associated with any subnets. You can't delete the default network ACL.


=head2 DeleteNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item RuleNumber => Int

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAclEntry>

Returns: nothing

Deletes the specified ingress or egress entry (rule) from the specified
network ACL.


=head2 DeleteNetworkInsightsAccessScope

=over

=item NetworkInsightsAccessScopeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsAccessScope>

Returns: a L<Paws::EC2::DeleteNetworkInsightsAccessScopeResult> instance

Deletes the specified Network Access Scope.


=head2 DeleteNetworkInsightsAccessScopeAnalysis

=over

=item NetworkInsightsAccessScopeAnalysisId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsAccessScopeAnalysis>

Returns: a L<Paws::EC2::DeleteNetworkInsightsAccessScopeAnalysisResult> instance

Deletes the specified Network Access Scope analysis.


=head2 DeleteNetworkInsightsAnalysis

=over

=item NetworkInsightsAnalysisId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsAnalysis>

Returns: a L<Paws::EC2::DeleteNetworkInsightsAnalysisResult> instance

Deletes the specified network insights analysis.


=head2 DeleteNetworkInsightsPath

=over

=item NetworkInsightsPathId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsPath>

Returns: a L<Paws::EC2::DeleteNetworkInsightsPathResult> instance

Deletes the specified path.


=head2 DeleteNetworkInterface

=over

=item NetworkInterfaceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterface>

Returns: nothing

Deletes the specified network interface. You must detach the network
interface before you can delete it.


=head2 DeleteNetworkInterfacePermission

=over

=item NetworkInterfacePermissionId => Str

=item [DryRun => Bool]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterfacePermission>

Returns: a L<Paws::EC2::DeleteNetworkInterfacePermissionResult> instance

Deletes a permission for a network interface. By default, you cannot
delete the permission if the account for which you're removing the
permission has attached the network interface to an instance. However,
you can force delete the permission, regardless of any attachment.


=head2 DeletePlacementGroup

=over

=item GroupName => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeletePlacementGroup>

Returns: nothing

Deletes the specified placement group. You must terminate all instances
in the placement group before you can delete the placement group. For
more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 DeletePublicIpv4Pool

=over

=item PoolId => Str

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeletePublicIpv4Pool>

Returns: a L<Paws::EC2::DeletePublicIpv4PoolResult> instance

Delete a public IPv4 pool. A public IPv4 pool is an EC2 IP address pool
required for the public IPv4 CIDRs that you own and bring to Amazon Web
Services to manage with IPAM. IPv6 addresses you bring to Amazon Web
Services, however, use IPAM pools only.


=head2 DeleteQueuedReservedInstances

=over

=item ReservedInstancesIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteQueuedReservedInstances>

Returns: a L<Paws::EC2::DeleteQueuedReservedInstancesResult> instance

Deletes the queued purchases for the specified Reserved Instances.


=head2 DeleteRoute

=over

=item RouteTableId => Str

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRoute>

Returns: nothing

Deletes the specified route from the specified route table.


=head2 DeleteRouteServer

=over

=item RouteServerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRouteServer>

Returns: a L<Paws::EC2::DeleteRouteServerResult> instance

Deletes the specified route server.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DeleteRouteServerEndpoint

=over

=item RouteServerEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRouteServerEndpoint>

Returns: a L<Paws::EC2::DeleteRouteServerEndpointResult> instance

Deletes the specified route server endpoint.

A route server endpoint is an Amazon Web Services-managed component
inside a subnet that facilitates BGP (Border Gateway Protocol)
(https://en.wikipedia.org/wiki/Border_Gateway_Protocol) connections
between your route server and your BGP peers.


=head2 DeleteRouteServerPeer

=over

=item RouteServerPeerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRouteServerPeer>

Returns: a L<Paws::EC2::DeleteRouteServerPeerResult> instance

Deletes the specified BGP peer from a route server.

A route server peer is a session between a route server endpoint and
the device deployed in Amazon Web Services (such as a firewall
appliance or other network security function running on an EC2
instance). The device must meet these requirements:

=over

=item *

Have an elastic network interface in the VPC

=item *

Support BGP (Border Gateway Protocol)

=item *

Can initiate BGP sessions

=back



=head2 DeleteRouteTable

=over

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRouteTable>

Returns: nothing

Deletes the specified route table. You must disassociate the route
table from any subnets before you can delete it. You can't delete the
main route table.


=head2 DeleteSecurityGroup

=over

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSecurityGroup>

Returns: a L<Paws::EC2::DeleteSecurityGroupResult> instance

Deletes a security group.

If you attempt to delete a security group that is associated with an
instance or network interface, is referenced by another security group
in the same VPC, or has a VPC association, the operation fails with
C<DependencyViolation>.


=head2 DeleteSnapshot

=over

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSnapshot>

Returns: nothing

Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed.
So regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
volume.

You cannot delete a snapshot of the root device of an EBS volume used
by a registered AMI. You must first deregister the AMI before you can
delete the snapshot.

For more information, see Delete an Amazon EBS snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-deleting-snapshot.html)
in the I<Amazon EBS User Guide>.


=head2 DeleteSpotDatafeedSubscription

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSpotDatafeedSubscription>

Returns: nothing

Deletes the data feed for Spot Instances.


=head2 DeleteSubnet

=over

=item SubnetId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSubnet>

Returns: nothing

Deletes the specified subnet. You must terminate all running instances
in the subnet before you can delete the subnet.


=head2 DeleteSubnetCidrReservation

=over

=item SubnetCidrReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSubnetCidrReservation>

Returns: a L<Paws::EC2::DeleteSubnetCidrReservationResult> instance

Deletes a subnet CIDR reservation.


=head2 DeleteTags

=over

=item Resources => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [Tags => ArrayRef[L<Paws::EC2::Tag>]]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTags>

Returns: nothing

Deletes the specified set of tags from the specified set of resources.

To list the current tags, use DescribeTags. For more information about
tags, see Tag your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteTrafficMirrorFilter

=over

=item TrafficMirrorFilterId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorFilter>

Returns: a L<Paws::EC2::DeleteTrafficMirrorFilterResult> instance

Deletes the specified Traffic Mirror filter.

You cannot delete a Traffic Mirror filter that is in use by a Traffic
Mirror session.


=head2 DeleteTrafficMirrorFilterRule

=over

=item TrafficMirrorFilterRuleId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::DeleteTrafficMirrorFilterRuleResult> instance

Deletes the specified Traffic Mirror rule.


=head2 DeleteTrafficMirrorSession

=over

=item TrafficMirrorSessionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorSession>

Returns: a L<Paws::EC2::DeleteTrafficMirrorSessionResult> instance

Deletes the specified Traffic Mirror session.


=head2 DeleteTrafficMirrorTarget

=over

=item TrafficMirrorTargetId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorTarget>

Returns: a L<Paws::EC2::DeleteTrafficMirrorTargetResult> instance

Deletes the specified Traffic Mirror target.

You cannot delete a Traffic Mirror target that is in use by a Traffic
Mirror session.


=head2 DeleteTransitGateway

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGateway>

Returns: a L<Paws::EC2::DeleteTransitGatewayResult> instance

Deletes the specified transit gateway.


=head2 DeleteTransitGatewayConnect

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayConnect>

Returns: a L<Paws::EC2::DeleteTransitGatewayConnectResult> instance

Deletes the specified Connect attachment. You must first delete any
Connect peers for the attachment.


=head2 DeleteTransitGatewayConnectPeer

=over

=item TransitGatewayConnectPeerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayConnectPeer>

Returns: a L<Paws::EC2::DeleteTransitGatewayConnectPeerResult> instance

Deletes the specified Connect peer.


=head2 DeleteTransitGatewayMulticastDomain

=over

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::DeleteTransitGatewayMulticastDomainResult> instance

Deletes the specified transit gateway multicast domain.


=head2 DeleteTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::DeleteTransitGatewayPeeringAttachmentResult> instance

Deletes a transit gateway peering attachment.


=head2 DeleteTransitGatewayPolicyTable

=over

=item TransitGatewayPolicyTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayPolicyTable>

Returns: a L<Paws::EC2::DeleteTransitGatewayPolicyTableResult> instance

Deletes the specified transit gateway policy table.


=head2 DeleteTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::DeleteTransitGatewayPrefixListReferenceResult> instance

Deletes a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 DeleteTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayRoute>

Returns: a L<Paws::EC2::DeleteTransitGatewayRouteResult> instance

Deletes the specified route from the specified transit gateway route
table.


=head2 DeleteTransitGatewayRouteTable

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayRouteTable>

Returns: a L<Paws::EC2::DeleteTransitGatewayRouteTableResult> instance

Deletes the specified transit gateway route table. If there are any
route tables associated with the transit gateway route table, you must
first run DisassociateRouteTable before you can delete the transit
gateway route table. This removes any route tables associated with the
transit gateway route table.


=head2 DeleteTransitGatewayRouteTableAnnouncement

=over

=item TransitGatewayRouteTableAnnouncementId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayRouteTableAnnouncement>

Returns: a L<Paws::EC2::DeleteTransitGatewayRouteTableAnnouncementResult> instance

Advertises to the transit gateway that a transit gateway route table is
deleted.


=head2 DeleteTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::DeleteTransitGatewayVpcAttachmentResult> instance

Deletes the specified VPC attachment.


=head2 DeleteVerifiedAccessEndpoint

=over

=item VerifiedAccessEndpointId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVerifiedAccessEndpoint>

Returns: a L<Paws::EC2::DeleteVerifiedAccessEndpointResult> instance

Delete an Amazon Web Services Verified Access endpoint.


=head2 DeleteVerifiedAccessGroup

=over

=item VerifiedAccessGroupId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVerifiedAccessGroup>

Returns: a L<Paws::EC2::DeleteVerifiedAccessGroupResult> instance

Delete an Amazon Web Services Verified Access group.


=head2 DeleteVerifiedAccessInstance

=over

=item VerifiedAccessInstanceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVerifiedAccessInstance>

Returns: a L<Paws::EC2::DeleteVerifiedAccessInstanceResult> instance

Delete an Amazon Web Services Verified Access instance.


=head2 DeleteVerifiedAccessTrustProvider

=over

=item VerifiedAccessTrustProviderId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVerifiedAccessTrustProvider>

Returns: a L<Paws::EC2::DeleteVerifiedAccessTrustProviderResult> instance

Delete an Amazon Web Services Verified Access trust provider.


=head2 DeleteVolume

=over

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVolume>

Returns: nothing

Deletes the specified EBS volume. The volume must be in the
C<available> state (not attached to an instance).

The volume can remain in the C<deleting> state for several minutes.

For more information, see Delete an Amazon EBS volume
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-deleting-volume.html)
in the I<Amazon EBS User Guide>.


=head2 DeleteVpc

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpc>

Returns: nothing

Deletes the specified VPC. You must detach or delete all gateways and
resources that are associated with the VPC before you can delete it.
For example, you must terminate all instances running in the VPC,
delete all security groups associated with the VPC (except the default
one), delete all route tables associated with the VPC (except the
default one), and so on. When you delete the VPC, it deletes the
default security group, network ACL, and route table for the VPC.

If you created a flow log for the VPC that you are deleting, note that
flow logs for deleted VPCs are eventually automatically removed.


=head2 DeleteVpcBlockPublicAccessExclusion

=over

=item ExclusionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcBlockPublicAccessExclusion>

Returns: a L<Paws::EC2::DeleteVpcBlockPublicAccessExclusionResult> instance

Delete a VPC Block Public Access (BPA) exclusion. A VPC BPA exclusion
is a mode that can be applied to a single VPC or subnet that exempts it
from the accountE<rsquo>s BPA mode and will allow bidirectional or
egress-only access. You can create BPA exclusions for VPCs and subnets
even when BPA is not enabled on the account to ensure that there is no
traffic disruption to the exclusions when VPC BPA is turned on. To
learn more about VPC BPA, see Block public access to VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 DeleteVpcEndpointConnectionNotifications

=over

=item ConnectionNotificationIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpointConnectionNotifications>

Returns: a L<Paws::EC2::DeleteVpcEndpointConnectionNotificationsResult> instance

Deletes the specified VPC endpoint connection notifications.


=head2 DeleteVpcEndpoints

=over

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpoints>

Returns: a L<Paws::EC2::DeleteVpcEndpointsResult> instance

Deletes the specified VPC endpoints.

When you delete a gateway endpoint, we delete the endpoint routes in
the route tables for the endpoint.

When you delete a Gateway Load Balancer endpoint, we delete its
endpoint network interfaces. You can only delete Gateway Load Balancer
endpoints when the routes that are associated with the endpoint are
deleted.

When you delete an interface endpoint, we delete its endpoint network
interfaces.


=head2 DeleteVpcEndpointServiceConfigurations

=over

=item ServiceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpointServiceConfigurations>

Returns: a L<Paws::EC2::DeleteVpcEndpointServiceConfigurationsResult> instance

Deletes the specified VPC endpoint service configurations. Before you
can delete an endpoint service configuration, you must reject any
C<Available> or C<PendingAcceptance> interface endpoint connections
that are attached to the service.


=head2 DeleteVpcPeeringConnection

=over

=item VpcPeeringConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcPeeringConnection>

Returns: a L<Paws::EC2::DeleteVpcPeeringConnectionResult> instance

Deletes a VPC peering connection. Either the owner of the requester VPC
or the owner of the accepter VPC can delete the VPC peering connection
if it's in the C<active> state. The owner of the requester VPC can
delete a VPC peering connection in the C<pending-acceptance> state. You
cannot delete a VPC peering connection that's in the C<failed> or
C<rejected> state.


=head2 DeleteVpnConnection

=over

=item VpnConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnection>

Returns: nothing

Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend
that you detach the virtual private gateway from the VPC and delete the
VPC before deleting the VPN connection. If you believe that the tunnel
credentials for your VPN connection have been compromised, you can
delete the VPN connection and create a new one that has new keys,
without needing to delete the VPC or virtual private gateway. If you
create a new VPN connection, you must reconfigure the customer gateway
device using the new configuration information returned with the new
VPN connection ID.

For certificate-based authentication, delete all Certificate Manager
(ACM) private certificates used for the Amazon Web Services-side tunnel
endpoints for the VPN connection before deleting the VPN connection.


=head2 DeleteVpnConnectionRoute

=over

=item DestinationCidrBlock => Str

=item VpnConnectionId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnectionRoute>

Returns: nothing

Deletes the specified static route associated with a VPN connection
between an existing virtual private gateway and a VPN customer gateway.
The static route allows traffic to be routed from the virtual private
gateway to the VPN customer gateway.


=head2 DeleteVpnGateway

=over

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnGateway>

Returns: nothing

Deletes the specified virtual private gateway. You must first detach
the virtual private gateway from the VPC. Note that you don't need to
delete the virtual private gateway if you plan to delete and recreate
the VPN connection between your VPC and your network.


=head2 DeprovisionByoipCidr

=over

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeprovisionByoipCidr>

Returns: a L<Paws::EC2::DeprovisionByoipCidrResult> instance

Releases the specified address range that you provisioned for use with
your Amazon Web Services resources through bring your own IP addresses
(BYOIP) and deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it
using WithdrawByoipCidr and you must not have any IP addresses
allocated from its address range.


=head2 DeprovisionIpamByoasn

=over

=item Asn => Str

=item IpamId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeprovisionIpamByoasn>

Returns: a L<Paws::EC2::DeprovisionIpamByoasnResult> instance

Deprovisions your Autonomous System Number (ASN) from your Amazon Web
Services account. This action can only be called after any BYOIP CIDR
associations are removed from your Amazon Web Services account with
DisassociateIpamByoasn
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIpamByoasn.html).
For more information, see Tutorial: Bring your ASN to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
the I<Amazon VPC IPAM guide>.


=head2 DeprovisionIpamPoolCidr

=over

=item IpamPoolId => Str

=item [Cidr => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeprovisionIpamPoolCidr>

Returns: a L<Paws::EC2::DeprovisionIpamPoolCidrResult> instance

Deprovision a CIDR provisioned from an IPAM pool. If you deprovision a
CIDR from a pool that has a source pool, the CIDR is recycled back into
the source pool. For more information, see Deprovision pool CIDRs
(https://docs.aws.amazon.com/vpc/latest/ipam/depro-pool-cidr-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 DeprovisionPublicIpv4PoolCidr

=over

=item Cidr => Str

=item PoolId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeprovisionPublicIpv4PoolCidr>

Returns: a L<Paws::EC2::DeprovisionPublicIpv4PoolCidrResult> instance

Deprovision a CIDR from a public IPv4 pool.


=head2 DeregisterImage

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterImage>

Returns: a L<Paws::EC2::DeregisterImageResult> instance

Deregisters the specified AMI. A deregistered AMI can't be used to
launch new instances.

If a deregistered EBS-backed AMI matches a Recycle Bin retention rule,
it moves to the Recycle Bin for the specified retention period. It can
be restored before its retention period expires, after which it is
permanently deleted. If the deregistered AMI doesn't match a retention
rule, it is permanently deleted immediately. For more information, see
Recycle Bin
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the I<Amazon EBS User Guide>.

Deregistering an AMI does not delete the following:

=over

=item *

Instances already launched from the AMI. You'll continue to incur usage
costs for the instances until you terminate them.

=item *

For EBS-backed AMIs: The snapshots that were created of the root and
data volumes of the instance during AMI creation. You'll continue to
incur snapshot storage costs.

=item *

For instance store-backed AMIs: The files uploaded to Amazon S3 during
AMI creation. You'll continue to incur S3 storage costs.

=back

For more information, see Deregister an Amazon EC2 AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html)
in the I<Amazon EC2 User Guide>.


=head2 DeregisterInstanceEventNotificationAttributes

=over

=item InstanceTagAttribute => L<Paws::EC2::DeregisterInstanceTagAttributeRequest>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::DeregisterInstanceEventNotificationAttributesResult> instance

Deregisters tag keys to prevent tags that have the specified tag keys
from being included in scheduled event notifications for resources in
the Region.


=head2 DeregisterTransitGatewayMulticastGroupMembers

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers>

Returns: a L<Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult> instance

Deregisters the specified members (network interfaces) from the transit
gateway multicast group.


=head2 DeregisterTransitGatewayMulticastGroupSources

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterTransitGatewayMulticastGroupSources>

Returns: a L<Paws::EC2::DeregisterTransitGatewayMulticastGroupSourcesResult> instance

Deregisters the specified sources (network interfaces) from the transit
gateway multicast group.


=head2 DescribeAccountAttributes

=over

=item [AttributeNames => ArrayRef[Str|Undef]]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAccountAttributes>

Returns: a L<Paws::EC2::DescribeAccountAttributesResult> instance

Describes attributes of your Amazon Web Services account. The following
are the supported account attributes:

=over

=item *

C<default-vpc>: The ID of the default VPC for your account, or C<none>.

=item *

C<max-instances>: This attribute is no longer supported. The returned
value does not reflect your actual vCPU limit for running On-Demand
Instances. For more information, see On-Demand Instance Limits
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits)
in the I<Amazon Elastic Compute Cloud User Guide>.

=item *

C<max-elastic-ips>: The maximum number of Elastic IP addresses that you
can allocate.

=item *

C<supported-platforms>: This attribute is deprecated.

=item *

C<vpc-max-elastic-ips>: The maximum number of Elastic IP addresses that
you can allocate.

=item *

C<vpc-max-security-groups-per-interface>: The maximum number of
security groups that you can assign to a network interface.

=back

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeAddresses

=over

=item [AllocationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [PublicIps => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAddresses>

Returns: a L<Paws::EC2::DescribeAddressesResult> instance

Describes the specified Elastic IP addresses or all of your Elastic IP
addresses.


=head2 DescribeAddressesAttribute

=over

=item [AllocationIds => ArrayRef[Str|Undef]]

=item [Attribute => Str]

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAddressesAttribute>

Returns: a L<Paws::EC2::DescribeAddressesAttributeResult> instance

Describes the attributes of the specified Elastic IP addresses. For
requirements, see Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 DescribeAddressTransfers

=over

=item [AllocationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAddressTransfers>

Returns: a L<Paws::EC2::DescribeAddressTransfersResult> instance

Describes an Elastic IP address transfer. For more information, see
Transfer Elastic IP addresses
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
in the I<Amazon VPC User Guide>.

When you transfer an Elastic IP address, there is a two-step handshake
between the source and transfer Amazon Web Services accounts. When the
source account starts the transfer, the transfer account has seven days
to accept the Elastic IP address transfer. During those seven days, the
source account can view the pending transfer by using this action.
After seven days, the transfer expires and ownership of the Elastic IP
address returns to the source account. Accepted transfers are visible
to the source account for 14 days after the transfers have been
accepted.


=head2 DescribeAggregateIdFormat

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAggregateIdFormat>

Returns: a L<Paws::EC2::DescribeAggregateIdFormatResult> instance

Describes the longer ID format settings for all resource types in a
specific Region. This request is useful for performing a quick audit to
determine whether a specific Region is fully opted in for longer IDs
(17-character IDs).

This request only returns information about resource types that support
longer IDs.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.


=head2 DescribeAvailabilityZones

=over

=item [AllAvailabilityZones => Bool]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ZoneIds => ArrayRef[Str|Undef]]

=item [ZoneNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAvailabilityZones>

Returns: a L<Paws::EC2::DescribeAvailabilityZonesResult> instance

Describes the Availability Zones, Local Zones, and Wavelength Zones
that are available to you.

For more information about Availability Zones, Local Zones, and
Wavelength Zones, see Regions and zones
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
in the I<Amazon EC2 User Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeAwsNetworkPerformanceMetricSubscriptions

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptions>

Returns: a L<Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptionsResult> instance

Describes the current Infrastructure Performance metric subscriptions.


=head2 DescribeBundleTasks

=over

=item [BundleIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeBundleTasks>

Returns: a L<Paws::EC2::DescribeBundleTasksResult> instance

Describes the specified bundle tasks or all of your bundle tasks.

Completed bundle tasks are listed for only a limited time. If your
bundle task is no longer in the list, you can still register an AMI
from it. Just use C<RegisterImage> with the Amazon S3 bucket name and
image manifest name you provided to the bundle task.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeByoipCidrs

=over

=item MaxResults => Int

=item [DryRun => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeByoipCidrs>

Returns: a L<Paws::EC2::DescribeByoipCidrsResult> instance

Describes the IP address ranges that were specified in calls to
ProvisionByoipCidr.

To describe the address pools that were created when you provisioned
the address ranges, use DescribePublicIpv4Pools or DescribeIpv6Pools.


=head2 DescribeCapacityBlockExtensionHistory

=over

=item [CapacityReservationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityBlockExtensionHistory>

Returns: a L<Paws::EC2::DescribeCapacityBlockExtensionHistoryResult> instance

Describes the events for the specified Capacity Block extension during
the specified time.


=head2 DescribeCapacityBlockExtensionOfferings

=over

=item CapacityBlockExtensionDurationHours => Int

=item CapacityReservationId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityBlockExtensionOfferings>

Returns: a L<Paws::EC2::DescribeCapacityBlockExtensionOfferingsResult> instance

Describes Capacity Block extension offerings available for purchase in
the Amazon Web Services Region that you're currently using.


=head2 DescribeCapacityBlockOfferings

=over

=item CapacityDurationHours => Int

=item [DryRun => Bool]

=item [EndDateRange => Str]

=item [InstanceCount => Int]

=item [InstanceType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartDateRange => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityBlockOfferings>

Returns: a L<Paws::EC2::DescribeCapacityBlockOfferingsResult> instance

Describes Capacity Block offerings available for purchase in the Amazon
Web Services Region that you're currently using. With Capacity Blocks,
you purchase a specific instance type for a period of time.

To search for an available Capacity Block offering, you specify a
reservation duration and instance count.


=head2 DescribeCapacityReservationBillingRequests

=over

=item Role => Str

=item [CapacityReservationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityReservationBillingRequests>

Returns: a L<Paws::EC2::DescribeCapacityReservationBillingRequestsResult> instance

Describes a request to assign the billing of the unused capacity of a
Capacity Reservation. For more information, see Billing assignment for
shared Amazon EC2 Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/transfer-billing.html).


=head2 DescribeCapacityReservationFleets

=over

=item [CapacityReservationFleetIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityReservationFleets>

Returns: a L<Paws::EC2::DescribeCapacityReservationFleetsResult> instance

Describes one or more Capacity Reservation Fleets.


=head2 DescribeCapacityReservations

=over

=item [CapacityReservationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityReservations>

Returns: a L<Paws::EC2::DescribeCapacityReservationsResult> instance

Describes one or more of your Capacity Reservations. The results
describe only the Capacity Reservations in the Amazon Web Services
Region that you're currently using.


=head2 DescribeCarrierGateways

=over

=item [CarrierGatewayIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCarrierGateways>

Returns: a L<Paws::EC2::DescribeCarrierGatewaysResult> instance

Describes one or more of your carrier gateways.


=head2 DescribeClassicLinkInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClassicLinkInstances>

Returns: a L<Paws::EC2::DescribeClassicLinkInstancesResult> instance

This action is deprecated.

Describes your linked EC2-Classic instances. This request only returns
information about EC2-Classic instances linked to a VPC through
ClassicLink. You cannot use this request to return information about
other instances.


=head2 DescribeClientVpnAuthorizationRules

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnAuthorizationRules>

Returns: a L<Paws::EC2::DescribeClientVpnAuthorizationRulesResult> instance

Describes the authorization rules for a specified Client VPN endpoint.


=head2 DescribeClientVpnConnections

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnConnections>

Returns: a L<Paws::EC2::DescribeClientVpnConnectionsResult> instance

Describes active client connections and connections that have been
terminated within the last 60 minutes for the specified Client VPN
endpoint.


=head2 DescribeClientVpnEndpoints

=over

=item [ClientVpnEndpointIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnEndpoints>

Returns: a L<Paws::EC2::DescribeClientVpnEndpointsResult> instance

Describes one or more Client VPN endpoints in the account.


=head2 DescribeClientVpnRoutes

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnRoutes>

Returns: a L<Paws::EC2::DescribeClientVpnRoutesResult> instance

Describes the routes for the specified Client VPN endpoint.


=head2 DescribeClientVpnTargetNetworks

=over

=item ClientVpnEndpointId => Str

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnTargetNetworks>

Returns: a L<Paws::EC2::DescribeClientVpnTargetNetworksResult> instance

Describes the target networks associated with the specified Client VPN
endpoint.


=head2 DescribeCoipPools

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCoipPools>

Returns: a L<Paws::EC2::DescribeCoipPoolsResult> instance

Describes the specified customer-owned address pools or all of your
customer-owned address pools.


=head2 DescribeConversionTasks

=over

=item [ConversionTaskIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeConversionTasks>

Returns: a L<Paws::EC2::DescribeConversionTasksResult> instance

Describes the specified conversion tasks or all your conversion tasks.
For more information, see the VM Import/Export User Guide
(https://docs.aws.amazon.com/vm-import/latest/userguide/).

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).


=head2 DescribeCustomerGateways

=over

=item [CustomerGatewayIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCustomerGateways>

Returns: a L<Paws::EC2::DescribeCustomerGatewaysResult> instance

Describes one or more of your VPN customer gateways.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 DescribeDeclarativePoliciesReports

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReportIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeDeclarativePoliciesReports>

Returns: a L<Paws::EC2::DescribeDeclarativePoliciesReportsResult> instance

Describes the metadata of an account status report, including the
status of the report.

To view the full report, download it from the Amazon S3 bucket where it
was saved. Reports are accessible only when they have the C<complete>
status. Reports with other statuses (C<running>, C<cancelled>, or
C<error>) are not available in the S3 bucket. For more information
about downloading objects from an S3 bucket, see Downloading objects
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/download-objects.html)
in the I<Amazon Simple Storage Service User Guide>.

For more information, see Generating the account status report for
declarative policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_status-report.html)
in the I<Amazon Web Services Organizations User Guide>.


=head2 DescribeDhcpOptions

=over

=item [DhcpOptionsIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeDhcpOptions>

Returns: a L<Paws::EC2::DescribeDhcpOptionsResult> instance

Describes your DHCP option sets. The default is to describe all your
DHCP option sets. Alternatively, you can specify specific DHCP option
set IDs or filter the results to include only the DHCP option sets that
match specific criteria.

For more information, see DHCP option sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeEgressOnlyInternetGateways

=over

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeEgressOnlyInternetGateways>

Returns: a L<Paws::EC2::DescribeEgressOnlyInternetGatewaysResult> instance

Describes your egress-only internet gateways. The default is to
describe all your egress-only internet gateways. Alternatively, you can
specify specific egress-only internet gateway IDs or filter the results
to include only the egress-only internet gateways that match specific
criteria.


=head2 DescribeElasticGpus

=over

=item [DryRun => Bool]

=item [ElasticGpuIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeElasticGpus>

Returns: a L<Paws::EC2::DescribeElasticGpusResult> instance

Amazon Elastic Graphics reached end of life on January 8, 2024.

Describes the Elastic Graphics accelerator associated with your
instances.


=head2 DescribeExportImageTasks

=over

=item [DryRun => Bool]

=item [ExportImageTaskIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeExportImageTasks>

Returns: a L<Paws::EC2::DescribeExportImageTasksResult> instance

Describes the specified export image tasks or all of your export image
tasks.


=head2 DescribeExportTasks

=over

=item [ExportTaskIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeExportTasks>

Returns: a L<Paws::EC2::DescribeExportTasksResult> instance

Describes the specified export instance tasks or all of your export
instance tasks.


=head2 DescribeFastLaunchImages

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFastLaunchImages>

Returns: a L<Paws::EC2::DescribeFastLaunchImagesResult> instance

Describe details for Windows AMIs that are configured for Windows fast
launch.


=head2 DescribeFastSnapshotRestores

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFastSnapshotRestores>

Returns: a L<Paws::EC2::DescribeFastSnapshotRestoresResult> instance

Describes the state of fast snapshot restores for your snapshots.


=head2 DescribeFleetHistory

=over

=item FleetId => Str

=item StartTime => Str

=item [DryRun => Bool]

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleetHistory>

Returns: a L<Paws::EC2::DescribeFleetHistoryResult> instance

Describes the events for the specified EC2 Fleet during the specified
time.

EC2 Fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event. EC2 Fleet events are available for 48
hours.

For more information, see Monitor fleet events using Amazon EventBridge
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFleetInstances

=over

=item FleetId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleetInstances>

Returns: a L<Paws::EC2::DescribeFleetInstancesResult> instance

Describes the running instances for the specified EC2 Fleet.

Currently, C<DescribeFleetInstances> does not support fleets of type
C<instant>. Instead, use C<DescribeFleets>, specifying the C<instant>
fleet ID in the request.

For more information, see Describe your EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFleets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [FleetIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleets>

Returns: a L<Paws::EC2::DescribeFleetsResult> instance

Describes the specified EC2 Fleet or all of your EC2 Fleets.

If a fleet is of type C<instant>, you must specify the fleet ID in the
request, otherwise the fleet does not appear in the response.

For more information, see Describe your EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFlowLogs

=over

=item [DryRun => Bool]

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [FlowLogIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFlowLogs>

Returns: a L<Paws::EC2::DescribeFlowLogsResult> instance

Describes one or more flow logs.

To view the published flow log records, you must view the log
destination. For example, the CloudWatch Logs log group, the Amazon S3
bucket, or the Kinesis Data Firehose delivery stream.


=head2 DescribeFpgaImageAttribute

=over

=item Attribute => Str

=item FpgaImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImageAttribute>

Returns: a L<Paws::EC2::DescribeFpgaImageAttributeResult> instance

Describes the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 DescribeFpgaImages

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [FpgaImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImages>

Returns: a L<Paws::EC2::DescribeFpgaImagesResult> instance

Describes the Amazon FPGA Images (AFIs) available to you. These include
public AFIs, private AFIs that you own, and AFIs owned by other Amazon
Web Services accounts for which you have load permissions.


=head2 DescribeHostReservationOfferings

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxDuration => Int]

=item [MaxResults => Int]

=item [MinDuration => Int]

=item [NextToken => Str]

=item [OfferingId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservationOfferings>

Returns: a L<Paws::EC2::DescribeHostReservationOfferingsResult> instance

Describes the Dedicated Host reservations that are available to
purchase.

The results describe all of the Dedicated Host reservation offerings,
including offerings that might not match the instance family and Region
of your Dedicated Hosts. When purchasing an offering, ensure that the
instance family and Region of the offering matches that of the
Dedicated Hosts with which it is to be associated. For more information
about supported instance types, see Dedicated Hosts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeHostReservations

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [HostReservationIdSet => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservations>

Returns: a L<Paws::EC2::DescribeHostReservationsResult> instance

Describes reservations that are associated with Dedicated Hosts in your
account.


=head2 DescribeHosts

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [HostIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHosts>

Returns: a L<Paws::EC2::DescribeHostsResult> instance

Describes the specified Dedicated Hosts or all your Dedicated Hosts.

The results describe only the Dedicated Hosts in the Region you're
currently using. All listed instances consume capacity on your
Dedicated Host. Dedicated Hosts that have recently been released are
listed with the state C<released>.


=head2 DescribeIamInstanceProfileAssociations

=over

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIamInstanceProfileAssociations>

Returns: a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> instance

Describes your IAM instance profile associations.


=head2 DescribeIdentityIdFormat

=over

=item PrincipalArn => Str

=item [Resource => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIdentityIdFormat>

Returns: a L<Paws::EC2::DescribeIdentityIdFormatResult> instance

Describes the ID format settings for resources for the specified IAM
user, IAM role, or root user. For example, you can view the resource
types that are enabled for longer IDs. This request only returns
information about resource types whose ID formats can be modified; it
does not return information about other resource types. For more
information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

These settings apply to the principal specified in the request. They do
not apply to the principal that makes the request.


=head2 DescribeIdFormat

=over

=item [Resource => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIdFormat>

Returns: a L<Paws::EC2::DescribeIdFormatResult> instance

Describes the ID format settings for your resources on a per-Region
basis, for example, to view which resource types are enabled for longer
IDs. This request only returns information about resource types whose
ID formats can be modified; it does not return information about other
resource types.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

These settings apply to the IAM user who makes the request; they do not
apply to the entire Amazon Web Services account. By default, an IAM
user defaults to the same settings as the root user, unless they
explicitly override the settings by running the ModifyIdFormat command.
Resources created with longer IDs are visible to all IAM users,
regardless of these settings and provided that they have permission to
use the relevant C<Describe> command for the resource type.


=head2 DescribeImageAttribute

=over

=item Attribute => Str

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImageAttribute>

Returns: a L<Paws::EC2::ImageAttribute> instance

Describes the specified attribute of the specified AMI. You can specify
only one attribute at a time.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeImages

=over

=item [DryRun => Bool]

=item [ExecutableUsers => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [IncludeDeprecated => Bool]

=item [IncludeDisabled => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImages>

Returns: a L<Paws::EC2::DescribeImagesResult> instance

Describes the specified images (AMIs, AKIs, and ARIs) available to you
or all of the images available to you.

The images available to you include public images, private images that
you own, and private images owned by other Amazon Web Services accounts
for which you have explicit launch permissions.

Recently deregistered images appear in the returned results for a short
interval and then return empty results. After all instances that
reference a deregistered AMI are terminated, specifying the ID of the
image will eventually return an error indicating that the AMI ID cannot
be found.

When Allowed AMIs is set to C<enabled>, only allowed images are
returned in the results, with the C<imageAllowed> field set to C<true>
for each image. In C<audit-mode>, the C<imageAllowed> field is set to
C<true> for images that meet the account's Allowed AMIs criteria, and
C<false> for images that don't meet the criteria. For more information,
see EnableAllowedImagesSettings.

The Amazon EC2 API follows an eventual consistency model. This means
that the result of an API command you run that creates or modifies
resources might not be immediately available to all subsequent commands
you run. For guidance on how to manage eventual consistency, see
Eventual consistency in the Amazon EC2 API
(https://docs.aws.amazon.com/ec2/latest/devguide/eventual-consistency.html)
in the I<Amazon EC2 Developer Guide>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeImportImageTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImportTaskIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImportImageTasks>

Returns: a L<Paws::EC2::DescribeImportImageTasksResult> instance

Displays details about an import virtual machine or import snapshot
tasks that are already created.


=head2 DescribeImportSnapshotTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImportTaskIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImportSnapshotTasks>

Returns: a L<Paws::EC2::DescribeImportSnapshotTasksResult> instance

Describes your import snapshot tasks.


=head2 DescribeInstanceAttribute

=over

=item Attribute => Str

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceAttribute>

Returns: a L<Paws::EC2::InstanceAttribute> instance

Describes the specified attribute of the specified instance. You can
specify only one attribute at a time.


=head2 DescribeInstanceConnectEndpoints

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceConnectEndpointIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceConnectEndpoints>

Returns: a L<Paws::EC2::DescribeInstanceConnectEndpointsResult> instance

Describes the specified EC2 Instance Connect Endpoints or all EC2
Instance Connect Endpoints.


=head2 DescribeInstanceCreditSpecifications

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceCreditSpecifications>

Returns: a L<Paws::EC2::DescribeInstanceCreditSpecificationsResult> instance

Describes the credit option for CPU usage of the specified burstable
performance instances. The credit options are C<standard> and
C<unlimited>.

If you do not specify an instance ID, Amazon EC2 returns burstable
performance instances with the C<unlimited> credit option, as well as
instances that were previously configured as T2, T3, and T3a with the
C<unlimited> credit option. For example, if you resize a T2 instance,
while it is configured as C<unlimited>, to an M4 instance, Amazon EC2
returns the M4 instance.

If you specify one or more instance IDs, Amazon EC2 returns the credit
option (C<standard> or C<unlimited>) of those instances. If you specify
an instance ID that is not valid, such as an instance that is not a
burstable performance instance, an error is returned.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

If an Availability Zone is experiencing a service disruption and you
specify instance IDs in the affected zone, or do not specify any
instance IDs at all, the call fails. If you specify only instance IDs
in an unaffected zone, the call works normally.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeInstanceEventNotificationAttributes

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::DescribeInstanceEventNotificationAttributesResult> instance

Describes the tag keys that are registered to appear in scheduled event
notifications for resources in the current Region.


=head2 DescribeInstanceEventWindows

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceEventWindowIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceEventWindows>

Returns: a L<Paws::EC2::DescribeInstanceEventWindowsResult> instance

Describes the specified event windows or all event windows.

If you specify event window IDs, the output includes information for
only the specified event windows. If you specify filters, the output
includes information for only those event windows that meet the filter
criteria. If you do not specify event windows IDs or filters, the
output includes information for all event windows, which can affect
performance. We recommend that you use pagination to ensure that the
operation returns quickly and successfully.

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeInstanceImageMetadata

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceImageMetadata>

Returns: a L<Paws::EC2::DescribeInstanceImageMetadataResult> instance

Describes the AMI that was used to launch an instance, even if the AMI
is deprecated, deregistered, made private (no longer public or shared
with your account), or not allowed.

If you specify instance IDs, the output includes information for only
the specified instances. If you specify filters, the output includes
information for only those instances that meet the filter criteria. If
you do not specify instance IDs or filters, the output includes
information for all instances, which can affect performance.

If you specify an instance ID that is not valid, an instance that
doesn't exist, or an instance that you do not own, an error
(C<InvalidInstanceID.NotFound>) is returned.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

In the rare case where an Availability Zone is experiencing a service
disruption and you specify instance IDs that are in the affected
Availability Zone, or do not specify any instance IDs at all, the call
fails. If you specify only instance IDs that are in an unaffected
Availability Zone, the call works normally.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstances>

Returns: a L<Paws::EC2::DescribeInstancesResult> instance

Describes the specified instances or all instances.

If you specify instance IDs, the output includes information for only
the specified instances. If you specify filters, the output includes
information for only those instances that meet the filter criteria. If
you do not specify instance IDs or filters, the output includes
information for all instances, which can affect performance. We
recommend that you use pagination to ensure that the operation returns
quickly and successfully.

If you specify an instance ID that is not valid, an error is returned.
If you specify an instance that you do not own, it is not included in
the output.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

If you describe instances in the rare case where an Availability Zone
is experiencing a service disruption and you specify instance IDs that
are in the affected zone, or do not specify any instance IDs at all,
the call fails. If you describe instances and specify only instance IDs
that are in an unaffected zone, the call works normally.

The Amazon EC2 API follows an eventual consistency model. This means
that the result of an API command you run that creates or modifies
resources might not be immediately available to all subsequent commands
you run. For guidance on how to manage eventual consistency, see
Eventual consistency in the Amazon EC2 API
(https://docs.aws.amazon.com/ec2/latest/devguide/eventual-consistency.html)
in the I<Amazon EC2 Developer Guide>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeInstanceStatus

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IncludeAllInstances => Bool]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceStatus>

Returns: a L<Paws::EC2::DescribeInstanceStatusResult> instance

Describes the status of the specified instances or all of your
instances. By default, only running instances are described, unless you
specifically indicate to return the status of all instances.

Instance status includes the following components:

=over

=item *

B<Status checks> - Amazon EC2 performs status checks on running EC2
instances to identify hardware and software issues. For more
information, see Status checks for your instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html)
and Troubleshoot instances with failed status checks
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html)
in the I<Amazon EC2 User Guide>.

=item *

B<Scheduled events> - Amazon EC2 can schedule events (such as reboot,
stop, or terminate) for your instances related to hardware issues,
software updates, or system maintenance. For more information, see
Scheduled events for your instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html)
in the I<Amazon EC2 User Guide>.

=item *

B<Instance state> - You can manage your instances from the moment you
launch them through their termination. For more information, see
Instance lifecycle
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

=back

The Amazon EC2 API follows an eventual consistency model. This means
that the result of an API command you run that creates or modifies
resources might not be immediately available to all subsequent commands
you run. For guidance on how to manage eventual consistency, see
Eventual consistency in the Amazon EC2 API
(https://docs.aws.amazon.com/ec2/latest/devguide/eventual-consistency.html)
in the I<Amazon EC2 Developer Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeInstanceTopology

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [GroupNames => ArrayRef[Str|Undef]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceTopology>

Returns: a L<Paws::EC2::DescribeInstanceTopologyResult> instance

Describes a tree-based hierarchy that represents the physical host
placement of your EC2 instances within an Availability Zone or Local
Zone. You can use this information to determine the relative proximity
of your EC2 instances within the Amazon Web Services network to support
your tightly coupled workloads.

B<Limitations>

=over

=item *

Supported zones

=over

=item *

Availability Zone

=item *

Local Zone

=back

=item *

Supported instance types

=over

=item *

C<hpc6a.48xlarge> | C<hpc6id.32xlarge> | C<hpc7a.12xlarge> |
C<hpc7a.24xlarge> | C<hpc7a.48xlarge> | C<hpc7a.96xlarge> |
C<hpc7g.4xlarge> | C<hpc7g.8xlarge> | C<hpc7g.16xlarge>

=item *

C<p3dn.24xlarge> | C<p4d.24xlarge> | C<p4de.24xlarge> | C<p5.48xlarge>
| C<p5e.48xlarge> | C<p5en.48xlarge>

=item *

C<trn1.2xlarge> | C<trn1.32xlarge> | C<trn1n.32xlarge> |
C<trn2.48xlarge> | C<trn2u.48xlarge>

=back

=back

For more information, see Amazon EC2 instance topology
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-topology.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeInstanceTypeOfferings

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceTypeOfferings>

Returns: a L<Paws::EC2::DescribeInstanceTypeOfferingsResult> instance

Lists the instance types that are offered for the specified location.
If no location is specified, the default is to list the instance types
that are offered in the current Region.


=head2 DescribeInstanceTypes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceTypes>

Returns: a L<Paws::EC2::DescribeInstanceTypesResult> instance

Describes the specified instance types. By default, all instance types
for the current Region are described. Alternatively, you can filter the
results.


=head2 DescribeInternetGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InternetGatewayIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInternetGateways>

Returns: a L<Paws::EC2::DescribeInternetGatewaysResult> instance

Describes your internet gateways. The default is to describe all your
internet gateways. Alternatively, you can specify specific internet
gateway IDs or filter the results to include only the internet gateways
that match specific criteria.


=head2 DescribeIpamByoasn

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamByoasn>

Returns: a L<Paws::EC2::DescribeIpamByoasnResult> instance

Describes your Autonomous System Numbers (ASNs), their provisioning
statuses, and the BYOIP CIDRs with which they are associated. For more
information, see Tutorial: Bring your ASN to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
the I<Amazon VPC IPAM guide>.


=head2 DescribeIpamExternalResourceVerificationTokens

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamExternalResourceVerificationTokenIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamExternalResourceVerificationTokens>

Returns: a L<Paws::EC2::DescribeIpamExternalResourceVerificationTokensResult> instance

Describe verification tokens. A verification token is an Amazon Web
Services-generated random value that you can use to prove ownership of
an external resource. For example, you can use a verification token to
validate that you control a public IP address range when you bring an
IP address range to Amazon Web Services (BYOIP).


=head2 DescribeIpamPools

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamPoolIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamPools>

Returns: a L<Paws::EC2::DescribeIpamPoolsResult> instance

Get information about your IPAM pools.


=head2 DescribeIpamResourceDiscoveries

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamResourceDiscoveryIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamResourceDiscoveries>

Returns: a L<Paws::EC2::DescribeIpamResourceDiscoveriesResult> instance

Describes IPAM resource discoveries. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.


=head2 DescribeIpamResourceDiscoveryAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamResourceDiscoveryAssociationIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamResourceDiscoveryAssociations>

Returns: a L<Paws::EC2::DescribeIpamResourceDiscoveryAssociationsResult> instance

Describes resource discovery association with an Amazon VPC IPAM. An
associated resource discovery is a resource discovery that has been
associated with an IPAM..


=head2 DescribeIpams

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpams>

Returns: a L<Paws::EC2::DescribeIpamsResult> instance

Get information about your IPAM pools.

For more information, see What is IPAM?
(https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 DescribeIpamScopes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamScopeIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpamScopes>

Returns: a L<Paws::EC2::DescribeIpamScopesResult> instance

Get information about your IPAM scopes.


=head2 DescribeIpv6Pools

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpv6Pools>

Returns: a L<Paws::EC2::DescribeIpv6PoolsResult> instance

Describes your IPv6 address pools.


=head2 DescribeKeyPairs

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IncludePublicKey => Bool]

=item [KeyNames => ArrayRef[Str|Undef]]

=item [KeyPairIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeKeyPairs>

Returns: a L<Paws::EC2::DescribeKeyPairsResult> instance

Describes the specified key pairs or all of your key pairs.

For more information about key pairs, see Amazon EC2 key pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeLaunchTemplates

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LaunchTemplateIds => ArrayRef[Str|Undef]]

=item [LaunchTemplateNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLaunchTemplates>

Returns: a L<Paws::EC2::DescribeLaunchTemplatesResult> instance

Describes one or more launch templates.


=head2 DescribeLaunchTemplateVersions

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]

=item [MaxResults => Int]

=item [MaxVersion => Str]

=item [MinVersion => Str]

=item [NextToken => Str]

=item [ResolveAlias => Bool]

=item [Versions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLaunchTemplateVersions>

Returns: a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> instance

Describes one or more versions of a specified launch template. You can
describe all versions, individual versions, or a range of versions. You
can also describe all the latest versions or all the default versions
of all the launch templates in your account.


=head2 DescribeLocalGatewayRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTables>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTablesResult> instance

Describes one or more local gateway route tables. By default, all local
gateway route tables are described. Alternatively, you can filter the
results.


=head2 DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> instance

Describes the associations between virtual interface groups and local
gateway route tables.


=head2 DescribeLocalGatewayRouteTableVpcAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociations>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociationsResult> instance

Describes the specified associations between VPCs and local gateway
route tables.


=head2 DescribeLocalGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGateways>

Returns: a L<Paws::EC2::DescribeLocalGatewaysResult> instance

Describes one or more local gateways. By default, all local gateways
are described. Alternatively, you can filter the results.


=head2 DescribeLocalGatewayVirtualInterfaceGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroups>

Returns: a L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroupsResult> instance

Describes the specified local gateway virtual interface groups.


=head2 DescribeLocalGatewayVirtualInterfaces

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayVirtualInterfaces>

Returns: a L<Paws::EC2::DescribeLocalGatewayVirtualInterfacesResult> instance

Describes the specified local gateway virtual interfaces.


=head2 DescribeLockedSnapshots

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLockedSnapshots>

Returns: a L<Paws::EC2::DescribeLockedSnapshotsResult> instance

Describes the lock status for a snapshot.


=head2 DescribeMacHosts

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [HostIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeMacHosts>

Returns: a L<Paws::EC2::DescribeMacHostsResult> instance

Describes the specified EC2 Mac Dedicated Host or all of your EC2 Mac
Dedicated Hosts.


=head2 DescribeMacModificationTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MacModificationTaskIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeMacModificationTasks>

Returns: a L<Paws::EC2::DescribeMacModificationTasksResult> instance

Describes a System Integrity Protection (SIP) modification task or
volume ownership delegation task for an Amazon EC2 Mac instance. For
more information, see Configure SIP for Amazon EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/mac-sip-settings.html#mac-sip-configure)
in the I<Amazon EC2 User Guide>.


=head2 DescribeManagedPrefixLists

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrefixListIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeManagedPrefixLists>

Returns: a L<Paws::EC2::DescribeManagedPrefixListsResult> instance

Describes your managed prefix lists and any Amazon Web Services-managed
prefix lists.

To view the entries for your prefix list, use
GetManagedPrefixListEntries.


=head2 DescribeMovingAddresses

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PublicIps => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeMovingAddresses>

Returns: a L<Paws::EC2::DescribeMovingAddressesResult> instance

This action is deprecated.

Describes your Elastic IP addresses that are being moved from or being
restored to the EC2-Classic platform. This request does not return
information about any other Elastic IP addresses in your account.


=head2 DescribeNatGateways

=over

=item [DryRun => Bool]

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NatGatewayIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNatGateways>

Returns: a L<Paws::EC2::DescribeNatGatewaysResult> instance

Describes your NAT gateways. The default is to describe all your NAT
gateways. Alternatively, you can specify specific NAT gateway IDs or
filter the results to include only the NAT gateways that match specific
criteria.


=head2 DescribeNetworkAcls

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkAclIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkAcls>

Returns: a L<Paws::EC2::DescribeNetworkAclsResult> instance

Describes your network ACLs. The default is to describe all your
network ACLs. Alternatively, you can specify specific network ACL IDs
or filter the results to include only the network ACLs that match
specific criteria.

For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeNetworkInsightsAccessScopeAnalyses

=over

=item [AnalysisStartTimeBegin => Str]

=item [AnalysisStartTimeEnd => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsAccessScopeAnalysisIds => ArrayRef[Str|Undef]]

=item [NetworkInsightsAccessScopeId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsAccessScopeAnalyses>

Returns: a L<Paws::EC2::DescribeNetworkInsightsAccessScopeAnalysesResult> instance

Describes the specified Network Access Scope analyses.


=head2 DescribeNetworkInsightsAccessScopes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsAccessScopeIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsAccessScopes>

Returns: a L<Paws::EC2::DescribeNetworkInsightsAccessScopesResult> instance

Describes the specified Network Access Scopes.


=head2 DescribeNetworkInsightsAnalyses

=over

=item [AnalysisEndTime => Str]

=item [AnalysisStartTime => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsAnalysisIds => ArrayRef[Str|Undef]]

=item [NetworkInsightsPathId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsAnalyses>

Returns: a L<Paws::EC2::DescribeNetworkInsightsAnalysesResult> instance

Describes one or more of your network insights analyses.


=head2 DescribeNetworkInsightsPaths

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsPathIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsPaths>

Returns: a L<Paws::EC2::DescribeNetworkInsightsPathsResult> instance

Describes one or more of your paths.


=head2 DescribeNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [Attribute => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaceAttribute>

Returns: a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> instance

Describes a network interface attribute. You can specify only one
attribute at a time.


=head2 DescribeNetworkInterfacePermissions

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInterfacePermissionIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfacePermissions>

Returns: a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> instance

Describes the permissions for your network interfaces.


=head2 DescribeNetworkInterfaces

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaces>

Returns: a L<Paws::EC2::DescribeNetworkInterfacesResult> instance

Describes the specified network interfaces or all your network
interfaces.

If you have a large number of network interfaces, the operation fails
unless you use pagination or one of the following filters: C<group-id>,
C<mac-address>, C<private-dns-name>, C<private-ip-address>,
C<subnet-id>, or C<vpc-id>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.


=head2 DescribeOutpostLags

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OutpostLagIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeOutpostLags>

Returns: a L<Paws::EC2::DescribeOutpostLagsResult> instance

Describes the Outposts link aggregation groups (LAGs).

LAGs are only available for second-generation Outposts racks at this
time.


=head2 DescribePlacementGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [GroupIds => ArrayRef[Str|Undef]]

=item [GroupNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePlacementGroups>

Returns: a L<Paws::EC2::DescribePlacementGroupsResult> instance

Describes the specified placement groups or all of your placement
groups.

To describe a specific placement group that is I<shared> with your
account, you must specify the ID of the placement group using the
C<GroupId> parameter. Specifying the name of a I<shared> placement
group using the C<GroupNames> parameter will result in an error.

For more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribePrefixLists

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrefixListIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePrefixLists>

Returns: a L<Paws::EC2::DescribePrefixListsResult> instance

Describes available Amazon Web Services services in a prefix list
format, which includes the prefix list name and prefix list ID of the
service and the IP address range for the service.

We recommend that you use DescribeManagedPrefixLists instead.


=head2 DescribePrincipalIdFormat

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePrincipalIdFormat>

Returns: a L<Paws::EC2::DescribePrincipalIdFormatResult> instance

Describes the ID format settings for the root user and all IAM roles
and IAM users that have explicitly specified a longer ID (17-character
ID) preference.

By default, all IAM roles and IAM users default to the same ID settings
as the root user, unless they explicitly override the settings. This
request is useful for identifying those IAM users and IAM roles that
have overridden the default ID settings.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.


=head2 DescribePublicIpv4Pools

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePublicIpv4Pools>

Returns: a L<Paws::EC2::DescribePublicIpv4PoolsResult> instance

Describes the specified IPv4 address pools.


=head2 DescribeRegions

=over

=item [AllRegions => Bool]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [RegionNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRegions>

Returns: a L<Paws::EC2::DescribeRegionsResult> instance

Describes the Regions that are enabled for your account, or all
Regions.

For a list of the Regions supported by Amazon EC2, see Amazon EC2
service endpoints
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-endpoints.html).

For information about enabling and disabling Regions for your account,
see Specify which Amazon Web Services Regions your account can use
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html)
in the I<Amazon Web Services Account Management Reference Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeReplaceRootVolumeTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReplaceRootVolumeTasks>

Returns: a L<Paws::EC2::DescribeReplaceRootVolumeTasksResult> instance

Describes a root volume replacement task. For more information, see
Replace a root volume
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeReservedInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [OfferingClass => Str]

=item [OfferingType => Str]

=item [ReservedInstancesIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstances>

Returns: a L<Paws::EC2::DescribeReservedInstancesResult> instance

Describes one or more of the Reserved Instances that you purchased.

For more information about Reserved Instances, see Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
in the I<Amazon EC2 User Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeReservedInstancesListings

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ReservedInstancesId => Str]

=item [ReservedInstancesListingId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesListings>

Returns: a L<Paws::EC2::DescribeReservedInstancesListingsResult> instance

Describes your account's Reserved Instance listings in the Reserved
Instance Marketplace.

The Reserved Instance Marketplace matches sellers who want to resell
Reserved Instance capacity that they no longer need with buyers who
want to purchase additional capacity. Reserved Instances bought and
sold through the Reserved Instance Marketplace work like any other
Reserved Instances.

As a seller, you choose to list some or all of your Reserved Instances,
and you specify the upfront price to receive for them. Your Reserved
Instances are then listed in the Reserved Instance Marketplace and are
available for purchase.

As a buyer, you specify the configuration of the Reserved Instance to
purchase, and the Marketplace matches what you're searching for with
what's available. The Marketplace first sells the lowest priced
Reserved Instances to you, and continues to sell available Reserved
Instance listings to you until your demand is met. You are charged
based on the total price of all of the listings that you purchase.

For more information, see Sell in the Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeReservedInstancesModifications

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [NextToken => Str]

=item [ReservedInstancesModificationIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesModifications>

Returns: a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance

Describes the modifications made to your Reserved Instances. If no
parameter is specified, information about all your Reserved Instances
modification requests is returned. If a modification ID is specified,
only information about the specific modification is returned.

For more information, see Modify Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
in the I<Amazon EC2 User Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeReservedInstancesOfferings

=over

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IncludeMarketplace => Bool]

=item [InstanceTenancy => Str]

=item [InstanceType => Str]

=item [MaxDuration => Int]

=item [MaxInstanceCount => Int]

=item [MaxResults => Int]

=item [MinDuration => Int]

=item [NextToken => Str]

=item [OfferingClass => Str]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedInstancesOfferingIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesOfferings>

Returns: a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance

Describes Reserved Instance offerings that are available for purchase.
With Reserved Instances, you purchase the right to launch instances for
a period of time. During that time period, you do not receive
insufficient capacity errors, and you pay a lower usage rate than the
rate charged for On-Demand instances for the actual time used.

If you have listed your own Reserved Instances for sale in the Reserved
Instance Marketplace, they will be excluded from these results. This is
to ensure that you do not purchase your own Reserved Instances.

For more information, see Sell in the Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeRouteServerEndpoints

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RouteServerEndpointIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRouteServerEndpoints>

Returns: a L<Paws::EC2::DescribeRouteServerEndpointsResult> instance

Describes one or more route server endpoints.

A route server endpoint is an Amazon Web Services-managed component
inside a subnet that facilitates BGP (Border Gateway Protocol)
(https://en.wikipedia.org/wiki/Border_Gateway_Protocol) connections
between your route server and your BGP peers.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeRouteServerPeers

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RouteServerPeerIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRouteServerPeers>

Returns: a L<Paws::EC2::DescribeRouteServerPeersResult> instance

Describes one or more route server peers.

A route server peer is a session between a route server endpoint and
the device deployed in Amazon Web Services (such as a firewall
appliance or other network security function running on an EC2
instance). The device must meet these requirements:

=over

=item *

Have an elastic network interface in the VPC

=item *

Support BGP (Border Gateway Protocol)

=item *

Can initiate BGP sessions

=back

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeRouteServers

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RouteServerIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRouteServers>

Returns: a L<Paws::EC2::DescribeRouteServersResult> instance

Describes one or more route servers.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RouteTableIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRouteTables>

Returns: a L<Paws::EC2::DescribeRouteTablesResult> instance

Describes your route tables. The default is to describe all your route
tables. Alternatively, you can specify specific route table IDs or
filter the results to include only the route tables that match specific
criteria.

Each subnet in your VPC must be associated with a route table. If a
subnet is not explicitly associated with any route table, it is
implicitly associated with the main route table. This command does not
return the subnet ID for implicit associations.

For more information, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeScheduledInstanceAvailability

=over

=item FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>

=item Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [MaxSlotDurationInHours => Int]

=item [MinSlotDurationInHours => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstanceAvailability>

Returns: a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> instance

Finds available schedules that meet the specified criteria.

You can search for an available schedule no more than 3 months in
advance. You must meet the minimum required duration of 1,200 hours per
year. For example, the minimum daily schedule is 4 hours, the minimum
weekly schedule is 24 hours, and the minimum monthly schedule is 100
hours.

After you find a schedule that meets your needs, call
PurchaseScheduledInstances to purchase Scheduled Instances with that
schedule.


=head2 DescribeScheduledInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ScheduledInstanceIds => ArrayRef[Str|Undef]]

=item [SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstances>

Returns: a L<Paws::EC2::DescribeScheduledInstancesResult> instance

Describes the specified Scheduled Instances or all your Scheduled
Instances.


=head2 DescribeSecurityGroupReferences

=over

=item GroupId => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroupReferences>

Returns: a L<Paws::EC2::DescribeSecurityGroupReferencesResult> instance

Describes the VPCs on the other side of a VPC peering or Transit
Gateway connection that are referencing the security groups you've
specified in this request.


=head2 DescribeSecurityGroupRules

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SecurityGroupRuleIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroupRules>

Returns: a L<Paws::EC2::DescribeSecurityGroupRulesResult> instance

Describes one or more of your security group rules.


=head2 DescribeSecurityGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [GroupIds => ArrayRef[Str|Undef]]

=item [GroupNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroups>

Returns: a L<Paws::EC2::DescribeSecurityGroupsResult> instance

Describes the specified security groups or all of your security groups.


=head2 DescribeSecurityGroupVpcAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroupVpcAssociations>

Returns: a L<Paws::EC2::DescribeSecurityGroupVpcAssociationsResult> instance

Describes security group VPC associations made with
AssociateSecurityGroupVpc
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateSecurityGroupVpc.html).


=head2 DescribeServiceLinkVirtualInterfaces

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceLinkVirtualInterfaceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeServiceLinkVirtualInterfaces>

Returns: a L<Paws::EC2::DescribeServiceLinkVirtualInterfacesResult> instance

Describes the Outpost service link virtual interfaces.


=head2 DescribeSnapshotAttribute

=over

=item Attribute => Str

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshotAttribute>

Returns: a L<Paws::EC2::DescribeSnapshotAttributeResult> instance

Describes the specified attribute of the specified snapshot. You can
specify only one attribute at a time.

For more information about EBS snapshots, see Amazon EBS snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-snapshots.html)
in the I<Amazon EBS User Guide>.


=head2 DescribeSnapshots

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerIds => ArrayRef[Str|Undef]]

=item [RestorableByUserIds => ArrayRef[Str|Undef]]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshots>

Returns: a L<Paws::EC2::DescribeSnapshotsResult> instance

Describes the specified EBS snapshots available to you or all of the
EBS snapshots available to you.

The snapshots available to you include public snapshots, private
snapshots that you own, and private snapshots owned by other Amazon Web
Services accounts for which you have explicit create volume
permissions.

The create volume permissions fall into the following categories:

=over

=item *

I<public>: The owner of the snapshot granted create volume permissions
for the snapshot to the C<all> group. All Amazon Web Services accounts
have create volume permissions for these snapshots.

=item *

I<explicit>: The owner of the snapshot granted create volume
permissions to a specific Amazon Web Services account.

=item *

I<implicit>: An Amazon Web Services account has implicit create volume
permissions for all snapshots it owns.

=back

The list of snapshots returned can be filtered by specifying snapshot
IDs, snapshot owners, or Amazon Web Services accounts with create
volume permissions. If no options are specified, Amazon EC2 returns all
snapshots for which you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the
specified IDs are returned. If you specify an invalid snapshot ID, an
error is returned. If you specify a snapshot ID for which you do not
have access, it is not included in the returned results.

If you specify one or more snapshot owners using the C<OwnerIds>
option, only snapshots from the specified owners and for which you have
access are returned. The results can include the Amazon Web Services
account IDs of the specified owners, C<amazon> for snapshots owned by
Amazon, or C<self> for snapshots that you own.

If you specify a list of restorable users, only snapshots with create
snapshot permissions for those users are returned. You can specify
Amazon Web Services account IDs (if you own the snapshots), C<self> for
snapshots for which you own or have explicit permissions, or C<all> for
public snapshots.

If you are describing a long list of snapshots, we recommend that you
paginate the output to make the list more manageable. For more
information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

To get the state of fast snapshot restores for a snapshot, use
DescribeFastSnapshotRestores.

For more information about EBS snapshots, see Amazon EBS snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-snapshots.html)
in the I<Amazon EBS User Guide>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.


=head2 DescribeSnapshotTierStatus

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshotTierStatus>

Returns: a L<Paws::EC2::DescribeSnapshotTierStatusResult> instance

Describes the storage tier status of one or more Amazon EBS snapshots.


=head2 DescribeSpotDatafeedSubscription

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotDatafeedSubscription>

Returns: a L<Paws::EC2::DescribeSpotDatafeedSubscriptionResult> instance

Describes the data feed for Spot Instances. For more information, see
Spot Instance data feed
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeSpotFleetInstances

=over

=item SpotFleetRequestId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetInstances>

Returns: a L<Paws::EC2::DescribeSpotFleetInstancesResponse> instance

Describes the running instances for the specified Spot Fleet.


=head2 DescribeSpotFleetRequestHistory

=over

=item SpotFleetRequestId => Str

=item StartTime => Str

=item [DryRun => Bool]

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequestHistory>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestHistoryResponse> instance

Describes the events for the specified Spot Fleet request during the
specified time.

Spot Fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event. Spot Fleet events are available for 48
hours.

For more information, see Monitor fleet events using Amazon EventBridge
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeSpotFleetRequests

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SpotFleetRequestIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequests>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance

Describes your Spot Fleet requests.

Spot Fleet requests are deleted 48 hours after they are canceled and
their instances are terminated.


=head2 DescribeSpotInstanceRequests

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SpotInstanceRequestIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotInstanceRequests>

Returns: a L<Paws::EC2::DescribeSpotInstanceRequestsResult> instance

Describes the specified Spot Instance requests.

You can use C<DescribeSpotInstanceRequests> to find a running Spot
Instance by examining the response. If the status of the Spot Instance
is C<fulfilled>, the instance ID appears in the response and contains
the identifier of the instance. Alternatively, you can use
DescribeInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances)
with a filter to look for instances where the instance lifecycle is
C<spot>.

We recommend that you set C<MaxResults> to a value between 5 and 1000
to limit the number of items returned. This paginates the output, which
makes the list more manageable and returns the items faster. If the
list of items exceeds your C<MaxResults> value, then that number of
items is returned along with a C<NextToken> value that can be passed to
a subsequent C<DescribeSpotInstanceRequests> request to retrieve the
remaining items.

Spot Instance requests are deleted four hours after they are canceled
and their instances are terminated.


=head2 DescribeSpotPriceHistory

=over

=item [AvailabilityZone => Str]

=item [DryRun => Bool]

=item [EndTime => Str]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductDescriptions => ArrayRef[Str|Undef]]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotPriceHistory>

Returns: a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance

Describes the Spot price history. For more information, see Spot
Instance pricing history
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html)
in the I<Amazon EC2 User Guide>.

When you specify a start and end time, the operation returns the prices
of the instance types within that time range. It also returns the last
price change before the start time, which is the effective price as of
the start time.


=head2 DescribeStaleSecurityGroups

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeStaleSecurityGroups>

Returns: a L<Paws::EC2::DescribeStaleSecurityGroupsResult> instance

Describes the stale security group rules for security groups referenced
across a VPC peering connection, transit gateway connection, or with a
security group VPC association. Rules are stale when they reference a
deleted security group. Rules can also be stale if they reference a
security group in a peer VPC for which the VPC peering connection has
been deleted, across a transit gateway where the transit gateway has
been deleted (or the transit gateway security group referencing feature
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-vpc-attachments.html#vpc-attachment-security)
has been disabled), or if a security group VPC association has been
disassociated.


=head2 DescribeStoreImageTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeStoreImageTasks>

Returns: a L<Paws::EC2::DescribeStoreImageTasksResult> instance

Describes the progress of the AMI store tasks. You can describe the
store tasks for specified AMIs. If you don't specify the AMIs, you get
a paginated list of store tasks from the last 31 days.

For each AMI task, the response indicates if the task is C<InProgress>,
C<Completed>, or C<Failed>. For tasks C<InProgress>, the response shows
the estimated progress as a percentage.

Tasks are listed in reverse chronological order. Currently, only tasks
from the past 31 days can be viewed.

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using
Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon EC2 User Guide>.

For more information, see Store and restore an AMI using Amazon S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeSubnets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSubnets>

Returns: a L<Paws::EC2::DescribeSubnetsResult> instance

Describes your subnets. The default is to describe all your subnets.
Alternatively, you can specify specific subnet IDs or filter the
results to include only the subnets that match specific criteria.

For more information, see Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeTags

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTags>

Returns: a L<Paws::EC2::DescribeTagsResult> instance

Describes the specified tags for your EC2 resources.

For more information about tags, see Tag your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeTrafficMirrorFilterRules

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorFilterId => Str]

=item [TrafficMirrorFilterRuleIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorFilterRules>

Returns: a L<Paws::EC2::DescribeTrafficMirrorFilterRulesResult> instance

Describe traffic mirror filters that determine the traffic that is
mirrored.


=head2 DescribeTrafficMirrorFilters

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorFilterIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorFilters>

Returns: a L<Paws::EC2::DescribeTrafficMirrorFiltersResult> instance

Describes one or more Traffic Mirror filters.


=head2 DescribeTrafficMirrorSessions

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorSessionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorSessions>

Returns: a L<Paws::EC2::DescribeTrafficMirrorSessionsResult> instance

Describes one or more Traffic Mirror sessions. By default, all Traffic
Mirror sessions are described. Alternatively, you can filter the
results.


=head2 DescribeTrafficMirrorTargets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorTargetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorTargets>

Returns: a L<Paws::EC2::DescribeTrafficMirrorTargetsResult> instance

Information about one or more Traffic Mirror targets.


=head2 DescribeTransitGatewayAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayAttachmentsResult> instance

Describes one or more attachments between resources and transit
gateways. By default, all attachments are described. Alternatively, you
can filter the results by attachment ID, attachment state, resource ID,
or resource owner.


=head2 DescribeTransitGatewayConnectPeers

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayConnectPeers>

Returns: a L<Paws::EC2::DescribeTransitGatewayConnectPeersResult> instance

Describes one or more Connect peers.


=head2 DescribeTransitGatewayConnects

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayConnects>

Returns: a L<Paws::EC2::DescribeTransitGatewayConnectsResult> instance

Describes one or more Connect attachments.


=head2 DescribeTransitGatewayMulticastDomains

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayMulticastDomains>

Returns: a L<Paws::EC2::DescribeTransitGatewayMulticastDomainsResult> instance

Describes one or more transit gateway multicast domains.


=head2 DescribeTransitGatewayPeeringAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayPeeringAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult> instance

Describes your transit gateway peering attachments.


=head2 DescribeTransitGatewayPolicyTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayPolicyTableIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayPolicyTables>

Returns: a L<Paws::EC2::DescribeTransitGatewayPolicyTablesResult> instance

Describes one or more transit gateway route policy tables.


=head2 DescribeTransitGatewayRouteTableAnnouncements

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayRouteTableAnnouncementIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayRouteTableAnnouncements>

Returns: a L<Paws::EC2::DescribeTransitGatewayRouteTableAnnouncementsResult> instance

Describes one or more transit gateway route table advertisements.


=head2 DescribeTransitGatewayRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayRouteTableIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayRouteTables>

Returns: a L<Paws::EC2::DescribeTransitGatewayRouteTablesResult> instance

Describes one or more transit gateway route tables. By default, all
transit gateway route tables are described. Alternatively, you can
filter the results.


=head2 DescribeTransitGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGateways>

Returns: a L<Paws::EC2::DescribeTransitGatewaysResult> instance

Describes one or more transit gateways. By default, all transit
gateways are described. Alternatively, you can filter the results.


=head2 DescribeTransitGatewayVpcAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayVpcAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult> instance

Describes one or more VPC attachments. By default, all VPC attachments
are described. Alternatively, you can filter the results.


=head2 DescribeTrunkInterfaceAssociations

=over

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrunkInterfaceAssociations>

Returns: a L<Paws::EC2::DescribeTrunkInterfaceAssociationsResult> instance

Describes one or more network interface trunk associations.


=head2 DescribeVerifiedAccessEndpoints

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedAccessEndpointIds => ArrayRef[Str|Undef]]

=item [VerifiedAccessGroupId => Str]

=item [VerifiedAccessInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVerifiedAccessEndpoints>

Returns: a L<Paws::EC2::DescribeVerifiedAccessEndpointsResult> instance

Describes the specified Amazon Web Services Verified Access endpoints.


=head2 DescribeVerifiedAccessGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedAccessGroupIds => ArrayRef[Str|Undef]]

=item [VerifiedAccessInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVerifiedAccessGroups>

Returns: a L<Paws::EC2::DescribeVerifiedAccessGroupsResult> instance

Describes the specified Verified Access groups.


=head2 DescribeVerifiedAccessInstanceLoggingConfigurations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedAccessInstanceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurations>

Returns: a L<Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurationsResult> instance

Describes the specified Amazon Web Services Verified Access instances.


=head2 DescribeVerifiedAccessInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedAccessInstanceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVerifiedAccessInstances>

Returns: a L<Paws::EC2::DescribeVerifiedAccessInstancesResult> instance

Describes the specified Amazon Web Services Verified Access instances.


=head2 DescribeVerifiedAccessTrustProviders

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VerifiedAccessTrustProviderIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVerifiedAccessTrustProviders>

Returns: a L<Paws::EC2::DescribeVerifiedAccessTrustProvidersResult> instance

Describes the specified Amazon Web Services Verified Access trust
providers.


=head2 DescribeVolumeAttribute

=over

=item Attribute => Str

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeAttribute>

Returns: a L<Paws::EC2::DescribeVolumeAttributeResult> instance

Describes the specified attribute of the specified volume. You can
specify only one attribute at a time.

For more information about EBS volumes, see Amazon EBS volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes.html) in
the I<Amazon EBS User Guide>.


=head2 DescribeVolumes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumes>

Returns: a L<Paws::EC2::DescribeVolumesResult> instance

Describes the specified EBS volumes or all of your EBS volumes.

If you are describing a long list of volumes, we recommend that you
paginate the output to make the list more manageable. For more
information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

For more information about EBS volumes, see Amazon EBS volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes.html) in
the I<Amazon EBS User Guide>.

We strongly recommend using only paginated requests. Unpaginated
requests are susceptible to throttling and timeouts.

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeVolumesModifications

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumesModifications>

Returns: a L<Paws::EC2::DescribeVolumesModificationsResult> instance

Describes the most recent volume modification request for the specified
EBS volumes.

For more information, see Monitor the progress of volume modifications
(https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-modifications.html)
in the I<Amazon EBS User Guide>.


=head2 DescribeVolumeStatus

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeStatus>

Returns: a L<Paws::EC2::DescribeVolumeStatusResult> instance

Describes the status of the specified volumes. Volume status provides
the result of the checks performed on your volumes to determine events
that can impair the performance of your volumes. The performance of a
volume can be affected if an issue occurs on the volume's underlying
host. If the volume's underlying host experiences a power outage or
system issue, after the system is restored, there could be data
inconsistencies on the volume. Volume events notify you if this occurs.
Volume actions notify you if any action needs to be taken in response
to the event.

The C<DescribeVolumeStatus> operation provides the following
information about the specified volumes:

I<Status>: Reflects the current status of the volume. The possible
values are C<ok>, C<impaired> , C<warning>, or C<insufficient-data>. If
all checks pass, the overall status of the volume is C<ok>. If the
check fails, the overall status is C<impaired>. If the status is
C<insufficient-data>, then the checks might still be taking place on
your volume at the time. We recommend that you retry the request. For
more information about volume status, see Monitor the status of your
volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-status.html)
in the I<Amazon EBS User Guide>.

I<Events>: Reflect the cause of a volume status and might require you
to take action. For example, if your volume returns an C<impaired>
status, then the volume event might be C<potential-data-inconsistency>.
This means that your volume has been affected by an issue with the
underlying host, has all I/O operations disabled, and might have
inconsistent data.

I<Actions>: Reflect the actions you might have to take in response to
an event. For example, if the status of the volume is C<impaired> and
the volume event shows C<potential-data-inconsistency>, then the action
shows C<enable-volume-io>. This means that you may want to enable the
I/O operations for the volume by calling the EnableVolumeIO action and
then check the volume for data consistency.

Volume status is based on the volume status checks, and does not
reflect the volume state. Therefore, volume status does not indicate
volumes in the C<error> state (for example, when a volume is incapable
of accepting I/O.)

The order of the elements in the response, including those within
nested structures, might vary. Applications should not assume the
elements appear in a particular order.


=head2 DescribeVpcAttribute

=over

=item Attribute => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcAttribute>

Returns: a L<Paws::EC2::DescribeVpcAttributeResult> instance

Describes the specified attribute of the specified VPC. You can specify
only one attribute at a time.


=head2 DescribeVpcBlockPublicAccessExclusions

=over

=item [DryRun => Bool]

=item [ExclusionIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcBlockPublicAccessExclusions>

Returns: a L<Paws::EC2::DescribeVpcBlockPublicAccessExclusionsResult> instance

Describe VPC Block Public Access (BPA) exclusions. A VPC BPA exclusion
is a mode that can be applied to a single VPC or subnet that exempts it
from the accountE<rsquo>s BPA mode and will allow bidirectional or
egress-only access. You can create BPA exclusions for VPCs and subnets
even when BPA is not enabled on the account to ensure that there is no
traffic disruption to the exclusions when VPC BPA is turned on. To
learn more about VPC BPA, see Block public access to VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeVpcBlockPublicAccessOptions

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcBlockPublicAccessOptions>

Returns: a L<Paws::EC2::DescribeVpcBlockPublicAccessOptionsResult> instance

Describe VPC Block Public Access (BPA) options. VPC Block Public Access
(BPA) enables you to block resources in VPCs and subnets that you own
in a Region from reaching or being reached from the internet through
internet gateways and egress-only internet gateways. To learn more
about VPC BPA, see Block public access to VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 DescribeVpcClassicLink

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLink>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkResult> instance

This action is deprecated.

Describes the ClassicLink status of the specified VPCs.


=head2 DescribeVpcClassicLinkDnsSupport

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> instance

This action is deprecated.

Describes the ClassicLink DNS support status of one or more VPCs. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance.


=head2 DescribeVpcEndpointAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcEndpointIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointAssociations>

Returns: a L<Paws::EC2::DescribeVpcEndpointAssociationsResult> instance

Describes the VPC resources, VPC endpoint services, Amazon Lattice
services, or service networks associated with the VPC endpoint.


=head2 DescribeVpcEndpointConnectionNotifications

=over

=item [ConnectionNotificationId => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointConnectionNotifications>

Returns: a L<Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult> instance

Describes the connection notifications for VPC endpoints and VPC
endpoint services.


=head2 DescribeVpcEndpointConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointConnections>

Returns: a L<Paws::EC2::DescribeVpcEndpointConnectionsResult> instance

Describes the VPC endpoint connections to your VPC endpoint services,
including any endpoints that are pending your acceptance.


=head2 DescribeVpcEndpoints

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcEndpointIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpoints>

Returns: a L<Paws::EC2::DescribeVpcEndpointsResult> instance

Describes your VPC endpoints. The default is to describe all your VPC
endpoints. Alternatively, you can specify specific VPC endpoint IDs or
filter the results to include only the VPC endpoints that match
specific criteria.


=head2 DescribeVpcEndpointServiceConfigurations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServiceConfigurations>

Returns: a L<Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult> instance

Describes the VPC endpoint service configurations in your account (your
services).


=head2 DescribeVpcEndpointServicePermissions

=over

=item ServiceId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServicePermissions>

Returns: a L<Paws::EC2::DescribeVpcEndpointServicePermissionsResult> instance

Describes the principals (service consumers) that are permitted to
discover your VPC endpoint service. Principal ARNs with path components
aren't supported.


=head2 DescribeVpcEndpointServices

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceNames => ArrayRef[Str|Undef]]

=item [ServiceRegions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServices>

Returns: a L<Paws::EC2::DescribeVpcEndpointServicesResult> instance

Describes available services to which you can create a VPC endpoint.

When the service provider and the consumer have different accounts in
multiple Availability Zones, and the consumer views the VPC endpoint
service information, the response only includes the common Availability
Zones. For example, when the service provider account uses
C<us-east-1a> and C<us-east-1c> and the consumer uses C<us-east-1a> and
C<us-east-1b>, the response includes the VPC endpoint services in the
common Availability Zone, C<us-east-1a>.


=head2 DescribeVpcPeeringConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcPeeringConnectionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcPeeringConnections>

Returns: a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> instance

Describes your VPC peering connections. The default is to describe all
your VPC peering connections. Alternatively, you can specify specific
VPC peering connection IDs or filter the results to include only the
VPC peering connections that match specific criteria.


=head2 DescribeVpcs

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcs>

Returns: a L<Paws::EC2::DescribeVpcsResult> instance

Describes your VPCs. The default is to describe all your VPCs.
Alternatively, you can specify specific VPC IDs or filter the results
to include only the VPCs that match specific criteria.


=head2 DescribeVpnConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpnConnectionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpnConnections>

Returns: a L<Paws::EC2::DescribeVpnConnectionsResult> instance

Describes one or more of your VPN connections.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 DescribeVpnGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpnGatewayIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpnGateways>

Returns: a L<Paws::EC2::DescribeVpnGatewaysResult> instance

Describes one or more of your virtual private gateways.

For more information, see Amazon Web Services Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 DetachClassicLinkVpc

=over

=item InstanceId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachClassicLinkVpc>

Returns: a L<Paws::EC2::DetachClassicLinkVpcResult> instance

This action is deprecated.

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
instance has been unlinked, the VPC security groups are no longer
associated with it. An instance is automatically unlinked from a VPC
when it's stopped.


=head2 DetachInternetGateway

=over

=item InternetGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachInternetGateway>

Returns: nothing

Detaches an internet gateway from a VPC, disabling connectivity between
the internet and the VPC. The VPC must not contain any running
instances with Elastic IP addresses or public IPv4 addresses.


=head2 DetachNetworkInterface

=over

=item AttachmentId => Str

=item [DryRun => Bool]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachNetworkInterface>

Returns: nothing

Detaches a network interface from an instance.


=head2 DetachVerifiedAccessTrustProvider

=over

=item VerifiedAccessInstanceId => Str

=item VerifiedAccessTrustProviderId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachVerifiedAccessTrustProvider>

Returns: a L<Paws::EC2::DetachVerifiedAccessTrustProviderResult> instance

Detaches the specified Amazon Web Services Verified Access trust
provider from the specified Amazon Web Services Verified Access
instance.


=head2 DetachVolume

=over

=item VolumeId => Str

=item [Device => Str]

=item [DryRun => Bool]

=item [Force => Bool]

=item [InstanceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DetachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

Detaches an EBS volume from an instance. Make sure to unmount any file
systems on the device within your operating system before detaching the
volume. Failure to do so can result in the volume becoming stuck in the
C<busy> state while detaching. If this happens, detachment can be
delayed indefinitely until you unmount the volume, force detachment,
reboot the instance, or all three. If an EBS volume is the root device
of an instance, it can't be detached while the instance is running. To
detach the root volume, stop the instance first.

When a volume with an Amazon Web Services Marketplace product code is
detached from an instance, the product code is no longer associated
with the instance.

You can't detach or force detach volumes that are attached to Amazon
ECS or Fargate tasks. Attempting to do this results in the
C<UnsupportedOperationException> exception with the C<Unable to detach
volume attached to ECS tasks> error message.

For more information, see Detach an Amazon EBS volume
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-detaching-volume.html)
in the I<Amazon EBS User Guide>.


=head2 DetachVpnGateway

=over

=item VpcId => Str

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachVpnGateway>

Returns: nothing

Detaches a virtual private gateway from a VPC. You do this if you're
planning to turn off the VPC and not use it anymore. You can confirm a
virtual private gateway has been completely detached from a VPC by
describing the virtual private gateway (any attachments to the virtual
private gateway are also described).

You must wait for the attachment's state to switch to C<detached>
before you can delete the VPC or attach a different VPC to the virtual
private gateway.


=head2 DisableAddressTransfer

=over

=item AllocationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableAddressTransfer>

Returns: a L<Paws::EC2::DisableAddressTransferResult> instance

Disables Elastic IP address transfer. For more information, see
Transfer Elastic IP addresses
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
in the I<Amazon VPC User Guide>.


=head2 DisableAllowedImagesSettings

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableAllowedImagesSettings>

Returns: a L<Paws::EC2::DisableAllowedImagesSettingsResult> instance

Disables Allowed AMIs for your account in the specified Amazon Web
Services Region. When set to C<disabled>, the image criteria in your
Allowed AMIs settings do not apply, and no restrictions are placed on
AMI discoverability or usage. Users in your account can launch
instances using any public AMI or AMI shared with your account.

The Allowed AMIs feature does not restrict the AMIs owned by your
account. Regardless of the criteria you set, the AMIs created by your
account will always be discoverable and usable by users in your
account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 DisableAwsNetworkPerformanceMetricSubscription

=over

=item [Destination => Str]

=item [DryRun => Bool]

=item [Metric => Str]

=item [Source => Str]

=item [Statistic => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisableAwsNetworkPerformanceMetricSubscription>

Returns: a L<Paws::EC2::DisableAwsNetworkPerformanceMetricSubscriptionResult> instance

Disables Infrastructure Performance metric subscriptions.


=head2 DisableEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableEbsEncryptionByDefault>

Returns: a L<Paws::EC2::DisableEbsEncryptionByDefaultResult> instance

Disables EBS encryption by default for your account in the current
Region.

After you disable encryption by default, you can still create encrypted
volumes by enabling encryption when you create each volume.

Disabling encryption by default does not change the encryption status
of your existing volumes.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 DisableFastLaunch

=over

=item ImageId => Str

=item [DryRun => Bool]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableFastLaunch>

Returns: a L<Paws::EC2::DisableFastLaunchResult> instance

Discontinue Windows fast launch for a Windows AMI, and clean up
existing pre-provisioned snapshots. After you disable Windows fast
launch, the AMI uses the standard launch process for each new instance.
Amazon EC2 must remove all pre-provisioned snapshots before you can
enable Windows fast launch again.

You can only change these settings for Windows AMIs that you own or
that have been shared with you.


=head2 DisableFastSnapshotRestores

=over

=item AvailabilityZones => ArrayRef[Str|Undef]

=item SourceSnapshotIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableFastSnapshotRestores>

Returns: a L<Paws::EC2::DisableFastSnapshotRestoresResult> instance

Disables fast snapshot restores for the specified snapshots in the
specified Availability Zones.


=head2 DisableImage

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableImage>

Returns: a L<Paws::EC2::DisableImageResult> instance

Sets the AMI state to C<disabled> and removes all launch permissions
from the AMI. A disabled AMI can't be used for instance launches.

A disabled AMI can't be shared. If an AMI was public or previously
shared, it is made private. If an AMI was shared with an Amazon Web
Services account, organization, or Organizational Unit, they lose
access to the disabled AMI.

A disabled AMI does not appear in DescribeImages
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html)
API calls by default.

Only the AMI owner can disable an AMI.

You can re-enable a disabled AMI using EnableImage
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableImage.html).

For more information, see Disable an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html)
in the I<Amazon EC2 User Guide>.


=head2 DisableImageBlockPublicAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableImageBlockPublicAccess>

Returns: a L<Paws::EC2::DisableImageBlockPublicAccessResult> instance

Disables I<block public access for AMIs> at the account level in the
specified Amazon Web Services Region. This removes the I<block public
access> restriction from your account. With the restriction removed,
you can publicly share your AMIs in the specified Amazon Web Services
Region.

The API can take up to 10 minutes to configure this setting. During
this time, if you run GetImageBlockPublicAccessState
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html),
the response will be C<block-new-sharing>. When the API has completed
the configuration, the response will be C<unblocked>.

For more information, see Block public access to your AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
in the I<Amazon EC2 User Guide>.


=head2 DisableImageDeprecation

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableImageDeprecation>

Returns: a L<Paws::EC2::DisableImageDeprecationResult> instance

Cancels the deprecation of the specified AMI.

For more information, see Deprecate an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html)
in the I<Amazon EC2 User Guide>.


=head2 DisableImageDeregistrationProtection

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableImageDeregistrationProtection>

Returns: a L<Paws::EC2::DisableImageDeregistrationProtectionResult> instance

Disables deregistration protection for an AMI. When deregistration
protection is disabled, the AMI can be deregistered.

If you chose to include a 24-hour cooldown period when you enabled
deregistration protection for the AMI, then, when you disable
deregistration protection, you wonE<rsquo>t immediately be able to
deregister the AMI.

For more information, see Protect an AMI from deregistration
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html#ami-deregistration-protection)
in the I<Amazon EC2 User Guide>.


=head2 DisableIpamOrganizationAdminAccount

=over

=item DelegatedAdminAccountId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableIpamOrganizationAdminAccount>

Returns: a L<Paws::EC2::DisableIpamOrganizationAdminAccountResult> instance

Disable the IPAM account. For more information, see Enable integration
with Organizations
(https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 DisableRouteServerPropagation

=over

=item RouteServerId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableRouteServerPropagation>

Returns: a L<Paws::EC2::DisableRouteServerPropagationResult> instance

Disables route propagation from a route server to a specified route
table.

When enabled, route server propagation installs the routes in the FIB
on the route table you've specified. Route server supports IPv4 and
IPv6 route propagation.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DisableSerialConsoleAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableSerialConsoleAccess>

Returns: a L<Paws::EC2::DisableSerialConsoleAccessResult> instance

Disables access to the EC2 serial console of all instances for your
account. By default, access to the EC2 serial console is disabled for
your account. For more information, see Manage account access to the
EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 DisableSnapshotBlockPublicAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableSnapshotBlockPublicAccess>

Returns: a L<Paws::EC2::DisableSnapshotBlockPublicAccessResult> instance

Disables the I<block public access for snapshots> setting at the
account level for the specified Amazon Web Services Region. After you
disable block public access for snapshots in a Region, users can
publicly share snapshots in that Region.

Enabling block public access for snapshots in I<block-all-sharing> mode
does not change the permissions for snapshots that are already publicly
shared. Instead, it prevents these snapshots from be publicly visible
and publicly accessible. Therefore, the attributes for these snapshots
still indicate that they are publicly shared, even though they are not
publicly available.

If you disable block public access , these snapshots will become
publicly available again.

For more information, see Block public access for snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
in the I<Amazon EBS User Guide> .


=head2 DisableTransitGatewayRouteTablePropagation

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayRouteTableAnnouncementId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisableTransitGatewayRouteTablePropagation>

Returns: a L<Paws::EC2::DisableTransitGatewayRouteTablePropagationResult> instance

Disables the specified resource attachment from propagating routes to
the specified propagation route table.


=head2 DisableVgwRoutePropagation

=over

=item GatewayId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVgwRoutePropagation>

Returns: nothing

Disables a virtual private gateway (VGW) from propagating routes to a
specified route table of a VPC.


=head2 DisableVpcClassicLink

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLink>

Returns: a L<Paws::EC2::DisableVpcClassicLinkResult> instance

This action is deprecated.

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a
VPC that has EC2-Classic instances linked to it.


=head2 DisableVpcClassicLinkDnsSupport

=over

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DisableVpcClassicLinkDnsSupportResult> instance

This action is deprecated.

Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
resolve to public IP addresses when addressed between a linked
EC2-Classic instance and instances in the VPC to which it's linked.

You must specify a VPC ID in the request.


=head2 DisassociateAddress

=over

=item [AssociationId => Str]

=item [DryRun => Bool]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateAddress>

Returns: nothing

Disassociates an Elastic IP address from the instance or network
interface it's associated with.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.


=head2 DisassociateCapacityReservationBillingOwner

=over

=item CapacityReservationId => Str

=item UnusedReservationBillingOwnerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateCapacityReservationBillingOwner>

Returns: a L<Paws::EC2::DisassociateCapacityReservationBillingOwnerResult> instance

Cancels a pending request to assign billing of the unused capacity of a
Capacity Reservation to a consumer account, or revokes a request that
has already been accepted. For more information, see Billing assignment
for shared Amazon EC2 Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/assign-billing.html).


=head2 DisassociateClientVpnTargetNetwork

=over

=item AssociationId => Str

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateClientVpnTargetNetwork>

Returns: a L<Paws::EC2::DisassociateClientVpnTargetNetworkResult> instance

Disassociates a target network from the specified Client VPN endpoint.
When you disassociate the last target network from a Client VPN, the
following happens:

=over

=item *

The route that was automatically added for the VPC is deleted

=item *

All active client connections are terminated

=item *

New client connections are disallowed

=item *

The Client VPN endpoint's status changes to C<pending-associate>

=back



=head2 DisassociateEnclaveCertificateIamRole

=over

=item CertificateArn => Str

=item RoleArn => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateEnclaveCertificateIamRole>

Returns: a L<Paws::EC2::DisassociateEnclaveCertificateIamRoleResult> instance

Disassociates an IAM role from an Certificate Manager (ACM)
certificate. Disassociating an IAM role from an ACM certificate removes
the Amazon S3 object that contains the certificate, certificate chain,
and encrypted private key from the Amazon S3 bucket. It also revokes
the IAM role's permission to use the KMS key used to encrypt the
private key. This effectively revokes the role's permission to use the
certificate.


=head2 DisassociateIamInstanceProfile

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateIamInstanceProfile>

Returns: a L<Paws::EC2::DisassociateIamInstanceProfileResult> instance

Disassociates an IAM instance profile from a running or stopped
instance.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 DisassociateInstanceEventWindow

=over

=item AssociationTarget => L<Paws::EC2::InstanceEventWindowDisassociationRequest>

=item InstanceEventWindowId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateInstanceEventWindow>

Returns: a L<Paws::EC2::DisassociateInstanceEventWindowResult> instance

Disassociates one or more targets from an event window.

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 DisassociateIpamByoasn

=over

=item Asn => Str

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateIpamByoasn>

Returns: a L<Paws::EC2::DisassociateIpamByoasnResult> instance

Remove the association between your Autonomous System Number (ASN) and
your BYOIP CIDR. You may want to use this action to disassociate an ASN
from a CIDR or if you want to swap ASNs. For more information, see
Tutorial: Bring your ASN to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
the I<Amazon VPC IPAM guide>.


=head2 DisassociateIpamResourceDiscovery

=over

=item IpamResourceDiscoveryAssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateIpamResourceDiscovery>

Returns: a L<Paws::EC2::DisassociateIpamResourceDiscoveryResult> instance

Disassociates a resource discovery from an Amazon VPC IPAM. A resource
discovery is an IPAM component that enables IPAM to manage and monitor
resources that belong to the owning account.


=head2 DisassociateNatGatewayAddress

=over

=item AssociationIds => ArrayRef[Str|Undef]

=item NatGatewayId => Str

=item [DryRun => Bool]

=item [MaxDrainDurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateNatGatewayAddress>

Returns: a L<Paws::EC2::DisassociateNatGatewayAddressResult> instance

Disassociates secondary Elastic IP addresses (EIPs) from a public NAT
gateway. You cannot disassociate your primary EIP. For more
information, see Edit secondary IP address associations
(https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html#nat-gateway-edit-secondary)
in the I<Amazon VPC User Guide>.

While disassociating is in progress, you cannot associate/disassociate
additional EIPs while the connections are being drained. You are,
however, allowed to delete the NAT gateway.

An EIP is released only at the end of MaxDrainDurationSeconds. It stays
associated and supports the existing connections but does not support
any new connections (new connections are distributed across the
remaining associated EIPs). As the existing connections drain out, the
EIPs (and the corresponding private IP addresses mapped to them) are
released.


=head2 DisassociateRouteServer

=over

=item RouteServerId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateRouteServer>

Returns: a L<Paws::EC2::DisassociateRouteServerResult> instance

Disassociates a route server from a VPC.

A route server association is the connection established between a
route server and a VPC.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 DisassociateRouteTable

=over

=item AssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateRouteTable>

Returns: nothing

Disassociates a subnet or gateway from a route table.

After you perform this action, the subnet no longer uses the routes in
the route table. Instead, it uses the routes in the VPC's main route
table. For more information about route tables, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 DisassociateSecurityGroupVpc

=over

=item GroupId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateSecurityGroupVpc>

Returns: a L<Paws::EC2::DisassociateSecurityGroupVpcResult> instance

Disassociates a security group from a VPC. You cannot disassociate the
security group if any Elastic network interfaces in the associated VPC
are still associated with the security group. Note that the
disassociation is asynchronous and you can check the status of the
request with DescribeSecurityGroupVpcAssociations
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroupVpcAssociations.html).


=head2 DisassociateSubnetCidrBlock

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateSubnetCidrBlock>

Returns: a L<Paws::EC2::DisassociateSubnetCidrBlockResult> instance

Disassociates a CIDR block from a subnet. Currently, you can
disassociate an IPv6 CIDR block only. You must detach or delete all
gateways and resources that are associated with the CIDR block before
you can disassociate it.


=head2 DisassociateTransitGatewayMulticastDomain

=over

=item SubnetIds => ArrayRef[Str|Undef]

=item TransitGatewayAttachmentId => Str

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::DisassociateTransitGatewayMulticastDomainResult> instance

Disassociates the specified subnets from the transit gateway multicast
domain.


=head2 DisassociateTransitGatewayPolicyTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayPolicyTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTransitGatewayPolicyTable>

Returns: a L<Paws::EC2::DisassociateTransitGatewayPolicyTableResult> instance

Removes the association between an an attachment and a policy table.


=head2 DisassociateTransitGatewayRouteTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::DisassociateTransitGatewayRouteTableResult> instance

Disassociates a resource attachment from a transit gateway route table.


=head2 DisassociateTrunkInterface

=over

=item AssociationId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTrunkInterface>

Returns: a L<Paws::EC2::DisassociateTrunkInterfaceResult> instance

Removes an association between a branch network interface with a trunk
network interface.


=head2 DisassociateVpcCidrBlock

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateVpcCidrBlock>

Returns: a L<Paws::EC2::DisassociateVpcCidrBlockResult> instance

Disassociates a CIDR block from a VPC. To disassociate the CIDR block,
you must specify its association ID. You can get the association ID by
using DescribeVpcs. You must detach or delete all gateways and
resources that are associated with the CIDR block before you can
disassociate it.

You cannot disassociate the CIDR block with which you originally
created the VPC (the primary CIDR block).


=head2 EnableAddressTransfer

=over

=item AllocationId => Str

=item TransferAccountId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableAddressTransfer>

Returns: a L<Paws::EC2::EnableAddressTransferResult> instance

Enables Elastic IP address transfer. For more information, see Transfer
Elastic IP addresses
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
in the I<Amazon VPC User Guide>.


=head2 EnableAllowedImagesSettings

=over

=item AllowedImagesSettingsState => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableAllowedImagesSettings>

Returns: a L<Paws::EC2::EnableAllowedImagesSettingsResult> instance

Enables Allowed AMIs for your account in the specified Amazon Web
Services Region. Two values are accepted:

=over

=item *

C<enabled>: The image criteria in your Allowed AMIs settings are
applied. As a result, only AMIs matching these criteria are
discoverable and can be used by your account to launch instances.

=item *

C<audit-mode>: The image criteria in your Allowed AMIs settings are not
applied. No restrictions are placed on AMI discoverability or usage.
Users in your account can launch instances using any public AMI or AMI
shared with your account.

The purpose of C<audit-mode> is to indicate which AMIs will be affected
when Allowed AMIs is C<enabled>. In C<audit-mode>, each AMI displays
either C<"ImageAllowed": true> or C<"ImageAllowed": false> to indicate
whether the AMI will be discoverable and available to users in the
account when Allowed AMIs is enabled.

=back

The Allowed AMIs feature does not restrict the AMIs owned by your
account. Regardless of the criteria you set, the AMIs created by your
account will always be discoverable and usable by users in your
account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 EnableAwsNetworkPerformanceMetricSubscription

=over

=item [Destination => Str]

=item [DryRun => Bool]

=item [Metric => Str]

=item [Source => Str]

=item [Statistic => Str]


=back

Each argument is described in detail in: L<Paws::EC2::EnableAwsNetworkPerformanceMetricSubscription>

Returns: a L<Paws::EC2::EnableAwsNetworkPerformanceMetricSubscriptionResult> instance

Enables Infrastructure Performance subscriptions.


=head2 EnableEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableEbsEncryptionByDefault>

Returns: a L<Paws::EC2::EnableEbsEncryptionByDefaultResult> instance

Enables EBS encryption by default for your account in the current
Region.

After you enable encryption by default, the EBS volumes that you create
are always encrypted, either using the default KMS key or the KMS key
that you specified when you created each volume. For more information,
see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.

You can specify the default KMS key for encryption by default using
ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId.

Enabling encryption by default has no effect on the encryption status
of your existing volumes.

After you enable encryption by default, you can no longer launch
instances using instance types that do not support encryption. For more
information, see Supported instance types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html#ebs-encryption_supported_instances).


=head2 EnableFastLaunch

=over

=item ImageId => Str

=item [DryRun => Bool]

=item [LaunchTemplate => L<Paws::EC2::FastLaunchLaunchTemplateSpecificationRequest>]

=item [MaxParallelLaunches => Int]

=item [ResourceType => Str]

=item [SnapshotConfiguration => L<Paws::EC2::FastLaunchSnapshotConfigurationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::EnableFastLaunch>

Returns: a L<Paws::EC2::EnableFastLaunchResult> instance

When you enable Windows fast launch for a Windows AMI, images are
pre-provisioned, using snapshots to launch instances up to 65% faster.
To create the optimized Windows image, Amazon EC2 launches an instance
and runs through Sysprep steps, rebooting as required. Then it creates
a set of reserved snapshots that are used for subsequent launches. The
reserved snapshots are automatically replenished as they are used,
depending on your settings for launch frequency.

You can only change these settings for Windows AMIs that you own or
that have been shared with you.


=head2 EnableFastSnapshotRestores

=over

=item AvailabilityZones => ArrayRef[Str|Undef]

=item SourceSnapshotIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableFastSnapshotRestores>

Returns: a L<Paws::EC2::EnableFastSnapshotRestoresResult> instance

Enables fast snapshot restores for the specified snapshots in the
specified Availability Zones.

You get the full benefit of fast snapshot restores after they enter the
C<enabled> state. To get the current state of fast snapshot restores,
use DescribeFastSnapshotRestores. To disable fast snapshot restores,
use DisableFastSnapshotRestores.

For more information, see Amazon EBS fast snapshot restore
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-fast-snapshot-restore.html)
in the I<Amazon EBS User Guide>.


=head2 EnableImage

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableImage>

Returns: a L<Paws::EC2::EnableImageResult> instance

Re-enables a disabled AMI. The re-enabled AMI is marked as C<available>
and can be used for instance launches, appears in describe operations,
and can be shared. Amazon Web Services accounts, organizations, and
Organizational Units that lost access to the AMI when it was disabled
do not regain access automatically. Once the AMI is available, it can
be shared with them again.

Only the AMI owner can re-enable a disabled AMI.

For more information, see Disable an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html)
in the I<Amazon EC2 User Guide>.


=head2 EnableImageBlockPublicAccess

=over

=item ImageBlockPublicAccessState => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableImageBlockPublicAccess>

Returns: a L<Paws::EC2::EnableImageBlockPublicAccessResult> instance

Enables I<block public access for AMIs> at the account level in the
specified Amazon Web Services Region. This prevents the public sharing
of your AMIs. However, if you already have public AMIs, they will
remain publicly available.

The API can take up to 10 minutes to configure this setting. During
this time, if you run GetImageBlockPublicAccessState
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html),
the response will be C<unblocked>. When the API has completed the
configuration, the response will be C<block-new-sharing>.

For more information, see Block public access to your AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
in the I<Amazon EC2 User Guide>.


=head2 EnableImageDeprecation

=over

=item DeprecateAt => Str

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableImageDeprecation>

Returns: a L<Paws::EC2::EnableImageDeprecationResult> instance

Enables deprecation of the specified AMI at the specified date and
time.

For more information, see Deprecate an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html)
in the I<Amazon EC2 User Guide>.


=head2 EnableImageDeregistrationProtection

=over

=item ImageId => Str

=item [DryRun => Bool]

=item [WithCooldown => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableImageDeregistrationProtection>

Returns: a L<Paws::EC2::EnableImageDeregistrationProtectionResult> instance

Enables deregistration protection for an AMI. When deregistration
protection is enabled, the AMI can't be deregistered.

To allow the AMI to be deregistered, you must first disable
deregistration protection using DisableImageDeregistrationProtection.

For more information, see Protect an AMI from deregistration
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html#ami-deregistration-protection)
in the I<Amazon EC2 User Guide>.


=head2 EnableIpamOrganizationAdminAccount

=over

=item DelegatedAdminAccountId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableIpamOrganizationAdminAccount>

Returns: a L<Paws::EC2::EnableIpamOrganizationAdminAccountResult> instance

Enable an Organizations member account as the IPAM admin account. You
cannot select the Organizations management account as the IPAM admin
account. For more information, see Enable integration with
Organizations
(https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 EnableReachabilityAnalyzerOrganizationSharing

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableReachabilityAnalyzerOrganizationSharing>

Returns: a L<Paws::EC2::EnableReachabilityAnalyzerOrganizationSharingResult> instance

Establishes a trust relationship between Reachability Analyzer and
Organizations. This operation must be performed by the management
account for the organization.

After you establish a trust relationship, a user in the management
account or a delegated administrator account can run a cross-account
analysis using resources from the member accounts.


=head2 EnableRouteServerPropagation

=over

=item RouteServerId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableRouteServerPropagation>

Returns: a L<Paws::EC2::EnableRouteServerPropagationResult> instance

Defines which route tables the route server can update with routes.

When enabled, route server propagation installs the routes in the FIB
on the route table you've specified. Route server supports IPv4 and
IPv6 route propagation.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 EnableSerialConsoleAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableSerialConsoleAccess>

Returns: a L<Paws::EC2::EnableSerialConsoleAccessResult> instance

Enables access to the EC2 serial console of all instances for your
account. By default, access to the EC2 serial console is disabled for
your account. For more information, see Manage account access to the
EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 EnableSnapshotBlockPublicAccess

=over

=item State => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableSnapshotBlockPublicAccess>

Returns: a L<Paws::EC2::EnableSnapshotBlockPublicAccessResult> instance

Enables or modifies the I<block public access for snapshots> setting at
the account level for the specified Amazon Web Services Region. After
you enable block public access for snapshots in a Region, users can no
longer request public sharing for snapshots in that Region. Snapshots
that are already publicly shared are either treated as private or they
remain publicly shared, depending on the B<State> that you specify.

Enabling block public access for snapshots in I<block all sharing> mode
does not change the permissions for snapshots that are already publicly
shared. Instead, it prevents these snapshots from be publicly visible
and publicly accessible. Therefore, the attributes for these snapshots
still indicate that they are publicly shared, even though they are not
publicly available.

If you later disable block public access or change the mode to I<block
new sharing>, these snapshots will become publicly available again.

For more information, see Block public access for snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
in the I<Amazon EBS User Guide>.


=head2 EnableTransitGatewayRouteTablePropagation

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayRouteTableAnnouncementId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::EnableTransitGatewayRouteTablePropagation>

Returns: a L<Paws::EC2::EnableTransitGatewayRouteTablePropagationResult> instance

Enables the specified attachment to propagate routes to the specified
propagation route table.


=head2 EnableVgwRoutePropagation

=over

=item GatewayId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVgwRoutePropagation>

Returns: nothing

Enables a virtual private gateway (VGW) to propagate routes to the
specified route table of a VPC.


=head2 EnableVolumeIO

=over

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVolumeIO>

Returns: nothing

Enables I/O operations for a volume that had I/O operations disabled
because the data on the volume was potentially inconsistent.


=head2 EnableVpcClassicLink

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLink>

Returns: a L<Paws::EC2::EnableVpcClassicLinkResult> instance

This action is deprecated.

Enables a VPC for ClassicLink. You can then link EC2-Classic instances
to your ClassicLink-enabled VPC to allow communication over private IP
addresses. You cannot enable your VPC for ClassicLink if any of your
VPC route tables have existing routes for address ranges within the
C<10.0.0.0/8> IP address range, excluding local routes for VPCs in the
C<10.0.0.0/16> and C<10.1.0.0/16> IP address ranges.


=head2 EnableVpcClassicLinkDnsSupport

=over

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::EnableVpcClassicLinkDnsSupportResult> instance

This action is deprecated.

Enables a VPC to support DNS hostname resolution for ClassicLink. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance.

You must specify a VPC ID in the request.


=head2 ExportClientVpnClientCertificateRevocationList

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ExportClientVpnClientCertificateRevocationList>

Returns: a L<Paws::EC2::ExportClientVpnClientCertificateRevocationListResult> instance

Downloads the client certificate revocation list for the specified
Client VPN endpoint.


=head2 ExportClientVpnClientConfiguration

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ExportClientVpnClientConfiguration>

Returns: a L<Paws::EC2::ExportClientVpnClientConfigurationResult> instance

Downloads the contents of the Client VPN endpoint configuration file
for the specified Client VPN endpoint. The Client VPN endpoint
configuration file includes the Client VPN endpoint and certificate
information clients need to establish a connection with the Client VPN
endpoint.


=head2 ExportImage

=over

=item DiskImageFormat => Str

=item ImageId => Str

=item S3ExportLocation => L<Paws::EC2::ExportTaskS3LocationRequest>

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ExportImage>

Returns: a L<Paws::EC2::ExportImageResult> instance

Exports an Amazon Machine Image (AMI) to a VM file. For more
information, see Exporting a VM directly from an Amazon Machine Image
(AMI)
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html)
in the I<VM Import/Export User Guide>.


=head2 ExportTransitGatewayRoutes

=over

=item S3Bucket => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::ExportTransitGatewayRoutes>

Returns: a L<Paws::EC2::ExportTransitGatewayRoutesResult> instance

Exports routes from the specified transit gateway route table to the
specified S3 bucket. By default, all routes are exported.
Alternatively, you can filter by CIDR range.

The routes are saved to the specified bucket in a JSON file. For more
information, see Export route tables to Amazon S3
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables)
in the I<Amazon Web Services Transit Gateways Guide>.


=head2 ExportVerifiedAccessInstanceClientConfiguration

=over

=item VerifiedAccessInstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ExportVerifiedAccessInstanceClientConfiguration>

Returns: a L<Paws::EC2::ExportVerifiedAccessInstanceClientConfigurationResult> instance

Exports the client configuration for a Verified Access instance.


=head2 GetAllowedImagesSettings

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetAllowedImagesSettings>

Returns: a L<Paws::EC2::GetAllowedImagesSettingsResult> instance

Gets the current state of the Allowed AMIs setting and the list of
Allowed AMIs criteria at the account level in the specified Region.

The Allowed AMIs feature does not restrict the AMIs owned by your
account. Regardless of the criteria you set, the AMIs created by your
account will always be discoverable and usable by users in your
account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 GetAssociatedEnclaveCertificateIamRoles

=over

=item CertificateArn => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetAssociatedEnclaveCertificateIamRoles>

Returns: a L<Paws::EC2::GetAssociatedEnclaveCertificateIamRolesResult> instance

Returns the IAM roles that are associated with the specified ACM (ACM)
certificate. It also returns the name of the Amazon S3 bucket and the
Amazon S3 object key where the certificate, certificate chain, and
encrypted private key bundle are stored, and the ARN of the KMS key
that's used to encrypt the private key.


=head2 GetAssociatedIpv6PoolCidrs

=over

=item PoolId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetAssociatedIpv6PoolCidrs>

Returns: a L<Paws::EC2::GetAssociatedIpv6PoolCidrsResult> instance

Gets information about the IPv6 CIDR block associations for a specified
IPv6 address pool.


=head2 GetAwsNetworkPerformanceData

=over

=item [DataQueries => ArrayRef[L<Paws::EC2::DataQuery>]]

=item [DryRun => Bool]

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetAwsNetworkPerformanceData>

Returns: a L<Paws::EC2::GetAwsNetworkPerformanceDataResult> instance

Gets network performance data.


=head2 GetCapacityReservationUsage

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetCapacityReservationUsage>

Returns: a L<Paws::EC2::GetCapacityReservationUsageResult> instance

Gets usage information about a Capacity Reservation. If the Capacity
Reservation is shared, it shows usage information for the Capacity
Reservation owner and each Amazon Web Services account that is
currently using the shared capacity. If the Capacity Reservation is not
shared, it shows only the Capacity Reservation owner's usage.


=head2 GetCoipPoolUsage

=over

=item PoolId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetCoipPoolUsage>

Returns: a L<Paws::EC2::GetCoipPoolUsageResult> instance

Describes the allocations from the specified customer-owned address
pool.


=head2 GetConsoleOutput

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [Latest => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetConsoleOutput>

Returns: a L<Paws::EC2::GetConsoleOutputResult> instance

Gets the console output for the specified instance. For Linux
instances, the instance console output displays the exact console
output that would normally be displayed on a physical monitor attached
to a computer. For Windows instances, the instance console output
includes the last three system event log errors.

For more information, see Instance console output
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output)
in the I<Amazon EC2 User Guide>.


=head2 GetConsoleScreenshot

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [WakeUp => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetConsoleScreenshot>

Returns: a L<Paws::EC2::GetConsoleScreenshotResult> instance

Retrieve a JPG-format screenshot of a running instance to help with
troubleshooting.

The returned content is Base64-encoded.

For more information, see Instance console output
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshoot-unreachable-instance.html#instance-console-console-output)
in the I<Amazon EC2 User Guide>.


=head2 GetDeclarativePoliciesReportSummary

=over

=item ReportId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetDeclarativePoliciesReportSummary>

Returns: a L<Paws::EC2::GetDeclarativePoliciesReportSummaryResult> instance

Retrieves a summary of the account status report.

To view the full report, download it from the Amazon S3 bucket where it
was saved. Reports are accessible only when they have the C<complete>
status. Reports with other statuses (C<running>, C<cancelled>, or
C<error>) are not available in the S3 bucket. For more information
about downloading objects from an S3 bucket, see Downloading objects
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/download-objects.html)
in the I<Amazon Simple Storage Service User Guide>.

For more information, see Generating the account status report for
declarative policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_status-report.html)
in the I<Amazon Web Services Organizations User Guide>.


=head2 GetDefaultCreditSpecification

=over

=item InstanceFamily => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetDefaultCreditSpecification>

Returns: a L<Paws::EC2::GetDefaultCreditSpecificationResult> instance

Describes the default credit option for CPU usage of a burstable
performance instance family.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 GetEbsDefaultKmsKeyId

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::GetEbsDefaultKmsKeyIdResult> instance

Describes the default KMS key for EBS encryption by default for your
account in this Region. You can change the default KMS key for
encryption by default using ModifyEbsDefaultKmsKeyId or
ResetEbsDefaultKmsKeyId.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 GetEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetEbsEncryptionByDefault>

Returns: a L<Paws::EC2::GetEbsEncryptionByDefaultResult> instance

Describes whether EBS encryption by default is enabled for your account
in the current Region.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 GetFlowLogsIntegrationTemplate

=over

=item ConfigDeliveryS3DestinationArn => Str

=item FlowLogId => Str

=item IntegrateServices => L<Paws::EC2::IntegrateServices>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetFlowLogsIntegrationTemplate>

Returns: a L<Paws::EC2::GetFlowLogsIntegrationTemplateResult> instance

Generates a CloudFormation template that streamlines and automates the
integration of VPC flow logs with Amazon Athena. This make it easier
for you to query and gain insights from VPC flow logs data. Based on
the information that you provide, we configure resources in the
template to do the following:

=over

=item *

Create a table in Athena that maps fields to a custom log format

=item *

Create a Lambda function that updates the table with new partitions on
a daily, weekly, or monthly basis

=item *

Create a table partitioned between two timestamps in the past

=item *

Create a set of named queries in Athena that you can use to get started
quickly

=back

C<GetFlowLogsIntegrationTemplate> does not support integration between
Amazon Web Services Transit Gateway Flow Logs and Amazon Athena.


=head2 GetGroupsForCapacityReservation

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetGroupsForCapacityReservation>

Returns: a L<Paws::EC2::GetGroupsForCapacityReservationResult> instance

Lists the resource groups to which a Capacity Reservation has been
added.


=head2 GetHostReservationPurchasePreview

=over

=item HostIdSet => ArrayRef[Str|Undef]

=item OfferingId => Str


=back

Each argument is described in detail in: L<Paws::EC2::GetHostReservationPurchasePreview>

Returns: a L<Paws::EC2::GetHostReservationPurchasePreviewResult> instance

Preview a reservation purchase with configurations that match those of
your Dedicated Host. You must have active Dedicated Hosts in your
account before you purchase a reservation.

This is a preview of the PurchaseHostReservation action and does not
result in the offering being purchased.


=head2 GetImageBlockPublicAccessState

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetImageBlockPublicAccessState>

Returns: a L<Paws::EC2::GetImageBlockPublicAccessStateResult> instance

Gets the current state of I<block public access for AMIs> at the
account level in the specified Amazon Web Services Region.

For more information, see Block public access to your AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
in the I<Amazon EC2 User Guide>.


=head2 GetInstanceMetadataDefaults

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetInstanceMetadataDefaults>

Returns: a L<Paws::EC2::GetInstanceMetadataDefaultsResult> instance

Gets the default instance metadata service (IMDS) settings that are set
at the account level in the specified Amazon Web Services Region.

For more information, see Order of precedence for instance metadata
options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html#instance-metadata-options-order-of-precedence)
in the I<Amazon EC2 User Guide>.


=head2 GetInstanceTpmEkPub

=over

=item InstanceId => Str

=item KeyFormat => Str

=item KeyType => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetInstanceTpmEkPub>

Returns: a L<Paws::EC2::GetInstanceTpmEkPubResult> instance

Gets the public endorsement key associated with the Nitro Trusted
Platform Module (NitroTPM) for the specified instance.


=head2 GetInstanceTypesFromInstanceRequirements

=over

=item ArchitectureTypes => ArrayRef[Str|Undef]

=item InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>

=item VirtualizationTypes => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetInstanceTypesFromInstanceRequirements>

Returns: a L<Paws::EC2::GetInstanceTypesFromInstanceRequirementsResult> instance

Returns a list of instance types with the specified instance
attributes. You can use the response to preview the instance types
without launching instances. Note that the response does not consider
capacity.

When you specify multiple parameters, you get instance types that
satisfy all of the specified parameters. If you specify multiple values
for a parameter, you get instance types that satisfy any of the
specified values.

For more information, see Preview instance types with specified
attributes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html#ec2fleet-get-instance-types-from-instance-requirements),
Specify attributes for instance type selection for EC2 Fleet or Spot
Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html),
and Spot placement score
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
in the I<Amazon EC2 User Guide>, and Creating mixed instance groups
using attribute-based instance type selection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html)
in the I<Amazon EC2 Auto Scaling User Guide>.


=head2 GetInstanceUefiData

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetInstanceUefiData>

Returns: a L<Paws::EC2::GetInstanceUefiDataResult> instance

A binary representation of the UEFI variable store. Only non-volatile
variables are stored. This is a base64 encoded and zlib compressed
binary value that must be properly encoded.

When you use register-image
(https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html)
to create an AMI, you can create an exact copy of your variable store
by passing the UEFI data in the C<UefiData> parameter. You can modify
the UEFI data by using the python-uefivars tool
(https://github.com/awslabs/python-uefivars) on GitHub. You can use the
tool to convert the UEFI data into a human-readable format (JSON),
which you can inspect and modify, and then convert back into the binary
format to use with register-image.

For more information, see UEFI Secure Boot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html)
in the I<Amazon EC2 User Guide>.


=head2 GetIpamAddressHistory

=over

=item Cidr => Str

=item IpamScopeId => Str

=item [DryRun => Bool]

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamAddressHistory>

Returns: a L<Paws::EC2::GetIpamAddressHistoryResult> instance

Retrieve historical information about a CIDR within an IPAM scope. For
more information, see View the history of IP addresses
(https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 GetIpamDiscoveredAccounts

=over

=item DiscoveryRegion => Str

=item IpamResourceDiscoveryId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamDiscoveredAccounts>

Returns: a L<Paws::EC2::GetIpamDiscoveredAccountsResult> instance

Gets IPAM discovered accounts. A discovered account is an Amazon Web
Services account that is monitored under a resource discovery. If you
have integrated IPAM with Amazon Web Services Organizations, all
accounts in the organization are discovered accounts. Only the IPAM
account can get all discovered accounts in the organization.


=head2 GetIpamDiscoveredPublicAddresses

=over

=item AddressRegion => Str

=item IpamResourceDiscoveryId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamDiscoveredPublicAddresses>

Returns: a L<Paws::EC2::GetIpamDiscoveredPublicAddressesResult> instance

Gets the public IP addresses that have been discovered by IPAM.


=head2 GetIpamDiscoveredResourceCidrs

=over

=item IpamResourceDiscoveryId => Str

=item ResourceRegion => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamDiscoveredResourceCidrs>

Returns: a L<Paws::EC2::GetIpamDiscoveredResourceCidrsResult> instance

Returns the resource CIDRs that are monitored as part of a resource
discovery. A discovered resource is a resource CIDR monitored under a
resource discovery. The following resources can be discovered: VPCs,
Public IPv4 pools, VPC subnets, and Elastic IP addresses.


=head2 GetIpamPoolAllocations

=over

=item IpamPoolId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamPoolAllocationId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamPoolAllocations>

Returns: a L<Paws::EC2::GetIpamPoolAllocationsResult> instance

Get a list of all the CIDR allocations in an IPAM pool. The Region you
use should be the IPAM pool locale. The locale is the Amazon Web
Services Region where this IPAM pool is available for allocations.

If you use this action after AllocateIpamPoolCidr
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AllocateIpamPoolCidr.html)
or ReleaseIpamPoolAllocation
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html),
note that all EC2 API actions follow an eventual consistency
(https://docs.aws.amazon.com/ec2/latest/devguide/eventual-consistency.html)
model.


=head2 GetIpamPoolCidrs

=over

=item IpamPoolId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamPoolCidrs>

Returns: a L<Paws::EC2::GetIpamPoolCidrsResult> instance

Get the CIDRs provisioned to an IPAM pool.


=head2 GetIpamResourceCidrs

=over

=item IpamScopeId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IpamPoolId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ResourceOwner => Str]

=item [ResourceTag => L<Paws::EC2::RequestIpamResourceTag>]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetIpamResourceCidrs>

Returns: a L<Paws::EC2::GetIpamResourceCidrsResult> instance

Returns resource CIDRs managed by IPAM in a given scope. If an IPAM is
associated with more than one resource discovery, the resource CIDRs
across all of the resource discoveries is returned. A resource
discovery is an IPAM component that enables IPAM to manage and monitor
resources that belong to the owning account.


=head2 GetLaunchTemplateData

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetLaunchTemplateData>

Returns: a L<Paws::EC2::GetLaunchTemplateDataResult> instance

Retrieves the configuration data of the specified instance. You can use
this data to create a launch template.

This action calls on other describe actions to get instance
information. Depending on your instance configuration, you may need to
allow the following actions in your IAM policy:
C<DescribeSpotInstanceRequests>,
C<DescribeInstanceCreditSpecifications>, C<DescribeVolumes>, and
C<DescribeInstanceAttribute>. Or, you can allow C<describe*> depending
on your instance requirements.


=head2 GetManagedPrefixListAssociations

=over

=item PrefixListId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetManagedPrefixListAssociations>

Returns: a L<Paws::EC2::GetManagedPrefixListAssociationsResult> instance

Gets information about the resources that are associated with the
specified managed prefix list.


=head2 GetManagedPrefixListEntries

=over

=item PrefixListId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetVersion => Int]


=back

Each argument is described in detail in: L<Paws::EC2::GetManagedPrefixListEntries>

Returns: a L<Paws::EC2::GetManagedPrefixListEntriesResult> instance

Gets information about the entries for a specified managed prefix list.


=head2 GetNetworkInsightsAccessScopeAnalysisFindings

=over

=item NetworkInsightsAccessScopeAnalysisId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindings>

Returns: a L<Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindingsResult> instance

Gets the findings for the specified Network Access Scope analysis.


=head2 GetNetworkInsightsAccessScopeContent

=over

=item NetworkInsightsAccessScopeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetNetworkInsightsAccessScopeContent>

Returns: a L<Paws::EC2::GetNetworkInsightsAccessScopeContentResult> instance

Gets the content for the specified Network Access Scope.


=head2 GetPasswordData

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetPasswordData>

Returns: a L<Paws::EC2::GetPasswordDataResult> instance

Retrieves the encrypted administrator password for a running Windows
instance.

The Windows password is generated at boot by the C<EC2Config> service
or C<EC2Launch> scripts (Windows Server 2016 and later). This usually
only happens the first time an instance is launched. For more
information, see EC2Config
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingConfig_WinAMI.html)
and EC2Launch
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2launch.html) in
the I<Amazon EC2 User Guide>.

For the C<EC2Config> service, the password is not generated for
rebundled AMIs unless C<Ec2SetPassword> is enabled before bundling.

The password is encrypted using the key pair that you specified when
you launched the instance. You must provide the corresponding key pair
file.

When you launch an instance, password generation and encryption may
take a few minutes. If you try to retrieve the password before it's
available, the output returns an empty string. We recommend that you
wait up to 15 minutes after launching an instance before trying to
retrieve the generated password.


=head2 GetReservedInstancesExchangeQuote

=over

=item ReservedInstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::GetReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::GetReservedInstancesExchangeQuoteResult> instance

Returns a quote and exchange information for exchanging one or more
specified Convertible Reserved Instances for a new Convertible Reserved
Instance. If the exchange cannot be performed, the reason is returned
in the response. Use AcceptReservedInstancesExchangeQuote to perform
the exchange.


=head2 GetRouteServerAssociations

=over

=item RouteServerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetRouteServerAssociations>

Returns: a L<Paws::EC2::GetRouteServerAssociationsResult> instance

Gets information about the associations for the specified route server.

A route server association is the connection established between a
route server and a VPC.

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 GetRouteServerPropagations

=over

=item RouteServerId => Str

=item [DryRun => Bool]

=item [RouteTableId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetRouteServerPropagations>

Returns: a L<Paws::EC2::GetRouteServerPropagationsResult> instance

Gets information about the route propagations for the specified route
server.

When enabled, route server propagation installs the routes in the FIB
on the route table you've specified. Route server supports IPv4 and
IPv6 route propagation.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).


=head2 GetRouteServerRoutingDatabase

=over

=item RouteServerId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetRouteServerRoutingDatabase>

Returns: a L<Paws::EC2::GetRouteServerRoutingDatabaseResult> instance

Gets the routing database for the specified route server. The Routing
Information Base (RIB) (https://en.wikipedia.org/wiki/Routing_table)
serves as a database that stores all the routing information and
network topology data collected by a router or routing system, such as
routes learned from BGP peers. The RIB is constantly updated as new
routing information is received or existing routes change. This ensures
that the route server always has the most current view of the network
topology and can make optimal routing decisions.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).


=head2 GetSecurityGroupsForVpc

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetSecurityGroupsForVpc>

Returns: a L<Paws::EC2::GetSecurityGroupsForVpcResult> instance

Gets security groups that can be associated by the Amazon Web Services
account making the request with network interfaces in the specified
VPC.


=head2 GetSerialConsoleAccessStatus

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetSerialConsoleAccessStatus>

Returns: a L<Paws::EC2::GetSerialConsoleAccessStatusResult> instance

Retrieves the access status of your account to the EC2 serial console
of all instances. By default, access to the EC2 serial console is
disabled for your account. For more information, see Manage account
access to the EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 GetSnapshotBlockPublicAccessState

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetSnapshotBlockPublicAccessState>

Returns: a L<Paws::EC2::GetSnapshotBlockPublicAccessStateResult> instance

Gets the current state of I<block public access for snapshots> setting
for the account and Region.

For more information, see Block public access for snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
in the I<Amazon EBS User Guide>.


=head2 GetSpotPlacementScores

=over

=item TargetCapacity => Int

=item [DryRun => Bool]

=item [InstanceRequirementsWithMetadata => L<Paws::EC2::InstanceRequirementsWithMetadataRequest>]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegionNames => ArrayRef[Str|Undef]]

=item [SingleAvailabilityZone => Bool]

=item [TargetCapacityUnitType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetSpotPlacementScores>

Returns: a L<Paws::EC2::GetSpotPlacementScoresResult> instance

Calculates the Spot placement score for a Region or Availability Zone
based on the specified target capacity and compute requirements.

You can specify your compute requirements either by using
C<InstanceRequirementsWithMetadata> and letting Amazon EC2 choose the
optimal instance types to fulfill your Spot request, or you can specify
the instance types by using C<InstanceTypes>.

For more information, see Spot placement score
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
in the I<Amazon EC2 User Guide>.


=head2 GetSubnetCidrReservations

=over

=item SubnetId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetSubnetCidrReservations>

Returns: a L<Paws::EC2::GetSubnetCidrReservationsResult> instance

Gets information about the subnet CIDR reservations.


=head2 GetTransitGatewayAttachmentPropagations

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayAttachmentPropagations>

Returns: a L<Paws::EC2::GetTransitGatewayAttachmentPropagationsResult> instance

Lists the route tables to which the specified resource attachment
propagates routes.


=head2 GetTransitGatewayMulticastDomainAssociations

=over

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult> instance

Gets information about the associations for the transit gateway
multicast domain.


=head2 GetTransitGatewayPolicyTableAssociations

=over

=item TransitGatewayPolicyTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayPolicyTableAssociations>

Returns: a L<Paws::EC2::GetTransitGatewayPolicyTableAssociationsResult> instance

Gets a list of the transit gateway policy table associations.


=head2 GetTransitGatewayPolicyTableEntries

=over

=item TransitGatewayPolicyTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayPolicyTableEntries>

Returns: a L<Paws::EC2::GetTransitGatewayPolicyTableEntriesResult> instance

Returns a list of transit gateway policy table entries.


=head2 GetTransitGatewayPrefixListReferences

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayPrefixListReferences>

Returns: a L<Paws::EC2::GetTransitGatewayPrefixListReferencesResult> instance

Gets information about the prefix list references in a specified
transit gateway route table.


=head2 GetTransitGatewayRouteTableAssociations

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayRouteTableAssociations>

Returns: a L<Paws::EC2::GetTransitGatewayRouteTableAssociationsResult> instance

Gets information about the associations for the specified transit
gateway route table.


=head2 GetTransitGatewayRouteTablePropagations

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayRouteTablePropagations>

Returns: a L<Paws::EC2::GetTransitGatewayRouteTablePropagationsResult> instance

Gets information about the route table propagations for the specified
transit gateway route table.


=head2 GetVerifiedAccessEndpointPolicy

=over

=item VerifiedAccessEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetVerifiedAccessEndpointPolicy>

Returns: a L<Paws::EC2::GetVerifiedAccessEndpointPolicyResult> instance

Get the Verified Access policy associated with the endpoint.


=head2 GetVerifiedAccessEndpointTargets

=over

=item VerifiedAccessEndpointId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetVerifiedAccessEndpointTargets>

Returns: a L<Paws::EC2::GetVerifiedAccessEndpointTargetsResult> instance

Gets the targets for the specified network CIDR endpoint for Verified
Access.


=head2 GetVerifiedAccessGroupPolicy

=over

=item VerifiedAccessGroupId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetVerifiedAccessGroupPolicy>

Returns: a L<Paws::EC2::GetVerifiedAccessGroupPolicyResult> instance

Shows the contents of the Verified Access policy associated with the
group.


=head2 GetVpnConnectionDeviceSampleConfiguration

=over

=item VpnConnectionDeviceTypeId => Str

=item VpnConnectionId => Str

=item [DryRun => Bool]

=item [InternetKeyExchangeVersion => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetVpnConnectionDeviceSampleConfiguration>

Returns: a L<Paws::EC2::GetVpnConnectionDeviceSampleConfigurationResult> instance

Download an Amazon Web Services-provided sample configuration file to
be used with the customer gateway device specified for your
Site-to-Site VPN connection.


=head2 GetVpnConnectionDeviceTypes

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetVpnConnectionDeviceTypes>

Returns: a L<Paws::EC2::GetVpnConnectionDeviceTypesResult> instance

Obtain a list of customer gateway devices for which sample
configuration files can be provided. The request has no additional
parameters. You can also see the list of device types with sample
configuration files available under Your customer gateway device
(https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 GetVpnTunnelReplacementStatus

=over

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetVpnTunnelReplacementStatus>

Returns: a L<Paws::EC2::GetVpnTunnelReplacementStatusResult> instance

Get details of available tunnel endpoint maintenance.


=head2 ImportClientVpnClientCertificateRevocationList

=over

=item CertificateRevocationList => Str

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ImportClientVpnClientCertificateRevocationList>

Returns: a L<Paws::EC2::ImportClientVpnClientCertificateRevocationListResult> instance

Uploads a client certificate revocation list to the specified Client
VPN endpoint. Uploading a client certificate revocation list overwrites
the existing client certificate revocation list.

Uploading a client certificate revocation list resets existing client
connections.


=head2 ImportImage

=over

=item [Architecture => Str]

=item [BootMode => Str]

=item [ClientData => L<Paws::EC2::ClientData>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DiskContainers => ArrayRef[L<Paws::EC2::ImageDiskContainer>]]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [Hypervisor => Str]

=item [KmsKeyId => Str]

=item [LicenseSpecifications => ArrayRef[L<Paws::EC2::ImportImageLicenseConfigurationRequest>]]

=item [LicenseType => Str]

=item [Platform => Str]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [UsageOperation => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ImportImage>

Returns: a L<Paws::EC2::ImportImageResult> instance

To import your virtual machines (VMs) with a console-based experience,
you can use the I<Import virtual machine images to Amazon Web Services>
template in the Migration Hub Orchestrator console
(https://console.aws.amazon.com/migrationhub/orchestrator). For more
information, see the I<Migration Hub Orchestrator User Guide>
(https://docs.aws.amazon.com/migrationhub-orchestrator/latest/userguide/import-vm-images.html).

Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI).

Amazon Web Services VM Import/Export strongly recommends specifying a
value for either the C<--license-type> or C<--usage-operation>
parameter when you create a new VM Import task. This ensures your
operating system is licensed appropriately and your billing is
optimized.

For more information, see Importing a VM as an image using VM
Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
in the I<VM Import/Export User Guide>.


=head2 ImportInstance

=over

=item Platform => Str

=item [Description => Str]

=item [DiskImages => ArrayRef[L<Paws::EC2::DiskImage>]]

=item [DryRun => Bool]

=item [LaunchSpecification => L<Paws::EC2::ImportInstanceLaunchSpecification>]


=back

Each argument is described in detail in: L<Paws::EC2::ImportInstance>

Returns: a L<Paws::EC2::ImportInstanceResult> instance

We recommend that you use the C<ImportImage>
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html)
API instead. For more information, see Importing a VM as an image using
VM Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
in the I<VM Import/Export User Guide>.

Creates an import instance task using metadata from the specified disk
image.

This API action supports only single-volume VMs. To import multi-volume
VMs, use ImportImage instead.

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

This API action is not supported by the Command Line Interface (CLI).


=head2 ImportKeyPair

=over

=item KeyName => Str

=item PublicKeyMaterial => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ImportKeyPair>

Returns: a L<Paws::EC2::ImportKeyPairResult> instance

Imports the public key from an RSA or ED25519 key pair that you created
using a third-party tool. You give Amazon Web Services only the public
key. The private key is never transferred between you and Amazon Web
Services.

For more information about the requirements for importing a key pair,
see Create a key pair and import the public key to Amazon EC2
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws)
in the I<Amazon EC2 User Guide>.


=head2 ImportSnapshot

=over

=item [ClientData => L<Paws::EC2::ClientData>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DiskContainer => L<Paws::EC2::SnapshotDiskContainer>]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ImportSnapshot>

Returns: a L<Paws::EC2::ImportSnapshotResult> instance

Imports a disk into an EBS snapshot.

For more information, see Importing a disk as a snapshot using VM
Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html)
in the I<VM Import/Export User Guide>.


=head2 ImportVolume

=over

=item AvailabilityZone => Str

=item Image => L<Paws::EC2::DiskImageDetail>

=item Volume => L<Paws::EC2::VolumeDetail>

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ImportVolume>

Returns: a L<Paws::EC2::ImportVolumeResult> instance

This API action supports only single-volume VMs. To import multi-volume
VMs, use ImportImage instead. To import a disk to a snapshot, use
ImportSnapshot instead.

Creates an import volume task using metadata from the specified disk
image.

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

This API action is not supported by the Command Line Interface (CLI).


=head2 ListImagesInRecycleBin

=over

=item [DryRun => Bool]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ListImagesInRecycleBin>

Returns: a L<Paws::EC2::ListImagesInRecycleBinResult> instance

Lists one or more AMIs that are currently in the Recycle Bin. For more
information, see Recycle Bin
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the I<Amazon EC2 User Guide>.


=head2 ListSnapshotsInRecycleBin

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ListSnapshotsInRecycleBin>

Returns: a L<Paws::EC2::ListSnapshotsInRecycleBinResult> instance

Lists one or more snapshots that are currently in the Recycle Bin.


=head2 LockSnapshot

=over

=item LockMode => Str

=item SnapshotId => Str

=item [CoolOffPeriod => Int]

=item [DryRun => Bool]

=item [ExpirationDate => Str]

=item [LockDuration => Int]


=back

Each argument is described in detail in: L<Paws::EC2::LockSnapshot>

Returns: a L<Paws::EC2::LockSnapshotResult> instance

Locks an Amazon EBS snapshot in either I<governance> or I<compliance>
mode to protect it against accidental or malicious deletions for a
specific duration. A locked snapshot can't be deleted.

You can also use this action to modify the lock settings for a snapshot
that is already locked. The allowed modifications depend on the lock
mode and lock state:

=over

=item *

If the snapshot is locked in governance mode, you can modify the lock
mode and the lock duration or lock expiration date.

=item *

If the snapshot is locked in compliance mode and it is in the
cooling-off period, you can modify the lock mode and the lock duration
or lock expiration date.

=item *

If the snapshot is locked in compliance mode and the cooling-off period
has lapsed, you can only increase the lock duration or extend the lock
expiration date.

=back



=head2 ModifyAddressAttribute

=over

=item AllocationId => Str

=item [DomainName => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyAddressAttribute>

Returns: a L<Paws::EC2::ModifyAddressAttributeResult> instance

Modifies an attribute of the specified Elastic IP address. For
requirements, see Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 ModifyAvailabilityZoneGroup

=over

=item GroupName => Str

=item OptInStatus => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyAvailabilityZoneGroup>

Returns: a L<Paws::EC2::ModifyAvailabilityZoneGroupResult> instance

Changes the opt-in status of the specified zone group for your account.


=head2 ModifyCapacityReservation

=over

=item CapacityReservationId => Str

=item [Accept => Bool]

=item [AdditionalInfo => Str]

=item [DryRun => Bool]

=item [EndDate => Str]

=item [EndDateType => Str]

=item [InstanceCount => Int]

=item [InstanceMatchCriteria => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyCapacityReservation>

Returns: a L<Paws::EC2::ModifyCapacityReservationResult> instance

Modifies a Capacity Reservation's capacity, instance eligibility, and
the conditions under which it is to be released. You can't modify a
Capacity Reservation's instance type, EBS optimization, platform,
instance store settings, Availability Zone, or tenancy. If you need to
modify any of these attributes, we recommend that you cancel the
Capacity Reservation, and then create a new one with the required
attributes. For more information, see Modify an active Capacity
Reservation
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-modify.html).

The allowed modifications depend on the state of the Capacity
Reservation:

=over

=item *

C<assessing> or C<scheduled> state - You can modify the tags only.

=item *

C<pending> state - You can't modify the Capacity Reservation in any
way.

=item *

C<active> state but still within the commitment duration - You can't
decrease the instance count or set an end date that is within the
commitment duration. All other modifications are allowed.

=item *

C<active> state with no commitment duration or elapsed commitment
duration - All modifications are allowed.

=item *

C<expired>, C<cancelled>, C<unsupported>, or C<failed> state - You
can't modify the Capacity Reservation in any way.

=back



=head2 ModifyCapacityReservationFleet

=over

=item CapacityReservationFleetId => Str

=item [DryRun => Bool]

=item [EndDate => Str]

=item [RemoveEndDate => Bool]

=item [TotalTargetCapacity => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyCapacityReservationFleet>

Returns: a L<Paws::EC2::ModifyCapacityReservationFleetResult> instance

Modifies a Capacity Reservation Fleet.

When you modify the total target capacity of a Capacity Reservation
Fleet, the Fleet automatically creates new Capacity Reservations, or
modifies or cancels existing Capacity Reservations in the Fleet to meet
the new total target capacity. When you modify the end date for the
Fleet, the end dates for all of the individual Capacity Reservations in
the Fleet are updated accordingly.


=head2 ModifyClientVpnEndpoint

=over

=item ClientVpnEndpointId => Str

=item [ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>]

=item [ClientLoginBannerOptions => L<Paws::EC2::ClientLoginBannerOptions>]

=item [ClientRouteEnforcementOptions => L<Paws::EC2::ClientRouteEnforcementOptions>]

=item [ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>]

=item [Description => Str]

=item [DisconnectOnSessionTimeout => Bool]

=item [DnsServers => L<Paws::EC2::DnsServersOptionsModifyStructure>]

=item [DryRun => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SelfServicePortal => Str]

=item [ServerCertificateArn => Str]

=item [SessionTimeoutHours => Int]

=item [SplitTunnel => Bool]

=item [VpcId => Str]

=item [VpnPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyClientVpnEndpoint>

Returns: a L<Paws::EC2::ModifyClientVpnEndpointResult> instance

Modifies the specified Client VPN endpoint. Modifying the DNS server
resets existing client connections.


=head2 ModifyDefaultCreditSpecification

=over

=item CpuCredits => Str

=item InstanceFamily => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyDefaultCreditSpecification>

Returns: a L<Paws::EC2::ModifyDefaultCreditSpecificationResult> instance

Modifies the default credit option for CPU usage of burstable
performance instances. The default credit option is set at the account
level per Amazon Web Services Region, and is specified per instance
family. All new burstable performance instances in the account launch
using the default credit option.

C<ModifyDefaultCreditSpecification> is an asynchronous operation, which
works at an Amazon Web Services Region level and modifies the credit
option for each Availability Zone. All zones in a Region are updated
within five minutes. But if instances are launched during this
operation, they might not get the new credit option until the zone is
updated. To verify whether the update has occurred, you can call
C<GetDefaultCreditSpecification> and check
C<DefaultCreditSpecification> for updates.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyEbsDefaultKmsKeyId

=over

=item KmsKeyId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::ModifyEbsDefaultKmsKeyIdResult> instance

Changes the default KMS key for EBS encryption by default for your
account in this Region.

Amazon Web Services creates a unique Amazon Web Services managed KMS
key in each Region for use with encryption by default. If you change
the default KMS key to a symmetric customer managed KMS key, it is used
instead of the Amazon Web Services managed KMS key. To reset the
default KMS key to the Amazon Web Services managed KMS key for EBS, use
ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric KMS
keys.

If you delete or disable the customer managed KMS key that you
specified for use with encryption by default, your instances will fail
to launch.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 ModifyFleet

=over

=item FleetId => Str

=item [Context => Str]

=item [DryRun => Bool]

=item [ExcessCapacityTerminationPolicy => Str]

=item [LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::FleetLaunchTemplateConfigRequest>]]

=item [TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyFleet>

Returns: a L<Paws::EC2::ModifyFleetResult> instance

Modifies the specified EC2 Fleet.

You can only modify an EC2 Fleet request of type C<maintain>.

While the EC2 Fleet is being modified, it is in the C<modifying> state.

To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet
launches the additional Spot Instances according to the allocation
strategy for the EC2 Fleet request. If the allocation strategy is
C<lowest-price>, the EC2 Fleet launches instances using the Spot
Instance pool with the lowest price. If the allocation strategy is
C<diversified>, the EC2 Fleet distributes the instances across the Spot
Instance pools. If the allocation strategy is C<capacity-optimized>,
EC2 Fleet launches instances from Spot Instance pools with optimal
capacity for the number of instances that are launching.

To scale down your EC2 Fleet, decrease its target capacity. First, the
EC2 Fleet cancels any open requests that exceed the new target
capacity. You can request that the EC2 Fleet terminate Spot Instances
until the size of the fleet no longer exceeds the new target capacity.
If the allocation strategy is C<lowest-price>, the EC2 Fleet terminates
the instances with the highest price per unit. If the allocation
strategy is C<capacity-optimized>, the EC2 Fleet terminates the
instances in the Spot Instance pools that have the least available Spot
Instance capacity. If the allocation strategy is C<diversified>, the
EC2 Fleet terminates instances across the Spot Instance pools.
Alternatively, you can request that the EC2 Fleet keep the fleet at its
current size, but not replace any Spot Instances that are interrupted
or that you terminate manually.

If you are finished with your EC2 Fleet for now, but will use it again
later, you can set the target capacity to 0.


=head2 ModifyFpgaImageAttribute

=over

=item FpgaImageId => Str

=item [Attribute => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [LoadPermission => L<Paws::EC2::LoadPermissionModifications>]

=item [Name => Str]

=item [OperationType => Str]

=item [ProductCodes => ArrayRef[Str|Undef]]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyFpgaImageAttribute>

Returns: a L<Paws::EC2::ModifyFpgaImageAttributeResult> instance

Modifies the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 ModifyHosts

=over

=item HostIds => ArrayRef[Str|Undef]

=item [AutoPlacement => Str]

=item [HostMaintenance => Str]

=item [HostRecovery => Str]

=item [InstanceFamily => Str]

=item [InstanceType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyHosts>

Returns: a L<Paws::EC2::ModifyHostsResult> instance

Modify the auto-placement setting of a Dedicated Host. When
auto-placement is enabled, any instances that you launch with a tenancy
of C<host> but without a specific host ID are placed onto any available
Dedicated Host in your account that has auto-placement enabled. When
auto-placement is disabled, you need to provide a host ID to have the
instance launch onto a specific host. If no host ID is provided, the
instance is launched onto a suitable host with auto-placement enabled.

You can also use this API action to modify a Dedicated Host to support
either multiple instance types in an instance family, or to support a
specific instance type only.


=head2 ModifyIdentityIdFormat

=over

=item PrincipalArn => Str

=item Resource => Str

=item UseLongIds => Bool


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIdentityIdFormat>

Returns: nothing

Modifies the ID format of a resource for a specified IAM user, IAM
role, or the root user for an account; or all IAM users, IAM roles, and
the root user for an account. You can specify that resources should
receive longer IDs (17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource
types that are within the opt-in period. Resources currently in their
opt-in period include: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<route-table> |
C<route-table-association> | C<security-group> | C<subnet> |
C<subnet-cidr-block-association> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

For more information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

This setting applies to the principal specified in the request; it does
not apply to the principal that makes the request.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyIdFormat

=over

=item Resource => Str

=item UseLongIds => Bool


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIdFormat>

Returns: nothing

Modifies the ID format for the specified resource on a per-Region
basis. You can specify that resources should receive longer IDs
(17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource
types that are within the opt-in period. Resources currently in their
opt-in period include: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<route-table> |
C<route-table-association> | C<security-group> | C<subnet> |
C<subnet-cidr-block-association> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

This setting applies to the IAM user who makes the request; it does not
apply to the entire Amazon Web Services account. By default, an IAM
user defaults to the same settings as the root user. If you're using
this action as the root user, then these settings apply to the entire
account, unless an IAM user explicitly overrides these settings for
themselves. For more information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyImageAttribute

=over

=item ImageId => Str

=item [Attribute => Str]

=item [Description => L<Paws::EC2::AttributeValue>]

=item [DryRun => Bool]

=item [ImdsSupport => L<Paws::EC2::AttributeValue>]

=item [LaunchPermission => L<Paws::EC2::LaunchPermissionModifications>]

=item [OperationType => Str]

=item [OrganizationalUnitArns => ArrayRef[Str|Undef]]

=item [OrganizationArns => ArrayRef[Str|Undef]]

=item [ProductCodes => ArrayRef[Str|Undef]]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyImageAttribute>

Returns: nothing

Modifies the specified attribute of the specified AMI. You can specify
only one attribute at a time.

To specify the attribute, you can use the C<Attribute> parameter, or
one of the following parameters: C<Description>, C<ImdsSupport>, or
C<LaunchPermission>.

Images with an Amazon Web Services Marketplace product code cannot be
made public.

To enable the SriovNetSupport enhanced networking attribute of an
image, enable SriovNetSupport on an instance and create an AMI from the
instance.


=head2 ModifyInstanceAttribute

=over

=item InstanceId => Str

=item [Attribute => Str]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMappingSpecification>]]

=item [DisableApiStop => L<Paws::EC2::AttributeBooleanValue>]

=item [DisableApiTermination => L<Paws::EC2::AttributeBooleanValue>]

=item [DryRun => Bool]

=item [EbsOptimized => L<Paws::EC2::AttributeBooleanValue>]

=item [EnaSupport => L<Paws::EC2::AttributeBooleanValue>]

=item [Groups => ArrayRef[Str|Undef]]

=item [InstanceInitiatedShutdownBehavior => L<Paws::EC2::AttributeValue>]

=item [InstanceType => L<Paws::EC2::AttributeValue>]

=item [Kernel => L<Paws::EC2::AttributeValue>]

=item [Ramdisk => L<Paws::EC2::AttributeValue>]

=item [SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>]

=item [SriovNetSupport => L<Paws::EC2::AttributeValue>]

=item [UserData => L<Paws::EC2::BlobAttributeValue>]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceAttribute>

Returns: nothing

Modifies the specified attribute of the specified instance. You can
specify only one attribute at a time.

B<Note: >Using this action to change the security groups associated
with an elastic network interface (ENI) attached to an instance can
result in an error if the instance has more than one ENI. To change the
security groups associated with an ENI attached to an instance that has
multiple ENIs, we recommend that you use the
ModifyNetworkInterfaceAttribute action.

To modify some attributes, the instance must be stopped. For more
information, see Modify a stopped instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceCapacityReservationAttributes

=over

=item CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceCapacityReservationAttributes>

Returns: a L<Paws::EC2::ModifyInstanceCapacityReservationAttributesResult> instance

Modifies the Capacity Reservation settings for a stopped instance. Use
this action to configure an instance to target a specific Capacity
Reservation, run in any C<open> Capacity Reservation with matching
attributes, run in On-Demand Instance capacity, or only run in a
Capacity Reservation.


=head2 ModifyInstanceCpuOptions

=over

=item CoreCount => Int

=item InstanceId => Str

=item ThreadsPerCore => Int

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceCpuOptions>

Returns: a L<Paws::EC2::ModifyInstanceCpuOptionsResult> instance

By default, all vCPUs for the instance type are active when you launch
an instance. When you configure the number of active vCPUs for the
instance, it can help you save on licensing costs and optimize
performance. The base cost of the instance remains unchanged.

The number of active vCPUs equals the number of threads per CPU core
multiplied by the number of cores. The instance must be in a C<Stopped>
state before you make changes.

Some instance type options do not support this capability. For more
information, see Supported CPU options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cpu-options-supported-instances-values.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceCreditSpecification

=over

=item InstanceCreditSpecifications => ArrayRef[L<Paws::EC2::InstanceCreditSpecificationRequest>]

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceCreditSpecification>

Returns: a L<Paws::EC2::ModifyInstanceCreditSpecificationResult> instance

Modifies the credit option for CPU usage on a running or stopped
burstable performance instance. The credit options are C<standard> and
C<unlimited>.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceEventStartTime

=over

=item InstanceEventId => Str

=item InstanceId => Str

=item NotBefore => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceEventStartTime>

Returns: a L<Paws::EC2::ModifyInstanceEventStartTimeResult> instance

Modifies the start time for a scheduled Amazon EC2 instance event.


=head2 ModifyInstanceEventWindow

=over

=item InstanceEventWindowId => Str

=item [CronExpression => Str]

=item [DryRun => Bool]

=item [Name => Str]

=item [TimeRanges => ArrayRef[L<Paws::EC2::InstanceEventWindowTimeRangeRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceEventWindow>

Returns: a L<Paws::EC2::ModifyInstanceEventWindowResult> instance

Modifies the specified event window.

You can define either a set of time ranges or a cron expression when
modifying the event window, but not both.

To modify the targets associated with the event window, use the
AssociateInstanceEventWindow and DisassociateInstanceEventWindow API.

If Amazon Web Services has already scheduled an event, modifying an
event window won't change the time of the scheduled event.

For more information, see Define event windows for scheduled events
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceMaintenanceOptions

=over

=item InstanceId => Str

=item [AutoRecovery => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceMaintenanceOptions>

Returns: a L<Paws::EC2::ModifyInstanceMaintenanceOptionsResult> instance

Modifies the recovery behavior of your instance to disable simplified
automatic recovery or set the recovery behavior to default. The default
configuration will not enable simplified automatic recovery for an
unsupported instance type. For more information, see Simplified
automatic recovery
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).


=head2 ModifyInstanceMetadataDefaults

=over

=item [DryRun => Bool]

=item [HttpEndpoint => Str]

=item [HttpPutResponseHopLimit => Int]

=item [HttpTokens => Str]

=item [InstanceMetadataTags => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceMetadataDefaults>

Returns: a L<Paws::EC2::ModifyInstanceMetadataDefaultsResult> instance

Modifies the default instance metadata service (IMDS) settings at the
account level in the specified Amazon Web Services Region.

To remove a parameter's account-level default setting, specify
C<no-preference>. If an account-level setting is cleared with
C<no-preference>, then the instance launch considers the other instance
metadata settings. For more information, see Order of precedence for
instance metadata options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html#instance-metadata-options-order-of-precedence)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceMetadataOptions

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [HttpEndpoint => Str]

=item [HttpProtocolIpv6 => Str]

=item [HttpPutResponseHopLimit => Int]

=item [HttpTokens => Str]

=item [InstanceMetadataTags => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceMetadataOptions>

Returns: a L<Paws::EC2::ModifyInstanceMetadataOptionsResult> instance

Modify the instance metadata parameters on a running or stopped
instance. When you modify the parameters on a stopped instance, they
are applied when the instance is started. When you modify the
parameters on a running instance, the API responds with a state of
E<ldquo>pendingE<rdquo>. After the parameter modifications are
successfully applied to the instance, the state of the modifications
changes from E<ldquo>pendingE<rdquo> to E<ldquo>appliedE<rdquo> in
subsequent describe-instances API calls. For more information, see
Instance metadata and user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceNetworkPerformanceOptions

=over

=item BandwidthWeighting => Str

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceNetworkPerformanceOptions>

Returns: a L<Paws::EC2::ModifyInstanceNetworkPerformanceResult> instance

Change the configuration of the network performance options for an
existing instance.


=head2 ModifyInstancePlacement

=over

=item InstanceId => Str

=item [Affinity => Str]

=item [GroupId => Str]

=item [GroupName => Str]

=item [HostId => Str]

=item [HostResourceGroupArn => Str]

=item [PartitionNumber => Int]

=item [Tenancy => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstancePlacement>

Returns: a L<Paws::EC2::ModifyInstancePlacementResult> instance

Modifies the placement attributes for a specified instance. You can do
the following:

=over

=item *

Modify the affinity between an instance and a Dedicated Host
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html).
When affinity is set to C<host> and the instance is not associated with
a specific Dedicated Host, the next time the instance is started, it is
automatically associated with the host on which it lands. If the
instance is restarted or rebooted, this relationship persists.

=item *

Change the Dedicated Host with which an instance is associated.

=item *

Change the instance tenancy of an instance.

=item *

Move an instance to or from a placement group
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).

=back

At least one attribute for affinity, host ID, tenancy, or placement
group name must be specified in the request. Affinity and tenancy can
be modified in the same request.

To modify the host ID, tenancy, placement group, or partition for an
instance, the instance must be in the C<stopped> state.


=head2 ModifyIpam

=over

=item IpamId => Str

=item [AddOperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]]

=item [Description => Str]

=item [DryRun => Bool]

=item [EnablePrivateGua => Bool]

=item [MeteredAccount => Str]

=item [RemoveOperatingRegions => ArrayRef[L<Paws::EC2::RemoveIpamOperatingRegion>]]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIpam>

Returns: a L<Paws::EC2::ModifyIpamResult> instance

Modify the configurations of an IPAM.


=head2 ModifyIpamPool

=over

=item IpamPoolId => Str

=item [AddAllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]]

=item [AllocationDefaultNetmaskLength => Int]

=item [AllocationMaxNetmaskLength => Int]

=item [AllocationMinNetmaskLength => Int]

=item [AutoImport => Bool]

=item [ClearAllocationDefaultNetmaskLength => Bool]

=item [Description => Str]

=item [DryRun => Bool]

=item [RemoveAllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIpamPool>

Returns: a L<Paws::EC2::ModifyIpamPoolResult> instance

Modify the configurations of an IPAM pool.

For more information, see Modify a pool
(https://docs.aws.amazon.com/vpc/latest/ipam/mod-pool-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 ModifyIpamResourceCidr

=over

=item CurrentIpamScopeId => Str

=item Monitored => Bool

=item ResourceCidr => Str

=item ResourceId => Str

=item ResourceRegion => Str

=item [DestinationIpamScopeId => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIpamResourceCidr>

Returns: a L<Paws::EC2::ModifyIpamResourceCidrResult> instance

Modify a resource CIDR. You can use this action to transfer resource
CIDRs between scopes and ignore resource CIDRs that you do not want to
manage. If set to false, the resource will not be tracked for overlap,
it cannot be auto-imported into a pool, and it will be removed from any
pool it has an allocation in.

For more information, see Move resource CIDRs between scopes
(https://docs.aws.amazon.com/vpc/latest/ipam/move-resource-ipam.html)
and Change the monitoring state of resource CIDRs
(https://docs.aws.amazon.com/vpc/latest/ipam/change-monitoring-state-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 ModifyIpamResourceDiscovery

=over

=item IpamResourceDiscoveryId => Str

=item [AddOperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]]

=item [AddOrganizationalUnitExclusions => ArrayRef[L<Paws::EC2::AddIpamOrganizationalUnitExclusion>]]

=item [Description => Str]

=item [DryRun => Bool]

=item [RemoveOperatingRegions => ArrayRef[L<Paws::EC2::RemoveIpamOperatingRegion>]]

=item [RemoveOrganizationalUnitExclusions => ArrayRef[L<Paws::EC2::RemoveIpamOrganizationalUnitExclusion>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIpamResourceDiscovery>

Returns: a L<Paws::EC2::ModifyIpamResourceDiscoveryResult> instance

Modifies a resource discovery. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.


=head2 ModifyIpamScope

=over

=item IpamScopeId => Str

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIpamScope>

Returns: a L<Paws::EC2::ModifyIpamScopeResult> instance

Modify an IPAM scope.


=head2 ModifyLaunchTemplate

=over

=item [ClientToken => Str]

=item [DefaultVersion => Str]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyLaunchTemplate>

Returns: a L<Paws::EC2::ModifyLaunchTemplateResult> instance

Modifies a launch template. You can specify which version of the launch
template to set as the default version. When launching an instance, the
default version applies when a launch template version is not
specified.


=head2 ModifyLocalGatewayRoute

=over

=item LocalGatewayRouteTableId => Str

=item [DestinationCidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [LocalGatewayVirtualInterfaceGroupId => Str]

=item [NetworkInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyLocalGatewayRoute>

Returns: a L<Paws::EC2::ModifyLocalGatewayRouteResult> instance

Modifies the specified local gateway route.


=head2 ModifyManagedPrefixList

=over

=item PrefixListId => Str

=item [AddEntries => ArrayRef[L<Paws::EC2::AddPrefixListEntry>]]

=item [CurrentVersion => Int]

=item [DryRun => Bool]

=item [MaxEntries => Int]

=item [PrefixListName => Str]

=item [RemoveEntries => ArrayRef[L<Paws::EC2::RemovePrefixListEntry>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyManagedPrefixList>

Returns: a L<Paws::EC2::ModifyManagedPrefixListResult> instance

Modifies the specified managed prefix list.

Adding or removing entries in a prefix list creates a new version of
the prefix list. Changing the name of the prefix list does not affect
the version.

If you specify a current version number that does not match the true
current version number, the request fails.


=head2 ModifyNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [AssociatePublicIpAddress => Bool]

=item [Attachment => L<Paws::EC2::NetworkInterfaceAttachmentChanges>]

=item [ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>]

=item [Description => L<Paws::EC2::AttributeValue>]

=item [DryRun => Bool]

=item [EnablePrimaryIpv6 => Bool]

=item [EnaSrdSpecification => L<Paws::EC2::EnaSrdSpecification>]

=item [Groups => ArrayRef[Str|Undef]]

=item [SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyNetworkInterfaceAttribute>

Returns: nothing

Modifies the specified network interface attribute. You can specify
only one attribute at a time. You can use this action to attach and
detach security groups from an existing EC2 instance.


=head2 ModifyPrivateDnsNameOptions

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [EnableResourceNameDnsAAAARecord => Bool]

=item [EnableResourceNameDnsARecord => Bool]

=item [PrivateDnsHostnameType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyPrivateDnsNameOptions>

Returns: a L<Paws::EC2::ModifyPrivateDnsNameOptionsResult> instance

Modifies the options for instance hostnames for the specified instance.


=head2 ModifyReservedInstances

=over

=item ReservedInstancesIds => ArrayRef[Str|Undef]

=item TargetConfigurations => ArrayRef[L<Paws::EC2::ReservedInstancesConfiguration>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyReservedInstances>

Returns: a L<Paws::EC2::ModifyReservedInstancesResult> instance

Modifies the configuration of your Reserved Instances, such as the
Availability Zone, instance count, or instance type. The Reserved
Instances to be modified must be identical, except for Availability
Zone, network platform, and instance type.

For more information, see Modify Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyRouteServer

=over

=item RouteServerId => Str

=item [DryRun => Bool]

=item [PersistRoutes => Str]

=item [PersistRoutesDuration => Int]

=item [SnsNotificationsEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyRouteServer>

Returns: a L<Paws::EC2::ModifyRouteServerResult> instance

Modifies the configuration of an existing route server.

Amazon VPC Route Server simplifies routing for traffic between
workloads that are deployed within a VPC and its internet gateways.
With this feature, VPC Route Server dynamically updates VPC and
internet gateway route tables with your preferred IPv4 or IPv6 routes
to achieve routing fault tolerance for those workloads. This enables
you to automatically reroute traffic within a VPC, which increases the
manageability of VPC routing and interoperability with third-party
workloads.

Route server supports the follow route table types:

=over

=item *

VPC route tables not associated with subnets

=item *

Subnet route tables

=item *

Internet gateway route tables

=back

Route server does not support route tables associated with virtual
private gateways. To propagate routes into a transit gateway route
table, use Transit Gateway Connect
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html).

For more information see Dynamic routing in your VPC with VPC Route
Server
(https://docs.aws.amazon.com/vpc/latest/userguide/dynamic-routing-route-server.html)
in the I<Amazon VPC User Guide>.


=head2 ModifySecurityGroupRules

=over

=item GroupId => Str

=item SecurityGroupRules => ArrayRef[L<Paws::EC2::SecurityGroupRuleUpdate>]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySecurityGroupRules>

Returns: a L<Paws::EC2::ModifySecurityGroupRulesResult> instance

Modifies the rules of a security group.


=head2 ModifySnapshotAttribute

=over

=item SnapshotId => Str

=item [Attribute => Str]

=item [CreateVolumePermission => L<Paws::EC2::CreateVolumePermissionModifications>]

=item [DryRun => Bool]

=item [GroupNames => ArrayRef[Str|Undef]]

=item [OperationType => Str]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySnapshotAttribute>

Returns: nothing

Adds or removes permission settings for the specified snapshot. You may
add or remove specified Amazon Web Services account IDs from a
snapshot's list of create volume permissions, but you cannot do both in
a single operation. If you need to both add and remove account IDs for
a snapshot, you must use multiple operations. You can make up to 500
modifications to a snapshot in a single operation.

Encrypted snapshots and snapshots with Amazon Web Services Marketplace
product codes cannot be made public. Snapshots encrypted with your
default KMS key cannot be shared with other accounts.

For more information about modifying snapshot permissions, see Share a
snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modifying-snapshot-permissions.html)
in the I<Amazon EBS User Guide>.


=head2 ModifySnapshotTier

=over

=item SnapshotId => Str

=item [DryRun => Bool]

=item [StorageTier => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySnapshotTier>

Returns: a L<Paws::EC2::ModifySnapshotTierResult> instance

Archives an Amazon EBS snapshot. When you archive a snapshot, it is
converted to a full snapshot that includes all of the blocks of data
that were written to the volume at the time the snapshot was created,
and moved from the standard tier to the archive tier. For more
information, see Archive Amazon EBS snapshots
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshot-archive.html)
in the I<Amazon EBS User Guide>.


=head2 ModifySpotFleetRequest

=over

=item SpotFleetRequestId => Str

=item [Context => Str]

=item [ExcessCapacityTerminationPolicy => Str]

=item [LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::LaunchTemplateConfig>]]

=item [OnDemandTargetCapacity => Int]

=item [TargetCapacity => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySpotFleetRequest>

Returns: a L<Paws::EC2::ModifySpotFleetRequestResponse> instance

Modifies the specified Spot Fleet request.

You can only modify a Spot Fleet request of type C<maintain>.

While the Spot Fleet request is being modified, it is in the
C<modifying> state.

To scale up your Spot Fleet, increase its target capacity. The Spot
Fleet launches the additional Spot Instances according to the
allocation strategy for the Spot Fleet request. If the allocation
strategy is C<lowestPrice>, the Spot Fleet launches instances using the
Spot Instance pool with the lowest price. If the allocation strategy is
C<diversified>, the Spot Fleet distributes the instances across the
Spot Instance pools. If the allocation strategy is
C<capacityOptimized>, Spot Fleet launches instances from Spot Instance
pools with optimal capacity for the number of instances that are
launching.

To scale down your Spot Fleet, decrease its target capacity. First, the
Spot Fleet cancels any open requests that exceed the new target
capacity. You can request that the Spot Fleet terminate Spot Instances
until the size of the fleet no longer exceeds the new target capacity.
If the allocation strategy is C<lowestPrice>, the Spot Fleet terminates
the instances with the highest price per unit. If the allocation
strategy is C<capacityOptimized>, the Spot Fleet terminates the
instances in the Spot Instance pools that have the least available Spot
Instance capacity. If the allocation strategy is C<diversified>, the
Spot Fleet terminates instances across the Spot Instance pools.
Alternatively, you can request that the Spot Fleet keep the fleet at
its current size, but not replace any Spot Instances that are
interrupted or that you terminate manually.

If you are finished with your Spot Fleet for now, but will use it again
later, you can set the target capacity to 0.


=head2 ModifySubnetAttribute

=over

=item SubnetId => Str

=item [AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>]

=item [CustomerOwnedIpv4Pool => Str]

=item [DisableLniAtDeviceIndex => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableDns64 => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableLniAtDeviceIndex => Int]

=item [EnableResourceNameDnsAAAARecordOnLaunch => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableResourceNameDnsARecordOnLaunch => L<Paws::EC2::AttributeBooleanValue>]

=item [MapCustomerOwnedIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>]

=item [MapPublicIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>]

=item [PrivateDnsHostnameTypeOnLaunch => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySubnetAttribute>

Returns: nothing

Modifies a subnet attribute. You can only modify one attribute at a
time.

Use this action to modify subnets on Amazon Web Services Outposts.

=over

=item *

To modify a subnet on an Outpost rack, set both
C<MapCustomerOwnedIpOnLaunch> and C<CustomerOwnedIpv4Pool>. These two
parameters act as a single attribute.

=item *

To modify a subnet on an Outpost server, set either
C<EnableLniAtDeviceIndex> or C<DisableLniAtDeviceIndex>.

=back

For more information about Amazon Web Services Outposts, see the
following:

=over

=item *

Outpost servers
(https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html)

=item *

Outpost racks
(https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html)

=back



=head2 ModifyTrafficMirrorFilterNetworkServices

=over

=item TrafficMirrorFilterId => Str

=item [AddNetworkServices => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [RemoveNetworkServices => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorFilterNetworkServices>

Returns: a L<Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult> instance

Allows or restricts mirroring network services.

By default, Amazon DNS network services are not eligible for Traffic
Mirror. Use C<AddNetworkServices> to add network services to a Traffic
Mirror filter. When a network service is added to the Traffic Mirror
filter, all traffic related to that network service will be mirrored.
When you no longer want to mirror network services, use
C<RemoveNetworkServices> to remove the network services from the
Traffic Mirror filter.


=head2 ModifyTrafficMirrorFilterRule

=over

=item TrafficMirrorFilterRuleId => Str

=item [Description => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [DryRun => Bool]

=item [Protocol => Int]

=item [RemoveFields => ArrayRef[Str|Undef]]

=item [RuleAction => Str]

=item [RuleNumber => Int]

=item [SourceCidrBlock => Str]

=item [SourcePortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [TrafficDirection => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::ModifyTrafficMirrorFilterRuleResult> instance

Modifies the specified Traffic Mirror rule.

C<DestinationCidrBlock> and C<SourceCidrBlock> must both be an IPv4
range or an IPv6 range.


=head2 ModifyTrafficMirrorSession

=over

=item TrafficMirrorSessionId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [PacketLength => Int]

=item [RemoveFields => ArrayRef[Str|Undef]]

=item [SessionNumber => Int]

=item [TrafficMirrorFilterId => Str]

=item [TrafficMirrorTargetId => Str]

=item [VirtualNetworkId => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorSession>

Returns: a L<Paws::EC2::ModifyTrafficMirrorSessionResult> instance

Modifies a Traffic Mirror session.


=head2 ModifyTransitGateway

=over

=item TransitGatewayId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::ModifyTransitGatewayOptions>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGateway>

Returns: a L<Paws::EC2::ModifyTransitGatewayResult> instance

Modifies the specified transit gateway. When you modify a transit
gateway, the modified options are applied to new transit gateway
attachments only. Your existing transit gateway attachments are not
modified.


=head2 ModifyTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::ModifyTransitGatewayPrefixListReferenceResult> instance

Modifies a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 ModifyTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [AddSubnetIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::ModifyTransitGatewayVpcAttachmentRequestOptions>]

=item [RemoveSubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::ModifyTransitGatewayVpcAttachmentResult> instance

Modifies the specified VPC attachment.


=head2 ModifyVerifiedAccessEndpoint

=over

=item VerifiedAccessEndpointId => Str

=item [CidrOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointCidrOptions>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [LoadBalancerOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions>]

=item [NetworkInterfaceOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointEniOptions>]

=item [RdsOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointRdsOptions>]

=item [VerifiedAccessGroupId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessEndpoint>

Returns: a L<Paws::EC2::ModifyVerifiedAccessEndpointResult> instance

Modifies the configuration of the specified Amazon Web Services
Verified Access endpoint.


=head2 ModifyVerifiedAccessEndpointPolicy

=over

=item VerifiedAccessEndpointId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [PolicyDocument => Str]

=item [PolicyEnabled => Bool]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessEndpointPolicy>

Returns: a L<Paws::EC2::ModifyVerifiedAccessEndpointPolicyResult> instance

Modifies the specified Amazon Web Services Verified Access endpoint
policy.


=head2 ModifyVerifiedAccessGroup

=over

=item VerifiedAccessGroupId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [VerifiedAccessInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessGroup>

Returns: a L<Paws::EC2::ModifyVerifiedAccessGroupResult> instance

Modifies the specified Amazon Web Services Verified Access group
configuration.


=head2 ModifyVerifiedAccessGroupPolicy

=over

=item VerifiedAccessGroupId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [PolicyDocument => Str]

=item [PolicyEnabled => Bool]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessGroupPolicy>

Returns: a L<Paws::EC2::ModifyVerifiedAccessGroupPolicyResult> instance

Modifies the specified Amazon Web Services Verified Access group
policy.


=head2 ModifyVerifiedAccessInstance

=over

=item VerifiedAccessInstanceId => Str

=item [CidrEndpointsCustomSubDomain => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessInstance>

Returns: a L<Paws::EC2::ModifyVerifiedAccessInstanceResult> instance

Modifies the configuration of the specified Amazon Web Services
Verified Access instance.


=head2 ModifyVerifiedAccessInstanceLoggingConfiguration

=over

=item AccessLogs => L<Paws::EC2::VerifiedAccessLogOptions>

=item VerifiedAccessInstanceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfiguration>

Returns: a L<Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfigurationResult> instance

Modifies the logging configuration for the specified Amazon Web
Services Verified Access instance.


=head2 ModifyVerifiedAccessTrustProvider

=over

=item VerifiedAccessTrustProviderId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DeviceOptions => L<Paws::EC2::ModifyVerifiedAccessTrustProviderDeviceOptions>]

=item [DryRun => Bool]

=item [NativeApplicationOidcOptions => L<Paws::EC2::ModifyVerifiedAccessNativeApplicationOidcOptions>]

=item [OidcOptions => L<Paws::EC2::ModifyVerifiedAccessTrustProviderOidcOptions>]

=item [SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVerifiedAccessTrustProvider>

Returns: a L<Paws::EC2::ModifyVerifiedAccessTrustProviderResult> instance

Modifies the configuration of the specified Amazon Web Services
Verified Access trust provider.


=head2 ModifyVolume

=over

=item VolumeId => Str

=item [DryRun => Bool]

=item [Iops => Int]

=item [MultiAttachEnabled => Bool]

=item [Size => Int]

=item [Throughput => Int]

=item [VolumeType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVolume>

Returns: a L<Paws::EC2::ModifyVolumeResult> instance

You can modify several parameters of an existing EBS volume, including
volume size, volume type, and IOPS capacity. If your EBS volume is
attached to a current-generation EC2 instance type, you might be able
to apply these changes without stopping the instance or detaching the
volume from it. For more information about modifying EBS volumes, see
Amazon EBS Elastic Volumes
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modify-volume.html)
in the I<Amazon EBS User Guide>.

When you complete a resize operation on your volume, you need to extend
the volume's file-system size to take advantage of the new storage
capacity. For more information, see Extend the file system
(https://docs.aws.amazon.com/ebs/latest/userguide/recognize-expanded-volume-linux.html).

For more information, see Monitor the progress of volume modifications
(https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-modifications.html)
in the I<Amazon EBS User Guide>.

With previous-generation instance types, resizing an EBS volume might
require detaching and reattaching the volume or stopping and restarting
the instance.

After modifying a volume, you must wait at least six hours and ensure
that the volume is in the C<in-use> or C<available> state before you
can modify the same volume. This is sometimes referred to as a cooldown
period.


=head2 ModifyVolumeAttribute

=over

=item VolumeId => Str

=item [AutoEnableIO => L<Paws::EC2::AttributeBooleanValue>]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVolumeAttribute>

Returns: nothing

Modifies a volume attribute.

By default, all I/O operations for the volume are suspended when the
data on the volume is determined to be potentially inconsistent, to
prevent undetectable, latent data corruption. The I/O access to the
volume can be resumed by first enabling I/O access and then checking
the data consistency on your volume.

You can change the default behavior to resume I/O operations. We
recommend that you change this only for boot volumes or for volumes
that are stateless or disposable.


=head2 ModifyVpcAttribute

=over

=item VpcId => Str

=item [EnableDnsHostnames => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableDnsSupport => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableNetworkAddressUsageMetrics => L<Paws::EC2::AttributeBooleanValue>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcAttribute>

Returns: nothing

Modifies the specified attribute of the specified VPC.


=head2 ModifyVpcBlockPublicAccessExclusion

=over

=item ExclusionId => Str

=item InternetGatewayExclusionMode => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcBlockPublicAccessExclusion>

Returns: a L<Paws::EC2::ModifyVpcBlockPublicAccessExclusionResult> instance

Modify VPC Block Public Access (BPA) exclusions. A VPC BPA exclusion is
a mode that can be applied to a single VPC or subnet that exempts it
from the accountE<rsquo>s BPA mode and will allow bidirectional or
egress-only access. You can create BPA exclusions for VPCs and subnets
even when BPA is not enabled on the account to ensure that there is no
traffic disruption to the exclusions when VPC BPA is turned on.


=head2 ModifyVpcBlockPublicAccessOptions

=over

=item InternetGatewayBlockMode => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcBlockPublicAccessOptions>

Returns: a L<Paws::EC2::ModifyVpcBlockPublicAccessOptionsResult> instance

Modify VPC Block Public Access (BPA) options. VPC Block Public Access
(BPA) enables you to block resources in VPCs and subnets that you own
in a Region from reaching or being reached from the internet through
internet gateways and egress-only internet gateways. To learn more
about VPC BPA, see Block public access to VPCs and subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
in the I<Amazon VPC User Guide>.


=head2 ModifyVpcEndpoint

=over

=item VpcEndpointId => Str

=item [AddRouteTableIds => ArrayRef[Str|Undef]]

=item [AddSecurityGroupIds => ArrayRef[Str|Undef]]

=item [AddSubnetIds => ArrayRef[Str|Undef]]

=item [DnsOptions => L<Paws::EC2::DnsOptionsSpecification>]

=item [DryRun => Bool]

=item [IpAddressType => Str]

=item [PolicyDocument => Str]

=item [PrivateDnsEnabled => Bool]

=item [RemoveRouteTableIds => ArrayRef[Str|Undef]]

=item [RemoveSecurityGroupIds => ArrayRef[Str|Undef]]

=item [RemoveSubnetIds => ArrayRef[Str|Undef]]

=item [ResetPolicy => Bool]

=item [SubnetConfigurations => ArrayRef[L<Paws::EC2::SubnetConfiguration>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpoint>

Returns: a L<Paws::EC2::ModifyVpcEndpointResult> instance

Modifies attributes of a specified VPC endpoint. The attributes that
you can modify depend on the type of VPC endpoint (interface, gateway,
or Gateway Load Balancer). For more information, see the Amazon Web
Services PrivateLink Guide
(https://docs.aws.amazon.com/vpc/latest/privatelink/).


=head2 ModifyVpcEndpointConnectionNotification

=over

=item ConnectionNotificationId => Str

=item [ConnectionEvents => ArrayRef[Str|Undef]]

=item [ConnectionNotificationArn => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointConnectionNotification>

Returns: a L<Paws::EC2::ModifyVpcEndpointConnectionNotificationResult> instance

Modifies a connection notification for VPC endpoint or VPC endpoint
service. You can change the SNS topic for the notification, or the
events for which to be notified.


=head2 ModifyVpcEndpointServiceConfiguration

=over

=item ServiceId => Str

=item [AcceptanceRequired => Bool]

=item [AddGatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [AddNetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [AddSupportedIpAddressTypes => ArrayRef[Str|Undef]]

=item [AddSupportedRegions => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [PrivateDnsName => Str]

=item [RemoveGatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [RemoveNetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [RemovePrivateDnsName => Bool]

=item [RemoveSupportedIpAddressTypes => ArrayRef[Str|Undef]]

=item [RemoveSupportedRegions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointServiceConfiguration>

Returns: a L<Paws::EC2::ModifyVpcEndpointServiceConfigurationResult> instance

Modifies the attributes of the specified VPC endpoint service
configuration.

If you set or modify the private DNS name, you must prove that you own
the private DNS domain name.


=head2 ModifyVpcEndpointServicePayerResponsibility

=over

=item PayerResponsibility => Str

=item ServiceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointServicePayerResponsibility>

Returns: a L<Paws::EC2::ModifyVpcEndpointServicePayerResponsibilityResult> instance

Modifies the payer responsibility for your VPC endpoint service.


=head2 ModifyVpcEndpointServicePermissions

=over

=item ServiceId => Str

=item [AddAllowedPrincipals => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [RemoveAllowedPrincipals => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointServicePermissions>

Returns: a L<Paws::EC2::ModifyVpcEndpointServicePermissionsResult> instance

Modifies the permissions for your VPC endpoint service. You can add or
remove permissions for service consumers (Amazon Web Services accounts,
users, and IAM roles) to connect to your endpoint service. Principal
ARNs with path components aren't supported.

If you grant permissions to all principals, the service is public. Any
users who know the name of a public service can send a request to
attach an endpoint. If the service does not require manual approval,
attachments are automatically approved.


=head2 ModifyVpcPeeringConnectionOptions

=over

=item VpcPeeringConnectionId => Str

=item [AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>]

=item [DryRun => Bool]

=item [RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcPeeringConnectionOptions>

Returns: a L<Paws::EC2::ModifyVpcPeeringConnectionOptionsResult> instance

Modifies the VPC peering connection options on one side of a VPC
peering connection.

If the peered VPCs are in the same Amazon Web Services account, you can
enable DNS resolution for queries from the local VPC. This ensures that
queries from the local VPC resolve to private IP addresses in the peer
VPC. This option is not available if the peered VPCs are in different
Amazon Web Services accounts or different Regions. For peered VPCs in
different Amazon Web Services accounts, each Amazon Web Services
account owner must initiate a separate request to modify the peering
connection options. For inter-region peering connections, you must use
the Region for the requester VPC to modify the requester VPC peering
options and the Region for the accepter VPC to modify the accepter VPC
peering options. To verify which VPCs are the accepter and the
requester for a VPC peering connection, use the
DescribeVpcPeeringConnections command.


=head2 ModifyVpcTenancy

=over

=item InstanceTenancy => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcTenancy>

Returns: a L<Paws::EC2::ModifyVpcTenancyResult> instance

Modifies the instance tenancy attribute of the specified VPC. You can
change the instance tenancy attribute of a VPC to C<default> only. You
cannot change the instance tenancy attribute to C<dedicated>.

After you modify the tenancy of the VPC, any new instances that you
launch into the VPC have a tenancy of C<default>, unless you specify
otherwise during launch. The tenancy of any existing instances in the
VPC is not affected.

For more information, see Dedicated Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyVpnConnection

=over

=item VpnConnectionId => Str

=item [CustomerGatewayId => Str]

=item [DryRun => Bool]

=item [TransitGatewayId => Str]

=item [VpnGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnConnection>

Returns: a L<Paws::EC2::ModifyVpnConnectionResult> instance

Modifies the customer gateway or the target gateway of an Amazon Web
Services Site-to-Site VPN connection. To modify the target gateway, the
following migration options are available:

=over

=item *

An existing virtual private gateway to a new virtual private gateway

=item *

An existing virtual private gateway to a transit gateway

=item *

An existing transit gateway to a new transit gateway

=item *

An existing transit gateway to a virtual private gateway

=back

Before you perform the migration to the new gateway, you must configure
the new gateway. Use CreateVpnGateway to create a virtual private
gateway, or CreateTransitGateway to create a transit gateway.

This step is required when you migrate from a virtual private gateway
with static routes to a transit gateway.

You must delete the static routes before you migrate to the new
gateway.

Keep a copy of the static route before you delete it. You will need to
add back these routes to the transit gateway after the VPN connection
migration is complete.

After you migrate to the new gateway, you might need to modify your VPC
route table. Use CreateRoute and DeleteRoute to make the changes
described in Update VPC route tables
(https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing)
in the I<Amazon Web Services Site-to-Site VPN User Guide>.

When the new gateway is a transit gateway, modify the transit gateway
route table to allow traffic between the VPC and the Amazon Web
Services Site-to-Site VPN connection. Use CreateTransitGatewayRoute to
add the routes.

If you deleted VPN static routes, you must add the static routes to the
transit gateway route table.

After you perform this operation, the VPN endpoint's IP addresses on
the Amazon Web Services side and the tunnel options remain intact. Your
Amazon Web Services Site-to-Site VPN connection will be temporarily
unavailable for a brief period while we provision the new endpoints.


=head2 ModifyVpnConnectionOptions

=over

=item VpnConnectionId => Str

=item [DryRun => Bool]

=item [LocalIpv4NetworkCidr => Str]

=item [LocalIpv6NetworkCidr => Str]

=item [RemoteIpv4NetworkCidr => Str]

=item [RemoteIpv6NetworkCidr => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnConnectionOptions>

Returns: a L<Paws::EC2::ModifyVpnConnectionOptionsResult> instance

Modifies the connection options for your Site-to-Site VPN connection.

When you modify the VPN connection options, the VPN endpoint IP
addresses on the Amazon Web Services side do not change, and the tunnel
options do not change. Your VPN connection will be temporarily
unavailable for a brief period while the VPN connection is updated.


=head2 ModifyVpnTunnelCertificate

=over

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnTunnelCertificate>

Returns: a L<Paws::EC2::ModifyVpnTunnelCertificateResult> instance

Modifies the VPN tunnel endpoint certificate.


=head2 ModifyVpnTunnelOptions

=over

=item TunnelOptions => L<Paws::EC2::ModifyVpnTunnelOptionsSpecification>

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [DryRun => Bool]

=item [SkipTunnelReplacement => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnTunnelOptions>

Returns: a L<Paws::EC2::ModifyVpnTunnelOptionsResult> instance

Modifies the options for a VPN tunnel in an Amazon Web Services
Site-to-Site VPN connection. You can modify multiple options for a
tunnel in a single request, but you can only modify one tunnel at a
time. For more information, see Site-to-Site VPN tunnel options for
your Site-to-Site VPN connection
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNTunnels.html) in the
I<Amazon Web Services Site-to-Site VPN User Guide>.


=head2 MonitorInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MonitorInstances>

Returns: a L<Paws::EC2::MonitorInstancesResult> instance

Enables detailed monitoring for a running instance. Otherwise, basic
monitoring is enabled. For more information, see Monitor your instances
using CloudWatch
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
in the I<Amazon EC2 User Guide>.

To disable detailed monitoring, see UnmonitorInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_UnmonitorInstances.html).


=head2 MoveAddressToVpc

=over

=item PublicIp => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MoveAddressToVpc>

Returns: a L<Paws::EC2::MoveAddressToVpcResult> instance

This action is deprecated.

Moves an Elastic IP address from the EC2-Classic platform to the
EC2-VPC platform. The Elastic IP address must be allocated to your
account for more than 24 hours, and it must not be associated with an
instance. After the Elastic IP address is moved, it is no longer
available for use in the EC2-Classic platform, unless you move it back
using the RestoreAddressToClassic request. You cannot move an Elastic
IP address that was originally allocated for use in the EC2-VPC
platform to the EC2-Classic platform.


=head2 MoveByoipCidrToIpam

=over

=item Cidr => Str

=item IpamPoolId => Str

=item IpamPoolOwner => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MoveByoipCidrToIpam>

Returns: a L<Paws::EC2::MoveByoipCidrToIpamResult> instance

Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool.

If you already have a BYOIPv4 CIDR with Amazon Web Services, you can
move the CIDR to IPAM from a public IPv4 pool. You cannot move an IPv6
CIDR to IPAM. If you are bringing a new IP address to Amazon Web
Services for the first time, complete the steps in Tutorial: BYOIP
address CIDRs to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoip-ipam.html).


=head2 MoveCapacityReservationInstances

=over

=item DestinationCapacityReservationId => Str

=item InstanceCount => Int

=item SourceCapacityReservationId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MoveCapacityReservationInstances>

Returns: a L<Paws::EC2::MoveCapacityReservationInstancesResult> instance

Move available capacity from a source Capacity Reservation to a
destination Capacity Reservation. The source Capacity Reservation and
the destination Capacity Reservation must be C<active>, owned by your
Amazon Web Services account, and share the following:

=over

=item *

Instance type

=item *

Platform

=item *

Availability Zone

=item *

Tenancy

=item *

Placement group

=item *

Capacity Reservation end time - C<At specific time> or C<Manually>.

=back



=head2 ProvisionByoipCidr

=over

=item Cidr => Str

=item [CidrAuthorizationContext => L<Paws::EC2::CidrAuthorizationContext>]

=item [Description => Str]

=item [DryRun => Bool]

=item [MultiRegion => Bool]

=item [NetworkBorderGroup => Str]

=item [PoolTagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [PubliclyAdvertisable => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ProvisionByoipCidr>

Returns: a L<Paws::EC2::ProvisionByoipCidrResult> instance

Provisions an IPv4 or IPv6 address range for use with your Amazon Web
Services resources through bring your own IP addresses (BYOIP) and
creates a corresponding address pool. After the address range is
provisioned, it is ready to be advertised using AdvertiseByoipCidr.

Amazon Web Services verifies that you own the address range and are
authorized to advertise it. You must ensure that the address range is
registered to you and that you created an RPKI ROA to authorize Amazon
ASNs 16509 and 14618 to advertise the address range. For more
information, see Bring your own IP addresses (BYOIP)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
the I<Amazon EC2 User Guide>.

Provisioning an address range is an asynchronous operation, so the call
returns immediately, but the address range is not ready to use until
its status changes from C<pending-provision> to C<provisioned>. To
monitor the status of an address range, use DescribeByoipCidrs. To
allocate an Elastic IP address from your IPv4 address pool, use
AllocateAddress with either the specific address from the address pool
or the ID of the address pool.


=head2 ProvisionIpamByoasn

=over

=item Asn => Str

=item AsnAuthorizationContext => L<Paws::EC2::AsnAuthorizationContext>

=item IpamId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ProvisionIpamByoasn>

Returns: a L<Paws::EC2::ProvisionIpamByoasnResult> instance

Provisions your Autonomous System Number (ASN) for use in your Amazon
Web Services account. This action requires authorization context for
Amazon to bring the ASN to an Amazon Web Services account. For more
information, see Tutorial: Bring your ASN to IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
the I<Amazon VPC IPAM guide>.


=head2 ProvisionIpamPoolCidr

=over

=item IpamPoolId => Str

=item [Cidr => Str]

=item [CidrAuthorizationContext => L<Paws::EC2::IpamCidrAuthorizationContext>]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [IpamExternalResourceVerificationTokenId => Str]

=item [NetmaskLength => Int]

=item [VerificationMethod => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ProvisionIpamPoolCidr>

Returns: a L<Paws::EC2::ProvisionIpamPoolCidrResult> instance

Provision a CIDR to an IPAM pool. You can use this action to provision
new CIDRs to a top-level pool or to transfer a CIDR from a top-level
pool to a pool within it.

For more information, see Provision CIDRs to pools
(https://docs.aws.amazon.com/vpc/latest/ipam/prov-cidr-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 ProvisionPublicIpv4PoolCidr

=over

=item IpamPoolId => Str

=item NetmaskLength => Int

=item PoolId => Str

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ProvisionPublicIpv4PoolCidr>

Returns: a L<Paws::EC2::ProvisionPublicIpv4PoolCidrResult> instance

Provision a CIDR to a public IPv4 pool.

For more information about IPAM, see What is IPAM?
(https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in
the I<Amazon VPC IPAM User Guide>.


=head2 PurchaseCapacityBlock

=over

=item CapacityBlockOfferingId => Str

=item InstancePlatform => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseCapacityBlock>

Returns: a L<Paws::EC2::PurchaseCapacityBlockResult> instance

Purchase the Capacity Block for use with your account. With Capacity
Blocks you ensure GPU capacity is available for machine learning (ML)
workloads. You must specify the ID of the Capacity Block offering you
are purchasing.


=head2 PurchaseCapacityBlockExtension

=over

=item CapacityBlockExtensionOfferingId => Str

=item CapacityReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseCapacityBlockExtension>

Returns: a L<Paws::EC2::PurchaseCapacityBlockExtensionResult> instance

Purchase the Capacity Block extension for use with your account. You
must specify the ID of the Capacity Block extension offering you are
purchasing.


=head2 PurchaseHostReservation

=over

=item HostIdSet => ArrayRef[Str|Undef]

=item OfferingId => Str

=item [ClientToken => Str]

=item [CurrencyCode => Str]

=item [LimitPrice => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseHostReservation>

Returns: a L<Paws::EC2::PurchaseHostReservationResult> instance

Purchase a reservation with configurations that match those of your
Dedicated Host. You must have active Dedicated Hosts in your account
before you purchase a reservation. This action results in the specified
reservation being purchased and charged to your account.


=head2 PurchaseReservedInstancesOffering

=over

=item InstanceCount => Int

=item ReservedInstancesOfferingId => Str

=item [DryRun => Bool]

=item [LimitPrice => L<Paws::EC2::ReservedInstanceLimitPrice>]

=item [PurchaseTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseReservedInstancesOffering>

Returns: a L<Paws::EC2::PurchaseReservedInstancesOfferingResult> instance

Purchases a Reserved Instance for use with your account. With Reserved
Instances, you pay a lower hourly rate compared to On-Demand instance
pricing.

Use DescribeReservedInstancesOfferings to get a list of Reserved
Instance offerings that match your specifications. After you've
purchased a Reserved Instance, you can check for your new Reserved
Instance with DescribeReservedInstances.

To queue a purchase for a future date and time, specify a purchase
time. If you do not specify a purchase time, the default is the current
time.

For more information, see Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
and Sell in the Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 PurchaseScheduledInstances

=over

=item PurchaseRequests => ArrayRef[L<Paws::EC2::PurchaseRequest>]

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseScheduledInstances>

Returns: a L<Paws::EC2::PurchaseScheduledInstancesResult> instance

You can no longer purchase Scheduled Instances.

Purchases the Scheduled Instances with the specified schedule.

Scheduled Instances enable you to purchase Amazon EC2 compute capacity
by the hour for a one-year term. Before you can purchase a Scheduled
Instance, you must call DescribeScheduledInstanceAvailability to check
for available schedules and obtain a purchase token. After you purchase
a Scheduled Instance, you must call RunScheduledInstances during each
scheduled time period.

After you purchase a Scheduled Instance, you can't cancel, modify, or
resell your purchase.


=head2 RebootInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RebootInstances>

Returns: nothing

Requests a reboot of the specified instances. This operation is
asynchronous; it only queues a request to reboot the specified
instances. The operation succeeds if the instances are valid and belong
to you. Requests to reboot terminated instances are ignored.

If an instance does not cleanly shut down within a few minutes, Amazon
EC2 performs a hard reboot.

For more information about troubleshooting, see Troubleshoot an
unreachable instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html)
in the I<Amazon EC2 User Guide>.


=head2 RegisterImage

=over

=item Name => Str

=item [Architecture => Str]

=item [BillingProducts => ArrayRef[Str|Undef]]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [BootMode => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [EnaSupport => Bool]

=item [ImageLocation => Str]

=item [ImdsSupport => Str]

=item [KernelId => Str]

=item [RamdiskId => Str]

=item [RootDeviceName => Str]

=item [SriovNetSupport => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TpmSupport => Str]

=item [UefiData => Str]

=item [VirtualizationType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterImage>

Returns: a L<Paws::EC2::RegisterImageResult> instance

Registers an AMI. When you're creating an instance-store backed AMI,
registering the AMI is the final step in the creation process. For more
information about creating AMIs, see Create an AMI from a snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot)
and Create an instance-store backed AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-instance-store.html)
in the I<Amazon EC2 User Guide>.

For Amazon EBS-backed instances, CreateImage creates and registers the
AMI in a single request, so you don't have to register the AMI
yourself. We recommend that you always use CreateImage unless you have
a specific reason to use RegisterImage.

If needed, you can deregister an AMI at any time. Any modifications you
make to an AMI backed by an instance store volume invalidates its
registration. If you make changes to an image, deregister the previous
image and register the new image.

B<Register a snapshot of a root device volume>

You can use C<RegisterImage> to create an Amazon EBS-backed Linux AMI
from a snapshot of a root device volume. You specify the snapshot using
a block device mapping. You can't set the encryption state of the
volume using the block device mapping. If the snapshot is encrypted, or
encryption by default is enabled, the root volume of an instance
launched from the AMI is encrypted.

For more information, see Create an AMI from a snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot)
and Use encryption with Amazon EBS-backed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html)
in the I<Amazon EC2 User Guide>.

B<Amazon Web Services Marketplace product codes>

If any snapshots have Amazon Web Services Marketplace product codes,
they are copied to the new AMI.

In most cases, AMIs for Windows, RedHat, SUSE, and SQL Server require
correct licensing information to be present on the AMI. For more
information, see Understand AMI billing information
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
in the I<Amazon EC2 User Guide>. When creating an AMI from a snapshot,
the C<RegisterImage> operation derives the correct billing information
from the snapshot's metadata, but this requires the appropriate
metadata to be present. To verify if the correct billing information
was applied, check the C<PlatformDetails> field on the new AMI. If the
field is empty or doesn't match the expected operating system code (for
example, Windows, RedHat, SUSE, or SQL), the AMI creation was
unsuccessful, and you should discard the AMI and instead create the AMI
from an instance using CreateImage. For more information, see Create an
AMI from an instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#how-to-create-ebs-ami)
in the I<Amazon EC2 User Guide>.

If you purchase a Reserved Instance to apply to an On-Demand Instance
that was launched from an AMI with a billing product code, make sure
that the Reserved Instance has the matching billing product code. If
you purchase a Reserved Instance without the matching billing product
code, the Reserved Instance will not be applied to the On-Demand
Instance. For information about how to obtain the platform details and
billing information of an AMI, see Understand AMI billing information
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
in the I<Amazon EC2 User Guide>.


=head2 RegisterInstanceEventNotificationAttributes

=over

=item InstanceTagAttribute => L<Paws::EC2::RegisterInstanceTagAttributeRequest>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::RegisterInstanceEventNotificationAttributesResult> instance

Registers a set of tag keys to include in scheduled event notifications
for your resources.

To remove tags, use DeregisterInstanceEventNotificationAttributes
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeregisterInstanceEventNotificationAttributes.html).


=head2 RegisterTransitGatewayMulticastGroupMembers

=over

=item NetworkInterfaceIds => ArrayRef[Str|Undef]

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]

=item [GroupIpAddress => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterTransitGatewayMulticastGroupMembers>

Returns: a L<Paws::EC2::RegisterTransitGatewayMulticastGroupMembersResult> instance

Registers members (network interfaces) with the transit gateway
multicast group. A member is a network interface associated with a
supported EC2 instance that receives multicast traffic. For more
information, see Multicast on transit gateways
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-multicast-overview.html)
in the I<Amazon Web Services Transit Gateways Guide>.

After you add the members, use SearchTransitGatewayMulticastGroups
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
to verify that the members were added to the transit gateway multicast
group.


=head2 RegisterTransitGatewayMulticastGroupSources

=over

=item NetworkInterfaceIds => ArrayRef[Str|Undef]

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]

=item [GroupIpAddress => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterTransitGatewayMulticastGroupSources>

Returns: a L<Paws::EC2::RegisterTransitGatewayMulticastGroupSourcesResult> instance

Registers sources (network interfaces) with the specified transit
gateway multicast group.

A multicast source is a network interface attached to a supported
instance that sends multicast traffic. For more information about
supported instances, see Multicast on transit gateways
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-multicast-overview.html)
in the I<Amazon Web Services Transit Gateways Guide>.

After you add the source, use SearchTransitGatewayMulticastGroups
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
to verify that the source was added to the multicast group.


=head2 RejectCapacityReservationBillingOwnership

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectCapacityReservationBillingOwnership>

Returns: a L<Paws::EC2::RejectCapacityReservationBillingOwnershipResult> instance

Rejects a request to assign billing of the available capacity of a
shared Capacity Reservation to your account. For more information, see
Billing assignment for shared Amazon EC2 Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/assign-billing.html).


=head2 RejectTransitGatewayMulticastDomainAssociations

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::RejectTransitGatewayMulticastDomainAssociationsResult> instance

Rejects a request to associate cross-account subnets with a transit
gateway multicast domain.


=head2 RejectTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::RejectTransitGatewayPeeringAttachmentResult> instance

Rejects a transit gateway peering attachment request.


=head2 RejectTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::RejectTransitGatewayVpcAttachmentResult> instance

Rejects a request to attach a VPC to a transit gateway.

The VPC attachment must be in the C<pendingAcceptance> state. Use
DescribeTransitGatewayVpcAttachments to view your pending VPC
attachment requests. Use AcceptTransitGatewayVpcAttachment to accept a
VPC attachment request.


=head2 RejectVpcEndpointConnections

=over

=item ServiceId => Str

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectVpcEndpointConnections>

Returns: a L<Paws::EC2::RejectVpcEndpointConnectionsResult> instance

Rejects VPC endpoint connection requests to your VPC endpoint service.


=head2 RejectVpcPeeringConnection

=over

=item VpcPeeringConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectVpcPeeringConnection>

Returns: a L<Paws::EC2::RejectVpcPeeringConnectionResult> instance

Rejects a VPC peering connection request. The VPC peering connection
must be in the C<pending-acceptance> state. Use the
DescribeVpcPeeringConnections request to view your outstanding VPC
peering connection requests. To delete an active VPC peering
connection, or to delete a VPC peering connection request that you
initiated, use DeleteVpcPeeringConnection.


=head2 ReleaseAddress

=over

=item [AllocationId => Str]

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReleaseAddress>

Returns: nothing

Releases the specified Elastic IP address.

[Default VPC] Releasing an Elastic IP address automatically
disassociates it from any instance that it's associated with. To
disassociate an Elastic IP address without releasing it, use
DisassociateAddress.

[Nondefault VPC] You must use DisassociateAddress to disassociate the
Elastic IP address before you can release it. Otherwise, Amazon EC2
returns an error (C<InvalidIPAddress.InUse>).

After releasing an Elastic IP address, it is released to the IP address
pool. Be sure to update your DNS records and any servers or devices
that communicate with the address. If you attempt to release an Elastic
IP address that you already released, you'll get an C<AuthFailure>
error if the address is already allocated to another Amazon Web
Services account.

After you release an Elastic IP address, you might be able to recover
it. For more information, see AllocateAddress.


=head2 ReleaseHosts

=over

=item HostIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EC2::ReleaseHosts>

Returns: a L<Paws::EC2::ReleaseHostsResult> instance

When you no longer want to use an On-Demand Dedicated Host it can be
released. On-Demand billing is stopped and the host goes into
C<released> state. The host ID of Dedicated Hosts that have been
released can no longer be specified in another request, for example, to
modify the host. You must stop or terminate all instances on a host
before it can be released.

When Dedicated Hosts are released, it may take some time for them to
stop counting toward your limit and you may receive capacity errors
when trying to allocate new Dedicated Hosts. Wait a few minutes and
then try again.

Released hosts still appear in a DescribeHosts response.


=head2 ReleaseIpamPoolAllocation

=over

=item Cidr => Str

=item IpamPoolAllocationId => Str

=item IpamPoolId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReleaseIpamPoolAllocation>

Returns: a L<Paws::EC2::ReleaseIpamPoolAllocationResult> instance

Release an allocation within an IPAM pool. The Region you use should be
the IPAM pool locale. The locale is the Amazon Web Services Region
where this IPAM pool is available for allocations. You can only use
this action to release manual allocations. To remove an allocation for
a resource without deleting the resource, set its monitored state to
false using ModifyIpamResourceCidr
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyIpamResourceCidr.html).
For more information, see Release an allocation
(https://docs.aws.amazon.com/vpc/latest/ipam/release-alloc-ipam.html)
in the I<Amazon VPC IPAM User Guide>.

All EC2 API actions follow an eventual consistency
(https://docs.aws.amazon.com/ec2/latest/devguide/eventual-consistency.html)
model.


=head2 ReplaceIamInstanceProfileAssociation

=over

=item AssociationId => Str

=item IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceIamInstanceProfileAssociation>

Returns: a L<Paws::EC2::ReplaceIamInstanceProfileAssociationResult> instance

Replaces an IAM instance profile for the specified running instance.
You can use this action to change the IAM instance profile that's
associated with an instance without having to disassociate the existing
IAM instance profile first.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 ReplaceImageCriteriaInAllowedImagesSettings

=over

=item [DryRun => Bool]

=item [ImageCriteria => ArrayRef[L<Paws::EC2::ImageCriterionRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettings>

Returns: a L<Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettingsResult> instance

Sets or replaces the criteria for Allowed AMIs.

The Allowed AMIs feature does not restrict the AMIs owned by your
account. Regardless of the criteria you set, the AMIs created by your
account will always be discoverable and usable by users in your
account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 ReplaceNetworkAclAssociation

=over

=item AssociationId => Str

=item NetworkAclId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclAssociation>

Returns: a L<Paws::EC2::ReplaceNetworkAclAssociationResult> instance

Changes which network ACL a subnet is associated with. By default when
you create a subnet, it's automatically associated with the default
network ACL. For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon VPC User Guide>.

This is an idempotent operation.


=head2 ReplaceNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item Protocol => Str

=item RuleAction => Str

=item RuleNumber => Int

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>]

=item [Ipv6CidrBlock => Str]

=item [PortRange => L<Paws::EC2::PortRange>]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclEntry>

Returns: nothing

Replaces an entry (rule) in a network ACL. For more information, see
Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon VPC User Guide>.


=head2 ReplaceRoute

=over

=item RouteTableId => Str

=item [CarrierGatewayId => Str]

=item [CoreNetworkArn => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayId => Str]

=item [GatewayId => Str]

=item [InstanceId => Str]

=item [LocalGatewayId => Str]

=item [LocalTarget => Bool]

=item [NatGatewayId => Str]

=item [NetworkInterfaceId => Str]

=item [TransitGatewayId => Str]

=item [VpcEndpointId => Str]

=item [VpcPeeringConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceRoute>

Returns: nothing

Replaces an existing route within a route table in a VPC.

You must specify either a destination CIDR block or a prefix list ID.
You must also specify exactly one of the resources from the parameter
list, or reset the local route to its default target.

For more information, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.


=head2 ReplaceRouteTableAssociation

=over

=item AssociationId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceRouteTableAssociation>

Returns: a L<Paws::EC2::ReplaceRouteTableAssociationResult> instance

Changes the route table associated with a given subnet, internet
gateway, or virtual private gateway in a VPC. After the operation
completes, the subnet or gateway uses the routes in the new route
table. For more information about route tables, see Route tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon VPC User Guide>.

You can also use this operation to change which table is the main route
table in the VPC. Specify the main route table's association ID and the
route table ID of the new main route table.


=head2 ReplaceTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceTransitGatewayRoute>

Returns: a L<Paws::EC2::ReplaceTransitGatewayRouteResult> instance

Replaces the specified route in the specified transit gateway route
table.


=head2 ReplaceVpnTunnel

=over

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [ApplyPendingMaintenance => Bool]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceVpnTunnel>

Returns: a L<Paws::EC2::ReplaceVpnTunnelResult> instance

Trigger replacement of specified VPN tunnel.


=head2 ReportInstanceStatus

=over

=item Instances => ArrayRef[Str|Undef]

=item ReasonCodes => ArrayRef[Str|Undef]

=item Status => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [EndTime => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReportInstanceStatus>

Returns: nothing

Submits feedback about the status of an instance. The instance must be
in the C<running> state. If your experience with the instance differs
from the instance status returned by DescribeInstanceStatus, use
ReportInstanceStatus to report your experience with the instance.
Amazon EC2 collects this information to improve the accuracy of status
checks.

Use of this action does not change the value returned by
DescribeInstanceStatus.


=head2 RequestSpotFleet

=over

=item SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RequestSpotFleet>

Returns: a L<Paws::EC2::RequestSpotFleetResponse> instance

Creates a Spot Fleet request.

The Spot Fleet request specifies the total target capacity and the
On-Demand target capacity. Amazon EC2 calculates the difference between
the total capacity and On-Demand capacity, and launches the difference
as Spot capacity.

You can submit a single request that includes multiple launch
specifications that vary by instance type, AMI, Availability Zone, or
subnet.

By default, the Spot Fleet requests Spot Instances in the Spot Instance
pool where the price per unit is the lowest. Each launch specification
can include its own instance weighting that reflects the value of the
instance type to your application workload.

Alternatively, you can specify that the Spot Fleet distribute the
target capacity across the Spot pools included in its launch
specifications. By ensuring that the Spot Instances in your Spot Fleet
are in different Spot pools, you can improve the availability of your
fleet.

You can specify tags for the Spot Fleet request and instances launched
by the fleet. You cannot tag other resource types in a Spot Fleet
request because only the C<spot-fleet-request> and C<instance> resource
types are supported.

For more information, see Spot Fleet requests
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
in the I<Amazon EC2 User Guide>.

We strongly discourage using the RequestSpotFleet API because it is a
legacy API with no planned investment. For options for requesting Spot
Instances, see Which is the best Spot request method to use?
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use)
in the I<Amazon EC2 User Guide>.


=head2 RequestSpotInstances

=over

=item [AvailabilityZoneGroup => Str]

=item [BlockDurationMinutes => Int]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [InstanceCount => Int]

=item [InstanceInterruptionBehavior => Str]

=item [LaunchGroup => Str]

=item [LaunchSpecification => L<Paws::EC2::RequestSpotLaunchSpecification>]

=item [SpotPrice => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Type => Str]

=item [ValidFrom => Str]

=item [ValidUntil => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RequestSpotInstances>

Returns: a L<Paws::EC2::RequestSpotInstancesResult> instance

Creates a Spot Instance request.

For more information, see Work with Spot Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
in the I<Amazon EC2 User Guide>.

We strongly discourage using the RequestSpotInstances API because it is
a legacy API with no planned investment. For options for requesting
Spot Instances, see Which is the best Spot request method to use?
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use)
in the I<Amazon EC2 User Guide>.


=head2 ResetAddressAttribute

=over

=item AllocationId => Str

=item Attribute => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetAddressAttribute>

Returns: a L<Paws::EC2::ResetAddressAttributeResult> instance

Resets the attribute of the specified IP address. For requirements, see
Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 ResetEbsDefaultKmsKeyId

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::ResetEbsDefaultKmsKeyIdResult> instance

Resets the default KMS key for EBS encryption for your account in this
Region to the Amazon Web Services managed KMS key for EBS.

After resetting the default KMS key to the Amazon Web Services managed
KMS key, you can continue to encrypt by a customer managed KMS key by
specifying it when you create the volume. For more information, see
Amazon EBS encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.


=head2 ResetFpgaImageAttribute

=over

=item FpgaImageId => Str

=item [Attribute => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetFpgaImageAttribute>

Returns: a L<Paws::EC2::ResetFpgaImageAttributeResult> instance

Resets the specified attribute of the specified Amazon FPGA Image (AFI)
to its default value. You can only reset the load permission attribute.


=head2 ResetImageAttribute

=over

=item Attribute => Str

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetImageAttribute>

Returns: nothing

Resets an attribute of an AMI to its default value.


=head2 ResetInstanceAttribute

=over

=item Attribute => Str

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetInstanceAttribute>

Returns: nothing

Resets an attribute of an instance to its default value. To reset the
C<kernel> or C<ramdisk>, the instance must be in a stopped state. To
reset the C<sourceDestCheck>, the instance can be either running or
stopped.

The C<sourceDestCheck> attribute controls whether source/destination
checking is enabled. The default value is C<true>, which means checking
is enabled. This value must be C<false> for a NAT instance to perform
NAT. For more information, see NAT instances
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
in the I<Amazon VPC User Guide>.


=head2 ResetNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [DryRun => Bool]

=item [SourceDestCheck => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ResetNetworkInterfaceAttribute>

Returns: nothing

Resets a network interface attribute. You can specify only one
attribute at a time.


=head2 ResetSnapshotAttribute

=over

=item Attribute => Str

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetSnapshotAttribute>

Returns: nothing

Resets permission settings for the specified snapshot.

For more information about modifying snapshot permissions, see Share a
snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modifying-snapshot-permissions.html)
in the I<Amazon EBS User Guide>.


=head2 RestoreAddressToClassic

=over

=item PublicIp => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreAddressToClassic>

Returns: a L<Paws::EC2::RestoreAddressToClassicResult> instance

This action is deprecated.

Restores an Elastic IP address that was previously moved to the EC2-VPC
platform back to the EC2-Classic platform. You cannot move an Elastic
IP address that was originally allocated for use in EC2-VPC. The
Elastic IP address must not be associated with an instance or network
interface.


=head2 RestoreImageFromRecycleBin

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreImageFromRecycleBin>

Returns: a L<Paws::EC2::RestoreImageFromRecycleBinResult> instance

Restores an AMI from the Recycle Bin. For more information, see Recycle
Bin
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the I<Amazon EC2 User Guide>.


=head2 RestoreManagedPrefixListVersion

=over

=item CurrentVersion => Int

=item PrefixListId => Str

=item PreviousVersion => Int

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreManagedPrefixListVersion>

Returns: a L<Paws::EC2::RestoreManagedPrefixListVersionResult> instance

Restores the entries from a previous version of a managed prefix list
to a new version of the prefix list.


=head2 RestoreSnapshotFromRecycleBin

=over

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreSnapshotFromRecycleBin>

Returns: a L<Paws::EC2::RestoreSnapshotFromRecycleBinResult> instance

Restores a snapshot from the Recycle Bin. For more information, see
Restore snapshots from the Recycle Bin
(https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin-working-with-snaps.html#recycle-bin-restore-snaps)
in the I<Amazon EBS User Guide>.


=head2 RestoreSnapshotTier

=over

=item SnapshotId => Str

=item [DryRun => Bool]

=item [PermanentRestore => Bool]

=item [TemporaryRestoreDays => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreSnapshotTier>

Returns: a L<Paws::EC2::RestoreSnapshotTierResult> instance

Restores an archived Amazon EBS snapshot for use temporarily or
permanently, or modifies the restore period or restore type for a
snapshot that was previously temporarily restored.

For more information see Restore an archived snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/working-with-snapshot-archiving.html#restore-archived-snapshot)
and modify the restore period or restore type for a temporarily
restored snapshot
(https://docs.aws.amazon.com/ebs/latest/userguide/working-with-snapshot-archiving.html#modify-temp-restore-period)
in the I<Amazon EBS User Guide>.


=head2 RevokeClientVpnIngress

=over

=item ClientVpnEndpointId => Str

=item TargetNetworkCidr => Str

=item [AccessGroupId => Str]

=item [DryRun => Bool]

=item [RevokeAllGroups => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeClientVpnIngress>

Returns: a L<Paws::EC2::RevokeClientVpnIngressResult> instance

Removes an ingress authorization rule from a Client VPN endpoint.


=head2 RevokeSecurityGroupEgress

=over

=item GroupId => Str

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SecurityGroupRuleIds => ArrayRef[Str|Undef]]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupEgress>

Returns: a L<Paws::EC2::RevokeSecurityGroupEgressResult> instance

Removes the specified outbound (egress) rules from the specified
security group.

You can specify rules using either rule IDs or security group rule
properties. If you use rule properties, the values that you specify
(for example, ports) must match the existing rule's values exactly.
Each rule has a protocol, from and to ports, and destination (CIDR
range, security group, or prefix list). For the TCP and UDP protocols,
you must also specify the destination port or range of ports. For the
ICMP protocol, you must also specify the ICMP type and code. If the
security group rule has a description, you do not need to specify the
description to revoke the rule.

For a default VPC, if the values you specify do not match the existing
rule's values, no error is returned, and the output describes the
security group rules that were not revoked.

Amazon Web Services recommends that you describe the security group to
verify that the rules were removed.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RevokeSecurityGroupIngress

=over

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SecurityGroupRuleIds => ArrayRef[Str|Undef]]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupIngress>

Returns: a L<Paws::EC2::RevokeSecurityGroupIngressResult> instance

Removes the specified inbound (ingress) rules from a security group.

You can specify rules using either rule IDs or security group rule
properties. If you use rule properties, the values that you specify
(for example, ports) must match the existing rule's values exactly.
Each rule has a protocol, from and to ports, and source (CIDR range,
security group, or prefix list). For the TCP and UDP protocols, you
must also specify the destination port or range of ports. For the ICMP
protocol, you must also specify the ICMP type and code. If the security
group rule has a description, you do not need to specify the
description to revoke the rule.

For a default VPC, if the values you specify do not match the existing
rule's values, no error is returned, and the output describes the
security group rules that were not revoked.

For a non-default VPC, if the values you specify do not match the
existing rule's values, an C<InvalidPermission.NotFound> client error
is returned, and no rules are revoked.

Amazon Web Services recommends that you describe the security group to
verify that the rules were removed.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RunInstances

=over

=item MaxCount => Int

=item MinCount => Int

=item [AdditionalInfo => Str]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>]

=item [ClientToken => Str]

=item [CpuOptions => L<Paws::EC2::CpuOptionsRequest>]

=item [CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>]

=item [DisableApiStop => Bool]

=item [DisableApiTermination => Bool]

=item [DryRun => Bool]

=item [EbsOptimized => Bool]

=item [ElasticGpuSpecification => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]]

=item [ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::ElasticInferenceAccelerator>]]

=item [EnablePrimaryIpv6 => Bool]

=item [EnclaveOptions => L<Paws::EC2::EnclaveOptionsRequest>]

=item [HibernationOptions => L<Paws::EC2::HibernationOptionsRequest>]

=item [IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>]

=item [ImageId => Str]

=item [InstanceInitiatedShutdownBehavior => Str]

=item [InstanceMarketOptions => L<Paws::EC2::InstanceMarketOptionsRequest>]

=item [InstanceType => Str]

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]]

=item [KernelId => Str]

=item [KeyName => Str]

=item [LaunchTemplate => L<Paws::EC2::LaunchTemplateSpecification>]

=item [LicenseSpecifications => ArrayRef[L<Paws::EC2::LicenseConfigurationRequest>]]

=item [MaintenanceOptions => L<Paws::EC2::InstanceMaintenanceOptionsRequest>]

=item [MetadataOptions => L<Paws::EC2::InstanceMetadataOptionsRequest>]

=item [Monitoring => L<Paws::EC2::RunInstancesMonitoringEnabled>]

=item [NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>]]

=item [NetworkPerformanceOptions => L<Paws::EC2::InstanceNetworkPerformanceOptionsRequest>]

=item [Operator => L<Paws::EC2::OperatorRequest>]

=item [Placement => L<Paws::EC2::Placement>]

=item [PrivateDnsNameOptions => L<Paws::EC2::PrivateDnsNameOptionsRequest>]

=item [PrivateIpAddress => Str]

=item [RamdiskId => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SecurityGroups => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [UserData => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RunInstances>

Returns: a L<Paws::EC2::Reservation> instance

Launches the specified number of instances using an AMI for which you
have permissions.

You can specify a number of options, or leave the default options. The
following rules apply:

=over

=item *

If you don't specify a subnet ID, we choose a default subnet from your
default VPC for you. If you don't have a default VPC, you must specify
a subnet ID in the request.

=item *

All instances have a network interface with a primary private IPv4
address. If you don't specify this address, we choose one from the IPv4
range of your subnet.

=item *

Not all instance types support IPv6 addresses. For more information,
see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

=item *

If you don't specify a security group ID, we use the default security
group for the VPC. For more information, see Security groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).

=item *

If any of the AMIs have a product code attached for which the user has
not subscribed, the request fails.

=back

You can create a launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html),
which is a resource that contains the parameters to launch an instance.
When you launch an instance using RunInstances, you can specify the
launch template instead of specifying the launch parameters.

To ensure faster instance launches, break up large requests into
smaller batches. For example, create five separate launch requests for
100 instances each instead of one launch request for 500 instances.

C<RunInstances> is subject to both request rate limiting and resource
rate limiting. For more information, see Request throttling
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-throttling.html).

An instance is ready for you to use when it's in the C<running> state.
You can check the state of your instance using DescribeInstances. You
can tag instances and EBS volumes during launch, after launch, or both.
For more information, see CreateTags and Tagging your Amazon EC2
resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see Key pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).

For troubleshooting, see What to do if an instance immediately
terminates
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html),
and Troubleshooting connecting to your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).


=head2 RunScheduledInstances

=over

=item LaunchSpecification => L<Paws::EC2::ScheduledInstancesLaunchSpecification>

=item ScheduledInstanceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [InstanceCount => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RunScheduledInstances>

Returns: a L<Paws::EC2::RunScheduledInstancesResult> instance

Launches the specified Scheduled Instances.

Before you can launch a Scheduled Instance, you must purchase it and
obtain an identifier using PurchaseScheduledInstances.

You must launch a Scheduled Instance during its scheduled time period.
You can't stop or reboot a Scheduled Instance, but you can terminate it
as needed. If you terminate a Scheduled Instance before the current
scheduled time period ends, you can launch it again after a few
minutes.


=head2 SearchLocalGatewayRoutes

=over

=item LocalGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::SearchLocalGatewayRoutes>

Returns: a L<Paws::EC2::SearchLocalGatewayRoutesResult> instance

Searches for routes in the specified local gateway route table.


=head2 SearchTransitGatewayMulticastGroups

=over

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::SearchTransitGatewayMulticastGroups>

Returns: a L<Paws::EC2::SearchTransitGatewayMulticastGroupsResult> instance

Searches one or more transit gateway multicast groups and returns the
group membership information.


=head2 SearchTransitGatewayRoutes

=over

=item Filters => ArrayRef[L<Paws::EC2::Filter>]

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::EC2::SearchTransitGatewayRoutes>

Returns: a L<Paws::EC2::SearchTransitGatewayRoutesResult> instance

Searches for routes in the specified transit gateway route table.


=head2 SendDiagnosticInterrupt

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::SendDiagnosticInterrupt>

Returns: nothing

Sends a diagnostic interrupt to the specified Amazon EC2 instance to
trigger a I<kernel panic> (on Linux instances), or a I<blue
screen>/I<stop error> (on Windows instances). For instances based on
Intel and AMD processors, the interrupt is received as a I<non-maskable
interrupt> (NMI).

In general, the operating system crashes and reboots when a kernel
panic or stop error is triggered. The operating system can also be
configured to perform diagnostic tasks, such as generating a memory
dump file, loading a secondary kernel, or obtaining a call trace.

Before sending a diagnostic interrupt to your instance, ensure that its
operating system is configured to perform the required diagnostic
tasks.

For more information about configuring your operating system to
generate a crash dump when a kernel panic or stop error occurs, see
Send a diagnostic interrupt (for advanced users)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html)
in the I<Amazon EC2 User Guide>.


=head2 StartDeclarativePoliciesReport

=over

=item S3Bucket => Str

=item TargetId => Str

=item [DryRun => Bool]

=item [S3Prefix => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::StartDeclarativePoliciesReport>

Returns: a L<Paws::EC2::StartDeclarativePoliciesReportResult> instance

Generates an account status report. The report is generated
asynchronously, and can take several hours to complete.

The report provides the current status of all attributes supported by
declarative policies for the accounts within the specified scope. The
scope is determined by the specified C<TargetId>, which can represent
an individual account, or all the accounts that fall under the
specified organizational unit (OU) or root (the entire Amazon Web
Services Organization).

The report is saved to your specified S3 bucket, using the following
path structure (with the I<italicized placeholders> representing your
specific values):

C<s3://I<amzn-s3-demo-bucket>/I<your-optional-s3-prefix>/ec2_I<targetId>_I<reportId>_I<yyyyMMdd>TI<hhmm>Z.csv>

B<Prerequisites for generating a report>

=over

=item *

The C<StartDeclarativePoliciesReport> API can only be called by the
management account or delegated administrators for the organization.

=item *

An S3 bucket must be available before generating the report (you can
create a new one or use an existing one), it must be in the same Region
where the report generation request is made, and it must have an
appropriate bucket policy. For a sample S3 policy, see I<Sample Amazon
S3 policy> under .

=item *

Trusted access must be enabled for the service for which the
declarative policy will enforce a baseline configuration. If you use
the Amazon Web Services Organizations console, this is done
automatically when you enable declarative policies. The API uses the
following service principal to identify the EC2 service:
C<ec2.amazonaws.com>. For more information on how to enable trusted
access with the Amazon Web Services CLI and Amazon Web Services SDKs,
see Using Organizations with other Amazon Web Services services
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the I<Amazon Web Services Organizations User Guide>.

=item *

Only one report per organization can be generated at a time. Attempting
to generate a report while another is in progress will result in an
error.

=back

For more information, including the required IAM permissions to run
this API, see Generating the account status report for declarative
policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_status-report.html)
in the I<Amazon Web Services Organizations User Guide>.


=head2 StartInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [AdditionalInfo => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StartInstances>

Returns: a L<Paws::EC2::StartInstancesResult> instance

Starts an Amazon EBS-backed instance that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for instance usage.
However, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage. You
can restart your instance at any time. Every time you start your
instance, Amazon EC2 charges a one-minute minimum for instance usage,
and thereafter charges per second for instance usage.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

If you attempt to start a T3 instance with C<host> tenancy and the
C<unlimited> CPU credit option, the request fails. The C<unlimited> CPU
credit option is not supported on Dedicated Hosts. Before you start the
instance, either change its CPU credit option to C<standard>, or change
its tenancy to C<default> or C<dedicated>.

For more information, see Stop and start Amazon EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the I<Amazon EC2 User Guide>.


=head2 StartNetworkInsightsAccessScopeAnalysis

=over

=item ClientToken => Str

=item NetworkInsightsAccessScopeId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::StartNetworkInsightsAccessScopeAnalysis>

Returns: a L<Paws::EC2::StartNetworkInsightsAccessScopeAnalysisResult> instance

Starts analyzing the specified Network Access Scope.


=head2 StartNetworkInsightsAnalysis

=over

=item ClientToken => Str

=item NetworkInsightsPathId => Str

=item [AdditionalAccounts => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [FilterInArns => ArrayRef[Str|Undef]]

=item [FilterOutArns => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::StartNetworkInsightsAnalysis>

Returns: a L<Paws::EC2::StartNetworkInsightsAnalysisResult> instance

Starts analyzing the specified path. If the path is reachable, the
operation returns the shortest feasible path.


=head2 StartVpcEndpointServicePrivateDnsVerification

=over

=item ServiceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StartVpcEndpointServicePrivateDnsVerification>

Returns: a L<Paws::EC2::StartVpcEndpointServicePrivateDnsVerificationResult> instance

Initiates the verification process to prove that the service provider
owns the private DNS name domain for the endpoint service.

The service provider must successfully perform the verification before
the consumer can use the name to access the service.

Before the service provider runs this command, they must add a record
to the DNS server.


=head2 StopInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [Force => Bool]

=item [Hibernate => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StopInstances>

Returns: a L<Paws::EC2::StopInstancesResult> instance

Stops an Amazon EBS-backed instance. For more information, see Stop and
start Amazon EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the I<Amazon EC2 User Guide>.

When you stop an instance, we shut it down. You can restart your
instance at any time.

You can use the Stop operation together with the Hibernate parameter to
hibernate an instance if the instance is enabled for hibernation
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enabling-hibernation.html)
and meets the hibernation prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
Stopping an instance doesn't preserve data stored in RAM, while
hibernation does. If hibernation fails, a normal shutdown occurs. For
more information, see Hibernate your Amazon EC2 instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon EC2 User Guide>.

If your instance appears stuck in the C<stopping> state, there might be
an issue with the underlying host computer. You can use the Stop
operation together with the Force parameter to force stop your
instance. For more information, see Troubleshoot Amazon EC2 instance
stop issues
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
in the I<Amazon EC2 User Guide>.

Stopping and hibernating an instance differs from rebooting or
terminating it. For example, a stopped or hibernated instance retains
its root volume and any data volumes, unlike terminated instances where
these volumes are automatically deleted. For more information about the
differences between stopping, hibernating, rebooting, and terminating
instances, see Amazon EC2 instance state changes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

We don't charge for instance usage or data transfer fees when an
instance is stopped. However, the root volume and any data volumes
remain and continue to persist your data, and you're charged for volume
usage. Every time you start your instance, Amazon EC2 charges a
one-minute minimum for instance usage, followed by per-second billing.

You can't stop or hibernate instance store-backed instances.


=head2 TerminateClientVpnConnections

=over

=item ClientVpnEndpointId => Str

=item [ConnectionId => Str]

=item [DryRun => Bool]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::EC2::TerminateClientVpnConnections>

Returns: a L<Paws::EC2::TerminateClientVpnConnectionsResult> instance

Terminates active Client VPN endpoint connections. This action can be
used to terminate a specific client connection, or up to five
connections established by a specific user.


=head2 TerminateInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::TerminateInstances>

Returns: a L<Paws::EC2::TerminateInstancesResult> instance

Shuts down the specified instances. This operation is idempotent
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html);
if you terminate an instance more than once, each call succeeds.

If you specify multiple instances and the request fails (for example,
because of a single incorrect instance ID), none of the instances are
terminated.

If you terminate multiple instances across multiple Availability Zones,
and one or more of the specified instances are enabled for termination
protection, the request fails with the following results:

=over

=item *

The specified instances that are in the same Availability Zone as the
protected instance are not terminated.

=item *

The specified instances that are in different Availability Zones, where
no other specified instances are protected, are successfully
terminated.

=back

For example, say you have the following instances:

=over

=item *

Instance A: C<us-east-1a>; Not protected

=item *

Instance B: C<us-east-1a>; Not protected

=item *

Instance C: C<us-east-1b>; Protected

=item *

Instance D: C<us-east-1b>; not protected

=back

If you attempt to terminate all of these instances in the same request,
the request reports failure with the following results:

=over

=item *

Instance A and Instance B are successfully terminated because none of
the specified instances in C<us-east-1a> are enabled for termination
protection.

=item *

Instance C and Instance D fail to terminate because at least one of the
specified instances in C<us-east-1b> (Instance C) is enabled for
termination protection.

=back

Terminated instances remain visible after termination (for
approximately one hour).

By default, Amazon EC2 deletes all EBS volumes that were attached when
the instance launched. Volumes attached after instance launch continue
running.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the
instance persist. When you terminate an instance, any attached EBS
volumes with the C<DeleteOnTermination> block device mapping parameter
set to C<true> are automatically deleted. For more information about
the differences between stopping and terminating instances, see Amazon
EC2 instance state changes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

For information about troubleshooting, see Troubleshooting terminating
your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html)
in the I<Amazon EC2 User Guide>.


=head2 UnassignIpv6Addresses

=over

=item NetworkInterfaceId => Str

=item [Ipv6Addresses => ArrayRef[Str|Undef]]

=item [Ipv6Prefixes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::UnassignIpv6Addresses>

Returns: a L<Paws::EC2::UnassignIpv6AddressesResult> instance

Unassigns the specified IPv6 addresses or Prefix Delegation prefixes
from a network interface.


=head2 UnassignPrivateIpAddresses

=over

=item NetworkInterfaceId => Str

=item [Ipv4Prefixes => ArrayRef[Str|Undef]]

=item [PrivateIpAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::UnassignPrivateIpAddresses>

Returns: nothing

Unassigns the specified secondary private IP addresses or IPv4 Prefix
Delegation prefixes from a network interface.


=head2 UnassignPrivateNatGatewayAddress

=over

=item NatGatewayId => Str

=item PrivateIpAddresses => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [MaxDrainDurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::EC2::UnassignPrivateNatGatewayAddress>

Returns: a L<Paws::EC2::UnassignPrivateNatGatewayAddressResult> instance

Unassigns secondary private IPv4 addresses from a private NAT gateway.
You cannot unassign your primary private IP. For more information, see
Edit secondary IP address associations
(https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html#nat-gateway-edit-secondary)
in the I<Amazon VPC User Guide>.

While unassigning is in progress, you cannot assign/unassign additional
IP addresses while the connections are being drained. You are, however,
allowed to delete the NAT gateway.

A private IP address will only be released at the end of
MaxDrainDurationSeconds. The private IP addresses stay associated and
support the existing connections, but do not support any new
connections (new connections are distributed across the remaining
assigned private IP address). After the existing connections drain out,
the private IP addresses are released.


=head2 UnlockSnapshot

=over

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::UnlockSnapshot>

Returns: a L<Paws::EC2::UnlockSnapshotResult> instance

Unlocks a snapshot that is locked in governance mode or that is locked
in compliance mode but still in the cooling-off period. You can't
unlock a snapshot that is locked in compliance mode after the
cooling-off period has expired.


=head2 UnmonitorInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::UnmonitorInstances>

Returns: a L<Paws::EC2::UnmonitorInstancesResult> instance

Disables detailed monitoring for a running instance. For more
information, see Monitoring your instances and volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
in the I<Amazon EC2 User Guide>.


=head2 UpdateSecurityGroupRuleDescriptionsEgress

=over

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [SecurityGroupRuleDescriptions => ArrayRef[L<Paws::EC2::SecurityGroupRuleDescription>]]


=back

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgressResult> instance

Updates the description of an egress (outbound) security group rule.
You can replace an existing description, or add a description to a rule
that did not have one previously. You can remove a description for a
security group rule by omitting the description parameter in the
request.


=head2 UpdateSecurityGroupRuleDescriptionsIngress

=over

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [SecurityGroupRuleDescriptions => ArrayRef[L<Paws::EC2::SecurityGroupRuleDescription>]]


=back

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngressResult> instance

Updates the description of an ingress (inbound) security group rule.
You can replace an existing description, or add a description to a rule
that did not have one previously. You can remove a description for a
security group rule by omitting the description parameter in the
request.


=head2 WithdrawByoipCidr

=over

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::WithdrawByoipCidr>

Returns: a L<Paws::EC2::WithdrawByoipCidrResult> instance

Stops advertising an address range that is provisioned as an address
pool.

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

It can take a few minutes before traffic to the specified addresses
stops routing to Amazon Web Services because of BGP propagation delays.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAddressesAttribute(sub { },[AllocationIds => ArrayRef[Str|Undef], Attribute => Str, DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAddressesAttribute([AllocationIds => ArrayRef[Str|Undef], Attribute => Str, DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Addresses, passing the object as the first parameter, and the string 'Addresses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeAddressesAttributeResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAddressTransfers(sub { },[AllocationIds => ArrayRef[Str|Undef], DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAddressTransfers([AllocationIds => ArrayRef[Str|Undef], DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AddressTransfers, passing the object as the first parameter, and the string 'AddressTransfers' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeAddressTransfersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAwsNetworkPerformanceMetricSubscriptions(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllAwsNetworkPerformanceMetricSubscriptions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscriptions, passing the object as the first parameter, and the string 'Subscriptions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllByoipCidrs(sub { },MaxResults => Int, [DryRun => Bool, NextToken => Str])

=head2 DescribeAllByoipCidrs(MaxResults => Int, [DryRun => Bool, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ByoipCidrs, passing the object as the first parameter, and the string 'ByoipCidrs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeByoipCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityBlockExtensionHistory(sub { },[CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityBlockExtensionHistory([CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityBlockExtensions, passing the object as the first parameter, and the string 'CapacityBlockExtensions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityBlockExtensionHistoryResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityBlockExtensionOfferings(sub { },CapacityBlockExtensionDurationHours => Int, CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityBlockExtensionOfferings(CapacityBlockExtensionDurationHours => Int, CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityBlockExtensionOfferings, passing the object as the first parameter, and the string 'CapacityBlockExtensionOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityBlockExtensionOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityBlockOfferings(sub { },CapacityDurationHours => Int, [DryRun => Bool, EndDateRange => Str, InstanceCount => Int, InstanceType => Str, MaxResults => Int, NextToken => Str, StartDateRange => Str])

=head2 DescribeAllCapacityBlockOfferings(CapacityDurationHours => Int, [DryRun => Bool, EndDateRange => Str, InstanceCount => Int, InstanceType => Str, MaxResults => Int, NextToken => Str, StartDateRange => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityBlockOfferings, passing the object as the first parameter, and the string 'CapacityBlockOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityBlockOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityReservationBillingRequests(sub { },Role => Str, [CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityReservationBillingRequests(Role => Str, [CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservationBillingRequests, passing the object as the first parameter, and the string 'CapacityReservationBillingRequests' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityReservationBillingRequestsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityReservationFleets(sub { },[CapacityReservationFleetIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityReservationFleets([CapacityReservationFleetIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservationFleets, passing the object as the first parameter, and the string 'CapacityReservationFleets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityReservationFleetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityReservations(sub { },[CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityReservations([CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservations, passing the object as the first parameter, and the string 'CapacityReservations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityReservationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCarrierGateways(sub { },[CarrierGatewayIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCarrierGateways([CarrierGatewayIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CarrierGateways, passing the object as the first parameter, and the string 'CarrierGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCarrierGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClassicLinkInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClassicLinkInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClassicLinkInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnAuthorizationRules(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnAuthorizationRules(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthorizationRules, passing the object as the first parameter, and the string 'AuthorizationRules' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnAuthorizationRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnConnections(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnConnections(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnEndpoints(sub { },[ClientVpnEndpointIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnEndpoints([ClientVpnEndpointIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientVpnEndpoints, passing the object as the first parameter, and the string 'ClientVpnEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnRoutes(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnRoutes(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Routes, passing the object as the first parameter, and the string 'Routes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnRoutesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnTargetNetworks(sub { },ClientVpnEndpointId => Str, [AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnTargetNetworks(ClientVpnEndpointId => Str, [AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientVpnTargetNetworks, passing the object as the first parameter, and the string 'ClientVpnTargetNetworks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnTargetNetworksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCoipPools(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllCoipPools([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoipPools, passing the object as the first parameter, and the string 'CoipPools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCoipPoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDhcpOptions(sub { },[DhcpOptionsIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllDhcpOptions([DhcpOptionsIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DhcpOptions, passing the object as the first parameter, and the string 'DhcpOptions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeDhcpOptionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEgressOnlyInternetGateways(sub { },[DryRun => Bool, EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllEgressOnlyInternetGateways([DryRun => Bool, EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EgressOnlyInternetGateways, passing the object as the first parameter, and the string 'EgressOnlyInternetGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeEgressOnlyInternetGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportImageTasks(sub { },[DryRun => Bool, ExportImageTaskIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllExportImageTasks([DryRun => Bool, ExportImageTaskIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExportImageTasks, passing the object as the first parameter, and the string 'ExportImageTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeExportImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFastLaunchImages(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFastLaunchImages([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FastLaunchImages, passing the object as the first parameter, and the string 'FastLaunchImages' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFastLaunchImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFastSnapshotRestores(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFastSnapshotRestores([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FastSnapshotRestores, passing the object as the first parameter, and the string 'FastSnapshotRestores' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFastSnapshotRestoresResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FleetIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFleets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FleetIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Fleets, passing the object as the first parameter, and the string 'Fleets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFleetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFlowLogs(sub { },[DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], FlowLogIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFlowLogs([DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], FlowLogIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowLogs, passing the object as the first parameter, and the string 'FlowLogs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFlowLogsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFpgaImages(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FpgaImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])

=head2 DescribeAllFpgaImages([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FpgaImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FpgaImages, passing the object as the first parameter, and the string 'FpgaImages' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFpgaImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHostReservationOfferings(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], MaxDuration => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingId => Str])

=head2 DescribeAllHostReservationOfferings([Filter => ArrayRef[L<Paws::EC2::Filter>], MaxDuration => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OfferingSet, passing the object as the first parameter, and the string 'OfferingSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostReservationOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHostReservations(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], HostReservationIdSet => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllHostReservations([Filter => ArrayRef[L<Paws::EC2::Filter>], HostReservationIdSet => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HostReservationSet, passing the object as the first parameter, and the string 'HostReservationSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostReservationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHosts(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllHosts([Filter => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Hosts, passing the object as the first parameter, and the string 'Hosts' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIamInstanceProfileAssociations(sub { },[AssociationIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIamInstanceProfileAssociations([AssociationIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IamInstanceProfileAssociations, passing the object as the first parameter, and the string 'IamInstanceProfileAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImages(sub { },[DryRun => Bool, ExecutableUsers => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], IncludeDeprecated => Bool, IncludeDisabled => Bool, MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])

=head2 DescribeAllImages([DryRun => Bool, ExecutableUsers => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], IncludeDeprecated => Bool, IncludeDisabled => Bool, MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImportImageTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllImportImageTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImportImageTasks, passing the object as the first parameter, and the string 'ImportImageTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeImportImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImportSnapshotTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllImportSnapshotTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImportSnapshotTasks, passing the object as the first parameter, and the string 'ImportSnapshotTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeImportSnapshotTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceConnectEndpoints(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceConnectEndpointIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceConnectEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceConnectEndpointIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceConnectEndpoints, passing the object as the first parameter, and the string 'InstanceConnectEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceConnectEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceCreditSpecifications(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceCreditSpecifications([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceCreditSpecifications, passing the object as the first parameter, and the string 'InstanceCreditSpecifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceCreditSpecificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceEventWindows(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceEventWindowIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceEventWindows([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceEventWindowIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceEventWindows, passing the object as the first parameter, and the string 'InstanceEventWindows' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceEventWindowsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceImageMetadata(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceImageMetadata([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceImageMetadata, passing the object as the first parameter, and the string 'InstanceImageMetadata' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceImageMetadataResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceStatuses, passing the object as the first parameter, and the string 'InstanceStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceTopology(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupNames => ArrayRef[Str|Undef], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceTopology([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupNames => ArrayRef[Str|Undef], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceTopologyResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceTypeOfferings(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocationType => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceTypeOfferings([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocationType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypeOfferings, passing the object as the first parameter, and the string 'InstanceTypeOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceTypeOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceTypes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceTypes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypes, passing the object as the first parameter, and the string 'InstanceTypes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceTypesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInternetGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InternetGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInternetGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InternetGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InternetGateways, passing the object as the first parameter, and the string 'InternetGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInternetGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpamPools(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpamPools([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamPools, passing the object as the first parameter, and the string 'IpamPools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpamPoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpamResourceDiscoveries(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamResourceDiscoveryIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpamResourceDiscoveries([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamResourceDiscoveryIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamResourceDiscoveries, passing the object as the first parameter, and the string 'IpamResourceDiscoveries' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpamResourceDiscoveriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpamResourceDiscoveryAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamResourceDiscoveryAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpamResourceDiscoveryAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamResourceDiscoveryAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamResourceDiscoveryAssociations, passing the object as the first parameter, and the string 'IpamResourceDiscoveryAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpamResourceDiscoveryAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpams(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpams([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ipams, passing the object as the first parameter, and the string 'Ipams' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpamsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpamScopes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamScopeIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpamScopes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamScopeIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamScopes, passing the object as the first parameter, and the string 'IpamScopes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpamScopesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpv6Pools(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllIpv6Pools([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ipv6Pools, passing the object as the first parameter, and the string 'Ipv6Pools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpv6PoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchTemplates(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateIds => ArrayRef[Str|Undef], LaunchTemplateNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLaunchTemplates([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateIds => ArrayRef[Str|Undef], LaunchTemplateNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LaunchTemplates, passing the object as the first parameter, and the string 'LaunchTemplates' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLaunchTemplatesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchTemplateVersions(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateId => Str, LaunchTemplateName => Str, MaxResults => Int, MaxVersion => Str, MinVersion => Str, NextToken => Str, ResolveAlias => Bool, Versions => ArrayRef[Str|Undef]])

=head2 DescribeAllLaunchTemplateVersions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateId => Str, LaunchTemplateName => Str, MaxResults => Int, MaxVersion => Str, MinVersion => Str, NextToken => Str, ResolveAlias => Bool, Versions => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LaunchTemplateVersions, passing the object as the first parameter, and the string 'LaunchTemplateVersions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTables, passing the object as the first parameter, and the string 'LocalGatewayRouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTableVirtualInterfaceGroupAssociations, passing the object as the first parameter, and the string 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTableVpcAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTableVpcAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTableVpcAssociations, passing the object as the first parameter, and the string 'LocalGatewayRouteTableVpcAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGateways, passing the object as the first parameter, and the string 'LocalGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayVirtualInterfaceGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayVirtualInterfaceGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayVirtualInterfaceGroups, passing the object as the first parameter, and the string 'LocalGatewayVirtualInterfaceGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayVirtualInterfaces(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayVirtualInterfaces([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayVirtualInterfaces, passing the object as the first parameter, and the string 'LocalGatewayVirtualInterfaces' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayVirtualInterfacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMacHosts(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllMacHosts([Filters => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MacHosts, passing the object as the first parameter, and the string 'MacHosts' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeMacHostsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMacModificationTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MacModificationTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllMacModificationTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MacModificationTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MacModificationTasks, passing the object as the first parameter, and the string 'MacModificationTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeMacModificationTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllManagedPrefixLists(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])

=head2 DescribeAllManagedPrefixLists([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixLists, passing the object as the first parameter, and the string 'PrefixLists' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeManagedPrefixListsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMovingAddresses(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PublicIps => ArrayRef[Str|Undef]])

=head2 DescribeAllMovingAddresses([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PublicIps => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MovingAddressStatuses, passing the object as the first parameter, and the string 'MovingAddressStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeMovingAddressesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNatGateways(sub { },[DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNatGateways([DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NatGateways, passing the object as the first parameter, and the string 'NatGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNatGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkAcls(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkAclIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkAcls([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkAclIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkAcls, passing the object as the first parameter, and the string 'NetworkAcls' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkAclsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsAccessScopeAnalyses(sub { },[AnalysisStartTimeBegin => Str, AnalysisStartTimeEnd => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAccessScopeAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsAccessScopeId => Str, NextToken => Str])

=head2 DescribeAllNetworkInsightsAccessScopeAnalyses([AnalysisStartTimeBegin => Str, AnalysisStartTimeEnd => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAccessScopeAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsAccessScopeId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsAccessScopeAnalyses, passing the object as the first parameter, and the string 'NetworkInsightsAccessScopeAnalyses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsAccessScopeAnalysesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsAccessScopes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAccessScopeIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInsightsAccessScopes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAccessScopeIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsAccessScopes, passing the object as the first parameter, and the string 'NetworkInsightsAccessScopes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsAccessScopesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsAnalyses(sub { },[AnalysisEndTime => Str, AnalysisStartTime => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsPathId => Str, NextToken => Str])

=head2 DescribeAllNetworkInsightsAnalyses([AnalysisEndTime => Str, AnalysisStartTime => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsPathId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsAnalyses, passing the object as the first parameter, and the string 'NetworkInsightsAnalyses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsAnalysesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsPaths(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsPathIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInsightsPaths([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsPathIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsPaths, passing the object as the first parameter, and the string 'NetworkInsightsPaths' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsPathsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInterfacePermissions(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfacePermissionIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInterfacePermissions([Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfacePermissionIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInterfacePermissions, passing the object as the first parameter, and the string 'NetworkInterfacePermissions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInterfaces(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfaceIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInterfaces([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfaceIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInterfaces, passing the object as the first parameter, and the string 'NetworkInterfaces' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInterfacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPrefixLists(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPrefixLists([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixLists, passing the object as the first parameter, and the string 'PrefixLists' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePrefixListsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPrincipalIdFormat(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, Resources => ArrayRef[Str|Undef]])

=head2 DescribeAllPrincipalIdFormat([DryRun => Bool, MaxResults => Int, NextToken => Str, Resources => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Principals, passing the object as the first parameter, and the string 'Principals' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePrincipalIdFormatResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPublicIpv4Pools(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPublicIpv4Pools([Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PublicIpv4Pools, passing the object as the first parameter, and the string 'PublicIpv4Pools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePublicIpv4PoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplaceRootVolumeTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReplaceRootVolumeTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplaceRootVolumeTasks, passing the object as the first parameter, and the string 'ReplaceRootVolumeTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReplaceRootVolumeTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesModifications(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesModifications([Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesModifications, passing the object as the first parameter, and the string 'ReservedInstancesModifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesOfferings(sub { },[AvailabilityZone => Str, AvailabilityZoneId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesOfferings([AvailabilityZone => Str, AvailabilityZoneId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesOfferings, passing the object as the first parameter, and the string 'ReservedInstancesOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRouteServerEndpoints(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerEndpointIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRouteServerEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerEndpointIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteServerEndpoints, passing the object as the first parameter, and the string 'RouteServerEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeRouteServerEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRouteServerPeers(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerPeerIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRouteServerPeers([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerPeerIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteServerPeers, passing the object as the first parameter, and the string 'RouteServerPeers' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeRouteServerPeersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRouteServers(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRouteServers([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteServerIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteServers, passing the object as the first parameter, and the string 'RouteServers' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeRouteServersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteTableIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteTableIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteTables, passing the object as the first parameter, and the string 'RouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScheduledInstanceAvailability(sub { },FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>, Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, MaxSlotDurationInHours => Int, MinSlotDurationInHours => Int, NextToken => Str])

=head2 DescribeAllScheduledInstanceAvailability(FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>, Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, MaxSlotDurationInHours => Int, MinSlotDurationInHours => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledInstanceAvailabilitySet, passing the object as the first parameter, and the string 'ScheduledInstanceAvailabilitySet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScheduledInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ScheduledInstanceIds => ArrayRef[Str|Undef], SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>])

=head2 DescribeAllScheduledInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ScheduledInstanceIds => ArrayRef[Str|Undef], SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledInstanceSet, passing the object as the first parameter, and the string 'ScheduledInstanceSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeScheduledInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSecurityGroupRules(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SecurityGroupRuleIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSecurityGroupRules([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SecurityGroupRuleIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityGroupRules, passing the object as the first parameter, and the string 'SecurityGroupRules' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSecurityGroupRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSecurityGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupIds => ArrayRef[Str|Undef], GroupNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllSecurityGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupIds => ArrayRef[Str|Undef], GroupNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityGroups, passing the object as the first parameter, and the string 'SecurityGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSecurityGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSecurityGroupVpcAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllSecurityGroupVpcAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityGroupVpcAssociations, passing the object as the first parameter, and the string 'SecurityGroupVpcAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSecurityGroupVpcAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshots([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshotTierStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllSnapshotTierStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SnapshotTierStatuses, passing the object as the first parameter, and the string 'SnapshotTierStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSnapshotTierStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotFleetInstances(sub { },SpotFleetRequestId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSpotFleetInstances(SpotFleetRequestId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActiveInstances, passing the object as the first parameter, and the string 'ActiveInstances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotFleetInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotFleetRequests(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSpotFleetRequests([DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotFleetRequestConfigs, passing the object as the first parameter, and the string 'SpotFleetRequestConfigs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotInstanceRequests(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SpotInstanceRequestIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSpotInstanceRequests([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SpotInstanceRequestIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotInstanceRequests, passing the object as the first parameter, and the string 'SpotInstanceRequests' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotInstanceRequestsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotPriceHistory(sub { },[AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])

=head2 DescribeAllSpotPriceHistory([AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotPriceHistory, passing the object as the first parameter, and the string 'SpotPriceHistory' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStaleSecurityGroups(sub { },VpcId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllStaleSecurityGroups(VpcId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StaleSecurityGroupSet, passing the object as the first parameter, and the string 'StaleSecurityGroupSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeStaleSecurityGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStoreImageTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllStoreImageTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StoreImageTaskResults, passing the object as the first parameter, and the string 'StoreImageTaskResults' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeStoreImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubnets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SubnetIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSubnets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SubnetIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subnets, passing the object as the first parameter, and the string 'Subnets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSubnetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllTags([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTagsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorFilters(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorFilterIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorFilters([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorFilterIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorFilters, passing the object as the first parameter, and the string 'TrafficMirrorFilters' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorFiltersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorSessions(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorSessionIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorSessions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorSessionIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorSessions, passing the object as the first parameter, and the string 'TrafficMirrorSessions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorSessionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorTargets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorTargetIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorTargets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorTargetIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorTargets, passing the object as the first parameter, and the string 'TrafficMirrorTargets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorTargetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayAttachments, passing the object as the first parameter, and the string 'TransitGatewayAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayConnectPeers(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayConnectPeers([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnectPeers, passing the object as the first parameter, and the string 'TransitGatewayConnectPeers' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayConnectPeersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayConnects(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayConnects([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnects, passing the object as the first parameter, and the string 'TransitGatewayConnects' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayConnectsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayMulticastDomains(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayMulticastDomains([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayMulticastDomains, passing the object as the first parameter, and the string 'TransitGatewayMulticastDomains' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayMulticastDomainsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayPeeringAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayPeeringAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayPeeringAttachments, passing the object as the first parameter, and the string 'TransitGatewayPeeringAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayPolicyTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayPolicyTableIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayPolicyTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayPolicyTableIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayPolicyTables, passing the object as the first parameter, and the string 'TransitGatewayPolicyTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayPolicyTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayRouteTableAnnouncements(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableAnnouncementIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayRouteTableAnnouncements([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableAnnouncementIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRouteTableAnnouncements, passing the object as the first parameter, and the string 'TransitGatewayRouteTableAnnouncements' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayRouteTableAnnouncementsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRouteTables, passing the object as the first parameter, and the string 'TransitGatewayRouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGateways, passing the object as the first parameter, and the string 'TransitGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayVpcAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayVpcAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayVpcAttachments, passing the object as the first parameter, and the string 'TransitGatewayVpcAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrunkInterfaceAssociations(sub { },[AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllTrunkInterfaceAssociations([AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InterfaceAssociations, passing the object as the first parameter, and the string 'InterfaceAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrunkInterfaceAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedAccessEndpoints(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessEndpointIds => ArrayRef[Str|Undef], VerifiedAccessGroupId => Str, VerifiedAccessInstanceId => Str])

=head2 DescribeAllVerifiedAccessEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessEndpointIds => ArrayRef[Str|Undef], VerifiedAccessGroupId => Str, VerifiedAccessInstanceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VerifiedAccessEndpoints, passing the object as the first parameter, and the string 'VerifiedAccessEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVerifiedAccessEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedAccessGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessGroupIds => ArrayRef[Str|Undef], VerifiedAccessInstanceId => Str])

=head2 DescribeAllVerifiedAccessGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessGroupIds => ArrayRef[Str|Undef], VerifiedAccessInstanceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VerifiedAccessGroups, passing the object as the first parameter, and the string 'VerifiedAccessGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVerifiedAccessGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedAccessInstanceLoggingConfigurations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessInstanceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVerifiedAccessInstanceLoggingConfigurations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessInstanceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LoggingConfigurations, passing the object as the first parameter, and the string 'LoggingConfigurations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedAccessInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessInstanceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVerifiedAccessInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessInstanceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VerifiedAccessInstances, passing the object as the first parameter, and the string 'VerifiedAccessInstances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVerifiedAccessInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVerifiedAccessTrustProviders(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessTrustProviderIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVerifiedAccessTrustProviders([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VerifiedAccessTrustProviderIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VerifiedAccessTrustProviders, passing the object as the first parameter, and the string 'VerifiedAccessTrustProviders' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVerifiedAccessTrustProvidersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Volumes, passing the object as the first parameter, and the string 'Volumes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumesModifications(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumesModifications([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumesModifications, passing the object as the first parameter, and the string 'VolumesModifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumesModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumeStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumeStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumeStatuses, passing the object as the first parameter, and the string 'VolumeStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumeStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcClassicLinkDnsSupport(sub { },[MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcClassicLinkDnsSupport([MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Vpcs, passing the object as the first parameter, and the string 'Vpcs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointConnectionNotifications(sub { },[ConnectionNotificationId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointConnectionNotifications([ConnectionNotificationId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionNotificationSet, passing the object as the first parameter, and the string 'ConnectionNotificationSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointConnections(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcEndpointConnections, passing the object as the first parameter, and the string 'VpcEndpointConnections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpoints(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcEndpointIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcEndpointIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcEndpoints, passing the object as the first parameter, and the string 'VpcEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServiceConfigurations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpointServiceConfigurations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceConfigurations, passing the object as the first parameter, and the string 'ServiceConfigurations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServicePermissions(sub { },ServiceId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointServicePermissions(ServiceId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AllowedPrincipals, passing the object as the first parameter, and the string 'AllowedPrincipals' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServicePermissionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServices(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceNames => ArrayRef[Str|Undef], ServiceRegions => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpointServices([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceNames => ArrayRef[Str|Undef], ServiceRegions => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceDetails, passing the object as the first parameter, and the string 'ServiceDetails' as the second parameter 

 - ServiceNames, passing the object as the first parameter, and the string 'ServiceNames' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServicesResult> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcPeeringConnections(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcPeeringConnectionIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcPeeringConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcPeeringConnectionIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcPeeringConnections, passing the object as the first parameter, and the string 'VpcPeeringConnections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcs(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcs([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Vpcs, passing the object as the first parameter, and the string 'Vpcs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAssociatedIpv6PoolCidrs(sub { },PoolId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllAssociatedIpv6PoolCidrs(PoolId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ipv6CidrAssociations, passing the object as the first parameter, and the string 'Ipv6CidrAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetAssociatedIpv6PoolCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAwsNetworkPerformanceData(sub { },[DataQueries => ArrayRef[L<Paws::EC2::DataQuery>], DryRun => Bool, EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 GetAllAwsNetworkPerformanceData([DataQueries => ArrayRef[L<Paws::EC2::DataQuery>], DryRun => Bool, EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataResponses, passing the object as the first parameter, and the string 'DataResponses' as the second parameter 

If not, it will return a a L<Paws::EC2::GetAwsNetworkPerformanceDataResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllGroupsForCapacityReservation(sub { },CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllGroupsForCapacityReservation(CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservationGroups, passing the object as the first parameter, and the string 'CapacityReservationGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::GetGroupsForCapacityReservationResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInstanceTypesFromInstanceRequirements(sub { },ArchitectureTypes => ArrayRef[Str|Undef], InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>, VirtualizationTypes => ArrayRef[Str|Undef], [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllInstanceTypesFromInstanceRequirements(ArchitectureTypes => ArrayRef[Str|Undef], InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>, VirtualizationTypes => ArrayRef[Str|Undef], [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypes, passing the object as the first parameter, and the string 'InstanceTypes' as the second parameter 

If not, it will return a a L<Paws::EC2::GetInstanceTypesFromInstanceRequirementsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamAddressHistory(sub { },Cidr => Str, IpamScopeId => Str, [DryRun => Bool, EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str, VpcId => Str])

=head2 GetAllIpamAddressHistory(Cidr => Str, IpamScopeId => Str, [DryRun => Bool, EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str, VpcId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HistoryRecords, passing the object as the first parameter, and the string 'HistoryRecords' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamAddressHistoryResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamDiscoveredAccounts(sub { },DiscoveryRegion => Str, IpamResourceDiscoveryId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllIpamDiscoveredAccounts(DiscoveryRegion => Str, IpamResourceDiscoveryId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamDiscoveredAccounts, passing the object as the first parameter, and the string 'IpamDiscoveredAccounts' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamDiscoveredAccountsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamDiscoveredResourceCidrs(sub { },IpamResourceDiscoveryId => Str, ResourceRegion => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllIpamDiscoveredResourceCidrs(IpamResourceDiscoveryId => Str, ResourceRegion => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamDiscoveredResourceCidrs, passing the object as the first parameter, and the string 'IpamDiscoveredResourceCidrs' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamDiscoveredResourceCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamPoolAllocations(sub { },IpamPoolId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolAllocationId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllIpamPoolAllocations(IpamPoolId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolAllocationId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamPoolAllocations, passing the object as the first parameter, and the string 'IpamPoolAllocations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamPoolAllocationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamPoolCidrs(sub { },IpamPoolId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllIpamPoolCidrs(IpamPoolId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamPoolCidrs, passing the object as the first parameter, and the string 'IpamPoolCidrs' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamPoolCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIpamResourceCidrs(sub { },IpamScopeId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolId => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceOwner => Str, ResourceTag => L<Paws::EC2::RequestIpamResourceTag>, ResourceType => Str])

=head2 GetAllIpamResourceCidrs(IpamScopeId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IpamPoolId => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceOwner => Str, ResourceTag => L<Paws::EC2::RequestIpamResourceTag>, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpamResourceCidrs, passing the object as the first parameter, and the string 'IpamResourceCidrs' as the second parameter 

If not, it will return a a L<Paws::EC2::GetIpamResourceCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllManagedPrefixListAssociations(sub { },PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllManagedPrefixListAssociations(PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixListAssociations, passing the object as the first parameter, and the string 'PrefixListAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetManagedPrefixListAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllManagedPrefixListEntries(sub { },PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str, TargetVersion => Int])

=head2 GetAllManagedPrefixListEntries(PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str, TargetVersion => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::EC2::GetManagedPrefixListEntriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllNetworkInsightsAccessScopeAnalysisFindings(sub { },NetworkInsightsAccessScopeAnalysisId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllNetworkInsightsAccessScopeAnalysisFindings(NetworkInsightsAccessScopeAnalysisId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AnalysisFindings, passing the object as the first parameter, and the string 'AnalysisFindings' as the second parameter 

If not, it will return a a L<Paws::EC2::GetNetworkInsightsAccessScopeAnalysisFindingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSecurityGroupsForVpc(sub { },VpcId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllSecurityGroupsForVpc(VpcId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityGroupForVpcs, passing the object as the first parameter, and the string 'SecurityGroupForVpcs' as the second parameter 

If not, it will return a a L<Paws::EC2::GetSecurityGroupsForVpcResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSpotPlacementScores(sub { },TargetCapacity => Int, [DryRun => Bool, InstanceRequirementsWithMetadata => L<Paws::EC2::InstanceRequirementsWithMetadataRequest>, InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, RegionNames => ArrayRef[Str|Undef], SingleAvailabilityZone => Bool, TargetCapacityUnitType => Str])

=head2 GetAllSpotPlacementScores(TargetCapacity => Int, [DryRun => Bool, InstanceRequirementsWithMetadata => L<Paws::EC2::InstanceRequirementsWithMetadataRequest>, InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, RegionNames => ArrayRef[Str|Undef], SingleAvailabilityZone => Bool, TargetCapacityUnitType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotPlacementScores, passing the object as the first parameter, and the string 'SpotPlacementScores' as the second parameter 

If not, it will return a a L<Paws::EC2::GetSpotPlacementScoresResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayAttachmentPropagations(sub { },TransitGatewayAttachmentId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayAttachmentPropagations(TransitGatewayAttachmentId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayAttachmentPropagations, passing the object as the first parameter, and the string 'TransitGatewayAttachmentPropagations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayAttachmentPropagationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayMulticastDomainAssociations(sub { },TransitGatewayMulticastDomainId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayMulticastDomainAssociations(TransitGatewayMulticastDomainId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MulticastDomainAssociations, passing the object as the first parameter, and the string 'MulticastDomainAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayPolicyTableAssociations(sub { },TransitGatewayPolicyTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayPolicyTableAssociations(TransitGatewayPolicyTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Associations, passing the object as the first parameter, and the string 'Associations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayPolicyTableAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayPrefixListReferences(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayPrefixListReferences(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayPrefixListReferences, passing the object as the first parameter, and the string 'TransitGatewayPrefixListReferences' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayPrefixListReferencesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRouteTableAssociations(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayRouteTableAssociations(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Associations, passing the object as the first parameter, and the string 'Associations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayRouteTableAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRouteTablePropagations(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayRouteTablePropagations(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRouteTablePropagations, passing the object as the first parameter, and the string 'TransitGatewayRouteTablePropagations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayRouteTablePropagationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllVpnConnectionDeviceTypes(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllVpnConnectionDeviceTypes([DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpnConnectionDeviceTypes, passing the object as the first parameter, and the string 'VpnConnectionDeviceTypes' as the second parameter 

If not, it will return a a L<Paws::EC2::GetVpnConnectionDeviceTypesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImagesInRecycleBin(sub { },[DryRun => Bool, ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllImagesInRecycleBin([DryRun => Bool, ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::EC2::ListImagesInRecycleBinResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSnapshotsInRecycleBin(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, SnapshotIds => ArrayRef[Str|Undef]])

=head2 ListAllSnapshotsInRecycleBin([DryRun => Bool, MaxResults => Int, NextToken => Str, SnapshotIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::EC2::ListSnapshotsInRecycleBinResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllLocalGatewayRoutes(sub { },LocalGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 SearchAllLocalGatewayRoutes(LocalGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Routes, passing the object as the first parameter, and the string 'Routes' as the second parameter 

If not, it will return a a L<Paws::EC2::SearchLocalGatewayRoutesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllTransitGatewayMulticastGroups(sub { },TransitGatewayMulticastDomainId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 SearchAllTransitGatewayMulticastGroups(TransitGatewayMulticastDomainId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MulticastGroups, passing the object as the first parameter, and the string 'MulticastGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::SearchTransitGatewayMulticastGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

