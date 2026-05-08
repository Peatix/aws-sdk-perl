package Paws::EKS;
  use Moose;
  sub service { 'eks' }
  sub signing_name { 'eks' }
  sub version { '2017-11-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::AssociateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::AssociateEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIdentityProviderConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::AssociateIdentityProviderConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateAccessEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateAddon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEksAnywhereSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateEksAnywhereSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFargateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateFargateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePodIdentityAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreatePodIdentityAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteAccessEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAddon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteAddon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEksAnywhereSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteEksAnywhereSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFargateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteFargateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePodIdentityAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeletePodIdentityAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeregisterCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccessEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeAccessEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeAddon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddonConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeAddonConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddonVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeAddonVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeClusterVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEksAnywhereSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeEksAnywhereSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFargateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeFargateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityProviderConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeIdentityProviderConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePodIdentityAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribePodIdentityAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DisassociateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIdentityProviderConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DisassociateIdentityProviderConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListAccessEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAddons {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListAddons', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListAssociatedAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEksAnywhereSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListEksAnywhereSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFargateProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListFargateProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityProviderConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListIdentityProviderConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodegroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListNodegroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPodIdentityAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListPodIdentityAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::RegisterCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateAccessEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAddon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateAddon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateClusterConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateClusterVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEksAnywhereSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateEksAnywhereSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNodegroupConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateNodegroupConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNodegroupVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateNodegroupVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePodIdentityAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdatePodIdentityAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAddonVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAddonVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAddonVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->addons }, @{ $next_result->addons };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'addons') foreach (@{ $result->addons });
        $result = $self->DescribeAddonVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'addons') foreach (@{ $result->addons });
    }

    return undef
  }
  sub DescribeAllClusterVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusterVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeClusterVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusterVersions }, @{ $next_result->clusterVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusterVersions') foreach (@{ $result->clusterVersions });
        $result = $self->DescribeClusterVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusterVersions') foreach (@{ $result->clusterVersions });
    }

    return undef
  }
  sub ListAllAccessEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessEntries(@_, nextToken => $next_result->nextToken);
        push @{ $result->accessEntries }, @{ $next_result->accessEntries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accessEntries') foreach (@{ $result->accessEntries });
        $result = $self->ListAccessEntries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accessEntries') foreach (@{ $result->accessEntries });
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
        push @{ $result->accessPolicies }, @{ $next_result->accessPolicies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accessPolicies') foreach (@{ $result->accessPolicies });
        $result = $self->ListAccessPolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accessPolicies') foreach (@{ $result->accessPolicies });
    }

    return undef
  }
  sub ListAllAddons {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAddons(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAddons(@_, nextToken => $next_result->nextToken);
        push @{ $result->addons }, @{ $next_result->addons };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'addons') foreach (@{ $result->addons });
        $result = $self->ListAddons(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'addons') foreach (@{ $result->addons });
    }

    return undef
  }
  sub ListAllAssociatedAccessPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedAccessPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssociatedAccessPolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->associatedAccessPolicies }, @{ $next_result->associatedAccessPolicies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'associatedAccessPolicies') foreach (@{ $result->associatedAccessPolicies });
        $result = $self->ListAssociatedAccessPolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'associatedAccessPolicies') foreach (@{ $result->associatedAccessPolicies });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusters }, @{ $next_result->clusters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusters') foreach (@{ $result->clusters });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusters') foreach (@{ $result->clusters });
    }

    return undef
  }
  sub ListAllEksAnywhereSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEksAnywhereSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEksAnywhereSubscriptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->subscriptions }, @{ $next_result->subscriptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
        $result = $self->ListEksAnywhereSubscriptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subscriptions') foreach (@{ $result->subscriptions });
    }

    return undef
  }
  sub ListAllFargateProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFargateProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFargateProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->fargateProfileNames }, @{ $next_result->fargateProfileNames };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'fargateProfileNames') foreach (@{ $result->fargateProfileNames });
        $result = $self->ListFargateProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'fargateProfileNames') foreach (@{ $result->fargateProfileNames });
    }

    return undef
  }
  sub ListAllIdentityProviderConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentityProviderConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdentityProviderConfigs(@_, nextToken => $next_result->nextToken);
        push @{ $result->identityProviderConfigs }, @{ $next_result->identityProviderConfigs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'identityProviderConfigs') foreach (@{ $result->identityProviderConfigs });
        $result = $self->ListIdentityProviderConfigs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'identityProviderConfigs') foreach (@{ $result->identityProviderConfigs });
    }

    return undef
  }
  sub ListAllInsights {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInsights(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInsights(@_, nextToken => $next_result->nextToken);
        push @{ $result->insights }, @{ $next_result->insights };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'insights') foreach (@{ $result->insights });
        $result = $self->ListInsights(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'insights') foreach (@{ $result->insights });
    }

    return undef
  }
  sub ListAllNodegroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNodegroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNodegroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->nodegroups }, @{ $next_result->nodegroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'nodegroups') foreach (@{ $result->nodegroups });
        $result = $self->ListNodegroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'nodegroups') foreach (@{ $result->nodegroups });
    }

    return undef
  }
  sub ListAllPodIdentityAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPodIdentityAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPodIdentityAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->associations }, @{ $next_result->associations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'associations') foreach (@{ $result->associations });
        $result = $self->ListPodIdentityAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'associations') foreach (@{ $result->associations });
    }

    return undef
  }
  sub ListAllUpdates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUpdates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUpdates(@_, nextToken => $next_result->nextToken);
        push @{ $result->updateIds }, @{ $next_result->updateIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'updateIds') foreach (@{ $result->updateIds });
        $result = $self->ListUpdates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'updateIds') foreach (@{ $result->updateIds });
    }

    return undef
  }


  sub operations { qw/AssociateAccessPolicy AssociateEncryptionConfig AssociateIdentityProviderConfig CreateAccessEntry CreateAddon CreateCluster CreateEksAnywhereSubscription CreateFargateProfile CreateNodegroup CreatePodIdentityAssociation DeleteAccessEntry DeleteAddon DeleteCluster DeleteEksAnywhereSubscription DeleteFargateProfile DeleteNodegroup DeletePodIdentityAssociation DeregisterCluster DescribeAccessEntry DescribeAddon DescribeAddonConfiguration DescribeAddonVersions DescribeCluster DescribeClusterVersions DescribeEksAnywhereSubscription DescribeFargateProfile DescribeIdentityProviderConfig DescribeInsight DescribeNodegroup DescribePodIdentityAssociation DescribeUpdate DisassociateAccessPolicy DisassociateIdentityProviderConfig ListAccessEntries ListAccessPolicies ListAddons ListAssociatedAccessPolicies ListClusters ListEksAnywhereSubscriptions ListFargateProfiles ListIdentityProviderConfigs ListInsights ListNodegroups ListPodIdentityAssociations ListTagsForResource ListUpdates RegisterCluster TagResource UntagResource UpdateAccessEntry UpdateAddon UpdateClusterConfig UpdateClusterVersion UpdateEksAnywhereSubscription UpdateNodegroupConfig UpdateNodegroupVersion UpdatePodIdentityAssociation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS - Perl Interface to AWS Amazon Elastic Kubernetes Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EKS');
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

Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service
that makes it easy for you to run Kubernetes on Amazon Web Services
without needing to setup or maintain your own Kubernetes control plane.
Kubernetes is an open-source system for automating the deployment,
scaling, and management of containerized applications.

Amazon EKS runs up-to-date versions of the open-source Kubernetes
software, so you can use all the existing plugins and tooling from the
Kubernetes community. Applications running on Amazon EKS are fully
compatible with applications running on any standard Kubernetes
environment, whether running in on-premises data centers or public
clouds. This means that you can easily migrate any standard Kubernetes
application to Amazon EKS without any code modification required.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01>


=head1 METHODS

=head2 AssociateAccessPolicy

=over

=item AccessScope => L<Paws::EKS::AccessScope>

=item ClusterName => Str

=item PolicyArn => Str

=item PrincipalArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::AssociateAccessPolicy>

Returns: a L<Paws::EKS::AssociateAccessPolicyResponse> instance

Associates an access policy and its scope to an access entry. For more
information about associating access policies, see Associating and
disassociating access policies to and from access entries
(https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html)
in the I<Amazon EKS User Guide>.


=head2 AssociateEncryptionConfig

=over

=item ClusterName => Str

=item EncryptionConfig => ArrayRef[L<Paws::EKS::EncryptionConfig>]

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::AssociateEncryptionConfig>

Returns: a L<Paws::EKS::AssociateEncryptionConfigResponse> instance

Associates an encryption configuration to an existing cluster.

Use this API to enable encryption on existing clusters that don't
already have encryption enabled. This allows you to implement a
defense-in-depth security strategy without migrating applications to
new Amazon EKS clusters.


=head2 AssociateIdentityProviderConfig

=over

=item ClusterName => Str

=item Oidc => L<Paws::EKS::OidcIdentityProviderConfigRequest>

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::AssociateIdentityProviderConfig>

Returns: a L<Paws::EKS::AssociateIdentityProviderConfigResponse> instance

Associates an identity provider configuration to a cluster.

If you want to authenticate identities using an identity provider, you
can create an identity provider configuration and associate it to your
cluster. After configuring authentication to your cluster you can
create Kubernetes C<Role> and C<ClusterRole> objects, assign
permissions to them, and then bind them to the identities using
Kubernetes C<RoleBinding> and C<ClusterRoleBinding> objects. For more
information see Using RBAC Authorization
(https://kubernetes.io/docs/reference/access-authn-authz/rbac/) in the
Kubernetes documentation.


=head2 CreateAccessEntry

=over

=item ClusterName => Str

=item PrincipalArn => Str

=item [ClientRequestToken => Str]

=item [KubernetesGroups => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::EKS::TagMap>]

=item [Type => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::EKS::CreateAccessEntry>

Returns: a L<Paws::EKS::CreateAccessEntryResponse> instance

Creates an access entry.

An access entry allows an IAM principal to access your cluster. Access
entries can replace the need to maintain entries in the C<aws-auth>
C<ConfigMap> for authentication. You have the following options for
authorizing an IAM principal to access Kubernetes objects on your
cluster: Kubernetes role-based access control (RBAC), Amazon EKS, or
both. Kubernetes RBAC authorization requires you to create and manage
Kubernetes C<Role>, C<ClusterRole>, C<RoleBinding>, and
C<ClusterRoleBinding> objects, in addition to managing access entries.
If you use Amazon EKS authorization exclusively, you don't need to
create and manage Kubernetes C<Role>, C<ClusterRole>, C<RoleBinding>,
and C<ClusterRoleBinding> objects.

For more information about access entries, see Access entries
(https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html)
in the I<Amazon EKS User Guide>.


=head2 CreateAddon

=over

=item AddonName => Str

=item ClusterName => Str

=item [AddonVersion => Str]

=item [ClientRequestToken => Str]

=item [ConfigurationValues => Str]

=item [PodIdentityAssociations => ArrayRef[L<Paws::EKS::AddonPodIdentityAssociations>]]

=item [ResolveConflicts => Str]

=item [ServiceAccountRoleArn => Str]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::CreateAddon>

Returns: a L<Paws::EKS::CreateAddonResponse> instance

Creates an Amazon EKS add-on.

Amazon EKS add-ons help to automate the provisioning and lifecycle
management of common operational software for Amazon EKS clusters. For
more information, see Amazon EKS add-ons
(https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html) in
the I<Amazon EKS User Guide>.


=head2 CreateCluster

=over

=item Name => Str

=item ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>

=item RoleArn => Str

=item [AccessConfig => L<Paws::EKS::CreateAccessConfigRequest>]

=item [BootstrapSelfManagedAddons => Bool]

=item [ClientRequestToken => Str]

=item [ComputeConfig => L<Paws::EKS::ComputeConfigRequest>]

=item [EncryptionConfig => ArrayRef[L<Paws::EKS::EncryptionConfig>]]

=item [KubernetesNetworkConfig => L<Paws::EKS::KubernetesNetworkConfigRequest>]

=item [Logging => L<Paws::EKS::Logging>]

=item [OutpostConfig => L<Paws::EKS::OutpostConfigRequest>]

=item [RemoteNetworkConfig => L<Paws::EKS::RemoteNetworkConfigRequest>]

=item [StorageConfig => L<Paws::EKS::StorageConfigRequest>]

=item [Tags => L<Paws::EKS::TagMap>]

=item [UpgradePolicy => L<Paws::EKS::UpgradePolicyRequest>]

=item [Version => Str]

=item [ZonalShiftConfig => L<Paws::EKS::ZonalShiftConfigRequest>]


=back

Each argument is described in detail in: L<Paws::EKS::CreateCluster>

Returns: a L<Paws::EKS::CreateClusterResponse> instance

Creates an Amazon EKS control plane.

The Amazon EKS control plane consists of control plane instances that
run the Kubernetes software, such as C<etcd> and the API server. The
control plane runs in an account managed by Amazon Web Services, and
the Kubernetes API is exposed by the Amazon EKS API server endpoint.
Each Amazon EKS cluster control plane is single tenant and unique. It
runs on its own set of Amazon EC2 instances.

The cluster control plane is provisioned across multiple Availability
Zones and fronted by an Elastic Load Balancing Network Load Balancer.
Amazon EKS also provisions elastic network interfaces in your VPC
subnets to provide connectivity from the control plane instances to the
nodes (for example, to support C<kubectl exec>, C<logs>, and C<proxy>
data flows).

Amazon EKS nodes run in your Amazon Web Services account and connect to
your cluster's control plane over the Kubernetes API server endpoint
and a certificate file that is created for your cluster.

You can use the C<endpointPublicAccess> and C<endpointPrivateAccess>
parameters to enable or disable public and private access to your
cluster's Kubernetes API server endpoint. By default, public access is
enabled, and private access is disabled. For more information, see
Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.

You can use the C<logging> parameter to enable or disable exporting the
Kubernetes control plane logs for your cluster to CloudWatch Logs. By
default, cluster control plane logs aren't exported to CloudWatch Logs.
For more information, see Amazon EKS Cluster Control Plane Logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).

In most cases, it takes several minutes to create a cluster. After you
create an Amazon EKS cluster, you must configure your Kubernetes
tooling to communicate with the API server and launch nodes into your
cluster. For more information, see Allowing users to access your
cluster
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-auth.html)
and Launching Amazon EKS nodes
(https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)
in the I<Amazon EKS User Guide>.


=head2 CreateEksAnywhereSubscription

=over

=item Name => Str

=item Term => L<Paws::EKS::EksAnywhereSubscriptionTerm>

=item [AutoRenew => Bool]

=item [ClientRequestToken => Str]

=item [LicenseQuantity => Int]

=item [LicenseType => Str]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::CreateEksAnywhereSubscription>

Returns: a L<Paws::EKS::CreateEksAnywhereSubscriptionResponse> instance

Creates an EKS Anywhere subscription. When a subscription is created,
it is a contract agreement for the length of the term specified in the
request. Licenses that are used to validate support are provisioned in
Amazon Web Services License Manager and the caller account is granted
access to EKS Anywhere Curated Packages.


=head2 CreateFargateProfile

=over

=item ClusterName => Str

=item FargateProfileName => Str

=item PodExecutionRoleArn => Str

=item [ClientRequestToken => Str]

=item [Selectors => ArrayRef[L<Paws::EKS::FargateProfileSelector>]]

=item [Subnets => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::CreateFargateProfile>

Returns: a L<Paws::EKS::CreateFargateProfileResponse> instance

Creates an Fargate profile for your Amazon EKS cluster. You must have
at least one Fargate profile in a cluster to be able to run pods on
Fargate.

The Fargate profile allows an administrator to declare which pods run
on Fargate and specify which pods run on which Fargate profile. This
declaration is done through the profile's selectors. Each profile can
have up to five selectors that contain a namespace and labels. A
namespace is required for every selector. The label field consists of
multiple optional key-value pairs. Pods that match the selectors are
scheduled on Fargate. If a to-be-scheduled pod matches any of the
selectors in the Fargate profile, then that pod is run on Fargate.

When you create a Fargate profile, you must specify a pod execution
role to use with the pods that are scheduled with the profile. This
role is added to the cluster's Kubernetes Role Based Access Control
(https://kubernetes.io/docs/reference/access-authn-authz/rbac/) (RBAC)
for authorization so that the C<kubelet> that is running on the Fargate
infrastructure can register with your Amazon EKS cluster so that it can
appear in your cluster as a node. The pod execution role also provides
IAM permissions to the Fargate infrastructure to allow read access to
Amazon ECR image repositories. For more information, see Pod Execution
Role
(https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
in the I<Amazon EKS User Guide>.

Fargate profiles are immutable. However, you can create a new updated
profile to replace an existing profile and then delete the original
after the updated profile has finished creating.

If any Fargate profiles in a cluster are in the C<DELETING> status, you
must wait for that Fargate profile to finish deleting before you can
create any other profiles in that cluster.

For more information, see Fargate profile
(https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html)
in the I<Amazon EKS User Guide>.


=head2 CreateNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str

=item NodeRole => Str

=item Subnets => ArrayRef[Str|Undef]

=item [AmiType => Str]

=item [CapacityType => Str]

=item [ClientRequestToken => Str]

=item [DiskSize => Int]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [Labels => L<Paws::EKS::LabelsMap>]

=item [LaunchTemplate => L<Paws::EKS::LaunchTemplateSpecification>]

=item [NodeRepairConfig => L<Paws::EKS::NodeRepairConfig>]

=item [ReleaseVersion => Str]

=item [RemoteAccess => L<Paws::EKS::RemoteAccessConfig>]

=item [ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>]

=item [Tags => L<Paws::EKS::TagMap>]

=item [Taints => ArrayRef[L<Paws::EKS::Taint>]]

=item [UpdateConfig => L<Paws::EKS::NodegroupUpdateConfig>]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::CreateNodegroup>

Returns: a L<Paws::EKS::CreateNodegroupResponse> instance

Creates a managed node group for an Amazon EKS cluster.

You can only create a node group for your cluster that is equal to the
current Kubernetes version for the cluster. All node groups are created
with the latest AMI release version for the respective minor Kubernetes
version of the cluster, unless you deploy a custom AMI using a launch
template.

For later updates, you will only be able to update a node group using a
launch template only if it was originally deployed with a launch
template. Additionally, the launch template ID or name must match what
was used when the node group was created. You can update the launch
template version with necessary changes. For more information about
using launch templates, see Customizing managed nodes with launch
templates
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html).

An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group
and associated Amazon EC2 instances that are managed by Amazon Web
Services for an Amazon EKS cluster. For more information, see Managed
node groups
(https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
in the I<Amazon EKS User Guide>.

Windows AMI types are only supported for commercial Amazon Web Services
Regions that support Windows on Amazon EKS.


=head2 CreatePodIdentityAssociation

=over

=item ClusterName => Str

=item Namespace => Str

=item RoleArn => Str

=item ServiceAccount => Str

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::CreatePodIdentityAssociation>

Returns: a L<Paws::EKS::CreatePodIdentityAssociationResponse> instance

Creates an EKS Pod Identity association between a service account in an
Amazon EKS cluster and an IAM role with I<EKS Pod Identity>. Use EKS
Pod Identity to give temporary IAM credentials to pods and the
credentials are rotated automatically.

Amazon EKS Pod Identity associations provide the ability to manage
credentials for your applications, similar to the way that Amazon EC2
instance profiles provide credentials to Amazon EC2 instances.

If a pod uses a service account that has an association, Amazon EKS
sets environment variables in the containers of the pod. The
environment variables configure the Amazon Web Services SDKs, including
the Command Line Interface, to use the EKS Pod Identity credentials.

Pod Identity is a simpler method than I<IAM roles for service
accounts>, as this method doesn't use OIDC identity providers.
Additionally, you can configure a role for Pod Identity once, and reuse
it across clusters.


=head2 DeleteAccessEntry

=over

=item ClusterName => Str

=item PrincipalArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteAccessEntry>

Returns: a L<Paws::EKS::DeleteAccessEntryResponse> instance

Deletes an access entry.

Deleting an access entry of a type other than C<Standard> can cause
your cluster to function improperly. If you delete an access entry in
error, you can recreate it.


=head2 DeleteAddon

=over

=item AddonName => Str

=item ClusterName => Str

=item [Preserve => Bool]


=back

Each argument is described in detail in: L<Paws::EKS::DeleteAddon>

Returns: a L<Paws::EKS::DeleteAddonResponse> instance

Deletes an Amazon EKS add-on.

When you remove an add-on, it's deleted from the cluster. You can
always manually start an add-on on the cluster using the Kubernetes
API.


=head2 DeleteCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteCluster>

Returns: a L<Paws::EKS::DeleteClusterResponse> instance

Deletes an Amazon EKS cluster control plane.

If you have active services in your cluster that are associated with a
load balancer, you must delete those services before deleting the
cluster so that the load balancers are deleted properly. Otherwise, you
can have orphaned resources in your VPC that prevent you from being
able to delete the VPC. For more information, see Deleting a cluster
(https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
in the I<Amazon EKS User Guide>.

If you have managed node groups or Fargate profiles attached to the
cluster, you must delete them first. For more information, see
C<DeleteNodgroup> and C<DeleteFargateProfile>.


=head2 DeleteEksAnywhereSubscription

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteEksAnywhereSubscription>

Returns: a L<Paws::EKS::DeleteEksAnywhereSubscriptionResponse> instance

Deletes an expired or inactive subscription. Deleting inactive
subscriptions removes them from the Amazon Web Services Management
Console view and from list/describe API responses. Subscriptions can
only be cancelled within 7 days of creation and are cancelled by
creating a ticket in the Amazon Web Services Support Center.


=head2 DeleteFargateProfile

=over

=item ClusterName => Str

=item FargateProfileName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteFargateProfile>

Returns: a L<Paws::EKS::DeleteFargateProfileResponse> instance

Deletes an Fargate profile.

When you delete a Fargate profile, any C<Pod> running on Fargate that
was created with the profile is deleted. If the C<Pod> matches another
Fargate profile, then it is scheduled on Fargate with that profile. If
it no longer matches any Fargate profiles, then it's not scheduled on
Fargate and may remain in a pending state.

Only one Fargate profile in a cluster can be in the C<DELETING> status
at a time. You must wait for a Fargate profile to finish deleting
before you can delete any other profiles in that cluster.


=head2 DeleteNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteNodegroup>

Returns: a L<Paws::EKS::DeleteNodegroupResponse> instance

Deletes a managed node group.


=head2 DeletePodIdentityAssociation

=over

=item AssociationId => Str

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeletePodIdentityAssociation>

Returns: a L<Paws::EKS::DeletePodIdentityAssociationResponse> instance

Deletes a EKS Pod Identity association.

The temporary Amazon Web Services credentials from the previous IAM
role session might still be valid until the session expiry. If you need
to immediately revoke the temporary session credentials, then go to the
role in the IAM console.


=head2 DeregisterCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeregisterCluster>

Returns: a L<Paws::EKS::DeregisterClusterResponse> instance

Deregisters a connected cluster to remove it from the Amazon EKS
control plane.

A connected cluster is a Kubernetes cluster that you've connected to
your control plane using the Amazon EKS Connector
(https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html).


=head2 DescribeAccessEntry

=over

=item ClusterName => Str

=item PrincipalArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeAccessEntry>

Returns: a L<Paws::EKS::DescribeAccessEntryResponse> instance

Describes an access entry.


=head2 DescribeAddon

=over

=item AddonName => Str

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeAddon>

Returns: a L<Paws::EKS::DescribeAddonResponse> instance

Describes an Amazon EKS add-on.


=head2 DescribeAddonConfiguration

=over

=item AddonName => Str

=item AddonVersion => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeAddonConfiguration>

Returns: a L<Paws::EKS::DescribeAddonConfigurationResponse> instance

Returns configuration options.


=head2 DescribeAddonVersions

=over

=item [AddonName => Str]

=item [KubernetesVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]

=item [Publishers => ArrayRef[Str|Undef]]

=item [Types => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EKS::DescribeAddonVersions>

Returns: a L<Paws::EKS::DescribeAddonVersionsResponse> instance

Describes the versions for an add-on.

Information such as the Kubernetes versions that you can use the add-on
with, the C<owner>, C<publisher>, and the C<type> of the add-on are
returned.


=head2 DescribeCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeCluster>

Returns: a L<Paws::EKS::DescribeClusterResponse> instance

Describes an Amazon EKS cluster.

The API server endpoint and certificate authority data returned by this
operation are required for C<kubelet> and C<kubectl> to communicate
with your Kubernetes API server. For more information, see Creating or
updating a C<kubeconfig> file for an Amazon EKS cluster
(https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

The API server endpoint and certificate authority data aren't available
until the cluster reaches the C<ACTIVE> state.


=head2 DescribeClusterVersions

=over

=item [ClusterType => Str]

=item [ClusterVersions => ArrayRef[Str|Undef]]

=item [DefaultOnly => Bool]

=item [IncludeAll => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [VersionStatus => Str]


=back

Each argument is described in detail in: L<Paws::EKS::DescribeClusterVersions>

Returns: a L<Paws::EKS::DescribeClusterVersionsResponse> instance

Lists available Kubernetes versions for Amazon EKS clusters.


=head2 DescribeEksAnywhereSubscription

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeEksAnywhereSubscription>

Returns: a L<Paws::EKS::DescribeEksAnywhereSubscriptionResponse> instance

Returns descriptive information about a subscription.


=head2 DescribeFargateProfile

=over

=item ClusterName => Str

=item FargateProfileName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeFargateProfile>

Returns: a L<Paws::EKS::DescribeFargateProfileResponse> instance

Describes an Fargate profile.


=head2 DescribeIdentityProviderConfig

=over

=item ClusterName => Str

=item IdentityProviderConfig => L<Paws::EKS::IdentityProviderConfig>


=back

Each argument is described in detail in: L<Paws::EKS::DescribeIdentityProviderConfig>

Returns: a L<Paws::EKS::DescribeIdentityProviderConfigResponse> instance

Describes an identity provider configuration.


=head2 DescribeInsight

=over

=item ClusterName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeInsight>

Returns: a L<Paws::EKS::DescribeInsightResponse> instance

Returns details about an insight that you specify using its ID.


=head2 DescribeNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeNodegroup>

Returns: a L<Paws::EKS::DescribeNodegroupResponse> instance

Describes a managed node group.


=head2 DescribePodIdentityAssociation

=over

=item AssociationId => Str

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribePodIdentityAssociation>

Returns: a L<Paws::EKS::DescribePodIdentityAssociationResponse> instance

Returns descriptive information about an EKS Pod Identity association.

This action requires the ID of the association. You can get the ID from
the response to the C<CreatePodIdentityAssocation> for newly created
associations. Or, you can list the IDs for associations with
C<ListPodIdentityAssociations> and filter the list by namespace or
service account.


=head2 DescribeUpdate

=over

=item Name => Str

=item UpdateId => Str

=item [AddonName => Str]

=item [NodegroupName => Str]


=back

Each argument is described in detail in: L<Paws::EKS::DescribeUpdate>

Returns: a L<Paws::EKS::DescribeUpdateResponse> instance

Describes an update to an Amazon EKS resource.

When the status of the update is C<Successful>, the update is complete.
If an update fails, the status is C<Failed>, and an error detail
explains the reason for the failure.


=head2 DisassociateAccessPolicy

=over

=item ClusterName => Str

=item PolicyArn => Str

=item PrincipalArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::DisassociateAccessPolicy>

Returns: a L<Paws::EKS::DisassociateAccessPolicyResponse> instance

Disassociates an access policy from an access entry.


=head2 DisassociateIdentityProviderConfig

=over

=item ClusterName => Str

=item IdentityProviderConfig => L<Paws::EKS::IdentityProviderConfig>

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::DisassociateIdentityProviderConfig>

Returns: a L<Paws::EKS::DisassociateIdentityProviderConfigResponse> instance

Disassociates an identity provider configuration from a cluster.

If you disassociate an identity provider from your cluster, users
included in the provider can no longer access the cluster. However, you
can still access the cluster with IAM principals.


=head2 ListAccessEntries

=over

=item ClusterName => Str

=item [AssociatedPolicyArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListAccessEntries>

Returns: a L<Paws::EKS::ListAccessEntriesResponse> instance

Lists the access entries for your cluster.


=head2 ListAccessPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListAccessPolicies>

Returns: a L<Paws::EKS::ListAccessPoliciesResponse> instance

Lists the available access policies.


=head2 ListAddons

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListAddons>

Returns: a L<Paws::EKS::ListAddonsResponse> instance

Lists the installed add-ons.


=head2 ListAssociatedAccessPolicies

=over

=item ClusterName => Str

=item PrincipalArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListAssociatedAccessPolicies>

Returns: a L<Paws::EKS::ListAssociatedAccessPoliciesResponse> instance

Lists the access policies associated with an access entry.


=head2 ListClusters

=over

=item [Include => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListClusters>

Returns: a L<Paws::EKS::ListClustersResponse> instance

Lists the Amazon EKS clusters in your Amazon Web Services account in
the specified Amazon Web Services Region.


=head2 ListEksAnywhereSubscriptions

=over

=item [IncludeStatus => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListEksAnywhereSubscriptions>

Returns: a L<Paws::EKS::ListEksAnywhereSubscriptionsResponse> instance

Displays the full description of the subscription.


=head2 ListFargateProfiles

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListFargateProfiles>

Returns: a L<Paws::EKS::ListFargateProfilesResponse> instance

Lists the Fargate profiles associated with the specified cluster in
your Amazon Web Services account in the specified Amazon Web Services
Region.


=head2 ListIdentityProviderConfigs

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListIdentityProviderConfigs>

Returns: a L<Paws::EKS::ListIdentityProviderConfigsResponse> instance

Lists the identity provider configurations for your cluster.


=head2 ListInsights

=over

=item ClusterName => Str

=item [Filter => L<Paws::EKS::InsightsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListInsights>

Returns: a L<Paws::EKS::ListInsightsResponse> instance

Returns a list of all insights checked for against the specified
cluster. You can filter which insights are returned by category,
associated Kubernetes version, and status.


=head2 ListNodegroups

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListNodegroups>

Returns: a L<Paws::EKS::ListNodegroupsResponse> instance

Lists the managed node groups associated with the specified cluster in
your Amazon Web Services account in the specified Amazon Web Services
Region. Self-managed node groups aren't listed.


=head2 ListPodIdentityAssociations

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [Namespace => Str]

=item [NextToken => Str]

=item [ServiceAccount => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListPodIdentityAssociations>

Returns: a L<Paws::EKS::ListPodIdentityAssociationsResponse> instance

List the EKS Pod Identity associations in a cluster. You can filter the
list by the namespace that the association is in or the service account
that the association uses.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::ListTagsForResource>

Returns: a L<Paws::EKS::ListTagsForResourceResponse> instance

List the tags for an Amazon EKS resource.


=head2 ListUpdates

=over

=item Name => Str

=item [AddonName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NodegroupName => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListUpdates>

Returns: a L<Paws::EKS::ListUpdatesResponse> instance

Lists the updates associated with an Amazon EKS resource in your Amazon
Web Services account, in the specified Amazon Web Services Region.


=head2 RegisterCluster

=over

=item ConnectorConfig => L<Paws::EKS::ConnectorConfigRequest>

=item Name => Str

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::EKS::TagMap>]


=back

Each argument is described in detail in: L<Paws::EKS::RegisterCluster>

Returns: a L<Paws::EKS::RegisterClusterResponse> instance

Connects a Kubernetes cluster to the Amazon EKS control plane.

Any Kubernetes cluster can be connected to the Amazon EKS control plane
to view current information about the cluster and its nodes.

Cluster connection requires two steps. First, send a
C<RegisterClusterRequest>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_RegisterClusterRequest.html)
to add it to the Amazon EKS control plane.

Second, a Manifest
(https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml)
containing the C<activationID> and C<activationCode> must be applied to
the Kubernetes cluster through it's native provider to provide
visibility.

After the manifest is updated and applied, the connected cluster is
visible to the Amazon EKS control plane. If the manifest isn't applied
within three days, the connected cluster will no longer be visible and
must be deregistered using C<DeregisterCluster>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::EKS::TagMap>


=back

Each argument is described in detail in: L<Paws::EKS::TagResource>

Returns: a L<Paws::EKS::TagResourceResponse> instance

Associates the specified tags to an Amazon EKS resource with the
specified C<resourceArn>. If existing tags on a resource are not
specified in the request parameters, they aren't changed. When a
resource is deleted, the tags associated with that resource are also
deleted. Tags that you create for Amazon EKS resources don't propagate
to any other resources associated with the cluster. For example, if you
tag a cluster with this operation, that tag doesn't automatically
propagate to the subnets and nodes associated with the cluster.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EKS::UntagResource>

Returns: a L<Paws::EKS::UntagResourceResponse> instance

Deletes specified tags from an Amazon EKS resource.


=head2 UpdateAccessEntry

=over

=item ClusterName => Str

=item PrincipalArn => Str

=item [ClientRequestToken => Str]

=item [KubernetesGroups => ArrayRef[Str|Undef]]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateAccessEntry>

Returns: a L<Paws::EKS::UpdateAccessEntryResponse> instance

Updates an access entry.


=head2 UpdateAddon

=over

=item AddonName => Str

=item ClusterName => Str

=item [AddonVersion => Str]

=item [ClientRequestToken => Str]

=item [ConfigurationValues => Str]

=item [PodIdentityAssociations => ArrayRef[L<Paws::EKS::AddonPodIdentityAssociations>]]

=item [ResolveConflicts => Str]

=item [ServiceAccountRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateAddon>

Returns: a L<Paws::EKS::UpdateAddonResponse> instance

Updates an Amazon EKS add-on.


=head2 UpdateClusterConfig

=over

=item Name => Str

=item [AccessConfig => L<Paws::EKS::UpdateAccessConfigRequest>]

=item [ClientRequestToken => Str]

=item [ComputeConfig => L<Paws::EKS::ComputeConfigRequest>]

=item [KubernetesNetworkConfig => L<Paws::EKS::KubernetesNetworkConfigRequest>]

=item [Logging => L<Paws::EKS::Logging>]

=item [RemoteNetworkConfig => L<Paws::EKS::RemoteNetworkConfigRequest>]

=item [ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>]

=item [StorageConfig => L<Paws::EKS::StorageConfigRequest>]

=item [UpgradePolicy => L<Paws::EKS::UpgradePolicyRequest>]

=item [ZonalShiftConfig => L<Paws::EKS::ZonalShiftConfigRequest>]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateClusterConfig>

Returns: a L<Paws::EKS::UpdateClusterConfigResponse> instance

Updates an Amazon EKS cluster configuration. Your cluster continues to
function during the update. The response output includes an update ID
that you can use to track the status of your cluster update with
C<DescribeUpdate>.

You can use this operation to do the following actions:

=over

=item *

You can use this API operation to enable or disable exporting the
Kubernetes control plane logs for your cluster to CloudWatch Logs. By
default, cluster control plane logs aren't exported to CloudWatch Logs.
For more information, see Amazon EKS Cluster control plane logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).

=item *

You can also use this API operation to enable or disable public and
private access to your cluster's Kubernetes API server endpoint. By
default, public access is enabled, and private access is disabled. For
more information, see Amazon EKS cluster endpoint access control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.

=item *

You can also use this API operation to choose different subnets and
security groups for the cluster. You must specify at least two subnets
that are in different Availability Zones. You can't change which VPC
the subnets are from, the subnets must be in the same VPC as the
subnets that the cluster was created with. For more information about
the VPC requirements, see
https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
(https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) in
the I< I<Amazon EKS User Guide> >.

=item *

You can also use this API operation to enable or disable ARC zonal
shift. If zonal shift is enabled, Amazon Web Services configures zonal
autoshift for the cluster.

=item *

You can also use this API operation to add, change, or remove the
configuration in the cluster for EKS Hybrid Nodes. To remove the
configuration, use the C<remoteNetworkConfig> key with an object
containing both subkeys with empty arrays for each. Here is an inline
example: C<"remoteNetworkConfig": { "remoteNodeNetworks": [],
"remotePodNetworks": [] }>.

=back

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to C<UPDATING>
(this status transition is eventually consistent). When the update is
complete (either C<Failed> or C<Successful>), the cluster status moves
to C<Active>.


=head2 UpdateClusterVersion

=over

=item Name => Str

=item Version => Str

=item [ClientRequestToken => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateClusterVersion>

Returns: a L<Paws::EKS::UpdateClusterVersionResponse> instance

Updates an Amazon EKS cluster to the specified Kubernetes version. Your
cluster continues to function during the update. The response output
includes an update ID that you can use to track the status of your
cluster update with the C<DescribeUpdate>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html)
API operation.

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to C<UPDATING>
(this status transition is eventually consistent). When the update is
complete (either C<Failed> or C<Successful>), the cluster status moves
to C<Active>.

If your cluster has managed node groups attached to it, all of your
node groups' Kubernetes versions must match the cluster's Kubernetes
version in order to update the cluster to a new Kubernetes version.


=head2 UpdateEksAnywhereSubscription

=over

=item AutoRenew => Bool

=item Id => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateEksAnywhereSubscription>

Returns: a L<Paws::EKS::UpdateEksAnywhereSubscriptionResponse> instance

Update an EKS Anywhere Subscription. Only auto renewal and tags can be
updated after subscription creation.


=head2 UpdateNodegroupConfig

=over

=item ClusterName => Str

=item NodegroupName => Str

=item [ClientRequestToken => Str]

=item [Labels => L<Paws::EKS::UpdateLabelsPayload>]

=item [NodeRepairConfig => L<Paws::EKS::NodeRepairConfig>]

=item [ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>]

=item [Taints => L<Paws::EKS::UpdateTaintsPayload>]

=item [UpdateConfig => L<Paws::EKS::NodegroupUpdateConfig>]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateNodegroupConfig>

Returns: a L<Paws::EKS::UpdateNodegroupConfigResponse> instance

Updates an Amazon EKS managed node group configuration. Your node group
continues to function during the update. The response output includes
an update ID that you can use to track the status of your node group
update with the C<DescribeUpdate>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html)
API operation. You can update the Kubernetes labels and taints for a
node group and the scaling and version update configuration.


=head2 UpdateNodegroupVersion

=over

=item ClusterName => Str

=item NodegroupName => Str

=item [ClientRequestToken => Str]

=item [Force => Bool]

=item [LaunchTemplate => L<Paws::EKS::LaunchTemplateSpecification>]

=item [ReleaseVersion => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateNodegroupVersion>

Returns: a L<Paws::EKS::UpdateNodegroupVersionResponse> instance

Updates the Kubernetes version or AMI version of an Amazon EKS managed
node group.

You can update a node group using a launch template only if the node
group was originally deployed with a launch template. Additionally, the
launch template ID or name must match what was used when the node group
was created. You can update the launch template version with necessary
changes.

If you need to update a custom AMI in a node group that was deployed
with a launch template, then update your custom AMI, specify the new ID
in a new version of the launch template, and then update the node group
to the new version of the launch template.

If you update without a launch template, then you can update to the
latest available AMI version of a node group's current Kubernetes
version by not specifying a Kubernetes version in the request. You can
update to the latest AMI version of your cluster's current Kubernetes
version by specifying your cluster's Kubernetes version in the request.
For information about Linux versions, see Amazon EKS optimized Amazon
Linux AMI versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>. For information about Windows
versions, see Amazon EKS optimized Windows AMI versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html)
in the I<Amazon EKS User Guide>.

You cannot roll back a node group to an earlier Kubernetes version or
AMI version.

When a node in a managed node group is terminated due to a scaling
action or update, every C<Pod> on that node is drained first. Amazon
EKS attempts to drain the nodes gracefully and will fail if it is
unable to do so. You can C<force> the update if Amazon EKS is unable to
drain the nodes as a result of a C<Pod> disruption budget issue.


=head2 UpdatePodIdentityAssociation

=over

=item AssociationId => Str

=item ClusterName => Str

=item [ClientRequestToken => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdatePodIdentityAssociation>

Returns: a L<Paws::EKS::UpdatePodIdentityAssociationResponse> instance

Updates a EKS Pod Identity association. Only the IAM role can be
changed; an association can't be moved between clusters, namespaces, or
service accounts. If you need to edit the namespace or service account,
you need to delete the association and then create a new association
with your desired settings.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAddonVersions(sub { },[AddonName => Str, KubernetesVersion => Str, MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef], Publishers => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])

=head2 DescribeAllAddonVersions([AddonName => Str, KubernetesVersion => Str, MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef], Publishers => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - addons, passing the object as the first parameter, and the string 'addons' as the second parameter 

If not, it will return a a L<Paws::EKS::DescribeAddonVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusterVersions(sub { },[ClusterType => Str, ClusterVersions => ArrayRef[Str|Undef], DefaultOnly => Bool, IncludeAll => Bool, MaxResults => Int, NextToken => Str, Status => Str, VersionStatus => Str])

=head2 DescribeAllClusterVersions([ClusterType => Str, ClusterVersions => ArrayRef[Str|Undef], DefaultOnly => Bool, IncludeAll => Bool, MaxResults => Int, NextToken => Str, Status => Str, VersionStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusterVersions, passing the object as the first parameter, and the string 'clusterVersions' as the second parameter 

If not, it will return a a L<Paws::EKS::DescribeClusterVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccessEntries(sub { },ClusterName => Str, [AssociatedPolicyArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAccessEntries(ClusterName => Str, [AssociatedPolicyArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accessEntries, passing the object as the first parameter, and the string 'accessEntries' as the second parameter 

If not, it will return a a L<Paws::EKS::ListAccessEntriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccessPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAccessPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accessPolicies, passing the object as the first parameter, and the string 'accessPolicies' as the second parameter 

If not, it will return a a L<Paws::EKS::ListAccessPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAddons(sub { },ClusterName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAddons(ClusterName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - addons, passing the object as the first parameter, and the string 'addons' as the second parameter 

If not, it will return a a L<Paws::EKS::ListAddonsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedAccessPolicies(sub { },ClusterName => Str, PrincipalArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociatedAccessPolicies(ClusterName => Str, PrincipalArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - associatedAccessPolicies, passing the object as the first parameter, and the string 'associatedAccessPolicies' as the second parameter 

If not, it will return a a L<Paws::EKS::ListAssociatedAccessPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[Include => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([Include => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusters, passing the object as the first parameter, and the string 'clusters' as the second parameter 

If not, it will return a a L<Paws::EKS::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEksAnywhereSubscriptions(sub { },[IncludeStatus => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllEksAnywhereSubscriptions([IncludeStatus => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscriptions, passing the object as the first parameter, and the string 'subscriptions' as the second parameter 

If not, it will return a a L<Paws::EKS::ListEksAnywhereSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFargateProfiles(sub { },ClusterName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFargateProfiles(ClusterName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - fargateProfileNames, passing the object as the first parameter, and the string 'fargateProfileNames' as the second parameter 

If not, it will return a a L<Paws::EKS::ListFargateProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdentityProviderConfigs(sub { },ClusterName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdentityProviderConfigs(ClusterName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - identityProviderConfigs, passing the object as the first parameter, and the string 'identityProviderConfigs' as the second parameter 

If not, it will return a a L<Paws::EKS::ListIdentityProviderConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInsights(sub { },ClusterName => Str, [Filter => L<Paws::EKS::InsightsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllInsights(ClusterName => Str, [Filter => L<Paws::EKS::InsightsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - insights, passing the object as the first parameter, and the string 'insights' as the second parameter 

If not, it will return a a L<Paws::EKS::ListInsightsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNodegroups(sub { },ClusterName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllNodegroups(ClusterName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - nodegroups, passing the object as the first parameter, and the string 'nodegroups' as the second parameter 

If not, it will return a a L<Paws::EKS::ListNodegroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPodIdentityAssociations(sub { },ClusterName => Str, [MaxResults => Int, Namespace => Str, NextToken => Str, ServiceAccount => Str])

=head2 ListAllPodIdentityAssociations(ClusterName => Str, [MaxResults => Int, Namespace => Str, NextToken => Str, ServiceAccount => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - associations, passing the object as the first parameter, and the string 'associations' as the second parameter 

If not, it will return a a L<Paws::EKS::ListPodIdentityAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUpdates(sub { },Name => Str, [AddonName => Str, MaxResults => Int, NextToken => Str, NodegroupName => Str])

=head2 ListAllUpdates(Name => Str, [AddonName => Str, MaxResults => Int, NextToken => Str, NodegroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - updateIds, passing the object as the first parameter, and the string 'updateIds' as the second parameter 

If not, it will return a a L<Paws::EKS::ListUpdatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

