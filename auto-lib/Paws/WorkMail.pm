package Paws::WorkMail;
  use Moose;
  sub service { 'workmail' }
  sub signing_name { 'workmail' }
  sub version { '2017-10-01' }
  sub target_prefix { 'WorkMailService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDelegateToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateDelegateToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateMemberToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeImpersonationRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssumeImpersonationRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CancelMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAvailabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateAvailabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdentityCenterApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateIdentityCenterApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImpersonationRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateImpersonationRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessControlRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAccessControlRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAvailabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAvailabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailMonitoringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteEmailMonitoringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityCenterApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteIdentityCenterApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityProviderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteIdentityProviderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImpersonationRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteImpersonationRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMobileDeviceAccessOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteMobileDeviceAccessOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePersonalAccessToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeletePersonalAccessToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterFromWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeregisterFromWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterMailDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeregisterMailDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEmailMonitoringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeEmailMonitoringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityProviderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeIdentityProviderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInboundDmarcSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeInboundDmarcSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDelegateFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateDelegateFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateMemberFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessControlEffect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetAccessControlEffect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetDefaultRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImpersonationRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetImpersonationRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImpersonationRoleEffect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetImpersonationRoleEffect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMailboxDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMailboxDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMailDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMailDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMobileDeviceAccessEffect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMobileDeviceAccessEffect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMobileDeviceAccessOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMobileDeviceAccessOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPersonalAccessTokenMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetPersonalAccessTokenMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessControlRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAccessControlRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailabilityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAvailabilityConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupsForEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroupsForEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImpersonationRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListImpersonationRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMailboxExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMailboxExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMailDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMailDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMobileDeviceAccessOverrides {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMobileDeviceAccessOverrides', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMobileDeviceAccessRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMobileDeviceAccessRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListOrganizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPersonalAccessTokens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListPersonalAccessTokens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceDelegates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResourceDelegates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessControlRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutAccessControlRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailMonitoringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutEmailMonitoringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIdentityProviderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutIdentityProviderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInboundDmarcSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutInboundDmarcSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMobileDeviceAccessOverride {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutMobileDeviceAccessOverride', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterMailDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::RegisterMailDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterToWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::RegisterToWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ResetPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::StartMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestAvailabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::TestAvailabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAvailabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateAvailabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDefaultMailDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateDefaultMailDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImpersonationRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateImpersonationRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMailboxQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateMailboxQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrimaryEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdatePrimaryEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllAvailabilityConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAvailabilityConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAvailabilityConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->AvailabilityConfigurations }, @{ $next_result->AvailabilityConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AvailabilityConfigurations') foreach (@{ $result->AvailabilityConfigurations });
        $result = $self->ListAvailabilityConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AvailabilityConfigurations') foreach (@{ $result->AvailabilityConfigurations });
    }

    return undef
  }
  sub ListAllGroupMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Members }, @{ $next_result->Members };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Members') foreach (@{ $result->Members });
        $result = $self->ListGroupMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Members') foreach (@{ $result->Members });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub ListAllMailboxPermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMailboxPermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMailboxPermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Permissions }, @{ $next_result->Permissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
        $result = $self->ListMailboxPermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
    }

    return undef
  }
  sub ListAllOrganizations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOrganizations(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationSummaries }, @{ $next_result->OrganizationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationSummaries') foreach (@{ $result->OrganizationSummaries });
        $result = $self->ListOrganizations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationSummaries') foreach (@{ $result->OrganizationSummaries });
    }

    return undef
  }
  sub ListAllPersonalAccessTokens {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPersonalAccessTokens(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPersonalAccessTokens(@_, NextToken => $next_result->NextToken);
        push @{ $result->PersonalAccessTokenSummaries }, @{ $next_result->PersonalAccessTokenSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PersonalAccessTokenSummaries') foreach (@{ $result->PersonalAccessTokenSummaries });
        $result = $self->ListPersonalAccessTokens(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PersonalAccessTokenSummaries') foreach (@{ $result->PersonalAccessTokenSummaries });
    }

    return undef
  }
  sub ListAllResourceDelegates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceDelegates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceDelegates(@_, NextToken => $next_result->NextToken);
        push @{ $result->Delegates }, @{ $next_result->Delegates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Delegates') foreach (@{ $result->Delegates });
        $result = $self->ListResourceDelegates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Delegates') foreach (@{ $result->Delegates });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->ListResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociateDelegateToResource AssociateMemberToGroup AssumeImpersonationRole CancelMailboxExportJob CreateAlias CreateAvailabilityConfiguration CreateGroup CreateIdentityCenterApplication CreateImpersonationRole CreateMobileDeviceAccessRule CreateOrganization CreateResource CreateUser DeleteAccessControlRule DeleteAlias DeleteAvailabilityConfiguration DeleteEmailMonitoringConfiguration DeleteGroup DeleteIdentityCenterApplication DeleteIdentityProviderConfiguration DeleteImpersonationRole DeleteMailboxPermissions DeleteMobileDeviceAccessOverride DeleteMobileDeviceAccessRule DeleteOrganization DeletePersonalAccessToken DeleteResource DeleteRetentionPolicy DeleteUser DeregisterFromWorkMail DeregisterMailDomain DescribeEmailMonitoringConfiguration DescribeEntity DescribeGroup DescribeIdentityProviderConfiguration DescribeInboundDmarcSettings DescribeMailboxExportJob DescribeOrganization DescribeResource DescribeUser DisassociateDelegateFromResource DisassociateMemberFromGroup GetAccessControlEffect GetDefaultRetentionPolicy GetImpersonationRole GetImpersonationRoleEffect GetMailboxDetails GetMailDomain GetMobileDeviceAccessEffect GetMobileDeviceAccessOverride GetPersonalAccessTokenMetadata ListAccessControlRules ListAliases ListAvailabilityConfigurations ListGroupMembers ListGroups ListGroupsForEntity ListImpersonationRoles ListMailboxExportJobs ListMailboxPermissions ListMailDomains ListMobileDeviceAccessOverrides ListMobileDeviceAccessRules ListOrganizations ListPersonalAccessTokens ListResourceDelegates ListResources ListTagsForResource ListUsers PutAccessControlRule PutEmailMonitoringConfiguration PutIdentityProviderConfiguration PutInboundDmarcSettings PutMailboxPermissions PutMobileDeviceAccessOverride PutRetentionPolicy RegisterMailDomain RegisterToWorkMail ResetPassword StartMailboxExportJob TagResource TestAvailabilityConfiguration UntagResource UpdateAvailabilityConfiguration UpdateDefaultMailDomain UpdateGroup UpdateImpersonationRole UpdateMailboxQuota UpdateMobileDeviceAccessRule UpdatePrimaryEmailAddress UpdateResource UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail - Perl Interface to AWS Amazon WorkMail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkMail');
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

WorkMail is a secure, managed business email and calendaring service
with support for existing desktop and mobile email clients. You can
access your email, contacts, and calendars using Microsoft Outlook,
your browser, or other native iOS and Android email applications. You
can integrate WorkMail with your existing corporate directory and
control both the keys that encrypt your data and the location in which
your data is stored.

The WorkMail API is designed for the following scenarios:

=over

=item *

Listing and describing organizations

=back

=over

=item *

Managing users

=back

=over

=item *

Managing groups

=back

=over

=item *

Managing resources

=back

All WorkMail API operations are Amazon-authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of AWS Identity and Access Management
users and roles to help facilitate access, trust, and permission
policies. By creating a role and allowing an IAM user to access the
WorkMail site, the IAM user gains full administrative visibility into
the entire WorkMail organization (or as set in the IAM policy). This
includes, but is not limited to, the ability to create, update, and
delete users, groups, and resources. This allows developers to perform
the scenarios listed above, as well as give users the ability to grant
access on a selective basis using the IAM model.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01>


=head1 METHODS

=head2 AssociateDelegateToResource

=over

=item EntityId => Str

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::AssociateDelegateToResource>

Returns: a L<Paws::WorkMail::AssociateDelegateToResourceResponse> instance

Adds a member (user or group) to the resource's set of delegates.


=head2 AssociateMemberToGroup

=over

=item GroupId => Str

=item MemberId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::AssociateMemberToGroup>

Returns: a L<Paws::WorkMail::AssociateMemberToGroupResponse> instance

Adds a member (user or group) to the group's set.


=head2 AssumeImpersonationRole

=over

=item ImpersonationRoleId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::AssumeImpersonationRole>

Returns: a L<Paws::WorkMail::AssumeImpersonationRoleResponse> instance

Assumes an impersonation role for the given WorkMail organization. This
method returns an authentication token you can use to make impersonated
calls.


=head2 CancelMailboxExportJob

=over

=item ClientToken => Str

=item JobId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CancelMailboxExportJob>

Returns: a L<Paws::WorkMail::CancelMailboxExportJobResponse> instance

Cancels a mailbox export job.

If the mailbox export job is near completion, it might not be possible
to cancel it.


=head2 CreateAlias

=over

=item Alias => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateAlias>

Returns: a L<Paws::WorkMail::CreateAliasResponse> instance

Adds an alias to the set of a given member (user or group) of WorkMail.


=head2 CreateAvailabilityConfiguration

=over

=item DomainName => Str

=item OrganizationId => Str

=item [ClientToken => Str]

=item [EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>]

=item [LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateAvailabilityConfiguration>

Returns: a L<Paws::WorkMail::CreateAvailabilityConfigurationResponse> instance

Creates an C<AvailabilityConfiguration> for the given WorkMail
organization and domain.


=head2 CreateGroup

=over

=item Name => Str

=item OrganizationId => Str

=item [HiddenFromGlobalAddressList => Bool]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateGroup>

Returns: a L<Paws::WorkMail::CreateGroupResponse> instance

Creates a group that can be used in WorkMail by calling the
RegisterToWorkMail operation.


=head2 CreateIdentityCenterApplication

=over

=item InstanceArn => Str

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateIdentityCenterApplication>

Returns: a L<Paws::WorkMail::CreateIdentityCenterApplicationResponse> instance

Creates the WorkMail application in IAM Identity Center that can be
used later in the WorkMail - IdC integration. For more information, see
PutIdentityProviderConfiguration. This action does not affect the
authentication settings for any WorkMail organizations.


=head2 CreateImpersonationRole

=over

=item Name => Str

=item OrganizationId => Str

=item Rules => ArrayRef[L<Paws::WorkMail::ImpersonationRule>]

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateImpersonationRole>

Returns: a L<Paws::WorkMail::CreateImpersonationRoleResponse> instance

Creates an impersonation role for the given WorkMail organization.

I<Idempotency> ensures that an API request completes no more than one
time. With an idempotent request, if the original request completes
successfully, any subsequent retries also complete successfully without
performing any further actions.


=head2 CreateMobileDeviceAccessRule

=over

=item Effect => Str

=item Name => Str

=item OrganizationId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DeviceModels => ArrayRef[Str|Undef]]

=item [DeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [DeviceTypes => ArrayRef[Str|Undef]]

=item [DeviceUserAgents => ArrayRef[Str|Undef]]

=item [NotDeviceModels => ArrayRef[Str|Undef]]

=item [NotDeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [NotDeviceTypes => ArrayRef[Str|Undef]]

=item [NotDeviceUserAgents => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::CreateMobileDeviceAccessRuleResponse> instance

Creates a new mobile device access rule for the specified WorkMail
organization.


=head2 CreateOrganization

=over

=item Alias => Str

=item [ClientToken => Str]

=item [DirectoryId => Str]

=item [Domains => ArrayRef[L<Paws::WorkMail::Domain>]]

=item [EnableInteroperability => Bool]

=item [KmsKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateOrganization>

Returns: a L<Paws::WorkMail::CreateOrganizationResponse> instance

Creates a new WorkMail organization. Optionally, you can choose to
associate an existing AWS Directory Service directory with your
organization. If an AWS Directory Service directory ID is specified,
the organization alias must match the directory alias. If you choose
not to associate an existing directory with your organization, then we
create a new WorkMail directory for you. For more information, see
Adding an organization
(https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html)
in the I<WorkMail Administrator Guide>.

You can associate multiple email domains with an organization, then
choose your default email domain from the WorkMail console. You can
also associate a domain that is managed in an Amazon Route 53 public
hosted zone. For more information, see Adding a domain
(https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html)
and Choosing the default domain
(https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html)
in the I<WorkMail Administrator Guide>.

Optionally, you can use a customer managed key from AWS Key Management
Service (AWS KMS) to encrypt email for your organization. If you don't
associate an AWS KMS key, WorkMail creates a default, AWS managed key
for you.


=head2 CreateResource

=over

=item Name => Str

=item OrganizationId => Str

=item Type => Str

=item [Description => Str]

=item [HiddenFromGlobalAddressList => Bool]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateResource>

Returns: a L<Paws::WorkMail::CreateResourceResponse> instance

Creates a new WorkMail resource.


=head2 CreateUser

=over

=item DisplayName => Str

=item Name => Str

=item OrganizationId => Str

=item [FirstName => Str]

=item [HiddenFromGlobalAddressList => Bool]

=item [IdentityProviderUserId => Str]

=item [LastName => Str]

=item [Password => Str]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateUser>

Returns: a L<Paws::WorkMail::CreateUserResponse> instance

Creates a user who can be used in WorkMail by calling the
RegisterToWorkMail operation.


=head2 DeleteAccessControlRule

=over

=item Name => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteAccessControlRule>

Returns: a L<Paws::WorkMail::DeleteAccessControlRuleResponse> instance

Deletes an access control rule for the specified WorkMail organization.

Deleting already deleted and non-existing rules does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.


=head2 DeleteAlias

=over

=item Alias => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteAlias>

Returns: a L<Paws::WorkMail::DeleteAliasResponse> instance

Remove one or more specified aliases from a set of aliases for a given
user.


=head2 DeleteAvailabilityConfiguration

=over

=item DomainName => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteAvailabilityConfiguration>

Returns: a L<Paws::WorkMail::DeleteAvailabilityConfigurationResponse> instance

Deletes the C<AvailabilityConfiguration> for the given WorkMail
organization and domain.


=head2 DeleteEmailMonitoringConfiguration

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteEmailMonitoringConfiguration>

Returns: a L<Paws::WorkMail::DeleteEmailMonitoringConfigurationResponse> instance

Deletes the email monitoring configuration for a specified
organization.


=head2 DeleteGroup

=over

=item GroupId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteGroup>

Returns: a L<Paws::WorkMail::DeleteGroupResponse> instance

Deletes a group from WorkMail.


=head2 DeleteIdentityCenterApplication

=over

=item ApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteIdentityCenterApplication>

Returns: a L<Paws::WorkMail::DeleteIdentityCenterApplicationResponse> instance

Deletes the IAM Identity Center application from WorkMail. This action
does not affect the authentication settings for any WorkMail
organizations.


=head2 DeleteIdentityProviderConfiguration

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteIdentityProviderConfiguration>

Returns: a L<Paws::WorkMail::DeleteIdentityProviderConfigurationResponse> instance

Disables the integration between IdC and WorkMail. Authentication will
continue with the directory as it was before the IdC integration. You
might have to reset your directory passwords and reconfigure your
desktop and mobile email clients.


=head2 DeleteImpersonationRole

=over

=item ImpersonationRoleId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteImpersonationRole>

Returns: a L<Paws::WorkMail::DeleteImpersonationRoleResponse> instance

Deletes an impersonation role for the given WorkMail organization.


=head2 DeleteMailboxPermissions

=over

=item EntityId => Str

=item GranteeId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteMailboxPermissions>

Returns: a L<Paws::WorkMail::DeleteMailboxPermissionsResponse> instance

Deletes permissions granted to a member (user or group).


=head2 DeleteMobileDeviceAccessOverride

=over

=item DeviceId => Str

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteMobileDeviceAccessOverride>

Returns: a L<Paws::WorkMail::DeleteMobileDeviceAccessOverrideResponse> instance

Deletes the mobile device access override for the given WorkMail
organization, user, and device.

Deleting already deleted and non-existing overrides does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.


=head2 DeleteMobileDeviceAccessRule

=over

=item MobileDeviceAccessRuleId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::DeleteMobileDeviceAccessRuleResponse> instance

Deletes a mobile device access rule for the specified WorkMail
organization.

Deleting already deleted and non-existing rules does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.


=head2 DeleteOrganization

=over

=item DeleteDirectory => Bool

=item OrganizationId => Str

=item [ClientToken => Str]

=item [DeleteIdentityCenterApplication => Bool]

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteOrganization>

Returns: a L<Paws::WorkMail::DeleteOrganizationResponse> instance

Deletes an WorkMail organization and all underlying AWS resources
managed by WorkMail as part of the organization. You can choose whether
to delete the associated directory. For more information, see Removing
an organization
(https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html)
in the I<WorkMail Administrator Guide>.


=head2 DeletePersonalAccessToken

=over

=item OrganizationId => Str

=item PersonalAccessTokenId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeletePersonalAccessToken>

Returns: a L<Paws::WorkMail::DeletePersonalAccessTokenResponse> instance

Deletes the Personal Access Token from the provided WorkMail
Organization.


=head2 DeleteResource

=over

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteResource>

Returns: a L<Paws::WorkMail::DeleteResourceResponse> instance

Deletes the specified resource.


=head2 DeleteRetentionPolicy

=over

=item Id => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteRetentionPolicy>

Returns: a L<Paws::WorkMail::DeleteRetentionPolicyResponse> instance

Deletes the specified retention policy from the specified organization.


=head2 DeleteUser

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteUser>

Returns: a L<Paws::WorkMail::DeleteUserResponse> instance

Deletes a user from WorkMail and all subsequent systems. Before you can
delete a user, the user state must be C<DISABLED>. Use the DescribeUser
action to confirm the user state.

Deleting a user is permanent and cannot be undone. WorkMail archives
user mailboxes for 30 days before they are permanently removed.


=head2 DeregisterFromWorkMail

=over

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeregisterFromWorkMail>

Returns: a L<Paws::WorkMail::DeregisterFromWorkMailResponse> instance

Mark a user, group, or resource as no longer used in WorkMail. This
action disassociates the mailbox and schedules it for clean-up.
WorkMail keeps mailboxes for 30 days before they are permanently
removed. The functionality in the console is I<Disable>.


=head2 DeregisterMailDomain

=over

=item DomainName => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeregisterMailDomain>

Returns: a L<Paws::WorkMail::DeregisterMailDomainResponse> instance

Removes a domain from WorkMail, stops email routing to WorkMail, and
removes the authorization allowing WorkMail use. SES keeps the domain
because other applications may use it. You must first remove any email
address used by WorkMail entities before you remove the domain.


=head2 DescribeEmailMonitoringConfiguration

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeEmailMonitoringConfiguration>

Returns: a L<Paws::WorkMail::DescribeEmailMonitoringConfigurationResponse> instance

Describes the current email monitoring configuration for a specified
organization.


=head2 DescribeEntity

=over

=item Email => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeEntity>

Returns: a L<Paws::WorkMail::DescribeEntityResponse> instance

Returns basic details about an entity in WorkMail.


=head2 DescribeGroup

=over

=item GroupId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeGroup>

Returns: a L<Paws::WorkMail::DescribeGroupResponse> instance

Returns the data available for the group.


=head2 DescribeIdentityProviderConfiguration

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeIdentityProviderConfiguration>

Returns: a L<Paws::WorkMail::DescribeIdentityProviderConfigurationResponse> instance

Returns detailed information on the current IdC setup for the WorkMail
organization.


=head2 DescribeInboundDmarcSettings

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeInboundDmarcSettings>

Returns: a L<Paws::WorkMail::DescribeInboundDmarcSettingsResponse> instance

Lists the settings in a DMARC policy for a specified organization.


=head2 DescribeMailboxExportJob

=over

=item JobId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeMailboxExportJob>

Returns: a L<Paws::WorkMail::DescribeMailboxExportJobResponse> instance

Describes the current status of a mailbox export job.


=head2 DescribeOrganization

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeOrganization>

Returns: a L<Paws::WorkMail::DescribeOrganizationResponse> instance

Provides more information regarding a given organization based on its
identifier.


=head2 DescribeResource

=over

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeResource>

Returns: a L<Paws::WorkMail::DescribeResourceResponse> instance

Returns the data available for the resource.


=head2 DescribeUser

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeUser>

Returns: a L<Paws::WorkMail::DescribeUserResponse> instance

Provides information regarding the user.


=head2 DisassociateDelegateFromResource

=over

=item EntityId => Str

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DisassociateDelegateFromResource>

Returns: a L<Paws::WorkMail::DisassociateDelegateFromResourceResponse> instance

Removes a member from the resource's set of delegates.


=head2 DisassociateMemberFromGroup

=over

=item GroupId => Str

=item MemberId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DisassociateMemberFromGroup>

Returns: a L<Paws::WorkMail::DisassociateMemberFromGroupResponse> instance

Removes a member from a group.


=head2 GetAccessControlEffect

=over

=item Action => Str

=item IpAddress => Str

=item OrganizationId => Str

=item [ImpersonationRoleId => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::GetAccessControlEffect>

Returns: a L<Paws::WorkMail::GetAccessControlEffectResponse> instance

Gets the effects of an organization's access control rules as they
apply to a specified IPv4 address, access protocol action, and user ID
or impersonation role ID. You must provide either the user ID or
impersonation role ID. Impersonation role ID can only be used with
Action EWS.


=head2 GetDefaultRetentionPolicy

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetDefaultRetentionPolicy>

Returns: a L<Paws::WorkMail::GetDefaultRetentionPolicyResponse> instance

Gets the default retention policy details for the specified
organization.


=head2 GetImpersonationRole

=over

=item ImpersonationRoleId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetImpersonationRole>

Returns: a L<Paws::WorkMail::GetImpersonationRoleResponse> instance

Gets the impersonation role details for the given WorkMail
organization.


=head2 GetImpersonationRoleEffect

=over

=item ImpersonationRoleId => Str

=item OrganizationId => Str

=item TargetUser => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetImpersonationRoleEffect>

Returns: a L<Paws::WorkMail::GetImpersonationRoleEffectResponse> instance

Tests whether the given impersonation role can impersonate a target
user.


=head2 GetMailboxDetails

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMailboxDetails>

Returns: a L<Paws::WorkMail::GetMailboxDetailsResponse> instance

Requests a user's mailbox details for a specified organization and
user.


=head2 GetMailDomain

=over

=item DomainName => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMailDomain>

Returns: a L<Paws::WorkMail::GetMailDomainResponse> instance

Gets details for a mail domain, including domain records required to
configure your domain with recommended security.


=head2 GetMobileDeviceAccessEffect

=over

=item OrganizationId => Str

=item [DeviceModel => Str]

=item [DeviceOperatingSystem => Str]

=item [DeviceType => Str]

=item [DeviceUserAgent => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMobileDeviceAccessEffect>

Returns: a L<Paws::WorkMail::GetMobileDeviceAccessEffectResponse> instance

Simulates the effect of the mobile device access rules for the given
attributes of a sample access event. Use this method to test the
effects of the current set of mobile device access rules for the
WorkMail organization for a particular user's attributes.


=head2 GetMobileDeviceAccessOverride

=over

=item DeviceId => Str

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMobileDeviceAccessOverride>

Returns: a L<Paws::WorkMail::GetMobileDeviceAccessOverrideResponse> instance

Gets the mobile device access override for the given WorkMail
organization, user, and device.


=head2 GetPersonalAccessTokenMetadata

=over

=item OrganizationId => Str

=item PersonalAccessTokenId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetPersonalAccessTokenMetadata>

Returns: a L<Paws::WorkMail::GetPersonalAccessTokenMetadataResponse> instance

Requests details of a specific Personal Access Token within the
WorkMail organization.


=head2 ListAccessControlRules

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListAccessControlRules>

Returns: a L<Paws::WorkMail::ListAccessControlRulesResponse> instance

Lists the access control rules for the specified organization.


=head2 ListAliases

=over

=item EntityId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListAliases>

Returns: a L<Paws::WorkMail::ListAliasesResponse> instance

Creates a paginated call to list the aliases associated with a given
entity.


=head2 ListAvailabilityConfigurations

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListAvailabilityConfigurations>

Returns: a L<Paws::WorkMail::ListAvailabilityConfigurationsResponse> instance

List all the C<AvailabilityConfiguration>'s for the given WorkMail
organization.


=head2 ListGroupMembers

=over

=item GroupId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListGroupMembers>

Returns: a L<Paws::WorkMail::ListGroupMembersResponse> instance

Returns an overview of the members of a group. Users and groups can be
members of a group.


=head2 ListGroups

=over

=item OrganizationId => Str

=item [Filters => L<Paws::WorkMail::ListGroupsFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListGroups>

Returns: a L<Paws::WorkMail::ListGroupsResponse> instance

Returns summaries of the organization's groups.


=head2 ListGroupsForEntity

=over

=item EntityId => Str

=item OrganizationId => Str

=item [Filters => L<Paws::WorkMail::ListGroupsForEntityFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListGroupsForEntity>

Returns: a L<Paws::WorkMail::ListGroupsForEntityResponse> instance

Returns all the groups to which an entity belongs.


=head2 ListImpersonationRoles

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListImpersonationRoles>

Returns: a L<Paws::WorkMail::ListImpersonationRolesResponse> instance

Lists all the impersonation roles for the given WorkMail organization.


=head2 ListMailboxExportJobs

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMailboxExportJobs>

Returns: a L<Paws::WorkMail::ListMailboxExportJobsResponse> instance

Lists the mailbox export jobs started for the specified organization
within the last seven days.


=head2 ListMailboxPermissions

=over

=item EntityId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMailboxPermissions>

Returns: a L<Paws::WorkMail::ListMailboxPermissionsResponse> instance

Lists the mailbox permissions associated with a user, group, or
resource mailbox.


=head2 ListMailDomains

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMailDomains>

Returns: a L<Paws::WorkMail::ListMailDomainsResponse> instance

Lists the mail domains in a given WorkMail organization.


=head2 ListMobileDeviceAccessOverrides

=over

=item OrganizationId => Str

=item [DeviceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMobileDeviceAccessOverrides>

Returns: a L<Paws::WorkMail::ListMobileDeviceAccessOverridesResponse> instance

Lists all the mobile device access overrides for any given combination
of WorkMail organization, user, or device.


=head2 ListMobileDeviceAccessRules

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMobileDeviceAccessRules>

Returns: a L<Paws::WorkMail::ListMobileDeviceAccessRulesResponse> instance

Lists the mobile device access rules for the specified WorkMail
organization.


=head2 ListOrganizations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListOrganizations>

Returns: a L<Paws::WorkMail::ListOrganizationsResponse> instance

Returns summaries of the customer's organizations.


=head2 ListPersonalAccessTokens

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListPersonalAccessTokens>

Returns: a L<Paws::WorkMail::ListPersonalAccessTokensResponse> instance

Returns a summary of your Personal Access Tokens.


=head2 ListResourceDelegates

=over

=item OrganizationId => Str

=item ResourceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListResourceDelegates>

Returns: a L<Paws::WorkMail::ListResourceDelegatesResponse> instance

Lists the delegates associated with a resource. Users and groups can be
resource delegates and answer requests on behalf of the resource.


=head2 ListResources

=over

=item OrganizationId => Str

=item [Filters => L<Paws::WorkMail::ListResourcesFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListResources>

Returns: a L<Paws::WorkMail::ListResourcesResponse> instance

Returns summaries of the organization's resources.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListTagsForResource>

Returns: a L<Paws::WorkMail::ListTagsForResourceResponse> instance

Lists the tags applied to an WorkMail organization resource.


=head2 ListUsers

=over

=item OrganizationId => Str

=item [Filters => L<Paws::WorkMail::ListUsersFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListUsers>

Returns: a L<Paws::WorkMail::ListUsersResponse> instance

Returns summaries of the organization's users.


=head2 PutAccessControlRule

=over

=item Description => Str

=item Effect => Str

=item Name => Str

=item OrganizationId => Str

=item [Actions => ArrayRef[Str|Undef]]

=item [ImpersonationRoleIds => ArrayRef[Str|Undef]]

=item [IpRanges => ArrayRef[Str|Undef]]

=item [NotActions => ArrayRef[Str|Undef]]

=item [NotImpersonationRoleIds => ArrayRef[Str|Undef]]

=item [NotIpRanges => ArrayRef[Str|Undef]]

=item [NotUserIds => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutAccessControlRule>

Returns: a L<Paws::WorkMail::PutAccessControlRuleResponse> instance

Adds a new access control rule for the specified organization. The rule
allows or denies access to the organization for the specified IPv4
addresses, access protocol actions, user IDs and impersonation IDs.
Adding a new rule with the same name as an existing rule replaces the
older rule.


=head2 PutEmailMonitoringConfiguration

=over

=item LogGroupArn => Str

=item OrganizationId => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::PutEmailMonitoringConfiguration>

Returns: a L<Paws::WorkMail::PutEmailMonitoringConfigurationResponse> instance

Creates or updates the email monitoring configuration for a specified
organization.


=head2 PutIdentityProviderConfiguration

=over

=item AuthenticationMode => Str

=item IdentityCenterConfiguration => L<Paws::WorkMail::IdentityCenterConfiguration>

=item OrganizationId => Str

=item PersonalAccessTokenConfiguration => L<Paws::WorkMail::PersonalAccessTokenConfiguration>


=back

Each argument is described in detail in: L<Paws::WorkMail::PutIdentityProviderConfiguration>

Returns: a L<Paws::WorkMail::PutIdentityProviderConfigurationResponse> instance

Enables integration between IAM Identity Center (IdC) and WorkMail to
proxy authentication requests for mailbox users. You can connect your
IdC directory or your external directory to WorkMail through IdC and
manage access to WorkMail mailboxes in a single place. For enhanced
protection, you could enable Multifactor Authentication (MFA) and
Personal Access Tokens.


=head2 PutInboundDmarcSettings

=over

=item Enforced => Bool

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::PutInboundDmarcSettings>

Returns: a L<Paws::WorkMail::PutInboundDmarcSettingsResponse> instance

Enables or disables a DMARC policy for a given organization.


=head2 PutMailboxPermissions

=over

=item EntityId => Str

=item GranteeId => Str

=item OrganizationId => Str

=item PermissionValues => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutMailboxPermissions>

Returns: a L<Paws::WorkMail::PutMailboxPermissionsResponse> instance

Sets permissions for a user, group, or resource. This replaces any
pre-existing permissions.


=head2 PutMobileDeviceAccessOverride

=over

=item DeviceId => Str

=item Effect => Str

=item OrganizationId => Str

=item UserId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutMobileDeviceAccessOverride>

Returns: a L<Paws::WorkMail::PutMobileDeviceAccessOverrideResponse> instance

Creates or updates a mobile device access override for the given
WorkMail organization, user, and device.


=head2 PutRetentionPolicy

=over

=item FolderConfigurations => ArrayRef[L<Paws::WorkMail::FolderConfiguration>]

=item Name => Str

=item OrganizationId => Str

=item [Description => Str]

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutRetentionPolicy>

Returns: a L<Paws::WorkMail::PutRetentionPolicyResponse> instance

Puts a retention policy to the specified organization.


=head2 RegisterMailDomain

=over

=item DomainName => Str

=item OrganizationId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::RegisterMailDomain>

Returns: a L<Paws::WorkMail::RegisterMailDomainResponse> instance

Registers a new domain in WorkMail and SES, and configures it for use
by WorkMail. Emails received by SES for this domain are routed to the
specified WorkMail organization, and WorkMail has permanent permission
to use the specified domain for sending your users' emails.


=head2 RegisterToWorkMail

=over

=item Email => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::RegisterToWorkMail>

Returns: a L<Paws::WorkMail::RegisterToWorkMailResponse> instance

Registers an existing and disabled user, group, or resource for
WorkMail use by associating a mailbox and calendaring capabilities. It
performs no change if the user, group, or resource is enabled and fails
if the user, group, or resource is deleted. This operation results in
the accumulation of costs. For more information, see Pricing
(https://aws.amazon.com/workmail/pricing). The equivalent console
functionality for this operation is I<Enable>.

Users can either be created by calling the CreateUser API operation or
they can be synchronized from your directory. For more information, see
DeregisterFromWorkMail.


=head2 ResetPassword

=over

=item OrganizationId => Str

=item Password => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ResetPassword>

Returns: a L<Paws::WorkMail::ResetPasswordResponse> instance

Allows the administrator to reset the password for a user.


=head2 StartMailboxExportJob

=over

=item ClientToken => Str

=item EntityId => Str

=item KmsKeyArn => Str

=item OrganizationId => Str

=item RoleArn => Str

=item S3BucketName => Str

=item S3Prefix => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::StartMailboxExportJob>

Returns: a L<Paws::WorkMail::StartMailboxExportJobResponse> instance

Starts a mailbox export job to export MIME-format email messages and
calendar items from the specified mailbox to the specified Amazon
Simple Storage Service (Amazon S3) bucket. For more information, see
Exporting mailbox content
(https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
in the I<WorkMail Administrator Guide>.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::WorkMail::Tag>]


=back

Each argument is described in detail in: L<Paws::WorkMail::TagResource>

Returns: a L<Paws::WorkMail::TagResourceResponse> instance

Applies the specified tags to the specified WorkMailorganization
resource.


=head2 TestAvailabilityConfiguration

=over

=item OrganizationId => Str

=item [DomainName => Str]

=item [EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>]

=item [LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>]


=back

Each argument is described in detail in: L<Paws::WorkMail::TestAvailabilityConfiguration>

Returns: a L<Paws::WorkMail::TestAvailabilityConfigurationResponse> instance

Performs a test on an availability provider to ensure that access is
allowed. For EWS, it verifies the provided credentials can be used to
successfully log in. For Lambda, it verifies that the Lambda function
can be invoked and that the resource access policy was configured to
deny anonymous access. An anonymous invocation is one done without
providing either a C<SourceArn> or C<SourceAccount> header.

The request must contain either one provider definition (C<EwsProvider>
or C<LambdaProvider>) or the C<DomainName> parameter. If the
C<DomainName> parameter is provided, the configuration stored under the
C<DomainName> will be tested.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkMail::UntagResource>

Returns: a L<Paws::WorkMail::UntagResourceResponse> instance

Untags the specified tags from the specified WorkMail organization
resource.


=head2 UpdateAvailabilityConfiguration

=over

=item DomainName => Str

=item OrganizationId => Str

=item [EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>]

=item [LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateAvailabilityConfiguration>

Returns: a L<Paws::WorkMail::UpdateAvailabilityConfigurationResponse> instance

Updates an existing C<AvailabilityConfiguration> for the given WorkMail
organization and domain.


=head2 UpdateDefaultMailDomain

=over

=item DomainName => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateDefaultMailDomain>

Returns: a L<Paws::WorkMail::UpdateDefaultMailDomainResponse> instance

Updates the default mail domain for an organization. The default mail
domain is used by the WorkMail AWS Console to suggest an email address
when enabling a mail user. You can only have one default domain.


=head2 UpdateGroup

=over

=item GroupId => Str

=item OrganizationId => Str

=item [HiddenFromGlobalAddressList => Bool]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateGroup>

Returns: a L<Paws::WorkMail::UpdateGroupResponse> instance

Updates attributes in a group.


=head2 UpdateImpersonationRole

=over

=item ImpersonationRoleId => Str

=item Name => Str

=item OrganizationId => Str

=item Rules => ArrayRef[L<Paws::WorkMail::ImpersonationRule>]

=item Type => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateImpersonationRole>

Returns: a L<Paws::WorkMail::UpdateImpersonationRoleResponse> instance

Updates an impersonation role for the given WorkMail organization.


=head2 UpdateMailboxQuota

=over

=item MailboxQuota => Int

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateMailboxQuota>

Returns: a L<Paws::WorkMail::UpdateMailboxQuotaResponse> instance

Updates a user's current mailbox quota for a specified organization and
user.


=head2 UpdateMobileDeviceAccessRule

=over

=item Effect => Str

=item MobileDeviceAccessRuleId => Str

=item Name => Str

=item OrganizationId => Str

=item [Description => Str]

=item [DeviceModels => ArrayRef[Str|Undef]]

=item [DeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [DeviceTypes => ArrayRef[Str|Undef]]

=item [DeviceUserAgents => ArrayRef[Str|Undef]]

=item [NotDeviceModels => ArrayRef[Str|Undef]]

=item [NotDeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [NotDeviceTypes => ArrayRef[Str|Undef]]

=item [NotDeviceUserAgents => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::UpdateMobileDeviceAccessRuleResponse> instance

Updates a mobile device access rule for the specified WorkMail
organization.


=head2 UpdatePrimaryEmailAddress

=over

=item Email => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdatePrimaryEmailAddress>

Returns: a L<Paws::WorkMail::UpdatePrimaryEmailAddressResponse> instance

Updates the primary email for a user, group, or resource. The current
email is moved into the list of aliases (or swapped between an existing
alias and the current primary email), and the email provided in the
input is promoted as the primary.


=head2 UpdateResource

=over

=item OrganizationId => Str

=item ResourceId => Str

=item [BookingOptions => L<Paws::WorkMail::BookingOptions>]

=item [Description => Str]

=item [HiddenFromGlobalAddressList => Bool]

=item [Name => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateResource>

Returns: a L<Paws::WorkMail::UpdateResourceResponse> instance

Updates data for the resource. To have the latest information, it must
be preceded by a DescribeResource call. The dataset in the request
should be the one expected when performing another C<DescribeResource>
call.


=head2 UpdateUser

=over

=item OrganizationId => Str

=item UserId => Str

=item [City => Str]

=item [Company => Str]

=item [Country => Str]

=item [Department => Str]

=item [DisplayName => Str]

=item [FirstName => Str]

=item [HiddenFromGlobalAddressList => Bool]

=item [IdentityProviderUserId => Str]

=item [Initials => Str]

=item [JobTitle => Str]

=item [LastName => Str]

=item [Office => Str]

=item [Role => Str]

=item [Street => Str]

=item [Telephone => Str]

=item [ZipCode => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateUser>

Returns: a L<Paws::WorkMail::UpdateUserResponse> instance

Updates data for the user. To have the latest information, it must be
preceded by a DescribeUser call. The dataset in the request should be
the one expected when performing another C<DescribeUser> call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAliases(EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAvailabilityConfigurations(sub { },OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAvailabilityConfigurations(OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AvailabilityConfigurations, passing the object as the first parameter, and the string 'AvailabilityConfigurations' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListAvailabilityConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroupMembers(sub { },GroupId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllGroupMembers(GroupId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListGroupMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },OrganizationId => Str, [Filters => L<Paws::WorkMail::ListGroupsFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllGroups(OrganizationId => Str, [Filters => L<Paws::WorkMail::ListGroupsFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMailboxPermissions(sub { },EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMailboxPermissions(EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Permissions, passing the object as the first parameter, and the string 'Permissions' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListMailboxPermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationSummaries, passing the object as the first parameter, and the string 'OrganizationSummaries' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListOrganizationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPersonalAccessTokens(sub { },OrganizationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])

=head2 ListAllPersonalAccessTokens(OrganizationId => Str, [MaxResults => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PersonalAccessTokenSummaries, passing the object as the first parameter, and the string 'PersonalAccessTokenSummaries' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListPersonalAccessTokensResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceDelegates(sub { },OrganizationId => Str, ResourceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResourceDelegates(OrganizationId => Str, ResourceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Delegates, passing the object as the first parameter, and the string 'Delegates' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListResourceDelegatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },OrganizationId => Str, [Filters => L<Paws::WorkMail::ListResourcesFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllResources(OrganizationId => Str, [Filters => L<Paws::WorkMail::ListResourcesFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },OrganizationId => Str, [Filters => L<Paws::WorkMail::ListUsersFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(OrganizationId => Str, [Filters => L<Paws::WorkMail::ListUsersFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

