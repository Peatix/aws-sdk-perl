package Paws::WorkSpaces;
  use Moose;
  sub service { 'workspaces' }
  sub signing_name { 'workspaces' }
  sub version { '2015-04-08' }
  sub target_prefix { 'WorkspacesService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptAccountLinkInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AcceptAccountLinkInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateConnectionAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AssociateConnectionAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AssociateIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWorkspaceApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AssociateWorkspaceApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeIpRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AuthorizeIpRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CopyWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccountLinkInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateAccountLinkInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnectClientAddIn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateConnectClientAddIn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnectionAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateConnectionAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStandbyWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateStandbyWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUpdatedWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateUpdatedWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaceBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateWorkspaceBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspacesPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateWorkspacesPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountLinkInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteAccountLinkInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteClientBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectClientAddIn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteConnectClientAddIn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectionAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteConnectionAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspaceBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteWorkspaceBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeployWorkspaceApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeployWorkspaceApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterWorkspaceDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeregisterWorkspaceDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeAccountModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeApplicationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBundleAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeBundleAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeClientBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeClientProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectClientAddIns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeConnectClientAddIns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectionAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeConnectionAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectionAliasPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeConnectionAliasPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeImageAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceDirectories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceImagePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceImagePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspacesConnectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspacesConnectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspacesPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspacesPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspacesPoolSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspacesPoolSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConnectionAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DisassociateConnectionAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DisassociateIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWorkspaceApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DisassociateWorkspaceApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::GetAccountLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportClientBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ImportClientBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ImportWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ListAccountLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableManagementCidrRanges {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ListAvailableManagementCidrRanges', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MigrateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::MigrateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCertificateBasedAuthProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyCertificateBasedAuthProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClientProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyClientProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEndpointEncryptionMode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyEndpointEncryptionMode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySamlProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifySamlProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySelfservicePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifySelfservicePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyStreamingProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyStreamingProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceAccessProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceAccessProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceCreationProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceCreationProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RebootWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebuildWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RebuildWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterWorkspaceDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RegisterWorkspaceDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectAccountLinkInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RejectAccountLinkInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RestoreWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeIpRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RevokeIpRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StartWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkspacesPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StartWorkspacesPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StopWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkspacesPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StopWorkspacesPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::TerminateWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateWorkspacesPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::TerminateWorkspacesPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateWorkspacesPoolSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::TerminateWorkspacesPoolSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectClientAddIn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateConnectClientAddIn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectionAliasPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateConnectionAliasPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRulesOfIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateRulesOfIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateWorkspaceBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceImagePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateWorkspaceImagePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspacesPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateWorkspacesPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAccountModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccountModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountModifications }, @{ $next_result->AccountModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountModifications') foreach (@{ $result->AccountModifications });
        $result = $self->DescribeAccountModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountModifications') foreach (@{ $result->AccountModifications });
    }

    return undef
  }
  sub DescribeAllIpGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Result }, @{ $next_result->Result };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Result') foreach (@{ $result->Result });
        $result = $self->DescribeIpGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Result') foreach (@{ $result->Result });
    }

    return undef
  }
  sub DescribeAllWorkspaceBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceBundles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Bundles }, @{ $next_result->Bundles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Bundles') foreach (@{ $result->Bundles });
        $result = $self->DescribeWorkspaceBundles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Bundles') foreach (@{ $result->Bundles });
    }

    return undef
  }
  sub DescribeAllWorkspaceDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceDirectories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceDirectories(@_, NextToken => $next_result->NextToken);
        push @{ $result->Directories }, @{ $next_result->Directories };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Directories') foreach (@{ $result->Directories });
        $result = $self->DescribeWorkspaceDirectories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Directories') foreach (@{ $result->Directories });
    }

    return undef
  }
  sub DescribeAllWorkspaceImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->DescribeWorkspaceImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub DescribeAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workspaces }, @{ $next_result->Workspaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workspaces') foreach (@{ $result->Workspaces });
        $result = $self->DescribeWorkspaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workspaces') foreach (@{ $result->Workspaces });
    }

    return undef
  }
  sub DescribeAllWorkspacesConnectionStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspacesConnectionStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspacesConnectionStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->WorkspacesConnectionStatus }, @{ $next_result->WorkspacesConnectionStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WorkspacesConnectionStatus') foreach (@{ $result->WorkspacesConnectionStatus });
        $result = $self->DescribeWorkspacesConnectionStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WorkspacesConnectionStatus') foreach (@{ $result->WorkspacesConnectionStatus });
    }

    return undef
  }
  sub ListAllAccountLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountLinks }, @{ $next_result->AccountLinks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountLinks') foreach (@{ $result->AccountLinks });
        $result = $self->ListAccountLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountLinks') foreach (@{ $result->AccountLinks });
    }

    return undef
  }
  sub ListAllAvailableManagementCidrRanges {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAvailableManagementCidrRanges(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAvailableManagementCidrRanges(@_, NextToken => $next_result->NextToken);
        push @{ $result->ManagementCidrRanges }, @{ $next_result->ManagementCidrRanges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ManagementCidrRanges') foreach (@{ $result->ManagementCidrRanges });
        $result = $self->ListAvailableManagementCidrRanges(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ManagementCidrRanges') foreach (@{ $result->ManagementCidrRanges });
    }

    return undef
  }


  sub operations { qw/AcceptAccountLinkInvitation AssociateConnectionAlias AssociateIpGroups AssociateWorkspaceApplication AuthorizeIpRules CopyWorkspaceImage CreateAccountLinkInvitation CreateConnectClientAddIn CreateConnectionAlias CreateIpGroup CreateStandbyWorkspaces CreateTags CreateUpdatedWorkspaceImage CreateWorkspaceBundle CreateWorkspaceImage CreateWorkspaces CreateWorkspacesPool DeleteAccountLinkInvitation DeleteClientBranding DeleteConnectClientAddIn DeleteConnectionAlias DeleteIpGroup DeleteTags DeleteWorkspaceBundle DeleteWorkspaceImage DeployWorkspaceApplications DeregisterWorkspaceDirectory DescribeAccount DescribeAccountModifications DescribeApplicationAssociations DescribeApplications DescribeBundleAssociations DescribeClientBranding DescribeClientProperties DescribeConnectClientAddIns DescribeConnectionAliases DescribeConnectionAliasPermissions DescribeImageAssociations DescribeIpGroups DescribeTags DescribeWorkspaceAssociations DescribeWorkspaceBundles DescribeWorkspaceDirectories DescribeWorkspaceImagePermissions DescribeWorkspaceImages DescribeWorkspaces DescribeWorkspacesConnectionStatus DescribeWorkspaceSnapshots DescribeWorkspacesPools DescribeWorkspacesPoolSessions DisassociateConnectionAlias DisassociateIpGroups DisassociateWorkspaceApplication GetAccountLink ImportClientBranding ImportWorkspaceImage ListAccountLinks ListAvailableManagementCidrRanges MigrateWorkspace ModifyAccount ModifyCertificateBasedAuthProperties ModifyClientProperties ModifyEndpointEncryptionMode ModifySamlProperties ModifySelfservicePermissions ModifyStreamingProperties ModifyWorkspaceAccessProperties ModifyWorkspaceCreationProperties ModifyWorkspaceProperties ModifyWorkspaceState RebootWorkspaces RebuildWorkspaces RegisterWorkspaceDirectory RejectAccountLinkInvitation RestoreWorkspace RevokeIpRules StartWorkspaces StartWorkspacesPool StopWorkspaces StopWorkspacesPool TerminateWorkspaces TerminateWorkspacesPool TerminateWorkspacesPoolSession UpdateConnectClientAddIn UpdateConnectionAliasPermission UpdateRulesOfIpGroup UpdateWorkspaceBundle UpdateWorkspaceImagePermission UpdateWorkspacesPool / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces - Perl Interface to AWS Amazon WorkSpaces

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkSpaces');
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

Amazon WorkSpaces Service

Amazon WorkSpaces enables you to provision virtual, cloud-based
Microsoft Windows or Amazon Linux desktops for your users, known as
I<WorkSpaces>. WorkSpaces eliminates the need to procure and deploy
hardware or install complex software. You can quickly add or remove
users as your needs change. Users can access their virtual desktops
from multiple devices or web browsers.

This API Reference provides detailed information about the actions,
data types, parameters, and errors of the WorkSpaces service. For more
information about the supported Amazon Web Services Regions, endpoints,
and service quotas of the Amazon WorkSpaces service, see WorkSpaces
endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/wsp.html) in the
I<Amazon Web Services General Reference>.

You can also manage your WorkSpaces resources using the WorkSpaces
console, Command Line Interface (CLI), and SDKs. For more information
about administering WorkSpaces, see the Amazon WorkSpaces
Administration Guide
(https://docs.aws.amazon.com/workspaces/latest/adminguide/). For more
information about using the Amazon WorkSpaces client application or web
browser to access provisioned WorkSpaces, see the Amazon WorkSpaces
User Guide (https://docs.aws.amazon.com/workspaces/latest/userguide/).
For more information about using the CLI to manage your WorkSpaces
resources, see the WorkSpaces section of the CLI Reference
(https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptAccountLinkInvitation

=over

=item LinkId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AcceptAccountLinkInvitation>

Returns: a L<Paws::WorkSpaces::AcceptAccountLinkInvitationResult> instance

Accepts the account link invitation.

There's currently no unlinking capability after you accept the account
linking invitation.


=head2 AssociateConnectionAlias

=over

=item AliasId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AssociateConnectionAlias>

Returns: a L<Paws::WorkSpaces::AssociateConnectionAliasResult> instance

Associates the specified connection alias with the specified directory
to enable cross-Region redirection. For more information, see
Cross-Region Redirection for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

Before performing this operation, call DescribeConnectionAliases
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
to make sure that the current state of the connection alias is
C<CREATED>.


=head2 AssociateIpGroups

=over

=item DirectoryId => Str

=item GroupIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AssociateIpGroups>

Returns: a L<Paws::WorkSpaces::AssociateIpGroupsResult> instance

Associates the specified IP access control group with the specified
directory.


=head2 AssociateWorkspaceApplication

=over

=item ApplicationId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AssociateWorkspaceApplication>

Returns: a L<Paws::WorkSpaces::AssociateWorkspaceApplicationResult> instance

Associates the specified application to the specified WorkSpace.


=head2 AuthorizeIpRules

=over

=item GroupId => Str

=item UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AuthorizeIpRules>

Returns: a L<Paws::WorkSpaces::AuthorizeIpRulesResult> instance

Adds one or more rules to the specified IP access control group.

This action gives users permission to access their WorkSpaces from the
CIDR address ranges specified in the rules.


=head2 CopyWorkspaceImage

=over

=item Name => Str

=item SourceImageId => Str

=item SourceRegion => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CopyWorkspaceImage>

Returns: a L<Paws::WorkSpaces::CopyWorkspaceImageResult> instance

Copies the specified image from the specified Region to the current
Region. For more information about copying images, see Copy a Custom
WorkSpaces Image
(https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).

In the China (Ningxia) Region, you can copy images only within the same
Region.

In Amazon Web Services GovCloud (US), to copy images to and from other
Regions, contact Amazon Web ServicesSupport.

Before copying a shared image, be sure to verify that it has been
shared from the correct Amazon Web Services account. To determine if an
image has been shared and to see the ID of the Amazon Web Services
account that owns an image, use the DescribeWorkSpaceImages
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html)
and DescribeWorkspaceImagePermissions
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html)
API operations.


=head2 CreateAccountLinkInvitation

=over

=item TargetAccountId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateAccountLinkInvitation>

Returns: a L<Paws::WorkSpaces::CreateAccountLinkInvitationResult> instance

Creates the account link invitation.


=head2 CreateConnectClientAddIn

=over

=item Name => Str

=item ResourceId => Str

=item URL => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateConnectClientAddIn>

Returns: a L<Paws::WorkSpaces::CreateConnectClientAddInResult> instance

Creates a client-add-in for Amazon Connect within a directory. You can
create only one Amazon Connect client add-in within a directory.

This client add-in allows WorkSpaces users to seamlessly connect to
Amazon Connect.


=head2 CreateConnectionAlias

=over

=item ConnectionString => Str

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateConnectionAlias>

Returns: a L<Paws::WorkSpaces::CreateConnectionAliasResult> instance

Creates the specified connection alias for use with cross-Region
redirection. For more information, see Cross-Region Redirection for
Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).


=head2 CreateIpGroup

=over

=item GroupName => Str

=item [GroupDesc => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]

=item [UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateIpGroup>

Returns: a L<Paws::WorkSpaces::CreateIpGroupResult> instance

Creates an IP access control group.

An IP access control group provides you with the ability to control the
IP addresses from which users are allowed to access their WorkSpaces.
To specify the CIDR address ranges, add rules to your IP access control
group and then associate the group with your directory. You can add
rules when you create the group or at any time using AuthorizeIpRules.

There is a default IP access control group associated with your
directory. If you don't associate an IP access control group with your
directory, the default group is used. The default group includes a
default rule that allows users to access their WorkSpaces from
anywhere. You cannot modify the default IP access control group for
your directory.


=head2 CreateStandbyWorkspaces

=over

=item PrimaryRegion => Str

=item StandbyWorkspaces => ArrayRef[L<Paws::WorkSpaces::StandbyWorkspace>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateStandbyWorkspaces>

Returns: a L<Paws::WorkSpaces::CreateStandbyWorkspacesResult> instance

Creates a standby WorkSpace in a secondary Region.


=head2 CreateTags

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateTags>

Returns: a L<Paws::WorkSpaces::CreateTagsResult> instance

Creates the specified tags for the specified WorkSpaces resource.


=head2 CreateUpdatedWorkspaceImage

=over

=item Description => Str

=item Name => Str

=item SourceImageId => Str

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateUpdatedWorkspaceImage>

Returns: a L<Paws::WorkSpaces::CreateUpdatedWorkspaceImageResult> instance

Creates a new updated WorkSpace image based on the specified source
image. The new updated WorkSpace image has the latest drivers and other
updates required by the Amazon WorkSpaces components.

To determine which WorkSpace images need to be updated with the latest
Amazon WorkSpaces requirements, use DescribeWorkspaceImages
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html).

=over

=item *

Only Windows 10, Windows Server 2016, and Windows Server 2019 WorkSpace
images can be programmatically updated at this time.

=item *

Microsoft Windows updates and other application updates are not
included in the update process.

=item *

The source WorkSpace image is not deleted. You can delete the source
image after you've verified your new updated image and created a new
bundle.

=back



=head2 CreateWorkspaceBundle

=over

=item BundleDescription => Str

=item BundleName => Str

=item ComputeType => L<Paws::WorkSpaces::ComputeType>

=item ImageId => Str

=item UserStorage => L<Paws::WorkSpaces::UserStorage>

=item [RootStorage => L<Paws::WorkSpaces::RootStorage>]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaceBundle>

Returns: a L<Paws::WorkSpaces::CreateWorkspaceBundleResult> instance

Creates the specified WorkSpace bundle. For more information about
creating WorkSpace bundles, see Create a Custom WorkSpaces Image and
Bundle
(https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html).


=head2 CreateWorkspaceImage

=over

=item Description => Str

=item Name => Str

=item WorkspaceId => Str

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaceImage>

Returns: a L<Paws::WorkSpaces::CreateWorkspaceImageResult> instance

Creates a new WorkSpace image from an existing WorkSpace.


=head2 CreateWorkspaces

=over

=item Workspaces => ArrayRef[L<Paws::WorkSpaces::WorkspaceRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaces>

Returns: a L<Paws::WorkSpaces::CreateWorkspacesResult> instance

Creates one or more WorkSpaces.

This operation is asynchronous and returns before the WorkSpaces are
created.

=over

=item *

The C<MANUAL> running mode value is only supported by Amazon WorkSpaces
Core. Contact your account team to be allow-listed to use this value.
For more information, see Amazon WorkSpaces Core
(http://aws.amazon.com/workspaces/core/).

=item *

You don't need to specify the C<PCOIP> protocol for Linux bundles
because C<DCV> (formerly WSP) is the default protocol for those
bundles.

=item *

User-decoupled WorkSpaces are only supported by Amazon WorkSpaces Core.

=item *

Review your running mode to ensure you are using one that is optimal
for your needs and budget. For more information on switching running
modes, see Can I switch between hourly and monthly billing?
(http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F)

=back



=head2 CreateWorkspacesPool

=over

=item BundleId => Str

=item Capacity => L<Paws::WorkSpaces::Capacity>

=item Description => Str

=item DirectoryId => Str

=item PoolName => Str

=item [ApplicationSettings => L<Paws::WorkSpaces::ApplicationSettingsRequest>]

=item [RunningMode => Str]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]

=item [TimeoutSettings => L<Paws::WorkSpaces::TimeoutSettings>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspacesPool>

Returns: a L<Paws::WorkSpaces::CreateWorkspacesPoolResult> instance

Creates a pool of WorkSpaces.


=head2 DeleteAccountLinkInvitation

=over

=item LinkId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteAccountLinkInvitation>

Returns: a L<Paws::WorkSpaces::DeleteAccountLinkInvitationResult> instance

Deletes the account link invitation.


=head2 DeleteClientBranding

=over

=item Platforms => ArrayRef[Str|Undef]

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteClientBranding>

Returns: a L<Paws::WorkSpaces::DeleteClientBrandingResult> instance

Deletes customized client branding. Client branding allows you to
customize your WorkSpace's client login portal. You can tailor your
login portal company logo, the support email address, support link,
link to reset password, and a custom message for users trying to sign
in.

After you delete your customized client branding, your login portal
reverts to the default client branding.


=head2 DeleteConnectClientAddIn

=over

=item AddInId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteConnectClientAddIn>

Returns: a L<Paws::WorkSpaces::DeleteConnectClientAddInResult> instance

Deletes a client-add-in for Amazon Connect that is configured within a
directory.


=head2 DeleteConnectionAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteConnectionAlias>

Returns: a L<Paws::WorkSpaces::DeleteConnectionAliasResult> instance

Deletes the specified connection alias. For more information, see
Cross-Region Redirection for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

B<If you will no longer be using a fully qualified domain name (FQDN)
as the registration code for your WorkSpaces users, you must take
certain precautions to prevent potential security issues.> For more
information, see Security Considerations if You Stop Using Cross-Region
Redirection
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

To delete a connection alias that has been shared, the shared account
must first disassociate the connection alias from any directories it
has been associated with. Then you must unshare the connection alias
from the account it has been shared with. You can delete a connection
alias only after it is no longer shared with any accounts or associated
with any directories.


=head2 DeleteIpGroup

=over

=item GroupId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteIpGroup>

Returns: a L<Paws::WorkSpaces::DeleteIpGroupResult> instance

Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a
directory.


=head2 DeleteTags

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteTags>

Returns: a L<Paws::WorkSpaces::DeleteTagsResult> instance

Deletes the specified tags from the specified WorkSpaces resource.


=head2 DeleteWorkspaceBundle

=over

=item [BundleId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteWorkspaceBundle>

Returns: a L<Paws::WorkSpaces::DeleteWorkspaceBundleResult> instance

Deletes the specified WorkSpace bundle. For more information about
deleting WorkSpace bundles, see Delete a Custom WorkSpaces Bundle or
Image
(https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html).


=head2 DeleteWorkspaceImage

=over

=item ImageId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteWorkspaceImage>

Returns: a L<Paws::WorkSpaces::DeleteWorkspaceImageResult> instance

Deletes the specified image from your account. To delete an image, you
must first delete any bundles that are associated with the image and
unshare the image if it is shared with other accounts.


=head2 DeployWorkspaceApplications

=over

=item WorkspaceId => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeployWorkspaceApplications>

Returns: a L<Paws::WorkSpaces::DeployWorkspaceApplicationsResult> instance

Deploys associated applications to the specified WorkSpace


=head2 DeregisterWorkspaceDirectory

=over

=item DirectoryId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeregisterWorkspaceDirectory>

Returns: a L<Paws::WorkSpaces::DeregisterWorkspaceDirectoryResult> instance

Deregisters the specified directory. This operation is asynchronous and
returns before the WorkSpace directory is deregistered. If any
WorkSpaces are registered to this directory, you must remove them
before you can deregister the directory.

Simple AD and AD Connector are made available to you free of charge to
use with WorkSpaces. If there are no WorkSpaces being used with your
Simple AD or AD Connector directory for 30 consecutive days, this
directory will be automatically deregistered for use with Amazon
WorkSpaces, and you will be charged for this directory as per the
Directory Service pricing terms
(http://aws.amazon.com/directoryservice/pricing/).

To delete empty directories, see Delete the Directory for Your
WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
If you delete your Simple AD or AD Connector directory, you can always
create a new one when you want to start using WorkSpaces again.


=head2 DescribeAccount






Each argument is described in detail in: L<Paws::WorkSpaces::DescribeAccount>

Returns: a L<Paws::WorkSpaces::DescribeAccountResult> instance

Retrieves a list that describes the configuration of Bring Your Own
License (BYOL) for the specified account.


=head2 DescribeAccountModifications

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeAccountModifications>

Returns: a L<Paws::WorkSpaces::DescribeAccountModificationsResult> instance

Retrieves a list that describes modifications to the configuration of
Bring Your Own License (BYOL) for the specified account.


=head2 DescribeApplicationAssociations

=over

=item ApplicationId => Str

=item AssociatedResourceTypes => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeApplicationAssociations>

Returns: a L<Paws::WorkSpaces::DescribeApplicationAssociationsResult> instance

Describes the associations between the application and the specified
associated resources.


=head2 DescribeApplications

=over

=item [ApplicationIds => ArrayRef[Str|Undef]]

=item [ComputeTypeNames => ArrayRef[Str|Undef]]

=item [LicenseType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OperatingSystemNames => ArrayRef[Str|Undef]]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeApplications>

Returns: a L<Paws::WorkSpaces::DescribeApplicationsResult> instance

Describes the specified applications by filtering based on their
compute types, license availability, operating systems, and owners.


=head2 DescribeBundleAssociations

=over

=item AssociatedResourceTypes => ArrayRef[Str|Undef]

=item BundleId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeBundleAssociations>

Returns: a L<Paws::WorkSpaces::DescribeBundleAssociationsResult> instance

Describes the associations between the applications and the specified
bundle.


=head2 DescribeClientBranding

=over

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeClientBranding>

Returns: a L<Paws::WorkSpaces::DescribeClientBrandingResult> instance

Describes the specified client branding. Client branding allows you to
customize the log in page of various device types for your users. You
can add your company logo, the support email address, support link,
link to reset password, and a custom message for users trying to sign
in.

Only device types that have branding information configured will be
shown in the response.


=head2 DescribeClientProperties

=over

=item ResourceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeClientProperties>

Returns: a L<Paws::WorkSpaces::DescribeClientPropertiesResult> instance

Retrieves a list that describes one or more specified Amazon WorkSpaces
clients.


=head2 DescribeConnectClientAddIns

=over

=item ResourceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeConnectClientAddIns>

Returns: a L<Paws::WorkSpaces::DescribeConnectClientAddInsResult> instance

Retrieves a list of Amazon Connect client add-ins that have been
created.


=head2 DescribeConnectionAliases

=over

=item [AliasIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]

=item [ResourceId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeConnectionAliases>

Returns: a L<Paws::WorkSpaces::DescribeConnectionAliasesResult> instance

Retrieves a list that describes the connection aliases used for
cross-Region redirection. For more information, see Cross-Region
Redirection for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).


=head2 DescribeConnectionAliasPermissions

=over

=item AliasId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeConnectionAliasPermissions>

Returns: a L<Paws::WorkSpaces::DescribeConnectionAliasPermissionsResult> instance

Describes the permissions that the owner of a connection alias has
granted to another Amazon Web Services account for the specified
connection alias. For more information, see Cross-Region Redirection
for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).


=head2 DescribeImageAssociations

=over

=item AssociatedResourceTypes => ArrayRef[Str|Undef]

=item ImageId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeImageAssociations>

Returns: a L<Paws::WorkSpaces::DescribeImageAssociationsResult> instance

Describes the associations between the applications and the specified
image.


=head2 DescribeIpGroups

=over

=item [GroupIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeIpGroups>

Returns: a L<Paws::WorkSpaces::DescribeIpGroupsResult> instance

Describes one or more of your IP access control groups.


=head2 DescribeTags

=over

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeTags>

Returns: a L<Paws::WorkSpaces::DescribeTagsResult> instance

Describes the specified tags for the specified WorkSpaces resource.


=head2 DescribeWorkspaceAssociations

=over

=item AssociatedResourceTypes => ArrayRef[Str|Undef]

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceAssociations>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceAssociationsResult> instance

Describes the associations betweens applications and the specified
WorkSpace.


=head2 DescribeWorkspaceBundles

=over

=item [BundleIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceBundles>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance

Retrieves a list that describes the available WorkSpace bundles.

You can filter the results using either bundle ID or owner, but not
both.


=head2 DescribeWorkspaceDirectories

=over

=item [DirectoryIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesFilter>]]

=item [Limit => Int]

=item [NextToken => Str]

=item [WorkspaceDirectoryNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceDirectories>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance

Describes the available directories that are registered with Amazon
WorkSpaces.


=head2 DescribeWorkspaceImagePermissions

=over

=item ImageId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceImagePermissions>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceImagePermissionsResult> instance

Describes the permissions that the owner of an image has granted to
other Amazon Web Services accounts for an image.


=head2 DescribeWorkspaceImages

=over

=item [ImageIds => ArrayRef[Str|Undef]]

=item [ImageType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceImages>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceImagesResult> instance

Retrieves a list that describes one or more specified images, if the
image identifiers are provided. Otherwise, all images in the account
are described.


=head2 DescribeWorkspaces

=over

=item [BundleId => Str]

=item [DirectoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [UserName => Str]

=item [WorkspaceIds => ArrayRef[Str|Undef]]

=item [WorkspaceName => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaces>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance

Describes the specified WorkSpaces.

You can filter the results by using the bundle identifier, directory
identifier, or owner, but you can specify only one filter at a time.


=head2 DescribeWorkspacesConnectionStatus

=over

=item [NextToken => Str]

=item [WorkspaceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatus>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance

Describes the connection status of the specified WorkSpaces.


=head2 DescribeWorkspaceSnapshots

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceSnapshots>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult> instance

Describes the snapshots for the specified WorkSpace.


=head2 DescribeWorkspacesPools

=over

=item [Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspacesPoolsFilter>]]

=item [Limit => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesPools>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesPoolsResult> instance

Describes the specified WorkSpaces Pools.


=head2 DescribeWorkspacesPoolSessions

=over

=item PoolId => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesPoolSessions>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesPoolSessionsResult> instance

Retrieves a list that describes the streaming sessions for a specified
pool.


=head2 DisassociateConnectionAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DisassociateConnectionAlias>

Returns: a L<Paws::WorkSpaces::DisassociateConnectionAliasResult> instance

Disassociates a connection alias from a directory. Disassociating a
connection alias disables cross-Region redirection between two
directories in different Regions. For more information, see
Cross-Region Redirection for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

Before performing this operation, call DescribeConnectionAliases
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
to make sure that the current state of the connection alias is
C<CREATED>.


=head2 DisassociateIpGroups

=over

=item DirectoryId => Str

=item GroupIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DisassociateIpGroups>

Returns: a L<Paws::WorkSpaces::DisassociateIpGroupsResult> instance

Disassociates the specified IP access control group from the specified
directory.


=head2 DisassociateWorkspaceApplication

=over

=item ApplicationId => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DisassociateWorkspaceApplication>

Returns: a L<Paws::WorkSpaces::DisassociateWorkspaceApplicationResult> instance

Disassociates the specified application from a WorkSpace.


=head2 GetAccountLink

=over

=item [LinkedAccountId => Str]

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::GetAccountLink>

Returns: a L<Paws::WorkSpaces::GetAccountLinkResult> instance

Retrieves account link information.


=head2 ImportClientBranding

=over

=item ResourceId => Str

=item [DeviceTypeAndroid => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>]

=item [DeviceTypeIos => L<Paws::WorkSpaces::IosImportClientBrandingAttributes>]

=item [DeviceTypeLinux => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>]

=item [DeviceTypeOsx => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>]

=item [DeviceTypeWeb => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>]

=item [DeviceTypeWindows => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ImportClientBranding>

Returns: a L<Paws::WorkSpaces::ImportClientBrandingResult> instance

Imports client branding. Client branding allows you to customize your
WorkSpace's client login portal. You can tailor your login portal
company logo, the support email address, support link, link to reset
password, and a custom message for users trying to sign in.

After you import client branding, the default branding experience for
the specified platform type is replaced with the imported experience

=over

=item *

You must specify at least one platform type when importing client
branding.

=item *

You can import up to 6 MB of data with each request. If your request
exceeds this limit, you can import client branding for different
platform types using separate requests.

=item *

In each platform type, the C<SupportEmail> and C<SupportLink>
parameters are mutually exclusive. You can specify only one parameter
for each platform type, but not both.

=item *

Imported data can take up to a minute to appear in the WorkSpaces
client.

=back



=head2 ImportWorkspaceImage

=over

=item Ec2ImageId => Str

=item ImageDescription => Str

=item ImageName => Str

=item IngestionProcess => Str

=item [Applications => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ImportWorkspaceImage>

Returns: a L<Paws::WorkSpaces::ImportWorkspaceImageResult> instance

Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
image into Amazon WorkSpaces. The image must be an already licensed
Amazon EC2 image that is in your Amazon Web Services account, and you
must own the image. For more information about creating BYOL images,
see Bring Your Own Windows Desktop Licenses
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).


=head2 ListAccountLinks

=over

=item [LinkStatusFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ListAccountLinks>

Returns: a L<Paws::WorkSpaces::ListAccountLinksResult> instance

Lists all account links.


=head2 ListAvailableManagementCidrRanges

=over

=item ManagementCidrRangeConstraint => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ListAvailableManagementCidrRanges>

Returns: a L<Paws::WorkSpaces::ListAvailableManagementCidrRangesResult> instance

Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
that you can use for the network management interface when you enable
Bring Your Own License (BYOL).

This operation can be run only by Amazon Web Services accounts that are
enabled for BYOL. If your account isn't enabled for BYOL, you'll
receive an C<AccessDeniedException> error.

The management network interface is connected to a secure Amazon
WorkSpaces management network. It is used for interactive streaming of
the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon
WorkSpaces to manage the WorkSpace.


=head2 MigrateWorkspace

=over

=item BundleId => Str

=item SourceWorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::MigrateWorkspace>

Returns: a L<Paws::WorkSpaces::MigrateWorkspaceResult> instance

Migrates a WorkSpace from one operating system or bundle type to
another, while retaining the data on the user volume.

The migration process recreates the WorkSpace by using a new root
volume from the target bundle image and the user volume from the last
available snapshot of the original WorkSpace. During migration, the
original C<D:\Users\%USERNAME%> user profile folder is renamed to
C<D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated>. A new
C<D:\Users\%USERNAME%\> folder is generated by the new OS. Certain
files in the old user profile are moved to the new user profile.

For available migration scenarios, details about what happens during
migration, and best practices, see Migrate a WorkSpace
(https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html).


=head2 ModifyAccount

=over

=item [DedicatedTenancyManagementCidrRange => Str]

=item [DedicatedTenancySupport => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyAccount>

Returns: a L<Paws::WorkSpaces::ModifyAccountResult> instance

Modifies the configuration of Bring Your Own License (BYOL) for the
specified account.


=head2 ModifyCertificateBasedAuthProperties

=over

=item ResourceId => Str

=item [CertificateBasedAuthProperties => L<Paws::WorkSpaces::CertificateBasedAuthProperties>]

=item [PropertiesToDelete => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyCertificateBasedAuthProperties>

Returns: a L<Paws::WorkSpaces::ModifyCertificateBasedAuthPropertiesResult> instance

Modifies the properties of the certificate-based authentication you
want to use with your WorkSpaces.


=head2 ModifyClientProperties

=over

=item ClientProperties => L<Paws::WorkSpaces::ClientProperties>

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyClientProperties>

Returns: a L<Paws::WorkSpaces::ModifyClientPropertiesResult> instance

Modifies the properties of the specified Amazon WorkSpaces clients.


=head2 ModifyEndpointEncryptionMode

=over

=item DirectoryId => Str

=item EndpointEncryptionMode => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyEndpointEncryptionMode>

Returns: a L<Paws::WorkSpaces::ModifyEndpointEncryptionModeResponse> instance

Modifies the endpoint encryption mode that allows you to configure the
specified directory between Standard TLS and FIPS 140-2 validated mode.


=head2 ModifySamlProperties

=over

=item ResourceId => Str

=item [PropertiesToDelete => ArrayRef[Str|Undef]]

=item [SamlProperties => L<Paws::WorkSpaces::SamlProperties>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifySamlProperties>

Returns: a L<Paws::WorkSpaces::ModifySamlPropertiesResult> instance

Modifies multiple properties related to SAML 2.0 authentication,
including the enablement status, user access URL, and relay state
parameter name that are used for configuring federation with an SAML
2.0 identity provider.


=head2 ModifySelfservicePermissions

=over

=item ResourceId => Str

=item SelfservicePermissions => L<Paws::WorkSpaces::SelfservicePermissions>


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifySelfservicePermissions>

Returns: a L<Paws::WorkSpaces::ModifySelfservicePermissionsResult> instance

Modifies the self-service WorkSpace management capabilities for your
users. For more information, see Enable Self-Service WorkSpace
Management Capabilities for Your Users
(https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).


=head2 ModifyStreamingProperties

=over

=item ResourceId => Str

=item [StreamingProperties => L<Paws::WorkSpaces::StreamingProperties>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyStreamingProperties>

Returns: a L<Paws::WorkSpaces::ModifyStreamingPropertiesResult> instance

Modifies the specified streaming properties.


=head2 ModifyWorkspaceAccessProperties

=over

=item ResourceId => Str

=item WorkspaceAccessProperties => L<Paws::WorkSpaces::WorkspaceAccessProperties>


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceAccessProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspaceAccessPropertiesResult> instance

Specifies which devices and operating systems users can use to access
their WorkSpaces. For more information, see Control Device Access
(https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).


=head2 ModifyWorkspaceCreationProperties

=over

=item ResourceId => Str

=item WorkspaceCreationProperties => L<Paws::WorkSpaces::WorkspaceCreationProperties>


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceCreationProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspaceCreationPropertiesResult> instance

Modify the default properties used to create WorkSpaces.


=head2 ModifyWorkspaceProperties

=over

=item WorkspaceId => Str

=item [DataReplication => Str]

=item [WorkspaceProperties => L<Paws::WorkSpaces::WorkspaceProperties>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspacePropertiesResult> instance

Modifies the specified WorkSpace properties. For important information
about how to modify the size of the root and user volumes, see Modify a
WorkSpace
(https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).

The C<MANUAL> running mode value is only supported by Amazon WorkSpaces
Core. Contact your account team to be allow-listed to use this value.
For more information, see Amazon WorkSpaces Core
(http://aws.amazon.com/workspaces/core/).


=head2 ModifyWorkspaceState

=over

=item WorkspaceId => Str

=item WorkspaceState => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceState>

Returns: a L<Paws::WorkSpaces::ModifyWorkspaceStateResult> instance

Sets the state of the specified WorkSpace.

To maintain a WorkSpace without being interrupted, set the WorkSpace
state to C<ADMIN_MAINTENANCE>. WorkSpaces in this state do not respond
to requests to reboot, stop, start, rebuild, or restore. An AutoStop
WorkSpace in this state is not stopped. Users cannot log into a
WorkSpace in the C<ADMIN_MAINTENANCE> state.


=head2 RebootWorkspaces

=over

=item RebootWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebootRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RebootWorkspaces>

Returns: a L<Paws::WorkSpaces::RebootWorkspacesResult> instance

Reboots the specified WorkSpaces.

You cannot reboot a WorkSpace unless its state is C<AVAILABLE>,
C<UNHEALTHY>, or C<REBOOTING>. Reboot a WorkSpace in the C<REBOOTING>
state only if your WorkSpace has been stuck in the C<REBOOTING> state
for over 20 minutes.

This operation is asynchronous and returns before the WorkSpaces have
rebooted.


=head2 RebuildWorkspaces

=over

=item RebuildWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebuildRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RebuildWorkspaces>

Returns: a L<Paws::WorkSpaces::RebuildWorkspacesResult> instance

Rebuilds the specified WorkSpace.

You cannot rebuild a WorkSpace unless its state is C<AVAILABLE>,
C<ERROR>, C<UNHEALTHY>, C<STOPPED>, or C<REBOOTING>.

Rebuilding a WorkSpace is a potentially destructive action that can
result in the loss of data. For more information, see Rebuild a
WorkSpace
(https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

This operation is asynchronous and returns before the WorkSpaces have
been completely rebuilt.


=head2 RegisterWorkspaceDirectory

=over

=item [ActiveDirectoryConfig => L<Paws::WorkSpaces::ActiveDirectoryConfig>]

=item [DirectoryId => Str]

=item [EnableSelfService => Bool]

=item [IdcInstanceArn => Str]

=item [MicrosoftEntraConfig => L<Paws::WorkSpaces::MicrosoftEntraConfig>]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]]

=item [Tenancy => Str]

=item [UserIdentityType => Str]

=item [WorkspaceDirectoryDescription => Str]

=item [WorkspaceDirectoryName => Str]

=item [WorkspaceType => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RegisterWorkspaceDirectory>

Returns: a L<Paws::WorkSpaces::RegisterWorkspaceDirectoryResult> instance

Registers the specified directory. This operation is asynchronous and
returns before the WorkSpace directory is registered. If this is the
first time you are registering a directory, you will need to create the
workspaces_DefaultRole role before you can register a directory. For
more information, see Creating the workspaces_DefaultRole Role
(https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).


=head2 RejectAccountLinkInvitation

=over

=item LinkId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RejectAccountLinkInvitation>

Returns: a L<Paws::WorkSpaces::RejectAccountLinkInvitationResult> instance

Rejects the account link invitation.


=head2 RestoreWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RestoreWorkspace>

Returns: a L<Paws::WorkSpaces::RestoreWorkspaceResult> instance

Restores the specified WorkSpace to its last known healthy state.

You cannot restore a WorkSpace unless its state is C< AVAILABLE>,
C<ERROR>, C<UNHEALTHY>, or C<STOPPED>.

Restoring a WorkSpace is a potentially destructive action that can
result in the loss of data. For more information, see Restore a
WorkSpace
(https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html).

This operation is asynchronous and returns before the WorkSpace is
completely restored.


=head2 RevokeIpRules

=over

=item GroupId => Str

=item UserRules => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RevokeIpRules>

Returns: a L<Paws::WorkSpaces::RevokeIpRulesResult> instance

Removes one or more rules from the specified IP access control group.


=head2 StartWorkspaces

=over

=item StartWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StartRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StartWorkspaces>

Returns: a L<Paws::WorkSpaces::StartWorkspacesResult> instance

Starts the specified WorkSpaces.

You cannot start a WorkSpace unless it has a running mode of
C<AutoStop> or C<Manual> and a state of C<STOPPED>.


=head2 StartWorkspacesPool

=over

=item PoolId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StartWorkspacesPool>

Returns: a L<Paws::WorkSpaces::StartWorkspacesPoolResult> instance

Starts the specified pool.

You cannot start a pool unless it has a running mode of C<AutoStop> and
a state of C<STOPPED>.


=head2 StopWorkspaces

=over

=item StopWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StopRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StopWorkspaces>

Returns: a L<Paws::WorkSpaces::StopWorkspacesResult> instance

Stops the specified WorkSpaces.

You cannot stop a WorkSpace unless it has a running mode of C<AutoStop>
or C<Manual> and a state of C<AVAILABLE>, C<IMPAIRED>, C<UNHEALTHY>, or
C<ERROR>.


=head2 StopWorkspacesPool

=over

=item PoolId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StopWorkspacesPool>

Returns: a L<Paws::WorkSpaces::StopWorkspacesPoolResult> instance

Stops the specified pool.

You cannot stop a WorkSpace pool unless it has a running mode of
C<AutoStop> and a state of C<AVAILABLE>, C<IMPAIRED>, C<UNHEALTHY>, or
C<ERROR>.


=head2 TerminateWorkspaces

=over

=item TerminateWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::TerminateRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspaces>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesResult> instance

Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The
user's data is destroyed. If you need to archive any user data, contact
Amazon Web ServicesSupport before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except C<SUSPENDED>.

This operation is asynchronous and returns before the WorkSpaces have
been completely terminated. After a WorkSpace is terminated, the
C<TERMINATED> state is returned only briefly before the WorkSpace
directory metadata is cleaned up, so this state is rarely returned. To
confirm that a WorkSpace is terminated, check for the WorkSpace ID by
using DescribeWorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html).
If the WorkSpace ID isn't returned, then the WorkSpace has been
successfully terminated.

Simple AD and AD Connector are made available to you free of charge to
use with WorkSpaces. If there are no WorkSpaces being used with your
Simple AD or AD Connector directory for 30 consecutive days, this
directory will be automatically deregistered for use with Amazon
WorkSpaces, and you will be charged for this directory as per the
Directory Service pricing terms
(http://aws.amazon.com/directoryservice/pricing/).

To delete empty directories, see Delete the Directory for Your
WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
If you delete your Simple AD or AD Connector directory, you can always
create a new one when you want to start using WorkSpaces again.


=head2 TerminateWorkspacesPool

=over

=item PoolId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspacesPool>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesPoolResult> instance

Terminates the specified pool.


=head2 TerminateWorkspacesPoolSession

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspacesPoolSession>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesPoolSessionResult> instance

Terminates the pool session.


=head2 UpdateConnectClientAddIn

=over

=item AddInId => Str

=item ResourceId => Str

=item [Name => Str]

=item [URL => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateConnectClientAddIn>

Returns: a L<Paws::WorkSpaces::UpdateConnectClientAddInResult> instance

Updates a Amazon Connect client add-in. Use this action to update the
name and endpoint URL of a Amazon Connect client add-in.


=head2 UpdateConnectionAliasPermission

=over

=item AliasId => Str

=item ConnectionAliasPermission => L<Paws::WorkSpaces::ConnectionAliasPermission>


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateConnectionAliasPermission>

Returns: a L<Paws::WorkSpaces::UpdateConnectionAliasPermissionResult> instance

Shares or unshares a connection alias with one account by specifying
whether that account has permission to associate the connection alias
with a directory. If the association permission is granted, the
connection alias is shared with that account. If the association
permission is revoked, the connection alias is unshared with the
account. For more information, see Cross-Region Redirection for Amazon
WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

=over

=item *

Before performing this operation, call DescribeConnectionAliases
(https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
to make sure that the current state of the connection alias is
C<CREATED>.

=item *

To delete a connection alias that has been shared, the shared account
must first disassociate the connection alias from any directories it
has been associated with. Then you must unshare the connection alias
from the account it has been shared with. You can delete a connection
alias only after it is no longer shared with any accounts or associated
with any directories.

=back



=head2 UpdateRulesOfIpGroup

=over

=item GroupId => Str

=item UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateRulesOfIpGroup>

Returns: a L<Paws::WorkSpaces::UpdateRulesOfIpGroupResult> instance

Replaces the current rules of the specified IP access control group
with the specified rules.


=head2 UpdateWorkspaceBundle

=over

=item [BundleId => Str]

=item [ImageId => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateWorkspaceBundle>

Returns: a L<Paws::WorkSpaces::UpdateWorkspaceBundleResult> instance

Updates a WorkSpace bundle with a new image. For more information about
updating WorkSpace bundles, see Update a Custom WorkSpaces Bundle
(https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html).

Existing WorkSpaces aren't automatically updated when you update the
bundle that they're based on. To update existing WorkSpaces that are
based on a bundle that you've updated, you must either rebuild the
WorkSpaces or delete and recreate them.


=head2 UpdateWorkspaceImagePermission

=over

=item AllowCopyImage => Bool

=item ImageId => Str

=item SharedAccountId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateWorkspaceImagePermission>

Returns: a L<Paws::WorkSpaces::UpdateWorkspaceImagePermissionResult> instance

Shares or unshares an image with one account in the same Amazon Web
Services Region by specifying whether that account has permission to
copy the image. If the copy image permission is granted, the image is
shared with that account. If the copy image permission is revoked, the
image is unshared with the account.

After an image has been shared, the recipient account can copy the
image to other Regions as needed.

In the China (Ningxia) Region, you can copy images only within the same
Region.

In Amazon Web Services GovCloud (US), to copy images to and from other
Regions, contact Amazon Web ServicesSupport.

For more information about sharing images, see Share or Unshare a
Custom WorkSpaces Image
(https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

=over

=item *

To delete an image that has been shared, you must unshare the image
before you delete it.

=item *

Sharing Bring Your Own License (BYOL) images across Amazon Web Services
accounts isn't supported at this time in Amazon Web Services GovCloud
(US). To share BYOL images across accounts in Amazon Web Services
GovCloud (US), contact Amazon Web ServicesSupport.

=back



=head2 UpdateWorkspacesPool

=over

=item PoolId => Str

=item [ApplicationSettings => L<Paws::WorkSpaces::ApplicationSettingsRequest>]

=item [BundleId => Str]

=item [Capacity => L<Paws::WorkSpaces::Capacity>]

=item [Description => Str]

=item [DirectoryId => Str]

=item [RunningMode => Str]

=item [TimeoutSettings => L<Paws::WorkSpaces::TimeoutSettings>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateWorkspacesPool>

Returns: a L<Paws::WorkSpaces::UpdateWorkspacesPoolResult> instance

Updates the specified pool.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccountModifications(sub { },[NextToken => Str])

=head2 DescribeAllAccountModifications([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountModifications, passing the object as the first parameter, and the string 'AccountModifications' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeAccountModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpGroups(sub { },[GroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpGroups([GroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Result, passing the object as the first parameter, and the string 'Result' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeIpGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaceBundles(sub { },[BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])

=head2 DescribeAllWorkspaceBundles([BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Bundles, passing the object as the first parameter, and the string 'Bundles' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaceDirectories(sub { },[DirectoryIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesFilter>], Limit => Int, NextToken => Str, WorkspaceDirectoryNames => ArrayRef[Str|Undef]])

=head2 DescribeAllWorkspaceDirectories([DirectoryIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesFilter>], Limit => Int, NextToken => Str, WorkspaceDirectoryNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Directories, passing the object as the first parameter, and the string 'Directories' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaceImages(sub { },[ImageIds => ArrayRef[Str|Undef], ImageType => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllWorkspaceImages([ImageIds => ArrayRef[Str|Undef], ImageType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaces(sub { },[BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef], WorkspaceName => Str])

=head2 DescribeAllWorkspaces([BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef], WorkspaceName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workspaces, passing the object as the first parameter, and the string 'Workspaces' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspacesConnectionStatus(sub { },[NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllWorkspacesConnectionStatus([NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WorkspacesConnectionStatus, passing the object as the first parameter, and the string 'WorkspacesConnectionStatus' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountLinks(sub { },[LinkStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllAccountLinks([LinkStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountLinks, passing the object as the first parameter, and the string 'AccountLinks' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::ListAccountLinksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAvailableManagementCidrRanges(sub { },ManagementCidrRangeConstraint => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAvailableManagementCidrRanges(ManagementCidrRangeConstraint => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ManagementCidrRanges, passing the object as the first parameter, and the string 'ManagementCidrRanges' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::ListAvailableManagementCidrRangesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

