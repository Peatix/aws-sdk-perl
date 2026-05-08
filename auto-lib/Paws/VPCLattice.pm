package Paws::VPCLattice;
  use Moose;
  sub service { 'vpc-lattice' }
  sub signing_name { 'vpc-lattice' }
  sub version { '2022-11-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchUpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::BatchUpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateAccessLogSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateResourceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateResourceGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateServiceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceNetworkResourceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateServiceNetworkResourceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceNetworkServiceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateServiceNetworkServiceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceNetworkVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateServiceNetworkVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::CreateTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteAccessLogSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAuthPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteAuthPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteResourceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceEndpointAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteResourceEndpointAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteResourceGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteServiceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceNetworkResourceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteServiceNetworkResourceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceNetworkServiceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteServiceNetworkServiceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceNetworkVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteServiceNetworkVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeleteTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::DeregisterTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetAccessLogSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetAuthPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetResourceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetResourceGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetServiceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceNetworkResourceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetServiceNetworkResourceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceNetworkServiceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetServiceNetworkServiceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceNetworkVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetServiceNetworkVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::GetTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessLogSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListAccessLogSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListResourceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceEndpointAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListResourceEndpointAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListResourceGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceNetworkResourceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServiceNetworkResourceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServiceNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceNetworkServiceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServiceNetworkServiceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceNetworkVpcAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServiceNetworkVpcAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceNetworkVpcEndpointAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServiceNetworkVpcEndpointAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListTargetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::ListTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAuthPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::PutAuthPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::RegisterTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessLogSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateAccessLogSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateResourceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateResourceGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateServiceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceNetworkVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateServiceNetworkVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VPCLattice::UpdateTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccessLogSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessLogSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessLogSubscriptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListAccessLogSubscriptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllListeners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListListeners(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListListeners(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListListeners(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllResourceConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResourceConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListResourceConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllResourceEndpointAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceEndpointAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResourceEndpointAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListResourceEndpointAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllResourceGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResourceGateways(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListResourceGateways(@_, nextToken => $result->nextToken);
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
  sub ListAllServiceNetworkResourceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceNetworkResourceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceNetworkResourceAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServiceNetworkResourceAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllServiceNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceNetworks(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServiceNetworks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllServiceNetworkServiceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceNetworkServiceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceNetworkServiceAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServiceNetworkServiceAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllServiceNetworkVpcAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceNetworkVpcAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceNetworkVpcAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServiceNetworkVpcAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllServiceNetworkVpcEndpointAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceNetworkVpcEndpointAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceNetworkVpcEndpointAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServiceNetworkVpcEndpointAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllTargetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTargetGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListTargetGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTargets(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListTargets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/BatchUpdateRule CreateAccessLogSubscription CreateListener CreateResourceConfiguration CreateResourceGateway CreateRule CreateService CreateServiceNetwork CreateServiceNetworkResourceAssociation CreateServiceNetworkServiceAssociation CreateServiceNetworkVpcAssociation CreateTargetGroup DeleteAccessLogSubscription DeleteAuthPolicy DeleteListener DeleteResourceConfiguration DeleteResourceEndpointAssociation DeleteResourceGateway DeleteResourcePolicy DeleteRule DeleteService DeleteServiceNetwork DeleteServiceNetworkResourceAssociation DeleteServiceNetworkServiceAssociation DeleteServiceNetworkVpcAssociation DeleteTargetGroup DeregisterTargets GetAccessLogSubscription GetAuthPolicy GetListener GetResourceConfiguration GetResourceGateway GetResourcePolicy GetRule GetService GetServiceNetwork GetServiceNetworkResourceAssociation GetServiceNetworkServiceAssociation GetServiceNetworkVpcAssociation GetTargetGroup ListAccessLogSubscriptions ListListeners ListResourceConfigurations ListResourceEndpointAssociations ListResourceGateways ListRules ListServiceNetworkResourceAssociations ListServiceNetworks ListServiceNetworkServiceAssociations ListServiceNetworkVpcAssociations ListServiceNetworkVpcEndpointAssociations ListServices ListTagsForResource ListTargetGroups ListTargets PutAuthPolicy PutResourcePolicy RegisterTargets TagResource UntagResource UpdateAccessLogSubscription UpdateListener UpdateResourceConfiguration UpdateResourceGateway UpdateRule UpdateService UpdateServiceNetwork UpdateServiceNetworkVpcAssociation UpdateTargetGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice - Perl Interface to AWS Amazon VPC Lattice

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('VPCLattice');
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

Amazon VPC Lattice is a fully managed application networking service
that you use to connect, secure, and monitor all of your services
across multiple accounts and virtual private clouds (VPCs). Amazon VPC
Lattice interconnects your microservices and legacy services within a
logical boundary, so that you can discover and manage them more
efficiently. For more information, see the Amazon VPC Lattice User
Guide (https://docs.aws.amazon.com/vpc-lattice/latest/ug/)

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30>


=head1 METHODS

=head2 BatchUpdateRule

=over

=item ListenerIdentifier => Str

=item Rules => ArrayRef[L<Paws::VPCLattice::RuleUpdate>]

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::BatchUpdateRule>

Returns: a L<Paws::VPCLattice::BatchUpdateRuleResponse> instance

Updates the listener rules in a batch. You can use this operation to
change the priority of listener rules. This can be useful when bulk
updating or swapping rule priority.

B<Required permissions:> C<vpc-lattice:UpdateRule>

For more information, see How Amazon VPC Lattice works with IAM
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/security_iam_service-with-iam.html)
in the I<Amazon VPC Lattice User Guide>.


=head2 CreateAccessLogSubscription

=over

=item DestinationArn => Str

=item ResourceIdentifier => Str

=item [ClientToken => Str]

=item [ServiceNetworkLogType => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateAccessLogSubscription>

Returns: a L<Paws::VPCLattice::CreateAccessLogSubscriptionResponse> instance

Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and
Amazon Kinesis Data Firehose. The service network owner can use the
access logs to audit the services in the network. The service network
owner can only see access logs from clients and services that are
associated with their service network. Access log entries represent
traffic originated from VPCs associated with that network. For more
information, see Access logs
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html)
in the I<Amazon VPC Lattice User Guide>.


=head2 CreateListener

=over

=item DefaultAction => L<Paws::VPCLattice::RuleAction>

=item Name => Str

=item Protocol => Str

=item ServiceIdentifier => Str

=item [ClientToken => Str]

=item [Port => Int]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateListener>

Returns: a L<Paws::VPCLattice::CreateListenerResponse> instance

Creates a listener for a service. Before you start using your Amazon
VPC Lattice service, you must add one or more listeners. A listener is
a process that checks for connection requests to your services. For
more information, see Listeners
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in
the I<Amazon VPC Lattice User Guide>.


=head2 CreateResourceConfiguration

=over

=item Name => Str

=item Type => Str

=item [AllowAssociationToShareableServiceNetwork => Bool]

=item [ClientToken => Str]

=item [PortRanges => ArrayRef[Str|Undef]]

=item [Protocol => Str]

=item [ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>]

=item [ResourceConfigurationGroupIdentifier => Str]

=item [ResourceGatewayIdentifier => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateResourceConfiguration>

Returns: a L<Paws::VPCLattice::CreateResourceConfigurationResponse> instance

Creates a resource configuration. A resource configuration defines a
specific resource. You can associate a resource configuration with a
service network or a VPC endpoint.


=head2 CreateResourceGateway

=over

=item Name => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcIdentifier => Str

=item [ClientToken => Str]

=item [IpAddressType => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateResourceGateway>

Returns: a L<Paws::VPCLattice::CreateResourceGatewayResponse> instance

Creates a resource gateway.


=head2 CreateRule

=over

=item Action => L<Paws::VPCLattice::RuleAction>

=item ListenerIdentifier => Str

=item Match => L<Paws::VPCLattice::RuleMatch>

=item Name => Str

=item Priority => Int

=item ServiceIdentifier => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateRule>

Returns: a L<Paws::VPCLattice::CreateRuleResponse> instance

Creates a listener rule. Each listener has a default rule for checking
connection requests, but you can define additional rules. Each rule
consists of a priority, one or more actions, and one or more
conditions. For more information, see Listener rules
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
in the I<Amazon VPC Lattice User Guide>.


=head2 CreateService

=over

=item Name => Str

=item [AuthType => Str]

=item [CertificateArn => Str]

=item [ClientToken => Str]

=item [CustomDomainName => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateService>

Returns: a L<Paws::VPCLattice::CreateServiceResponse> instance

Creates a service. A service is any software application that can run
on instances containers, or serverless functions within an account or
virtual private cloud (VPC).

For more information, see Services
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html) in
the I<Amazon VPC Lattice User Guide>.


=head2 CreateServiceNetwork

=over

=item Name => Str

=item [AuthType => Str]

=item [ClientToken => Str]

=item [SharingConfig => L<Paws::VPCLattice::SharingConfig>]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateServiceNetwork>

Returns: a L<Paws::VPCLattice::CreateServiceNetworkResponse> instance

Creates a service network. A service network is a logical boundary for
a collection of services. You can associate services and VPCs with a
service network.

For more information, see Service networks
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html)
in the I<Amazon VPC Lattice User Guide>.


=head2 CreateServiceNetworkResourceAssociation

=over

=item ResourceConfigurationIdentifier => Str

=item ServiceNetworkIdentifier => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateServiceNetworkResourceAssociation>

Returns: a L<Paws::VPCLattice::CreateServiceNetworkResourceAssociationResponse> instance

Associates the specified service network with the specified resource
configuration. This allows the resource configuration to receive
connections through the service network, including through a service
network VPC endpoint.


=head2 CreateServiceNetworkServiceAssociation

=over

=item ServiceIdentifier => Str

=item ServiceNetworkIdentifier => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateServiceNetworkServiceAssociation>

Returns: a L<Paws::VPCLattice::CreateServiceNetworkServiceAssociationResponse> instance

Associates the specified service with the specified service network.
For more information, see Manage service associations
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-service-associations)
in the I<Amazon VPC Lattice User Guide>.

You can't use this operation if the service and service network are
already associated or if there is a disassociation or deletion in
progress. If the association fails, you can retry the operation by
deleting the association and recreating it.

You cannot associate a service and service network that are shared with
a caller. The caller must own either the service or the service
network.

As a result of this operation, the association is created in the
service network account and the association owner account.


=head2 CreateServiceNetworkVpcAssociation

=over

=item ServiceNetworkIdentifier => Str

=item VpcIdentifier => Str

=item [ClientToken => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateServiceNetworkVpcAssociation>

Returns: a L<Paws::VPCLattice::CreateServiceNetworkVpcAssociationResponse> instance

Associates a VPC with a service network. When you associate a VPC with
the service network, it enables all the resources within that VPC to be
clients and communicate with other services in the service network. For
more information, see Manage VPC associations
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations)
in the I<Amazon VPC Lattice User Guide>.

You can't use this operation if there is a disassociation in progress.
If the association fails, retry by deleting the association and
recreating it.

As a result of this operation, the association gets created in the
service network account and the VPC owner account.

If you add a security group to the service network and VPC association,
the association must continue to always have at least one security
group. You can add or edit security groups at any time. However, to
remove all security groups, you must first delete the association and
recreate it without security groups.


=head2 CreateTargetGroup

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Config => L<Paws::VPCLattice::TargetGroupConfig>]

=item [Tags => L<Paws::VPCLattice::TagMap>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::CreateTargetGroup>

Returns: a L<Paws::VPCLattice::CreateTargetGroupResponse> instance

Creates a target group. A target group is a collection of targets, or
compute resources, that run your application or service. A target group
can only be used by a single service.

For more information, see Target groups
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html)
in the I<Amazon VPC Lattice User Guide>.


=head2 DeleteAccessLogSubscription

=over

=item AccessLogSubscriptionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteAccessLogSubscription>

Returns: a L<Paws::VPCLattice::DeleteAccessLogSubscriptionResponse> instance

Deletes the specified access log subscription.


=head2 DeleteAuthPolicy

=over

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteAuthPolicy>

Returns: a L<Paws::VPCLattice::DeleteAuthPolicyResponse> instance

Deletes the specified auth policy. If an auth is set to C<AWS_IAM> and
the auth policy is deleted, all requests are denied. If you are trying
to remove the auth policy completely, you must set the auth type to
C<NONE>. If auth is enabled on the resource, but no auth policy is set,
all requests are denied.


=head2 DeleteListener

=over

=item ListenerIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteListener>

Returns: a L<Paws::VPCLattice::DeleteListenerResponse> instance

Deletes the specified listener.


=head2 DeleteResourceConfiguration

=over

=item ResourceConfigurationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteResourceConfiguration>

Returns: a L<Paws::VPCLattice::DeleteResourceConfigurationResponse> instance

Deletes the specified resource configuration.


=head2 DeleteResourceEndpointAssociation

=over

=item ResourceEndpointAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteResourceEndpointAssociation>

Returns: a L<Paws::VPCLattice::DeleteResourceEndpointAssociationResponse> instance

Disassociates the resource configuration from the resource VPC
endpoint.


=head2 DeleteResourceGateway

=over

=item ResourceGatewayIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteResourceGateway>

Returns: a L<Paws::VPCLattice::DeleteResourceGatewayResponse> instance

Deletes the specified resource gateway.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteResourcePolicy>

Returns: a L<Paws::VPCLattice::DeleteResourcePolicyResponse> instance

Deletes the specified resource policy.


=head2 DeleteRule

=over

=item ListenerIdentifier => Str

=item RuleIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteRule>

Returns: a L<Paws::VPCLattice::DeleteRuleResponse> instance

Deletes a listener rule. Each listener has a default rule for checking
connection requests, but you can define additional rules. Each rule
consists of a priority, one or more actions, and one or more
conditions. You can delete additional listener rules, but you cannot
delete the default rule.

For more information, see Listener rules
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
in the I<Amazon VPC Lattice User Guide>.


=head2 DeleteService

=over

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteService>

Returns: a L<Paws::VPCLattice::DeleteServiceResponse> instance

Deletes a service. A service can't be deleted if it's associated with a
service network. If you delete a service, all resources related to the
service, such as the resource policy, auth policy, listeners, listener
rules, and access log subscriptions, are also deleted. For more
information, see Delete a service
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service)
in the I<Amazon VPC Lattice User Guide>.


=head2 DeleteServiceNetwork

=over

=item ServiceNetworkIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteServiceNetwork>

Returns: a L<Paws::VPCLattice::DeleteServiceNetworkResponse> instance

Deletes a service network. You can only delete the service network if
there is no service or VPC associated with it. If you delete a service
network, all resources related to the service network, such as the
resource policy, auth policy, and access log subscriptions, are also
deleted. For more information, see Delete a service network
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network)
in the I<Amazon VPC Lattice User Guide>.


=head2 DeleteServiceNetworkResourceAssociation

=over

=item ServiceNetworkResourceAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteServiceNetworkResourceAssociation>

Returns: a L<Paws::VPCLattice::DeleteServiceNetworkResourceAssociationResponse> instance

Deletes the association between a service network and a resource
configuration.


=head2 DeleteServiceNetworkServiceAssociation

=over

=item ServiceNetworkServiceAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteServiceNetworkServiceAssociation>

Returns: a L<Paws::VPCLattice::DeleteServiceNetworkServiceAssociationResponse> instance

Deletes the association between a service and a service network. This
operation fails if an association is still in progress.


=head2 DeleteServiceNetworkVpcAssociation

=over

=item ServiceNetworkVpcAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteServiceNetworkVpcAssociation>

Returns: a L<Paws::VPCLattice::DeleteServiceNetworkVpcAssociationResponse> instance

Disassociates the VPC from the service network. You can't disassociate
the VPC if there is a create or update association in progress.


=head2 DeleteTargetGroup

=over

=item TargetGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeleteTargetGroup>

Returns: a L<Paws::VPCLattice::DeleteTargetGroupResponse> instance

Deletes a target group. You can't delete a target group if it is used
in a listener rule or if the target group creation is in progress.


=head2 DeregisterTargets

=over

=item TargetGroupIdentifier => Str

=item Targets => ArrayRef[L<Paws::VPCLattice::Target>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::DeregisterTargets>

Returns: a L<Paws::VPCLattice::DeregisterTargetsResponse> instance

Deregisters the specified targets from the specified target group.


=head2 GetAccessLogSubscription

=over

=item AccessLogSubscriptionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetAccessLogSubscription>

Returns: a L<Paws::VPCLattice::GetAccessLogSubscriptionResponse> instance

Retrieves information about the specified access log subscription.


=head2 GetAuthPolicy

=over

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetAuthPolicy>

Returns: a L<Paws::VPCLattice::GetAuthPolicyResponse> instance

Retrieves information about the auth policy for the specified service
or service network.


=head2 GetListener

=over

=item ListenerIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetListener>

Returns: a L<Paws::VPCLattice::GetListenerResponse> instance

Retrieves information about the specified listener for the specified
service.


=head2 GetResourceConfiguration

=over

=item ResourceConfigurationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetResourceConfiguration>

Returns: a L<Paws::VPCLattice::GetResourceConfigurationResponse> instance

Retrieves information about the specified resource configuration.


=head2 GetResourceGateway

=over

=item ResourceGatewayIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetResourceGateway>

Returns: a L<Paws::VPCLattice::GetResourceGatewayResponse> instance

Retrieves information about the specified resource gateway.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetResourcePolicy>

Returns: a L<Paws::VPCLattice::GetResourcePolicyResponse> instance

Retrieves information about the specified resource policy. The resource
policy is an IAM policy created on behalf of the resource owner when
they share a resource.


=head2 GetRule

=over

=item ListenerIdentifier => Str

=item RuleIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetRule>

Returns: a L<Paws::VPCLattice::GetRuleResponse> instance

Retrieves information about the specified listener rules. You can also
retrieve information about the default listener rule. For more
information, see Listener rules
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
in the I<Amazon VPC Lattice User Guide>.


=head2 GetService

=over

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetService>

Returns: a L<Paws::VPCLattice::GetServiceResponse> instance

Retrieves information about the specified service.


=head2 GetServiceNetwork

=over

=item ServiceNetworkIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetServiceNetwork>

Returns: a L<Paws::VPCLattice::GetServiceNetworkResponse> instance

Retrieves information about the specified service network.


=head2 GetServiceNetworkResourceAssociation

=over

=item ServiceNetworkResourceAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetServiceNetworkResourceAssociation>

Returns: a L<Paws::VPCLattice::GetServiceNetworkResourceAssociationResponse> instance

Retrieves information about the specified association between a service
network and a resource configuration.


=head2 GetServiceNetworkServiceAssociation

=over

=item ServiceNetworkServiceAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetServiceNetworkServiceAssociation>

Returns: a L<Paws::VPCLattice::GetServiceNetworkServiceAssociationResponse> instance

Retrieves information about the specified association between a service
network and a service.


=head2 GetServiceNetworkVpcAssociation

=over

=item ServiceNetworkVpcAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetServiceNetworkVpcAssociation>

Returns: a L<Paws::VPCLattice::GetServiceNetworkVpcAssociationResponse> instance

Retrieves information about the specified association between a service
network and a VPC.


=head2 GetTargetGroup

=over

=item TargetGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::GetTargetGroup>

Returns: a L<Paws::VPCLattice::GetTargetGroupResponse> instance

Retrieves information about the specified target group.


=head2 ListAccessLogSubscriptions

=over

=item ResourceIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListAccessLogSubscriptions>

Returns: a L<Paws::VPCLattice::ListAccessLogSubscriptionsResponse> instance

Lists the access log subscriptions for the specified service network or
service.


=head2 ListListeners

=over

=item ServiceIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListListeners>

Returns: a L<Paws::VPCLattice::ListListenersResponse> instance

Lists the listeners for the specified service.


=head2 ListResourceConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceConfigurationGroupIdentifier => Str]

=item [ResourceGatewayIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListResourceConfigurations>

Returns: a L<Paws::VPCLattice::ListResourceConfigurationsResponse> instance

Lists the resource configurations owned by or shared with this account.


=head2 ListResourceEndpointAssociations

=over

=item ResourceConfigurationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceEndpointAssociationIdentifier => Str]

=item [VpcEndpointId => Str]

=item [VpcEndpointOwner => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListResourceEndpointAssociations>

Returns: a L<Paws::VPCLattice::ListResourceEndpointAssociationsResponse> instance

Lists the associations for the specified VPC endpoint.


=head2 ListResourceGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListResourceGateways>

Returns: a L<Paws::VPCLattice::ListResourceGatewaysResponse> instance

Lists the resource gateways that you own or that were shared with you.


=head2 ListRules

=over

=item ListenerIdentifier => Str

=item ServiceIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListRules>

Returns: a L<Paws::VPCLattice::ListRulesResponse> instance

Lists the rules for the specified listener.


=head2 ListServiceNetworkResourceAssociations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceConfigurationIdentifier => Str]

=item [ServiceNetworkIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServiceNetworkResourceAssociations>

Returns: a L<Paws::VPCLattice::ListServiceNetworkResourceAssociationsResponse> instance

Lists the associations between a service network and a resource
configuration.


=head2 ListServiceNetworks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServiceNetworks>

Returns: a L<Paws::VPCLattice::ListServiceNetworksResponse> instance

Lists the service networks owned by or shared with this account. The
account ID in the ARN shows which account owns the service network.


=head2 ListServiceNetworkServiceAssociations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceIdentifier => Str]

=item [ServiceNetworkIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServiceNetworkServiceAssociations>

Returns: a L<Paws::VPCLattice::ListServiceNetworkServiceAssociationsResponse> instance

Lists the associations between a service network and a service. You can
filter the list either by service or service network. You must provide
either the service network identifier or the service identifier.

Every association in Amazon VPC Lattice has a unique Amazon Resource
Name (ARN), such as when a service network is associated with a VPC or
when a service is associated with a service network. If the association
is for a resource is shared with another account, the association
includes the local account ID as the prefix in the ARN.


=head2 ListServiceNetworkVpcAssociations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceNetworkIdentifier => Str]

=item [VpcIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServiceNetworkVpcAssociations>

Returns: a L<Paws::VPCLattice::ListServiceNetworkVpcAssociationsResponse> instance

Lists the associations between a service network and a VPC. You can
filter the list either by VPC or service network. You must provide
either the ID of the service network identifier or the ID of the VPC.


=head2 ListServiceNetworkVpcEndpointAssociations

=over

=item ServiceNetworkIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServiceNetworkVpcEndpointAssociations>

Returns: a L<Paws::VPCLattice::ListServiceNetworkVpcEndpointAssociationsResponse> instance

Lists the associations between a service network and a VPC endpoint.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListServices>

Returns: a L<Paws::VPCLattice::ListServicesResponse> instance

Lists the services owned by the caller account or shared with the
caller account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListTagsForResource>

Returns: a L<Paws::VPCLattice::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 ListTargetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetGroupType => Str]

=item [VpcIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListTargetGroups>

Returns: a L<Paws::VPCLattice::ListTargetGroupsResponse> instance

Lists your target groups. You can narrow your search by using the
filters below in your request.


=head2 ListTargets

=over

=item TargetGroupIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Targets => ArrayRef[L<Paws::VPCLattice::Target>]]


=back

Each argument is described in detail in: L<Paws::VPCLattice::ListTargets>

Returns: a L<Paws::VPCLattice::ListTargetsResponse> instance

Lists the targets for the target group. By default, all targets are
included. You can use this API to check the health status of targets.
You can also lter the results by target.


=head2 PutAuthPolicy

=over

=item Policy => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::PutAuthPolicy>

Returns: a L<Paws::VPCLattice::PutAuthPolicyResponse> instance

Creates or updates the auth policy. The policy string in JSON must not
contain newlines or blank lines.

For more information, see Auth policies
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/auth-policies.html)
in the I<Amazon VPC Lattice User Guide>.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::PutResourcePolicy>

Returns: a L<Paws::VPCLattice::PutResourcePolicyResponse> instance

Attaches a resource-based permission policy to a service or service
network. The policy must contain the same actions and condition
statements as the Amazon Web Services Resource Access Manager
permission for sharing services and service networks.


=head2 RegisterTargets

=over

=item TargetGroupIdentifier => Str

=item Targets => ArrayRef[L<Paws::VPCLattice::Target>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::RegisterTargets>

Returns: a L<Paws::VPCLattice::RegisterTargetsResponse> instance

Registers the targets with the target group. If it's a Lambda target,
you can only have one target in a target group.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::VPCLattice::TagMap>


=back

Each argument is described in detail in: L<Paws::VPCLattice::TagResource>

Returns: a L<Paws::VPCLattice::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::VPCLattice::UntagResource>

Returns: a L<Paws::VPCLattice::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateAccessLogSubscription

=over

=item AccessLogSubscriptionIdentifier => Str

=item DestinationArn => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateAccessLogSubscription>

Returns: a L<Paws::VPCLattice::UpdateAccessLogSubscriptionResponse> instance

Updates the specified access log subscription.


=head2 UpdateListener

=over

=item DefaultAction => L<Paws::VPCLattice::RuleAction>

=item ListenerIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateListener>

Returns: a L<Paws::VPCLattice::UpdateListenerResponse> instance

Updates the specified listener for the specified service.


=head2 UpdateResourceConfiguration

=over

=item ResourceConfigurationIdentifier => Str

=item [AllowAssociationToShareableServiceNetwork => Bool]

=item [PortRanges => ArrayRef[Str|Undef]]

=item [ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>]


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateResourceConfiguration>

Returns: a L<Paws::VPCLattice::UpdateResourceConfigurationResponse> instance

Updates the specified resource configuration.


=head2 UpdateResourceGateway

=over

=item ResourceGatewayIdentifier => Str

=item [SecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateResourceGateway>

Returns: a L<Paws::VPCLattice::UpdateResourceGatewayResponse> instance

Updates the specified resource gateway.


=head2 UpdateRule

=over

=item ListenerIdentifier => Str

=item RuleIdentifier => Str

=item ServiceIdentifier => Str

=item [Action => L<Paws::VPCLattice::RuleAction>]

=item [Match => L<Paws::VPCLattice::RuleMatch>]

=item [Priority => Int]


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateRule>

Returns: a L<Paws::VPCLattice::UpdateRuleResponse> instance

Updates a specified rule for the listener. You can't modify a default
listener rule. To modify a default listener rule, use
C<UpdateListener>.


=head2 UpdateService

=over

=item ServiceIdentifier => Str

=item [AuthType => Str]

=item [CertificateArn => Str]


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateService>

Returns: a L<Paws::VPCLattice::UpdateServiceResponse> instance

Updates the specified service.


=head2 UpdateServiceNetwork

=over

=item AuthType => Str

=item ServiceNetworkIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateServiceNetwork>

Returns: a L<Paws::VPCLattice::UpdateServiceNetworkResponse> instance

Updates the specified service network.


=head2 UpdateServiceNetworkVpcAssociation

=over

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item ServiceNetworkVpcAssociationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateServiceNetworkVpcAssociation>

Returns: a L<Paws::VPCLattice::UpdateServiceNetworkVpcAssociationResponse> instance

Updates the service network and VPC association. If you add a security
group to the service network and VPC association, the association must
continue to have at least one security group. You can add or edit
security groups at any time. However, to remove all security groups,
you must first delete the association and then recreate it without
security groups.


=head2 UpdateTargetGroup

=over

=item HealthCheck => L<Paws::VPCLattice::HealthCheckConfig>

=item TargetGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::VPCLattice::UpdateTargetGroup>

Returns: a L<Paws::VPCLattice::UpdateTargetGroupResponse> instance

Updates the specified target group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccessLogSubscriptions(sub { },ResourceIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccessLogSubscriptions(ResourceIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListAccessLogSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllListeners(sub { },ServiceIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllListeners(ServiceIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListListenersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceConfigurations(sub { },[MaxResults => Int, NextToken => Str, ResourceConfigurationGroupIdentifier => Str, ResourceGatewayIdentifier => Str])

=head2 ListAllResourceConfigurations([MaxResults => Int, NextToken => Str, ResourceConfigurationGroupIdentifier => Str, ResourceGatewayIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListResourceConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceEndpointAssociations(sub { },ResourceConfigurationIdentifier => Str, [MaxResults => Int, NextToken => Str, ResourceEndpointAssociationIdentifier => Str, VpcEndpointId => Str, VpcEndpointOwner => Str])

=head2 ListAllResourceEndpointAssociations(ResourceConfigurationIdentifier => Str, [MaxResults => Int, NextToken => Str, ResourceEndpointAssociationIdentifier => Str, VpcEndpointId => Str, VpcEndpointOwner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListResourceEndpointAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceGateways(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllResourceGateways([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListResourceGatewaysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },ListenerIdentifier => Str, ServiceIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRules(ListenerIdentifier => Str, ServiceIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceNetworkResourceAssociations(sub { },[MaxResults => Int, NextToken => Str, ResourceConfigurationIdentifier => Str, ServiceNetworkIdentifier => Str])

=head2 ListAllServiceNetworkResourceAssociations([MaxResults => Int, NextToken => Str, ResourceConfigurationIdentifier => Str, ServiceNetworkIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServiceNetworkResourceAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceNetworks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServiceNetworks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServiceNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceNetworkServiceAssociations(sub { },[MaxResults => Int, NextToken => Str, ServiceIdentifier => Str, ServiceNetworkIdentifier => Str])

=head2 ListAllServiceNetworkServiceAssociations([MaxResults => Int, NextToken => Str, ServiceIdentifier => Str, ServiceNetworkIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServiceNetworkServiceAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceNetworkVpcAssociations(sub { },[MaxResults => Int, NextToken => Str, ServiceNetworkIdentifier => Str, VpcIdentifier => Str])

=head2 ListAllServiceNetworkVpcAssociations([MaxResults => Int, NextToken => Str, ServiceNetworkIdentifier => Str, VpcIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServiceNetworkVpcAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceNetworkVpcEndpointAssociations(sub { },ServiceNetworkIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceNetworkVpcEndpointAssociations(ServiceNetworkIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServiceNetworkVpcEndpointAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetGroups(sub { },[MaxResults => Int, NextToken => Str, TargetGroupType => Str, VpcIdentifier => Str])

=head2 ListAllTargetGroups([MaxResults => Int, NextToken => Str, TargetGroupType => Str, VpcIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListTargetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargets(sub { },TargetGroupIdentifier => Str, [MaxResults => Int, NextToken => Str, Targets => ArrayRef[L<Paws::VPCLattice::Target>]])

=head2 ListAllTargets(TargetGroupIdentifier => Str, [MaxResults => Int, NextToken => Str, Targets => ArrayRef[L<Paws::VPCLattice::Target>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::VPCLattice::ListTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

