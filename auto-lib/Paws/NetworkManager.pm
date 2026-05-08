package Paws::NetworkManager;
  use Moose;
  sub service { 'networkmanager' }
  sub signing_name { 'networkmanager' }
  sub version { '2019-07-05' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AcceptAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnectAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateConnectAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCoreNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateCoreNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectConnectGatewayAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateDirectConnectGatewayAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSiteToSiteVpnAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateSiteToSiteVpnAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPeering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateTransitGatewayPeering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRouteTableAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateTransitGatewayRouteTableAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoreNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteCoreNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoreNetworkPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteCoreNetworkPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePeering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeletePeering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeregisterTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DescribeGlobalNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteCoreNetworkChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ExecuteCoreNetworkChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetConnectAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectPeerAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetConnectPeerAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCoreNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreNetworkChangeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCoreNetworkChangeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreNetworkChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCoreNetworkChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreNetworkPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCoreNetworkPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomerGatewayAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCustomerGatewayAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectConnectGatewayAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetDirectConnectGatewayAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinkAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetLinkAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkResourceCounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetNetworkResourceCounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkResourceRelationships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetNetworkResourceRelationships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetNetworkResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetNetworkRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkTelemetry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetNetworkTelemetry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetRouteAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetSites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSiteToSiteVpnAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetSiteToSiteVpnAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayConnectPeerAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayPeering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayPeering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRouteTableAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayRouteTableAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectPeers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListConnectPeers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoreNetworkPolicyVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListCoreNetworkPolicyVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoreNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListCoreNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationServiceAccessStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListOrganizationServiceAccessStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPeerings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListPeerings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutCoreNetworkPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::PutCoreNetworkPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::RegisterTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::RejectAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreCoreNetworkPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::RestoreCoreNetworkPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOrganizationServiceAccessUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::StartOrganizationServiceAccessUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRouteAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::StartRouteAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCoreNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateCoreNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDirectConnectGatewayAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateDirectConnectGatewayAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkResourceMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateNetworkResourceMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllGlobalNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGlobalNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGlobalNetworks(@_, NextToken => $next_result->NextToken);
        push @{ $result->GlobalNetworks }, @{ $next_result->GlobalNetworks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GlobalNetworks') foreach (@{ $result->GlobalNetworks });
        $result = $self->DescribeGlobalNetworks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GlobalNetworks') foreach (@{ $result->GlobalNetworks });
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
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->GetConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub GetAllConnectPeerAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnectPeerAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConnectPeerAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectPeerAssociations }, @{ $next_result->ConnectPeerAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectPeerAssociations') foreach (@{ $result->ConnectPeerAssociations });
        $result = $self->GetConnectPeerAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectPeerAssociations') foreach (@{ $result->ConnectPeerAssociations });
    }

    return undef
  }
  sub GetAllCoreNetworkChangeEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCoreNetworkChangeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCoreNetworkChangeEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoreNetworkChangeEvents }, @{ $next_result->CoreNetworkChangeEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoreNetworkChangeEvents') foreach (@{ $result->CoreNetworkChangeEvents });
        $result = $self->GetCoreNetworkChangeEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoreNetworkChangeEvents') foreach (@{ $result->CoreNetworkChangeEvents });
    }

    return undef
  }
  sub GetAllCoreNetworkChangeSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCoreNetworkChangeSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCoreNetworkChangeSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoreNetworkChanges }, @{ $next_result->CoreNetworkChanges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoreNetworkChanges') foreach (@{ $result->CoreNetworkChanges });
        $result = $self->GetCoreNetworkChangeSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoreNetworkChanges') foreach (@{ $result->CoreNetworkChanges });
    }

    return undef
  }
  sub GetAllCustomerGatewayAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCustomerGatewayAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCustomerGatewayAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomerGatewayAssociations }, @{ $next_result->CustomerGatewayAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomerGatewayAssociations') foreach (@{ $result->CustomerGatewayAssociations });
        $result = $self->GetCustomerGatewayAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomerGatewayAssociations') foreach (@{ $result->CustomerGatewayAssociations });
    }

    return undef
  }
  sub GetAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Devices }, @{ $next_result->Devices };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Devices') foreach (@{ $result->Devices });
        $result = $self->GetDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Devices') foreach (@{ $result->Devices });
    }

    return undef
  }
  sub GetAllLinkAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLinkAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetLinkAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LinkAssociations }, @{ $next_result->LinkAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LinkAssociations') foreach (@{ $result->LinkAssociations });
        $result = $self->GetLinkAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LinkAssociations') foreach (@{ $result->LinkAssociations });
    }

    return undef
  }
  sub GetAllLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Links }, @{ $next_result->Links };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Links') foreach (@{ $result->Links });
        $result = $self->GetLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Links') foreach (@{ $result->Links });
    }

    return undef
  }
  sub GetAllNetworkResourceCounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetNetworkResourceCounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetNetworkResourceCounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkResourceCounts }, @{ $next_result->NetworkResourceCounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkResourceCounts') foreach (@{ $result->NetworkResourceCounts });
        $result = $self->GetNetworkResourceCounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkResourceCounts') foreach (@{ $result->NetworkResourceCounts });
    }

    return undef
  }
  sub GetAllNetworkResourceRelationships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetNetworkResourceRelationships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetNetworkResourceRelationships(@_, NextToken => $next_result->NextToken);
        push @{ $result->Relationships }, @{ $next_result->Relationships };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Relationships') foreach (@{ $result->Relationships });
        $result = $self->GetNetworkResourceRelationships(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Relationships') foreach (@{ $result->Relationships });
    }

    return undef
  }
  sub GetAllNetworkResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetNetworkResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetNetworkResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkResources }, @{ $next_result->NetworkResources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkResources') foreach (@{ $result->NetworkResources });
        $result = $self->GetNetworkResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkResources') foreach (@{ $result->NetworkResources });
    }

    return undef
  }
  sub GetAllNetworkTelemetry {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetNetworkTelemetry(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetNetworkTelemetry(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkTelemetry }, @{ $next_result->NetworkTelemetry };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkTelemetry') foreach (@{ $result->NetworkTelemetry });
        $result = $self->GetNetworkTelemetry(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkTelemetry') foreach (@{ $result->NetworkTelemetry });
    }

    return undef
  }
  sub GetAllSites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSites(@_, NextToken => $next_result->NextToken);
        push @{ $result->Sites }, @{ $next_result->Sites };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Sites') foreach (@{ $result->Sites });
        $result = $self->GetSites(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Sites') foreach (@{ $result->Sites });
    }

    return undef
  }
  sub GetAllTransitGatewayConnectPeerAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayConnectPeerAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayConnectPeerAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnectPeerAssociations }, @{ $next_result->TransitGatewayConnectPeerAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnectPeerAssociations') foreach (@{ $result->TransitGatewayConnectPeerAssociations });
        $result = $self->GetTransitGatewayConnectPeerAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnectPeerAssociations') foreach (@{ $result->TransitGatewayConnectPeerAssociations });
    }

    return undef
  }
  sub GetAllTransitGatewayRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRegistrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRegistrations }, @{ $next_result->TransitGatewayRegistrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRegistrations') foreach (@{ $result->TransitGatewayRegistrations });
        $result = $self->GetTransitGatewayRegistrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRegistrations') foreach (@{ $result->TransitGatewayRegistrations });
    }

    return undef
  }
  sub ListAllAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attachments }, @{ $next_result->Attachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attachments') foreach (@{ $result->Attachments });
        $result = $self->ListAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attachments') foreach (@{ $result->Attachments });
    }

    return undef
  }
  sub ListAllConnectPeers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectPeers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConnectPeers(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectPeers }, @{ $next_result->ConnectPeers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectPeers') foreach (@{ $result->ConnectPeers });
        $result = $self->ListConnectPeers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectPeers') foreach (@{ $result->ConnectPeers });
    }

    return undef
  }
  sub ListAllCoreNetworkPolicyVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoreNetworkPolicyVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCoreNetworkPolicyVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoreNetworkPolicyVersions }, @{ $next_result->CoreNetworkPolicyVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoreNetworkPolicyVersions') foreach (@{ $result->CoreNetworkPolicyVersions });
        $result = $self->ListCoreNetworkPolicyVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoreNetworkPolicyVersions') foreach (@{ $result->CoreNetworkPolicyVersions });
    }

    return undef
  }
  sub ListAllCoreNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoreNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCoreNetworks(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoreNetworks }, @{ $next_result->CoreNetworks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoreNetworks') foreach (@{ $result->CoreNetworks });
        $result = $self->ListCoreNetworks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoreNetworks') foreach (@{ $result->CoreNetworks });
    }

    return undef
  }
  sub ListAllPeerings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPeerings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPeerings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Peerings }, @{ $next_result->Peerings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Peerings') foreach (@{ $result->Peerings });
        $result = $self->ListPeerings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Peerings') foreach (@{ $result->Peerings });
    }

    return undef
  }


  sub operations { qw/AcceptAttachment AssociateConnectPeer AssociateCustomerGateway AssociateLink AssociateTransitGatewayConnectPeer CreateConnectAttachment CreateConnection CreateConnectPeer CreateCoreNetwork CreateDevice CreateDirectConnectGatewayAttachment CreateGlobalNetwork CreateLink CreateSite CreateSiteToSiteVpnAttachment CreateTransitGatewayPeering CreateTransitGatewayRouteTableAttachment CreateVpcAttachment DeleteAttachment DeleteConnection DeleteConnectPeer DeleteCoreNetwork DeleteCoreNetworkPolicyVersion DeleteDevice DeleteGlobalNetwork DeleteLink DeletePeering DeleteResourcePolicy DeleteSite DeregisterTransitGateway DescribeGlobalNetworks DisassociateConnectPeer DisassociateCustomerGateway DisassociateLink DisassociateTransitGatewayConnectPeer ExecuteCoreNetworkChangeSet GetConnectAttachment GetConnections GetConnectPeer GetConnectPeerAssociations GetCoreNetwork GetCoreNetworkChangeEvents GetCoreNetworkChangeSet GetCoreNetworkPolicy GetCustomerGatewayAssociations GetDevices GetDirectConnectGatewayAttachment GetLinkAssociations GetLinks GetNetworkResourceCounts GetNetworkResourceRelationships GetNetworkResources GetNetworkRoutes GetNetworkTelemetry GetResourcePolicy GetRouteAnalysis GetSites GetSiteToSiteVpnAttachment GetTransitGatewayConnectPeerAssociations GetTransitGatewayPeering GetTransitGatewayRegistrations GetTransitGatewayRouteTableAttachment GetVpcAttachment ListAttachments ListConnectPeers ListCoreNetworkPolicyVersions ListCoreNetworks ListOrganizationServiceAccessStatus ListPeerings ListTagsForResource PutCoreNetworkPolicy PutResourcePolicy RegisterTransitGateway RejectAttachment RestoreCoreNetworkPolicyVersion StartOrganizationServiceAccessUpdate StartRouteAnalysis TagResource UntagResource UpdateConnection UpdateCoreNetwork UpdateDevice UpdateDirectConnectGatewayAttachment UpdateGlobalNetwork UpdateLink UpdateNetworkResourceMetadata UpdateSite UpdateVpcAttachment / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager - Perl Interface to AWS AWS Network Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NetworkManager');
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

Amazon Web Services enables you to centrally manage your Amazon Web
Services Cloud WAN core network and your Transit Gateway network across
Amazon Web Services accounts, Regions, and on-premises locations.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05>


=head1 METHODS

=head2 AcceptAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::AcceptAttachment>

Returns: a L<Paws::NetworkManager::AcceptAttachmentResponse> instance

Accepts a core network attachment request.

Once the attachment request is accepted by a core network owner, the
attachment is created and connected to a core network.


=head2 AssociateConnectPeer

=over

=item ConnectPeerId => Str

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateConnectPeer>

Returns: a L<Paws::NetworkManager::AssociateConnectPeerResponse> instance

Associates a core network Connect peer with a device and optionally,
with a link.

If you specify a link, it must be associated with the specified device.
You can only associate core network Connect peers that have been
created on a core network Connect attachment on a core network.


=head2 AssociateCustomerGateway

=over

=item CustomerGatewayArn => Str

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateCustomerGateway>

Returns: a L<Paws::NetworkManager::AssociateCustomerGatewayResponse> instance

Associates a customer gateway with a device and optionally, with a
link. If you specify a link, it must be associated with the specified
device.

You can only associate customer gateways that are connected to a VPN
attachment on a transit gateway or core network registered in your
global network. When you register a transit gateway or core network,
customer gateways that are connected to the transit gateway are
automatically included in the global network. To list customer gateways
that are connected to a transit gateway, use the DescribeVpnConnections
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
EC2 API and filter by C<transit-gateway-id>.

You cannot associate a customer gateway with more than one device and
link.


=head2 AssociateLink

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateLink>

Returns: a L<Paws::NetworkManager::AssociateLinkResponse> instance

Associates a link to a device. A device can be associated to multiple
links and a link can be associated to multiple devices. The device and
link must be in the same global network and the same site.


=head2 AssociateTransitGatewayConnectPeer

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item TransitGatewayConnectPeerArn => Str

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateTransitGatewayConnectPeer>

Returns: a L<Paws::NetworkManager::AssociateTransitGatewayConnectPeerResponse> instance

Associates a transit gateway Connect peer with a device, and
optionally, with a link. If you specify a link, it must be associated
with the specified device.

You can only associate transit gateway Connect peers that have been
created on a transit gateway that's registered in your global network.

You cannot associate a transit gateway Connect peer with more than one
device and link.


=head2 CreateConnectAttachment

=over

=item CoreNetworkId => Str

=item EdgeLocation => Str

=item Options => L<Paws::NetworkManager::ConnectAttachmentOptions>

=item TransportAttachmentId => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateConnectAttachment>

Returns: a L<Paws::NetworkManager::CreateConnectAttachmentResponse> instance

Creates a core network Connect attachment from a specified core network
attachment.

A core network Connect attachment is a GRE-based tunnel attachment that
you can use to establish a connection between a core network and an
appliance. A core network Connect attachment uses an existing VPC
attachment as the underlying transport mechanism.


=head2 CreateConnection

=over

=item ConnectedDeviceId => Str

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [ConnectedLinkId => Str]

=item [Description => Str]

=item [LinkId => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateConnection>

Returns: a L<Paws::NetworkManager::CreateConnectionResponse> instance

Creates a connection between two devices. The devices can be a physical
or virtual appliance that connects to a third-party appliance in a VPC,
or a physical appliance that connects to another physical appliance in
an on-premises network.


=head2 CreateConnectPeer

=over

=item ConnectAttachmentId => Str

=item PeerAddress => Str

=item [BgpOptions => L<Paws::NetworkManager::BgpOptions>]

=item [ClientToken => Str]

=item [CoreNetworkAddress => Str]

=item [InsideCidrBlocks => ArrayRef[Str|Undef]]

=item [SubnetArn => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateConnectPeer>

Returns: a L<Paws::NetworkManager::CreateConnectPeerResponse> instance

Creates a core network Connect peer for a specified core network
connect attachment between a core network and an appliance. The peer
address and transit gateway address must be the same IP address family
(IPv4 or IPv6).


=head2 CreateCoreNetwork

=over

=item GlobalNetworkId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [PolicyDocument => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateCoreNetwork>

Returns: a L<Paws::NetworkManager::CreateCoreNetworkResponse> instance

Creates a core network as part of your global network, and optionally,
with a core network policy.


=head2 CreateDevice

=over

=item GlobalNetworkId => Str

=item [AWSLocation => L<Paws::NetworkManager::AWSLocation>]

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Model => Str]

=item [SerialNumber => Str]

=item [SiteId => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]

=item [Type => Str]

=item [Vendor => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateDevice>

Returns: a L<Paws::NetworkManager::CreateDeviceResponse> instance

Creates a new device in a global network. If you specify both a site ID
and a location, the location of the site is used for visualization in
the Network Manager console.


=head2 CreateDirectConnectGatewayAttachment

=over

=item CoreNetworkId => Str

=item DirectConnectGatewayArn => Str

=item EdgeLocations => ArrayRef[Str|Undef]

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateDirectConnectGatewayAttachment>

Returns: a L<Paws::NetworkManager::CreateDirectConnectGatewayAttachmentResponse> instance

Creates an Amazon Web Services Direct Connect gateway attachment


=head2 CreateGlobalNetwork

=over

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateGlobalNetwork>

Returns: a L<Paws::NetworkManager::CreateGlobalNetworkResponse> instance

Creates a new, empty global network.


=head2 CreateLink

=over

=item Bandwidth => L<Paws::NetworkManager::Bandwidth>

=item GlobalNetworkId => Str

=item SiteId => Str

=item [Description => Str]

=item [Provider => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateLink>

Returns: a L<Paws::NetworkManager::CreateLinkResponse> instance

Creates a new link for a specified site.


=head2 CreateSite

=over

=item GlobalNetworkId => Str

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateSite>

Returns: a L<Paws::NetworkManager::CreateSiteResponse> instance

Creates a new site in a global network.


=head2 CreateSiteToSiteVpnAttachment

=over

=item CoreNetworkId => Str

=item VpnConnectionArn => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateSiteToSiteVpnAttachment>

Returns: a L<Paws::NetworkManager::CreateSiteToSiteVpnAttachmentResponse> instance

Creates an Amazon Web Services site-to-site VPN attachment on an edge
location of a core network.


=head2 CreateTransitGatewayPeering

=over

=item CoreNetworkId => Str

=item TransitGatewayArn => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateTransitGatewayPeering>

Returns: a L<Paws::NetworkManager::CreateTransitGatewayPeeringResponse> instance

Creates a transit gateway peering connection.


=head2 CreateTransitGatewayRouteTableAttachment

=over

=item PeeringId => Str

=item TransitGatewayRouteTableArn => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateTransitGatewayRouteTableAttachment>

Returns: a L<Paws::NetworkManager::CreateTransitGatewayRouteTableAttachmentResponse> instance

Creates a transit gateway route table attachment.


=head2 CreateVpcAttachment

=over

=item CoreNetworkId => Str

=item SubnetArns => ArrayRef[Str|Undef]

=item VpcArn => Str

=item [ClientToken => Str]

=item [Options => L<Paws::NetworkManager::VpcOptions>]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateVpcAttachment>

Returns: a L<Paws::NetworkManager::CreateVpcAttachmentResponse> instance

Creates a VPC attachment on an edge location of a core network.


=head2 DeleteAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteAttachment>

Returns: a L<Paws::NetworkManager::DeleteAttachmentResponse> instance

Deletes an attachment. Supports all attachment types.


=head2 DeleteConnection

=over

=item ConnectionId => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteConnection>

Returns: a L<Paws::NetworkManager::DeleteConnectionResponse> instance

Deletes the specified connection in your global network.


=head2 DeleteConnectPeer

=over

=item ConnectPeerId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteConnectPeer>

Returns: a L<Paws::NetworkManager::DeleteConnectPeerResponse> instance

Deletes a Connect peer.


=head2 DeleteCoreNetwork

=over

=item CoreNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteCoreNetwork>

Returns: a L<Paws::NetworkManager::DeleteCoreNetworkResponse> instance

Deletes a core network along with all core network policies. This can
only be done if there are no attachments on a core network.


=head2 DeleteCoreNetworkPolicyVersion

=over

=item CoreNetworkId => Str

=item PolicyVersionId => Int


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteCoreNetworkPolicyVersion>

Returns: a L<Paws::NetworkManager::DeleteCoreNetworkPolicyVersionResponse> instance

Deletes a policy version from a core network. You can't delete the
current LIVE policy.


=head2 DeleteDevice

=over

=item DeviceId => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteDevice>

Returns: a L<Paws::NetworkManager::DeleteDeviceResponse> instance

Deletes an existing device. You must first disassociate the device from
any links and customer gateways.


=head2 DeleteGlobalNetwork

=over

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteGlobalNetwork>

Returns: a L<Paws::NetworkManager::DeleteGlobalNetworkResponse> instance

Deletes an existing global network. You must first delete all global
network objects (devices, links, and sites), deregister all transit
gateways, and delete any core networks.


=head2 DeleteLink

=over

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteLink>

Returns: a L<Paws::NetworkManager::DeleteLinkResponse> instance

Deletes an existing link. You must first disassociate the link from any
devices and customer gateways.


=head2 DeletePeering

=over

=item PeeringId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeletePeering>

Returns: a L<Paws::NetworkManager::DeletePeeringResponse> instance

Deletes an existing peering connection.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteResourcePolicy>

Returns: a L<Paws::NetworkManager::DeleteResourcePolicyResponse> instance

Deletes a resource policy for the specified resource. This revokes the
access of the principals specified in the resource policy.


=head2 DeleteSite

=over

=item GlobalNetworkId => Str

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteSite>

Returns: a L<Paws::NetworkManager::DeleteSiteResponse> instance

Deletes an existing site. The site cannot be associated with any device
or link.


=head2 DeregisterTransitGateway

=over

=item GlobalNetworkId => Str

=item TransitGatewayArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeregisterTransitGateway>

Returns: a L<Paws::NetworkManager::DeregisterTransitGatewayResponse> instance

Deregisters a transit gateway from your global network. This action
does not delete your transit gateway, or modify any of its attachments.
This action removes any customer gateway associations.


=head2 DescribeGlobalNetworks

=over

=item [GlobalNetworkIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::DescribeGlobalNetworks>

Returns: a L<Paws::NetworkManager::DescribeGlobalNetworksResponse> instance

Describes one or more global networks. By default, all global networks
are described. To describe the objects in your global network, you must
use the appropriate C<Get*> action. For example, to list the transit
gateways in your global network, use GetTransitGatewayRegistrations.


=head2 DisassociateConnectPeer

=over

=item ConnectPeerId => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateConnectPeer>

Returns: a L<Paws::NetworkManager::DisassociateConnectPeerResponse> instance

Disassociates a core network Connect peer from a device and a link.


=head2 DisassociateCustomerGateway

=over

=item CustomerGatewayArn => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateCustomerGateway>

Returns: a L<Paws::NetworkManager::DisassociateCustomerGatewayResponse> instance

Disassociates a customer gateway from a device and a link.


=head2 DisassociateLink

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateLink>

Returns: a L<Paws::NetworkManager::DisassociateLinkResponse> instance

Disassociates an existing device from a link. You must first
disassociate any customer gateways that are associated with the link.


=head2 DisassociateTransitGatewayConnectPeer

=over

=item GlobalNetworkId => Str

=item TransitGatewayConnectPeerArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateTransitGatewayConnectPeer>

Returns: a L<Paws::NetworkManager::DisassociateTransitGatewayConnectPeerResponse> instance

Disassociates a transit gateway Connect peer from a device and link.


=head2 ExecuteCoreNetworkChangeSet

=over

=item CoreNetworkId => Str

=item PolicyVersionId => Int


=back

Each argument is described in detail in: L<Paws::NetworkManager::ExecuteCoreNetworkChangeSet>

Returns: a L<Paws::NetworkManager::ExecuteCoreNetworkChangeSetResponse> instance

Executes a change set on your core network. Deploys changes globally
based on the policy submitted..


=head2 GetConnectAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetConnectAttachment>

Returns: a L<Paws::NetworkManager::GetConnectAttachmentResponse> instance

Returns information about a core network Connect attachment.


=head2 GetConnections

=over

=item GlobalNetworkId => Str

=item [ConnectionIds => ArrayRef[Str|Undef]]

=item [DeviceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetConnections>

Returns: a L<Paws::NetworkManager::GetConnectionsResponse> instance

Gets information about one or more of your connections in a global
network.


=head2 GetConnectPeer

=over

=item ConnectPeerId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetConnectPeer>

Returns: a L<Paws::NetworkManager::GetConnectPeerResponse> instance

Returns information about a core network Connect peer.


=head2 GetConnectPeerAssociations

=over

=item GlobalNetworkId => Str

=item [ConnectPeerIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetConnectPeerAssociations>

Returns: a L<Paws::NetworkManager::GetConnectPeerAssociationsResponse> instance

Returns information about a core network Connect peer associations.


=head2 GetCoreNetwork

=over

=item CoreNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCoreNetwork>

Returns: a L<Paws::NetworkManager::GetCoreNetworkResponse> instance

Returns information about the LIVE policy for a core network.


=head2 GetCoreNetworkChangeEvents

=over

=item CoreNetworkId => Str

=item PolicyVersionId => Int

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCoreNetworkChangeEvents>

Returns: a L<Paws::NetworkManager::GetCoreNetworkChangeEventsResponse> instance

Returns information about a core network change event.


=head2 GetCoreNetworkChangeSet

=over

=item CoreNetworkId => Str

=item PolicyVersionId => Int

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCoreNetworkChangeSet>

Returns: a L<Paws::NetworkManager::GetCoreNetworkChangeSetResponse> instance

Returns a change set between the LIVE core network policy and a
submitted policy.


=head2 GetCoreNetworkPolicy

=over

=item CoreNetworkId => Str

=item [Alias => Str]

=item [PolicyVersionId => Int]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCoreNetworkPolicy>

Returns: a L<Paws::NetworkManager::GetCoreNetworkPolicyResponse> instance

Returns details about a core network policy. You can get details about
your current live policy or any previous policy version.


=head2 GetCustomerGatewayAssociations

=over

=item GlobalNetworkId => Str

=item [CustomerGatewayArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCustomerGatewayAssociations>

Returns: a L<Paws::NetworkManager::GetCustomerGatewayAssociationsResponse> instance

Gets the association information for customer gateways that are
associated with devices and links in your global network.


=head2 GetDevices

=over

=item GlobalNetworkId => Str

=item [DeviceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SiteId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetDevices>

Returns: a L<Paws::NetworkManager::GetDevicesResponse> instance

Gets information about one or more of your devices in a global network.


=head2 GetDirectConnectGatewayAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetDirectConnectGatewayAttachment>

Returns: a L<Paws::NetworkManager::GetDirectConnectGatewayAttachmentResponse> instance

Returns information about a specific Amazon Web Services Direct Connect
gateway attachment.


=head2 GetLinkAssociations

=over

=item GlobalNetworkId => Str

=item [DeviceId => Str]

=item [LinkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetLinkAssociations>

Returns: a L<Paws::NetworkManager::GetLinkAssociationsResponse> instance

Gets the link associations for a device or a link. Either the device ID
or the link ID must be specified.


=head2 GetLinks

=over

=item GlobalNetworkId => Str

=item [LinkIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Provider => Str]

=item [SiteId => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetLinks>

Returns: a L<Paws::NetworkManager::GetLinksResponse> instance

Gets information about one or more links in a specified global network.

If you specify the site ID, you cannot specify the type or provider in
the same request. You can specify the type and provider in the same
request.


=head2 GetNetworkResourceCounts

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetNetworkResourceCounts>

Returns: a L<Paws::NetworkManager::GetNetworkResourceCountsResponse> instance

Gets the count of network resources, by resource type, for the
specified global network.


=head2 GetNetworkResourceRelationships

=over

=item GlobalNetworkId => Str

=item [AccountId => Str]

=item [AwsRegion => Str]

=item [CoreNetworkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegisteredGatewayArn => Str]

=item [ResourceArn => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetNetworkResourceRelationships>

Returns: a L<Paws::NetworkManager::GetNetworkResourceRelationshipsResponse> instance

Gets the network resource relationships for the specified global
network.


=head2 GetNetworkResources

=over

=item GlobalNetworkId => Str

=item [AccountId => Str]

=item [AwsRegion => Str]

=item [CoreNetworkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegisteredGatewayArn => Str]

=item [ResourceArn => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetNetworkResources>

Returns: a L<Paws::NetworkManager::GetNetworkResourcesResponse> instance

Describes the network resources for the specified global network.

The results include information from the corresponding Describe call
for the resource, minus any sensitive information such as pre-shared
keys.


=head2 GetNetworkRoutes

=over

=item GlobalNetworkId => Str

=item RouteTableIdentifier => L<Paws::NetworkManager::RouteTableIdentifier>

=item [DestinationFilters => L<Paws::NetworkManager::FilterMap>]

=item [ExactCidrMatches => ArrayRef[Str|Undef]]

=item [LongestPrefixMatches => ArrayRef[Str|Undef]]

=item [PrefixListIds => ArrayRef[Str|Undef]]

=item [States => ArrayRef[Str|Undef]]

=item [SubnetOfMatches => ArrayRef[Str|Undef]]

=item [SupernetOfMatches => ArrayRef[Str|Undef]]

=item [Types => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetNetworkRoutes>

Returns: a L<Paws::NetworkManager::GetNetworkRoutesResponse> instance

Gets the network routes of the specified global network.


=head2 GetNetworkTelemetry

=over

=item GlobalNetworkId => Str

=item [AccountId => Str]

=item [AwsRegion => Str]

=item [CoreNetworkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegisteredGatewayArn => Str]

=item [ResourceArn => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetNetworkTelemetry>

Returns: a L<Paws::NetworkManager::GetNetworkTelemetryResponse> instance

Gets the network telemetry of the specified global network.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetResourcePolicy>

Returns: a L<Paws::NetworkManager::GetResourcePolicyResponse> instance

Returns information about a resource policy.


=head2 GetRouteAnalysis

=over

=item GlobalNetworkId => Str

=item RouteAnalysisId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetRouteAnalysis>

Returns: a L<Paws::NetworkManager::GetRouteAnalysisResponse> instance

Gets information about the specified route analysis.


=head2 GetSites

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SiteIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetSites>

Returns: a L<Paws::NetworkManager::GetSitesResponse> instance

Gets information about one or more of your sites in a global network.


=head2 GetSiteToSiteVpnAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetSiteToSiteVpnAttachment>

Returns: a L<Paws::NetworkManager::GetSiteToSiteVpnAttachmentResponse> instance

Returns information about a site-to-site VPN attachment.


=head2 GetTransitGatewayConnectPeerAssociations

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations>

Returns: a L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse> instance

Gets information about one or more of your transit gateway Connect peer
associations in a global network.


=head2 GetTransitGatewayPeering

=over

=item PeeringId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayPeering>

Returns: a L<Paws::NetworkManager::GetTransitGatewayPeeringResponse> instance

Returns information about a transit gateway peer.


=head2 GetTransitGatewayRegistrations

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayRegistrations>

Returns: a L<Paws::NetworkManager::GetTransitGatewayRegistrationsResponse> instance

Gets information about the transit gateway registrations in a specified
global network.


=head2 GetTransitGatewayRouteTableAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayRouteTableAttachment>

Returns: a L<Paws::NetworkManager::GetTransitGatewayRouteTableAttachmentResponse> instance

Returns information about a transit gateway route table attachment.


=head2 GetVpcAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetVpcAttachment>

Returns: a L<Paws::NetworkManager::GetVpcAttachmentResponse> instance

Returns information about a VPC attachment.


=head2 ListAttachments

=over

=item [AttachmentType => Str]

=item [CoreNetworkId => Str]

=item [EdgeLocation => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListAttachments>

Returns: a L<Paws::NetworkManager::ListAttachmentsResponse> instance

Returns a list of core network attachments.


=head2 ListConnectPeers

=over

=item [ConnectAttachmentId => Str]

=item [CoreNetworkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListConnectPeers>

Returns: a L<Paws::NetworkManager::ListConnectPeersResponse> instance

Returns a list of core network Connect peers.


=head2 ListCoreNetworkPolicyVersions

=over

=item CoreNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListCoreNetworkPolicyVersions>

Returns: a L<Paws::NetworkManager::ListCoreNetworkPolicyVersionsResponse> instance

Returns a list of core network policy versions.


=head2 ListCoreNetworks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListCoreNetworks>

Returns: a L<Paws::NetworkManager::ListCoreNetworksResponse> instance

Returns a list of owned and shared core networks.


=head2 ListOrganizationServiceAccessStatus

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListOrganizationServiceAccessStatus>

Returns: a L<Paws::NetworkManager::ListOrganizationServiceAccessStatusResponse> instance

Gets the status of the Service Linked Role (SLR) deployment for the
accounts in a given Amazon Web Services Organization.


=head2 ListPeerings

=over

=item [CoreNetworkId => Str]

=item [EdgeLocation => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PeeringType => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListPeerings>

Returns: a L<Paws::NetworkManager::ListPeeringsResponse> instance

Lists the peerings for a core network.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListTagsForResource>

Returns: a L<Paws::NetworkManager::ListTagsForResourceResponse> instance

Lists the tags for a specified resource.


=head2 PutCoreNetworkPolicy

=over

=item CoreNetworkId => Str

=item PolicyDocument => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [LatestVersionId => Int]


=back

Each argument is described in detail in: L<Paws::NetworkManager::PutCoreNetworkPolicy>

Returns: a L<Paws::NetworkManager::PutCoreNetworkPolicyResponse> instance

Creates a new, immutable version of a core network policy. A subsequent
change set is created showing the differences between the LIVE policy
and the submitted policy.


=head2 PutResourcePolicy

=over

=item PolicyDocument => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::PutResourcePolicy>

Returns: a L<Paws::NetworkManager::PutResourcePolicyResponse> instance

Creates or updates a resource policy.


=head2 RegisterTransitGateway

=over

=item GlobalNetworkId => Str

=item TransitGatewayArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::RegisterTransitGateway>

Returns: a L<Paws::NetworkManager::RegisterTransitGatewayResponse> instance

Registers a transit gateway in your global network. Not all Regions
support transit gateways for global networks. For a list of the
supported Regions, see Region Availability
(https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions)
in the I<Amazon Web Services Transit Gateways for Global Networks User
Guide>. The transit gateway can be in any of the supported Amazon Web
Services Regions, but it must be owned by the same Amazon Web Services
account that owns the global network. You cannot register a transit
gateway in more than one global network.


=head2 RejectAttachment

=over

=item AttachmentId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::RejectAttachment>

Returns: a L<Paws::NetworkManager::RejectAttachmentResponse> instance

Rejects a core network attachment request.


=head2 RestoreCoreNetworkPolicyVersion

=over

=item CoreNetworkId => Str

=item PolicyVersionId => Int


=back

Each argument is described in detail in: L<Paws::NetworkManager::RestoreCoreNetworkPolicyVersion>

Returns: a L<Paws::NetworkManager::RestoreCoreNetworkPolicyVersionResponse> instance

Restores a previous policy version as a new, immutable version of a
core network policy. A subsequent change set is created showing the
differences between the LIVE policy and restored policy.


=head2 StartOrganizationServiceAccessUpdate

=over

=item Action => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::StartOrganizationServiceAccessUpdate>

Returns: a L<Paws::NetworkManager::StartOrganizationServiceAccessUpdateResponse> instance

Enables the Network Manager service for an Amazon Web Services
Organization. This can only be called by a management account within
the organization.


=head2 StartRouteAnalysis

=over

=item Destination => L<Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification>

=item GlobalNetworkId => Str

=item Source => L<Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification>

=item [IncludeReturnPath => Bool]

=item [UseMiddleboxes => Bool]


=back

Each argument is described in detail in: L<Paws::NetworkManager::StartRouteAnalysis>

Returns: a L<Paws::NetworkManager::StartRouteAnalysisResponse> instance

Starts analyzing the routing path between the specified source and
destination. For more information, see Route Analyzer
(https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::NetworkManager::Tag>]


=back

Each argument is described in detail in: L<Paws::NetworkManager::TagResource>

Returns: a L<Paws::NetworkManager::TagResourceResponse> instance

Tags a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UntagResource>

Returns: a L<Paws::NetworkManager::UntagResourceResponse> instance

Removes tags from a specified resource.


=head2 UpdateConnection

=over

=item ConnectionId => Str

=item GlobalNetworkId => Str

=item [ConnectedLinkId => Str]

=item [Description => Str]

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateConnection>

Returns: a L<Paws::NetworkManager::UpdateConnectionResponse> instance

Updates the information for an existing connection. To remove
information for any of the parameters, specify an empty string.


=head2 UpdateCoreNetwork

=over

=item CoreNetworkId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateCoreNetwork>

Returns: a L<Paws::NetworkManager::UpdateCoreNetworkResponse> instance

Updates the description of a core network.


=head2 UpdateDevice

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [AWSLocation => L<Paws::NetworkManager::AWSLocation>]

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Model => Str]

=item [SerialNumber => Str]

=item [SiteId => Str]

=item [Type => Str]

=item [Vendor => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateDevice>

Returns: a L<Paws::NetworkManager::UpdateDeviceResponse> instance

Updates the details for an existing device. To remove information for
any of the parameters, specify an empty string.


=head2 UpdateDirectConnectGatewayAttachment

=over

=item AttachmentId => Str

=item [EdgeLocations => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateDirectConnectGatewayAttachment>

Returns: a L<Paws::NetworkManager::UpdateDirectConnectGatewayAttachmentResponse> instance

Updates the edge locations associated with an Amazon Web Services
Direct Connect gateway attachment.


=head2 UpdateGlobalNetwork

=over

=item GlobalNetworkId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateGlobalNetwork>

Returns: a L<Paws::NetworkManager::UpdateGlobalNetworkResponse> instance

Updates an existing global network. To remove information for any of
the parameters, specify an empty string.


=head2 UpdateLink

=over

=item GlobalNetworkId => Str

=item LinkId => Str

=item [Bandwidth => L<Paws::NetworkManager::Bandwidth>]

=item [Description => Str]

=item [Provider => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateLink>

Returns: a L<Paws::NetworkManager::UpdateLinkResponse> instance

Updates the details for an existing link. To remove information for any
of the parameters, specify an empty string.


=head2 UpdateNetworkResourceMetadata

=over

=item GlobalNetworkId => Str

=item Metadata => L<Paws::NetworkManager::NetworkResourceMetadataMap>

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateNetworkResourceMetadata>

Returns: a L<Paws::NetworkManager::UpdateNetworkResourceMetadataResponse> instance

Updates the resource metadata for the specified global network.


=head2 UpdateSite

=over

=item GlobalNetworkId => Str

=item SiteId => Str

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateSite>

Returns: a L<Paws::NetworkManager::UpdateSiteResponse> instance

Updates the information for an existing site. To remove information for
any of the parameters, specify an empty string.


=head2 UpdateVpcAttachment

=over

=item AttachmentId => Str

=item [AddSubnetArns => ArrayRef[Str|Undef]]

=item [Options => L<Paws::NetworkManager::VpcOptions>]

=item [RemoveSubnetArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateVpcAttachment>

Returns: a L<Paws::NetworkManager::UpdateVpcAttachmentResponse> instance

Updates a VPC attachment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllGlobalNetworks(sub { },[GlobalNetworkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllGlobalNetworks([GlobalNetworkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GlobalNetworks, passing the object as the first parameter, and the string 'GlobalNetworks' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::DescribeGlobalNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnections(sub { },GlobalNetworkId => Str, [ConnectionIds => ArrayRef[Str|Undef], DeviceId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllConnections(GlobalNetworkId => Str, [ConnectionIds => ArrayRef[Str|Undef], DeviceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnectPeerAssociations(sub { },GlobalNetworkId => Str, [ConnectPeerIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllConnectPeerAssociations(GlobalNetworkId => Str, [ConnectPeerIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectPeerAssociations, passing the object as the first parameter, and the string 'ConnectPeerAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetConnectPeerAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCoreNetworkChangeEvents(sub { },CoreNetworkId => Str, PolicyVersionId => Int, [MaxResults => Int, NextToken => Str])

=head2 GetAllCoreNetworkChangeEvents(CoreNetworkId => Str, PolicyVersionId => Int, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoreNetworkChangeEvents, passing the object as the first parameter, and the string 'CoreNetworkChangeEvents' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetCoreNetworkChangeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCoreNetworkChangeSet(sub { },CoreNetworkId => Str, PolicyVersionId => Int, [MaxResults => Int, NextToken => Str])

=head2 GetAllCoreNetworkChangeSet(CoreNetworkId => Str, PolicyVersionId => Int, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoreNetworkChanges, passing the object as the first parameter, and the string 'CoreNetworkChanges' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetCoreNetworkChangeSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCustomerGatewayAssociations(sub { },GlobalNetworkId => Str, [CustomerGatewayArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllCustomerGatewayAssociations(GlobalNetworkId => Str, [CustomerGatewayArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomerGatewayAssociations, passing the object as the first parameter, and the string 'CustomerGatewayAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetCustomerGatewayAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevices(sub { },GlobalNetworkId => Str, [DeviceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SiteId => Str])

=head2 GetAllDevices(GlobalNetworkId => Str, [DeviceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SiteId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Devices, passing the object as the first parameter, and the string 'Devices' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLinkAssociations(sub { },GlobalNetworkId => Str, [DeviceId => Str, LinkId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllLinkAssociations(GlobalNetworkId => Str, [DeviceId => Str, LinkId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LinkAssociations, passing the object as the first parameter, and the string 'LinkAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetLinkAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLinks(sub { },GlobalNetworkId => Str, [LinkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Provider => Str, SiteId => Str, Type => Str])

=head2 GetAllLinks(GlobalNetworkId => Str, [LinkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Provider => Str, SiteId => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Links, passing the object as the first parameter, and the string 'Links' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetLinksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllNetworkResourceCounts(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])

=head2 GetAllNetworkResourceCounts(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkResourceCounts, passing the object as the first parameter, and the string 'NetworkResourceCounts' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetNetworkResourceCountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllNetworkResourceRelationships(sub { },GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])

=head2 GetAllNetworkResourceRelationships(GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Relationships, passing the object as the first parameter, and the string 'Relationships' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetNetworkResourceRelationshipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllNetworkResources(sub { },GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])

=head2 GetAllNetworkResources(GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkResources, passing the object as the first parameter, and the string 'NetworkResources' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetNetworkResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllNetworkTelemetry(sub { },GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])

=head2 GetAllNetworkTelemetry(GlobalNetworkId => Str, [AccountId => Str, AwsRegion => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str, RegisteredGatewayArn => Str, ResourceArn => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkTelemetry, passing the object as the first parameter, and the string 'NetworkTelemetry' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetNetworkTelemetryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSites(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, SiteIds => ArrayRef[Str|Undef]])

=head2 GetAllSites(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, SiteIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Sites, passing the object as the first parameter, and the string 'Sites' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetSitesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayConnectPeerAssociations(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]])

=head2 GetAllTransitGatewayConnectPeerAssociations(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnectPeerAssociations, passing the object as the first parameter, and the string 'TransitGatewayConnectPeerAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRegistrations(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayArns => ArrayRef[Str|Undef]])

=head2 GetAllTransitGatewayRegistrations(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRegistrations, passing the object as the first parameter, and the string 'TransitGatewayRegistrations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetTransitGatewayRegistrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttachments(sub { },[AttachmentType => Str, CoreNetworkId => Str, EdgeLocation => Str, MaxResults => Int, NextToken => Str, State => Str])

=head2 ListAllAttachments([AttachmentType => Str, CoreNetworkId => Str, EdgeLocation => Str, MaxResults => Int, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attachments, passing the object as the first parameter, and the string 'Attachments' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::ListAttachmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectPeers(sub { },[ConnectAttachmentId => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllConnectPeers([ConnectAttachmentId => Str, CoreNetworkId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectPeers, passing the object as the first parameter, and the string 'ConnectPeers' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::ListConnectPeersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoreNetworkPolicyVersions(sub { },CoreNetworkId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCoreNetworkPolicyVersions(CoreNetworkId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoreNetworkPolicyVersions, passing the object as the first parameter, and the string 'CoreNetworkPolicyVersions' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::ListCoreNetworkPolicyVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoreNetworks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCoreNetworks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoreNetworks, passing the object as the first parameter, and the string 'CoreNetworks' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::ListCoreNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPeerings(sub { },[CoreNetworkId => Str, EdgeLocation => Str, MaxResults => Int, NextToken => Str, PeeringType => Str, State => Str])

=head2 ListAllPeerings([CoreNetworkId => Str, EdgeLocation => Str, MaxResults => Int, NextToken => Str, PeeringType => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Peerings, passing the object as the first parameter, and the string 'Peerings' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::ListPeeringsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

