package Paws::GuardDuty;
  use Moose;
  sub service { 'guardduty' }
  sub signing_name { 'guardduty' }
  sub version { '2017-11-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptAdministratorInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::AcceptAdministratorInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ArchiveFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ArchiveFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMalwareProtectionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateMalwareProtectionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublishingDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreatePublishingDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSampleFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateSampleFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeclineInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMalwareProtectionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteMalwareProtectionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublishingDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeletePublishingDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMalwareScans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DescribeMalwareScans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePublishingDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DescribePublishingDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisassociateFromAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisassociateFromMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisassociateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::EnableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoverageStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetCoverageStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingsStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFindingsStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvitationsCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetInvitationsCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMalwareProtectionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMalwareProtectionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMalwareScanSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMalwareScanSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMemberDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMemberDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetOrganizationStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRemainingFreeTrialDays {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetRemainingFreeTrialDays', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetUsageStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::InviteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoverage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListCoverage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMalwareProtectionPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListMalwareProtectionPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListOrganizationAdminAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublishingDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListPublishingDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThreatIntelSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListThreatIntelSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMalwareScan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::StartMalwareScan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMonitoringMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::StartMonitoringMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMonitoringMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::StopMonitoringMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnarchiveFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UnarchiveFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindingsFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateFindingsFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMalwareProtectionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateMalwareProtectionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMalwareScanSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateMalwareScanSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMemberDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateMemberDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePublishingDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdatePublishingDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllMalwareScans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMalwareScans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMalwareScans(@_, NextToken => $next_result->NextToken);
        push @{ $result->Scans }, @{ $next_result->Scans };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Scans') foreach (@{ $result->Scans });
        $result = $self->DescribeMalwareScans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Scans') foreach (@{ $result->Scans });
    }

    return undef
  }
  sub ListAllCoverage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoverage(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCoverage(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->ListCoverage(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub ListAllDetectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDetectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDetectors(@_, NextToken => $next_result->NextToken);
        push @{ $result->DetectorIds }, @{ $next_result->DetectorIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DetectorIds') foreach (@{ $result->DetectorIds });
        $result = $self->ListDetectors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DetectorIds') foreach (@{ $result->DetectorIds });
    }

    return undef
  }
  sub ListAllFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFilters(@_, NextToken => $next_result->NextToken);
        push @{ $result->FilterNames }, @{ $next_result->FilterNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FilterNames') foreach (@{ $result->FilterNames });
        $result = $self->ListFilters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FilterNames') foreach (@{ $result->FilterNames });
    }

    return undef
  }
  sub ListAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFindings(@_, NextToken => $next_result->NextToken);
        push @{ $result->FindingIds }, @{ $next_result->FindingIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FindingIds') foreach (@{ $result->FindingIds });
        $result = $self->ListFindings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FindingIds') foreach (@{ $result->FindingIds });
    }

    return undef
  }
  sub ListAllInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInvitations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Invitations }, @{ $next_result->Invitations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Invitations') foreach (@{ $result->Invitations });
        $result = $self->ListInvitations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Invitations') foreach (@{ $result->Invitations });
    }

    return undef
  }
  sub ListAllIPSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIPSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIPSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpSetIds }, @{ $next_result->IpSetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpSetIds') foreach (@{ $result->IpSetIds });
        $result = $self->ListIPSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpSetIds') foreach (@{ $result->IpSetIds });
    }

    return undef
  }
  sub ListAllMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Members }, @{ $next_result->Members };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Members') foreach (@{ $result->Members });
        $result = $self->ListMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Members') foreach (@{ $result->Members });
    }

    return undef
  }
  sub ListAllOrganizationAdminAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationAdminAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOrganizationAdminAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->AdminAccounts }, @{ $next_result->AdminAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
        $result = $self->ListOrganizationAdminAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AdminAccounts') foreach (@{ $result->AdminAccounts });
    }

    return undef
  }
  sub ListAllThreatIntelSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThreatIntelSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListThreatIntelSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ThreatIntelSetIds }, @{ $next_result->ThreatIntelSetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ThreatIntelSetIds') foreach (@{ $result->ThreatIntelSetIds });
        $result = $self->ListThreatIntelSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ThreatIntelSetIds') foreach (@{ $result->ThreatIntelSetIds });
    }

    return undef
  }


  sub operations { qw/AcceptAdministratorInvitation AcceptInvitation ArchiveFindings CreateDetector CreateFilter CreateIPSet CreateMalwareProtectionPlan CreateMembers CreatePublishingDestination CreateSampleFindings CreateThreatIntelSet DeclineInvitations DeleteDetector DeleteFilter DeleteInvitations DeleteIPSet DeleteMalwareProtectionPlan DeleteMembers DeletePublishingDestination DeleteThreatIntelSet DescribeMalwareScans DescribeOrganizationConfiguration DescribePublishingDestination DisableOrganizationAdminAccount DisassociateFromAdministratorAccount DisassociateFromMasterAccount DisassociateMembers EnableOrganizationAdminAccount GetAdministratorAccount GetCoverageStatistics GetDetector GetFilter GetFindings GetFindingsStatistics GetInvitationsCount GetIPSet GetMalwareProtectionPlan GetMalwareScanSettings GetMasterAccount GetMemberDetectors GetMembers GetOrganizationStatistics GetRemainingFreeTrialDays GetThreatIntelSet GetUsageStatistics InviteMembers ListCoverage ListDetectors ListFilters ListFindings ListInvitations ListIPSets ListMalwareProtectionPlans ListMembers ListOrganizationAdminAccounts ListPublishingDestinations ListTagsForResource ListThreatIntelSets StartMalwareScan StartMonitoringMembers StopMonitoringMembers TagResource UnarchiveFindings UntagResource UpdateDetector UpdateFilter UpdateFindingsFeedback UpdateIPSet UpdateMalwareProtectionPlan UpdateMalwareScanSettings UpdateMemberDetectors UpdateOrganizationConfiguration UpdatePublishingDestination UpdateThreatIntelSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty - Perl Interface to AWS Amazon GuardDuty

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GuardDuty');
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

Amazon GuardDuty is a continuous security monitoring service that
analyzes and processes the following foundational data sources - VPC
flow logs, Amazon Web Services CloudTrail management event logs,
CloudTrail S3 data event logs, EKS audit logs, DNS logs, Amazon EBS
volume data, runtime activity belonging to container workloads, such as
Amazon EKS, Amazon ECS (including Amazon Web Services Fargate), and
Amazon EC2 instances. It uses threat intelligence feeds, such as lists
of malicious IPs and domains, and machine learning to identify
unexpected, potentially unauthorized, and malicious activity within
your Amazon Web Services environment. This can include issues like
escalations of privileges, uses of exposed credentials, or
communication with malicious IPs, domains, or presence of malware on
your Amazon EC2 instances and container workloads. For example,
GuardDuty can detect compromised EC2 instances and container workloads
serving malware, or mining bitcoin.

GuardDuty also monitors Amazon Web Services account access behavior for
signs of compromise, such as unauthorized infrastructure deployments
like EC2 instances deployed in a Region that has never been used, or
unusual API calls like a password policy change to reduce password
strength.

GuardDuty informs you about the status of your Amazon Web Services
environment by producing security findings that you can view in the
GuardDuty console or through Amazon EventBridge. For more information,
see the I< Amazon GuardDuty User Guide
(https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html)
>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptAdministratorInvitation

=over

=item AdministratorId => Str

=item DetectorId => Str

=item InvitationId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::AcceptAdministratorInvitation>

Returns: a L<Paws::GuardDuty::AcceptAdministratorInvitationResponse> instance

Accepts the invitation to be a member account and get monitored by a
GuardDuty administrator account that sent the invitation.


=head2 AcceptInvitation

=over

=item DetectorId => Str

=item InvitationId => Str

=item MasterId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::AcceptInvitation>

Returns: a L<Paws::GuardDuty::AcceptInvitationResponse> instance

Accepts the invitation to be monitored by a GuardDuty administrator
account.


=head2 ArchiveFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ArchiveFindings>

Returns: a L<Paws::GuardDuty::ArchiveFindingsResponse> instance

Archives GuardDuty findings that are specified by the list of finding
IDs.

Only the administrator account can archive findings. Member accounts
don't have permission to archive findings from their accounts.


=head2 CreateDetector

=over

=item Enable => Bool

=item [ClientToken => Str]

=item [DataSources => L<Paws::GuardDuty::DataSourceConfigurations>]

=item [Features => ArrayRef[L<Paws::GuardDuty::DetectorFeatureConfiguration>]]

=item [FindingPublishingFrequency => Str]

=item [Tags => L<Paws::GuardDuty::TagMap>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateDetector>

Returns: a L<Paws::GuardDuty::CreateDetectorResponse> instance

Creates a single GuardDuty detector. A detector is a resource that
represents the GuardDuty service. To start using GuardDuty, you must
create a detector in each Region where you enable the service. You can
have only one detector per account per Region. All data sources are
enabled in a new detector by default.

=over

=item *

When you don't specify any C<features>, with an exception to
C<RUNTIME_MONITORING>, all the optional features are enabled by
default.

=item *

When you specify some of the C<features>, any feature that is not
specified in the API call gets enabled by default, with an exception to
C<RUNTIME_MONITORING>.

=back

Specifying both EKS Runtime Monitoring (C<EKS_RUNTIME_MONITORING>) and
Runtime Monitoring (C<RUNTIME_MONITORING>) will cause an error. You can
add only one of these two features because Runtime Monitoring already
includes the threat detection for Amazon EKS resources. For more
information, see Runtime Monitoring
(https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 CreateFilter

=over

=item DetectorId => Str

=item FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

=item Name => Str

=item [Action => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [Rank => Int]

=item [Tags => L<Paws::GuardDuty::TagMap>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateFilter>

Returns: a L<Paws::GuardDuty::CreateFilterResponse> instance

Creates a filter using the specified finding criteria. The maximum
number of saved filters per Amazon Web Services account per Region is
100. For more information, see Quotas for GuardDuty
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html).


=head2 CreateIPSet

=over

=item Activate => Bool

=item DetectorId => Str

=item Format => Str

=item Location => Str

=item Name => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::GuardDuty::TagMap>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateIPSet>

Returns: a L<Paws::GuardDuty::CreateIPSetResponse> instance

Creates a new IPSet, which is called a trusted IP list in the console
user interface. An IPSet is a list of IP addresses that are trusted for
secure communication with Amazon Web Services infrastructure and
applications. GuardDuty doesn't generate findings for IP addresses that
are included in IPSets. Only users from the administrator account can
use this operation.


=head2 CreateMalwareProtectionPlan

=over

=item ProtectedResource => L<Paws::GuardDuty::CreateProtectedResource>

=item Role => Str

=item [Actions => L<Paws::GuardDuty::MalwareProtectionPlanActions>]

=item [ClientToken => Str]

=item [Tags => L<Paws::GuardDuty::TagMap>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateMalwareProtectionPlan>

Returns: a L<Paws::GuardDuty::CreateMalwareProtectionPlanResponse> instance

Creates a new Malware Protection plan for the protected resource.

When you create a Malware Protection plan, the Amazon Web Services
service terms for GuardDuty Malware Protection apply. For more
information, see Amazon Web Services service terms for GuardDuty
Malware Protection
(http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty).


=head2 CreateMembers

=over

=item AccountDetails => ArrayRef[L<Paws::GuardDuty::AccountDetail>]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateMembers>

Returns: a L<Paws::GuardDuty::CreateMembersResponse> instance

Creates member accounts of the current Amazon Web Services account by
specifying a list of Amazon Web Services account IDs. This step is a
prerequisite for managing the associated member accounts either by
invitation or through an organization.

As a delegated administrator, using C<CreateMembers> will enable
GuardDuty in the added member accounts, with the exception of the
organization delegated administrator account. A delegated administrator
must enable GuardDuty prior to being added as a member.

When you use CreateMembers as an Organizations delegated administrator,
GuardDuty applies your organization's auto-enable settings to the
member accounts in this request, irrespective of the accounts being new
or existing members. For more information about the existing
auto-enable settings for your organization, see
DescribeOrganizationConfiguration
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html).

If you disassociate a member account that was added by invitation, the
member account details obtained from this API, including the associated
email addresses, will be retained. This is done so that the delegated
administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.

When the member accounts added through Organizations are later
disassociated, you (administrator) can't invite them by calling the
InviteMembers API. You can create an association with these member
accounts again only by calling the CreateMembers API.


=head2 CreatePublishingDestination

=over

=item DestinationProperties => L<Paws::GuardDuty::DestinationProperties>

=item DestinationType => Str

=item DetectorId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreatePublishingDestination>

Returns: a L<Paws::GuardDuty::CreatePublishingDestinationResponse> instance

Creates a publishing destination where you can export your GuardDuty
findings. Before you start exporting the findings, the destination
resource must exist.


=head2 CreateSampleFindings

=over

=item DetectorId => Str

=item [FindingTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateSampleFindings>

Returns: a L<Paws::GuardDuty::CreateSampleFindingsResponse> instance

Generates sample findings of types specified by the list of finding
types. If 'NULL' is specified for C<findingTypes>, the API generates
sample findings of all supported finding types.


=head2 CreateThreatIntelSet

=over

=item Activate => Bool

=item DetectorId => Str

=item Format => Str

=item Location => Str

=item Name => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::GuardDuty::TagMap>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateThreatIntelSet>

Returns: a L<Paws::GuardDuty::CreateThreatIntelSetResponse> instance

Creates a new ThreatIntelSet. ThreatIntelSets consist of known
malicious IP addresses. GuardDuty generates findings based on
ThreatIntelSets. Only users of the administrator account can use this
operation.


=head2 DeclineInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeclineInvitations>

Returns: a L<Paws::GuardDuty::DeclineInvitationsResponse> instance

Declines invitations sent to the current member account by Amazon Web
Services accounts specified by their account IDs.


=head2 DeleteDetector

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteDetector>

Returns: a L<Paws::GuardDuty::DeleteDetectorResponse> instance

Deletes an Amazon GuardDuty detector that is specified by the detector
ID.


=head2 DeleteFilter

=over

=item DetectorId => Str

=item FilterName => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteFilter>

Returns: a L<Paws::GuardDuty::DeleteFilterResponse> instance

Deletes the filter specified by the filter name.


=head2 DeleteInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteInvitations>

Returns: a L<Paws::GuardDuty::DeleteInvitationsResponse> instance

Deletes invitations sent to the current member account by Amazon Web
Services accounts specified by their account IDs.


=head2 DeleteIPSet

=over

=item DetectorId => Str

=item IpSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteIPSet>

Returns: a L<Paws::GuardDuty::DeleteIPSetResponse> instance

Deletes the IPSet specified by the C<ipSetId>. IPSets are called
trusted IP lists in the console user interface.


=head2 DeleteMalwareProtectionPlan

=over

=item MalwareProtectionPlanId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteMalwareProtectionPlan>

Returns: nothing

Deletes the Malware Protection plan ID associated with the Malware
Protection plan resource. Use this API only when you no longer want to
protect the resource associated with this Malware Protection plan ID.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteMembers>

Returns: a L<Paws::GuardDuty::DeleteMembersResponse> instance

Deletes GuardDuty member accounts (to the current GuardDuty
administrator account) specified by the account IDs.

With C<autoEnableOrganizationMembers> configuration for your
organization set to C<ALL>, you'll receive an error if you attempt to
disable GuardDuty for a member account in your organization.


=head2 DeletePublishingDestination

=over

=item DestinationId => Str

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeletePublishingDestination>

Returns: a L<Paws::GuardDuty::DeletePublishingDestinationResponse> instance

Deletes the publishing definition with the specified C<destinationId>.


=head2 DeleteThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteThreatIntelSet>

Returns: a L<Paws::GuardDuty::DeleteThreatIntelSetResponse> instance

Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.


=head2 DescribeMalwareScans

=over

=item DetectorId => Str

=item [FilterCriteria => L<Paws::GuardDuty::FilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::GuardDuty::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DescribeMalwareScans>

Returns: a L<Paws::GuardDuty::DescribeMalwareScansResponse> instance

Returns a list of malware scans. Each member account can view the
malware scans for their own accounts. An administrator can view the
malware scans for all the member accounts.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 DescribeOrganizationConfiguration

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DescribeOrganizationConfiguration>

Returns: a L<Paws::GuardDuty::DescribeOrganizationConfigurationResponse> instance

Returns information about the account selected as the delegated
administrator for GuardDuty.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 DescribePublishingDestination

=over

=item DestinationId => Str

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DescribePublishingDestination>

Returns: a L<Paws::GuardDuty::DescribePublishingDestinationResponse> instance

Returns information about the publishing destination specified by the
provided C<destinationId>.


=head2 DisableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisableOrganizationAdminAccount>

Returns: a L<Paws::GuardDuty::DisableOrganizationAdminAccountResponse> instance

Removes the existing GuardDuty delegated administrator of the
organization. Only the organization's management account can run this
API operation.


=head2 DisassociateFromAdministratorAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisassociateFromAdministratorAccount>

Returns: a L<Paws::GuardDuty::DisassociateFromAdministratorAccountResponse> instance

Disassociates the current GuardDuty member account from its
administrator account.

When you disassociate an invited member from a GuardDuty delegated
administrator, the member account details obtained from the
CreateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html)
API, including the associated email addresses, are retained. This is
done so that the delegated administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.

With C<autoEnableOrganizationMembers> configuration for your
organization set to C<ALL>, you'll receive an error if you attempt to
disable GuardDuty in a member account.


=head2 DisassociateFromMasterAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisassociateFromMasterAccount>

Returns: a L<Paws::GuardDuty::DisassociateFromMasterAccountResponse> instance

Disassociates the current GuardDuty member account from its
administrator account.

When you disassociate an invited member from a GuardDuty delegated
administrator, the member account details obtained from the
CreateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html)
API, including the associated email addresses, are retained. This is
done so that the delegated administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.


=head2 DisassociateMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisassociateMembers>

Returns: a L<Paws::GuardDuty::DisassociateMembersResponse> instance

Disassociates GuardDuty member accounts (from the current administrator
account) specified by the account IDs.

When you disassociate an invited member from a GuardDuty delegated
administrator, the member account details obtained from the
CreateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html)
API, including the associated email addresses, are retained. This is
done so that the delegated administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.

With C<autoEnableOrganizationMembers> configuration for your
organization set to C<ALL>, you'll receive an error if you attempt to
disassociate a member account before removing them from your
organization.

If you disassociate a member account that was added by invitation, the
member account details obtained from this API, including the associated
email addresses, will be retained. This is done so that the delegated
administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.

When the member accounts added through Organizations are later
disassociated, you (administrator) can't invite them by calling the
InviteMembers API. You can create an association with these member
accounts again only by calling the CreateMembers API.


=head2 EnableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::EnableOrganizationAdminAccount>

Returns: a L<Paws::GuardDuty::EnableOrganizationAdminAccountResponse> instance

Designates an Amazon Web Services account within the organization as
your GuardDuty delegated administrator. Only the organization's
management account can run this API operation.


=head2 GetAdministratorAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetAdministratorAccount>

Returns: a L<Paws::GuardDuty::GetAdministratorAccountResponse> instance

Provides the details of the GuardDuty administrator account associated
with the current GuardDuty member account.

If the organization's management account or a delegated administrator
runs this API, it will return success (C<HTTP 200>) but no content.


=head2 GetCoverageStatistics

=over

=item DetectorId => Str

=item StatisticsType => ArrayRef[Str|Undef]

=item [FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetCoverageStatistics>

Returns: a L<Paws::GuardDuty::GetCoverageStatisticsResponse> instance

Retrieves aggregated statistics for your account. If you are a
GuardDuty administrator, you can retrieve the statistics for all the
resources associated with the active member accounts in your
organization who have enabled Runtime Monitoring and have the GuardDuty
security agent running on their resources.


=head2 GetDetector

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetDetector>

Returns: a L<Paws::GuardDuty::GetDetectorResponse> instance

Retrieves a GuardDuty detector specified by the detectorId.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 GetFilter

=over

=item DetectorId => Str

=item FilterName => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFilter>

Returns: a L<Paws::GuardDuty::GetFilterResponse> instance

Returns the details of the filter specified by the filter name.


=head2 GetFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]

=item [SortCriteria => L<Paws::GuardDuty::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFindings>

Returns: a L<Paws::GuardDuty::GetFindingsResponse> instance

Describes Amazon GuardDuty findings specified by finding IDs.


=head2 GetFindingsStatistics

=over

=item DetectorId => Str

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]

=item [FindingStatisticTypes => ArrayRef[Str|Undef]]

=item [GroupBy => Str]

=item [MaxResults => Int]

=item [OrderBy => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFindingsStatistics>

Returns: a L<Paws::GuardDuty::GetFindingsStatisticsResponse> instance

Lists GuardDuty findings statistics for the specified detector ID.

You must provide either C<findingStatisticTypes> or C<groupBy>
parameter, and not both. You can use the C<maxResults> and C<orderBy>
parameters only when using C<groupBy>.

There might be regional differences because some flags might not be
available in all the Regions where GuardDuty is currently supported.
For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::GuardDuty::GetInvitationsCount>

Returns: a L<Paws::GuardDuty::GetInvitationsCountResponse> instance

Returns the count of all GuardDuty membership invitations that were
sent to the current member account except the currently accepted
invitation.


=head2 GetIPSet

=over

=item DetectorId => Str

=item IpSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetIPSet>

Returns: a L<Paws::GuardDuty::GetIPSetResponse> instance

Retrieves the IPSet specified by the C<ipSetId>.


=head2 GetMalwareProtectionPlan

=over

=item MalwareProtectionPlanId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMalwareProtectionPlan>

Returns: a L<Paws::GuardDuty::GetMalwareProtectionPlanResponse> instance

Retrieves the Malware Protection plan details associated with a Malware
Protection plan ID.


=head2 GetMalwareScanSettings

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMalwareScanSettings>

Returns: a L<Paws::GuardDuty::GetMalwareScanSettingsResponse> instance

Returns the details of the malware scan settings.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 GetMasterAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMasterAccount>

Returns: a L<Paws::GuardDuty::GetMasterAccountResponse> instance

Provides the details for the GuardDuty administrator account associated
with the current GuardDuty member account.


=head2 GetMemberDetectors

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMemberDetectors>

Returns: a L<Paws::GuardDuty::GetMemberDetectorsResponse> instance

Describes which data sources are enabled for the member account's
detector.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMembers>

Returns: a L<Paws::GuardDuty::GetMembersResponse> instance

Retrieves GuardDuty member accounts (of the current GuardDuty
administrator account) specified by the account IDs.


=head2 GetOrganizationStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetOrganizationStatistics>

Returns: a L<Paws::GuardDuty::GetOrganizationStatisticsResponse> instance

Retrieves how many active member accounts have each feature enabled
within GuardDuty. Only a delegated GuardDuty administrator of an
organization can run this API.

When you create a new organization, it might take up to 24 hours to
generate the statistics for the entire organization.


=head2 GetRemainingFreeTrialDays

=over

=item DetectorId => Str

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetRemainingFreeTrialDays>

Returns: a L<Paws::GuardDuty::GetRemainingFreeTrialDaysResponse> instance

Provides the number of days left for each data source used in the free
trial period.


=head2 GetThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetThreatIntelSet>

Returns: a L<Paws::GuardDuty::GetThreatIntelSetResponse> instance

Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
ID.


=head2 GetUsageStatistics

=over

=item DetectorId => Str

=item UsageCriteria => L<Paws::GuardDuty::UsageCriteria>

=item UsageStatisticType => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Unit => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetUsageStatistics>

Returns: a L<Paws::GuardDuty::GetUsageStatisticsResponse> instance

Lists Amazon GuardDuty usage statistics over the last 30 days for the
specified detector ID. For newly enabled detectors or data sources, the
cost returned will include only the usage so far under 30 days. This
may differ from the cost metrics in the console, which project usage
over 30 days to provide a monthly cost estimate. For more information,
see Understanding How Usage Costs are Calculated
(https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations).


=head2 InviteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str

=item [DisableEmailNotification => Bool]

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::InviteMembers>

Returns: a L<Paws::GuardDuty::InviteMembersResponse> instance

Invites Amazon Web Services accounts to become members of an
organization administered by the Amazon Web Services account that
invokes this API. If you are using Amazon Web Services Organizations to
manage your GuardDuty environment, this step is not needed. For more
information, see Managing accounts with organizations
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).

To invite Amazon Web Services accounts, the first step is to ensure
that GuardDuty has been enabled in the potential member accounts. You
can now invoke this API to add accounts by invitation. The invited
accounts can either accept or decline the invitation from their
GuardDuty accounts. Each invited Amazon Web Services account can choose
to accept the invitation from only one Amazon Web Services account. For
more information, see Managing GuardDuty accounts by invitation
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html).

After the invite has been accepted and you choose to disassociate a
member account (by using DisassociateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html))
from your account, the details of the member account obtained by
invoking CreateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html),
including the associated email addresses, will be retained. This is
done so that you can invoke InviteMembers without the need to invoke
CreateMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html)
again. To remove the details associated with a member account, you must
also invoke DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html).

If you disassociate a member account that was added by invitation, the
member account details obtained from this API, including the associated
email addresses, will be retained. This is done so that the delegated
administrator can invoke the InviteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
API without the need to invoke the CreateMembers API again. To remove
the details associated with a member account, the delegated
administrator must invoke the DeleteMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
API.

When the member accounts added through Organizations are later
disassociated, you (administrator) can't invite them by calling the
InviteMembers API. You can create an association with these member
accounts again only by calling the CreateMembers API.


=head2 ListCoverage

=over

=item DetectorId => Str

=item [FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::GuardDuty::CoverageSortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListCoverage>

Returns: a L<Paws::GuardDuty::ListCoverageResponse> instance

Lists coverage details for your GuardDuty account. If you're a
GuardDuty administrator, you can retrieve all resources associated with
the active member accounts in your organization.

Make sure the accounts have Runtime Monitoring enabled and GuardDuty
agent running on their resources.


=head2 ListDetectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListDetectors>

Returns: a L<Paws::GuardDuty::ListDetectorsResponse> instance

Lists detectorIds of all the existing Amazon GuardDuty detector
resources.


=head2 ListFilters

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListFilters>

Returns: a L<Paws::GuardDuty::ListFiltersResponse> instance

Returns a paginated list of the current filters.


=head2 ListFindings

=over

=item DetectorId => Str

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::GuardDuty::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListFindings>

Returns: a L<Paws::GuardDuty::ListFindingsResponse> instance

Lists GuardDuty findings for the specified detector ID.

There might be regional differences because some flags might not be
available in all the Regions where GuardDuty is currently supported.
For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListInvitations>

Returns: a L<Paws::GuardDuty::ListInvitationsResponse> instance

Lists all GuardDuty membership invitations that were sent to the
current Amazon Web Services account.


=head2 ListIPSets

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListIPSets>

Returns: a L<Paws::GuardDuty::ListIPSetsResponse> instance

Lists the IPSets of the GuardDuty service specified by the detector ID.
If you use this operation from a member account, the IPSets returned
are the IPSets from the associated administrator account.


=head2 ListMalwareProtectionPlans

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListMalwareProtectionPlans>

Returns: a L<Paws::GuardDuty::ListMalwareProtectionPlansResponse> instance

Lists the Malware Protection plan IDs associated with the protected
resources in your Amazon Web Services account.


=head2 ListMembers

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListMembers>

Returns: a L<Paws::GuardDuty::ListMembersResponse> instance

Lists details about all member accounts for the current GuardDuty
administrator account.


=head2 ListOrganizationAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListOrganizationAdminAccounts>

Returns: a L<Paws::GuardDuty::ListOrganizationAdminAccountsResponse> instance

Lists the accounts designated as GuardDuty delegated administrators.
Only the organization's management account can run this API operation.


=head2 ListPublishingDestinations

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListPublishingDestinations>

Returns: a L<Paws::GuardDuty::ListPublishingDestinationsResponse> instance

Returns a list of publishing destinations associated with the specified
C<detectorId>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListTagsForResource>

Returns: a L<Paws::GuardDuty::ListTagsForResourceResponse> instance

Lists tags for a resource. Tagging is currently supported for
detectors, finding filters, IP sets, threat intel sets, and publishing
destination, with a limit of 50 tags per resource. When invoked, this
operation returns all assigned tags for a given resource.


=head2 ListThreatIntelSets

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListThreatIntelSets>

Returns: a L<Paws::GuardDuty::ListThreatIntelSetsResponse> instance

Lists the ThreatIntelSets of the GuardDuty service specified by the
detector ID. If you use this operation from a member account, the
ThreatIntelSets associated with the administrator account are returned.


=head2 StartMalwareScan

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::StartMalwareScan>

Returns: a L<Paws::GuardDuty::StartMalwareScanResponse> instance

Initiates the malware scan. Invoking this API will automatically create
the Service-linked role
(https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html)
in the corresponding account.

When the malware scan starts, you can use the associated scan ID to
track the status of the scan. For more information, see
DescribeMalwareScans
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeMalwareScans.html).


=head2 StartMonitoringMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::StartMonitoringMembers>

Returns: a L<Paws::GuardDuty::StartMonitoringMembersResponse> instance

Turns on GuardDuty monitoring of the specified member accounts. Use
this operation to restart monitoring of accounts that you stopped
monitoring with the StopMonitoringMembers
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html)
operation.


=head2 StopMonitoringMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::StopMonitoringMembers>

Returns: a L<Paws::GuardDuty::StopMonitoringMembersResponse> instance

Stops GuardDuty monitoring for the specified member accounts. Use the
C<StartMonitoringMembers> operation to restart monitoring for those
accounts.

With C<autoEnableOrganizationMembers> configuration for your
organization set to C<ALL>, you'll receive an error if you attempt to
stop monitoring the member accounts in your organization.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::GuardDuty::TagMap>


=back

Each argument is described in detail in: L<Paws::GuardDuty::TagResource>

Returns: a L<Paws::GuardDuty::TagResourceResponse> instance

Adds tags to a resource.


=head2 UnarchiveFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UnarchiveFindings>

Returns: a L<Paws::GuardDuty::UnarchiveFindingsResponse> instance

Unarchives GuardDuty findings specified by the C<findingIds>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UntagResource>

Returns: a L<Paws::GuardDuty::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateDetector

=over

=item DetectorId => Str

=item [DataSources => L<Paws::GuardDuty::DataSourceConfigurations>]

=item [Enable => Bool]

=item [Features => ArrayRef[L<Paws::GuardDuty::DetectorFeatureConfiguration>]]

=item [FindingPublishingFrequency => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateDetector>

Returns: a L<Paws::GuardDuty::UpdateDetectorResponse> instance

Updates the GuardDuty detector specified by the detector ID.

Specifying both EKS Runtime Monitoring (C<EKS_RUNTIME_MONITORING>) and
Runtime Monitoring (C<RUNTIME_MONITORING>) will cause an error. You can
add only one of these two features because Runtime Monitoring already
includes the threat detection for Amazon EKS resources. For more
information, see Runtime Monitoring
(https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 UpdateFilter

=over

=item DetectorId => Str

=item FilterName => Str

=item [Action => Str]

=item [Description => Str]

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]

=item [Rank => Int]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateFilter>

Returns: a L<Paws::GuardDuty::UpdateFilterResponse> instance

Updates the filter specified by the filter name.


=head2 UpdateFindingsFeedback

=over

=item DetectorId => Str

=item Feedback => Str

=item FindingIds => ArrayRef[Str|Undef]

=item [Comments => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateFindingsFeedback>

Returns: a L<Paws::GuardDuty::UpdateFindingsFeedbackResponse> instance

Marks the specified GuardDuty findings as useful or not useful.


=head2 UpdateIPSet

=over

=item DetectorId => Str

=item IpSetId => Str

=item [Activate => Bool]

=item [Location => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateIPSet>

Returns: a L<Paws::GuardDuty::UpdateIPSetResponse> instance

Updates the IPSet specified by the IPSet ID.


=head2 UpdateMalwareProtectionPlan

=over

=item MalwareProtectionPlanId => Str

=item [Actions => L<Paws::GuardDuty::MalwareProtectionPlanActions>]

=item [ProtectedResource => L<Paws::GuardDuty::UpdateProtectedResource>]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateMalwareProtectionPlan>

Returns: nothing

Updates an existing Malware Protection plan resource.


=head2 UpdateMalwareScanSettings

=over

=item DetectorId => Str

=item [EbsSnapshotPreservation => Str]

=item [ScanResourceCriteria => L<Paws::GuardDuty::ScanResourceCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateMalwareScanSettings>

Returns: a L<Paws::GuardDuty::UpdateMalwareScanSettingsResponse> instance

Updates the malware scan settings.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 UpdateMemberDetectors

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str

=item [DataSources => L<Paws::GuardDuty::DataSourceConfigurations>]

=item [Features => ArrayRef[L<Paws::GuardDuty::MemberFeaturesConfiguration>]]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateMemberDetectors>

Returns: a L<Paws::GuardDuty::UpdateMemberDetectorsResponse> instance

Contains information on member accounts to be updated.

Specifying both EKS Runtime Monitoring (C<EKS_RUNTIME_MONITORING>) and
Runtime Monitoring (C<RUNTIME_MONITORING>) will cause an error. You can
add only one of these two features because Runtime Monitoring already
includes the threat detection for Amazon EKS resources. For more
information, see Runtime Monitoring
(https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 UpdateOrganizationConfiguration

=over

=item DetectorId => Str

=item [AutoEnable => Bool]

=item [AutoEnableOrganizationMembers => Str]

=item [DataSources => L<Paws::GuardDuty::OrganizationDataSourceConfigurations>]

=item [Features => ArrayRef[L<Paws::GuardDuty::OrganizationFeatureConfiguration>]]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateOrganizationConfiguration>

Returns: a L<Paws::GuardDuty::UpdateOrganizationConfigurationResponse> instance

Configures the delegated administrator account with the provided
values. You must provide a value for either
C<autoEnableOrganizationMembers> or C<autoEnable>, but not both.

Specifying both EKS Runtime Monitoring (C<EKS_RUNTIME_MONITORING>) and
Runtime Monitoring (C<RUNTIME_MONITORING>) will cause an error. You can
add only one of these two features because Runtime Monitoring already
includes the threat detection for Amazon EKS resources. For more
information, see Runtime Monitoring
(https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).


=head2 UpdatePublishingDestination

=over

=item DestinationId => Str

=item DetectorId => Str

=item [DestinationProperties => L<Paws::GuardDuty::DestinationProperties>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdatePublishingDestination>

Returns: a L<Paws::GuardDuty::UpdatePublishingDestinationResponse> instance

Updates information about the publishing destination specified by the
C<destinationId>.


=head2 UpdateThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str

=item [Activate => Bool]

=item [Location => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateThreatIntelSet>

Returns: a L<Paws::GuardDuty::UpdateThreatIntelSetResponse> instance

Updates the ThreatIntelSet specified by the ThreatIntelSet ID.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllMalwareScans(sub { },DetectorId => Str, [FilterCriteria => L<Paws::GuardDuty::FilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])

=head2 DescribeAllMalwareScans(DetectorId => Str, [FilterCriteria => L<Paws::GuardDuty::FilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Scans, passing the object as the first parameter, and the string 'Scans' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::DescribeMalwareScansResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoverage(sub { },DetectorId => Str, [FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::CoverageSortCriteria>])

=head2 ListAllCoverage(DetectorId => Str, [FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::CoverageSortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListCoverageResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDetectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDetectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DetectorIds, passing the object as the first parameter, and the string 'DetectorIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListDetectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilters(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFilters(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FilterNames, passing the object as the first parameter, and the string 'FilterNames' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },DetectorId => Str, [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])

=head2 ListAllFindings(DetectorId => Str, [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FindingIds, passing the object as the first parameter, and the string 'FindingIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvitations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInvitations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Invitations, passing the object as the first parameter, and the string 'Invitations' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIPSets(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIPSets(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpSetIds, passing the object as the first parameter, and the string 'IpSetIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListIPSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str, OnlyAssociated => Str])

=head2 ListAllMembers(DetectorId => Str, [MaxResults => Int, NextToken => Str, OnlyAssociated => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationAdminAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizationAdminAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AdminAccounts, passing the object as the first parameter, and the string 'AdminAccounts' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListOrganizationAdminAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThreatIntelSets(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThreatIntelSets(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ThreatIntelSetIds, passing the object as the first parameter, and the string 'ThreatIntelSetIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListThreatIntelSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

