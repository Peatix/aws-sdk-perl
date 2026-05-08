package Paws::Inspector2;
  use Moose;
  sub service { 'inspector2' }
  sub signing_name { 'inspector2' }
  sub version { '2020-06-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::AssociateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchGetAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCodeSnippet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchGetCodeSnippet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetFindingDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchGetFindingDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetFreeTrialInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchGetFreeTrialInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetMemberEc2DeepInspectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchGetMemberEc2DeepInspectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateMemberEc2DeepInspectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelFindingsReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CancelFindingsReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSbomExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CancelSbomExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCisScanConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CreateCisScanConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CreateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFindingsReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CreateFindingsReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSbomExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::CreateSbomExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCisScanConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::DeleteCisScanConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::DeleteFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Disable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::Disable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDelegatedAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::DisableDelegatedAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::DisassociateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Enable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::Enable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDelegatedAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::EnableDelegatedAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCisScanReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetCisScanReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCisScanResultDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetCisScanResultDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDelegatedAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetDelegatedAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEc2DeepInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetEc2DeepInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingsReportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetFindingsReportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSbomExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::GetSbomExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListAccountPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCisScanConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCisScanConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCisScanResultsAggregatedByChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCisScanResultsAggregatedByChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCisScanResultsAggregatedByTargetResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCisScanResultsAggregatedByTargetResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCisScans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCisScans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoverage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCoverage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoverageStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListCoverageStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDelegatedAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListDelegatedAdminAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindingAggregations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListFindingAggregations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsageTotals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ListUsageTotals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::ResetEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchVulnerabilities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::SearchVulnerabilities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendCisSessionHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::SendCisSessionHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendCisSessionTelemetry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::SendCisSessionTelemetry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCisSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::StartCisSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCisSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::StopCisSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCisScanConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateCisScanConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEc2DeepInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateEc2DeepInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEncryptionKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateEncryptionKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrgEc2DeepInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Inspector2::UpdateOrgEc2DeepInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllCisScanResultDetails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCisScanResultDetails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetCisScanResultDetails(@_, nextToken => $next_result->nextToken);
        push @{ $result->scanResultDetails }, @{ $next_result->scanResultDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scanResultDetails') foreach (@{ $result->scanResultDetails });
        $result = $self->GetCisScanResultDetails(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scanResultDetails') foreach (@{ $result->scanResultDetails });
    }

    return undef
  }
  sub ListAllAccountPermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountPermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccountPermissions(@_, nextToken => $next_result->nextToken);
        push @{ $result->permissions }, @{ $next_result->permissions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'permissions') foreach (@{ $result->permissions });
        $result = $self->ListAccountPermissions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'permissions') foreach (@{ $result->permissions });
    }

    return undef
  }
  sub ListAllCisScanConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCisScanConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCisScanConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->scanConfigurations }, @{ $next_result->scanConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scanConfigurations') foreach (@{ $result->scanConfigurations });
        $result = $self->ListCisScanConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scanConfigurations') foreach (@{ $result->scanConfigurations });
    }

    return undef
  }
  sub ListAllCisScanResultsAggregatedByChecks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCisScanResultsAggregatedByChecks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCisScanResultsAggregatedByChecks(@_, nextToken => $next_result->nextToken);
        push @{ $result->checkAggregations }, @{ $next_result->checkAggregations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'checkAggregations') foreach (@{ $result->checkAggregations });
        $result = $self->ListCisScanResultsAggregatedByChecks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'checkAggregations') foreach (@{ $result->checkAggregations });
    }

    return undef
  }
  sub ListAllCisScanResultsAggregatedByTargetResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCisScanResultsAggregatedByTargetResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCisScanResultsAggregatedByTargetResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->targetResourceAggregations }, @{ $next_result->targetResourceAggregations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'targetResourceAggregations') foreach (@{ $result->targetResourceAggregations });
        $result = $self->ListCisScanResultsAggregatedByTargetResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'targetResourceAggregations') foreach (@{ $result->targetResourceAggregations });
    }

    return undef
  }
  sub ListAllCisScans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCisScans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCisScans(@_, nextToken => $next_result->nextToken);
        push @{ $result->scans }, @{ $next_result->scans };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scans') foreach (@{ $result->scans });
        $result = $self->ListCisScans(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scans') foreach (@{ $result->scans });
    }

    return undef
  }
  sub ListAllCoverage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoverage(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCoverage(@_, nextToken => $next_result->nextToken);
        push @{ $result->coveredResources }, @{ $next_result->coveredResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'coveredResources') foreach (@{ $result->coveredResources });
        $result = $self->ListCoverage(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'coveredResources') foreach (@{ $result->coveredResources });
    }

    return undef
  }
  sub ListAllCoverageStatistics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoverageStatistics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCoverageStatistics(@_, nextToken => $next_result->nextToken);
        push @{ $result->countsByGroup }, @{ $next_result->countsByGroup };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'countsByGroup') foreach (@{ $result->countsByGroup });
        $result = $self->ListCoverageStatistics(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'countsByGroup') foreach (@{ $result->countsByGroup });
    }

    return undef
  }
  sub ListAllDelegatedAdminAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDelegatedAdminAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDelegatedAdminAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->delegatedAdminAccounts }, @{ $next_result->delegatedAdminAccounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'delegatedAdminAccounts') foreach (@{ $result->delegatedAdminAccounts });
        $result = $self->ListDelegatedAdminAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'delegatedAdminAccounts') foreach (@{ $result->delegatedAdminAccounts });
    }

    return undef
  }
  sub ListAllFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->filters }, @{ $next_result->filters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'filters') foreach (@{ $result->filters });
        $result = $self->ListFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'filters') foreach (@{ $result->filters });
    }

    return undef
  }
  sub ListAllFindingAggregations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindingAggregations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindingAggregations(@_, nextToken => $next_result->nextToken);
        push @{ $result->responses }, @{ $next_result->responses };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'responses') foreach (@{ $result->responses });
        $result = $self->ListFindingAggregations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'responses') foreach (@{ $result->responses });
    }

    return undef
  }
  sub ListAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->ListFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }
  sub ListAllMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllUsageTotals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsageTotals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUsageTotals(@_, nextToken => $next_result->nextToken);
        push @{ $result->totals }, @{ $next_result->totals };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'totals') foreach (@{ $result->totals });
        $result = $self->ListUsageTotals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'totals') foreach (@{ $result->totals });
    }

    return undef
  }
  sub SearchAllVulnerabilities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchVulnerabilities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchVulnerabilities(@_, nextToken => $next_result->nextToken);
        push @{ $result->vulnerabilities }, @{ $next_result->vulnerabilities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'vulnerabilities') foreach (@{ $result->vulnerabilities });
        $result = $self->SearchVulnerabilities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'vulnerabilities') foreach (@{ $result->vulnerabilities });
    }

    return undef
  }


  sub operations { qw/AssociateMember BatchGetAccountStatus BatchGetCodeSnippet BatchGetFindingDetails BatchGetFreeTrialInfo BatchGetMemberEc2DeepInspectionStatus BatchUpdateMemberEc2DeepInspectionStatus CancelFindingsReport CancelSbomExport CreateCisScanConfiguration CreateFilter CreateFindingsReport CreateSbomExport DeleteCisScanConfiguration DeleteFilter DescribeOrganizationConfiguration Disable DisableDelegatedAdminAccount DisassociateMember Enable EnableDelegatedAdminAccount GetCisScanReport GetCisScanResultDetails GetConfiguration GetDelegatedAdminAccount GetEc2DeepInspectionConfiguration GetEncryptionKey GetFindingsReportStatus GetMember GetSbomExport ListAccountPermissions ListCisScanConfigurations ListCisScanResultsAggregatedByChecks ListCisScanResultsAggregatedByTargetResource ListCisScans ListCoverage ListCoverageStatistics ListDelegatedAdminAccounts ListFilters ListFindingAggregations ListFindings ListMembers ListTagsForResource ListUsageTotals ResetEncryptionKey SearchVulnerabilities SendCisSessionHealth SendCisSessionTelemetry StartCisSession StopCisSession TagResource UntagResource UpdateCisScanConfiguration UpdateConfiguration UpdateEc2DeepInspectionConfiguration UpdateEncryptionKey UpdateFilter UpdateOrganizationConfiguration UpdateOrgEc2DeepInspectionConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2 - Perl Interface to AWS Inspector2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Inspector2');
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

Amazon Inspector is a vulnerability discovery service that automates
continuous scanning for security vulnerabilities within your Amazon
EC2, Amazon ECR, and Amazon Web Services Lambda environments.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08>


=head1 METHODS

=head2 AssociateMember

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::AssociateMember>

Returns: a L<Paws::Inspector2::AssociateMemberResponse> instance

Associates an Amazon Web Services account with an Amazon Inspector
delegated administrator. An HTTP 200 response indicates the association
was successfully started, but doesnE<rsquo>t indicate whether it was
completed. You can check if the association completed by using
ListMembers
(https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html)
for multiple accounts or GetMembers
(https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html)
for a single account.


=head2 BatchGetAccountStatus

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchGetAccountStatus>

Returns: a L<Paws::Inspector2::BatchGetAccountStatusResponse> instance

Retrieves the Amazon Inspector status of multiple Amazon Web Services
accounts within your environment.


=head2 BatchGetCodeSnippet

=over

=item FindingArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchGetCodeSnippet>

Returns: a L<Paws::Inspector2::BatchGetCodeSnippetResponse> instance

Retrieves code snippets from findings that Amazon Inspector detected
code vulnerabilities in.


=head2 BatchGetFindingDetails

=over

=item FindingArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchGetFindingDetails>

Returns: a L<Paws::Inspector2::BatchGetFindingDetailsResponse> instance

Gets vulnerability details for findings.


=head2 BatchGetFreeTrialInfo

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchGetFreeTrialInfo>

Returns: a L<Paws::Inspector2::BatchGetFreeTrialInfoResponse> instance

Gets free trial status for multiple Amazon Web Services accounts.


=head2 BatchGetMemberEc2DeepInspectionStatus

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchGetMemberEc2DeepInspectionStatus>

Returns: a L<Paws::Inspector2::BatchGetMemberEc2DeepInspectionStatusResponse> instance

Retrieves Amazon Inspector deep inspection activation status of
multiple member accounts within your organization. You must be the
delegated administrator of an organization in Amazon Inspector to use
this API.


=head2 BatchUpdateMemberEc2DeepInspectionStatus

=over

=item AccountIds => ArrayRef[L<Paws::Inspector2::MemberAccountEc2DeepInspectionStatus>]


=back

Each argument is described in detail in: L<Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatus>

Returns: a L<Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatusResponse> instance

Activates or deactivates Amazon Inspector deep inspection for the
provided member accounts in your organization. You must be the
delegated administrator of an organization in Amazon Inspector to use
this API.


=head2 CancelFindingsReport

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::CancelFindingsReport>

Returns: a L<Paws::Inspector2::CancelFindingsReportResponse> instance

Cancels the given findings report.


=head2 CancelSbomExport

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::CancelSbomExport>

Returns: a L<Paws::Inspector2::CancelSbomExportResponse> instance

Cancels a software bill of materials (SBOM) report.


=head2 CreateCisScanConfiguration

=over

=item ScanName => Str

=item Schedule => L<Paws::Inspector2::Schedule>

=item SecurityLevel => Str

=item Targets => L<Paws::Inspector2::CreateCisTargets>

=item [Tags => L<Paws::Inspector2::CisTagMap>]


=back

Each argument is described in detail in: L<Paws::Inspector2::CreateCisScanConfiguration>

Returns: a L<Paws::Inspector2::CreateCisScanConfigurationResponse> instance

Creates a CIS scan configuration.


=head2 CreateFilter

=over

=item Action => Str

=item FilterCriteria => L<Paws::Inspector2::FilterCriteria>

=item Name => Str

=item [Description => Str]

=item [Reason => Str]

=item [Tags => L<Paws::Inspector2::TagMap>]


=back

Each argument is described in detail in: L<Paws::Inspector2::CreateFilter>

Returns: a L<Paws::Inspector2::CreateFilterResponse> instance

Creates a filter resource using specified filter criteria. When the
filter action is set to C<SUPPRESS> this action creates a suppression
rule.


=head2 CreateFindingsReport

=over

=item ReportFormat => Str

=item S3Destination => L<Paws::Inspector2::Destination>

=item [FilterCriteria => L<Paws::Inspector2::FilterCriteria>]


=back

Each argument is described in detail in: L<Paws::Inspector2::CreateFindingsReport>

Returns: a L<Paws::Inspector2::CreateFindingsReportResponse> instance

Creates a finding report. By default only C<ACTIVE> findings are
returned in the report. To see C<SUPRESSED> or C<CLOSED> findings you
must specify a value for the C<findingStatus> filter criteria.


=head2 CreateSbomExport

=over

=item ReportFormat => Str

=item S3Destination => L<Paws::Inspector2::Destination>

=item [ResourceFilterCriteria => L<Paws::Inspector2::ResourceFilterCriteria>]


=back

Each argument is described in detail in: L<Paws::Inspector2::CreateSbomExport>

Returns: a L<Paws::Inspector2::CreateSbomExportResponse> instance

Creates a software bill of materials (SBOM) report.


=head2 DeleteCisScanConfiguration

=over

=item ScanConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::DeleteCisScanConfiguration>

Returns: a L<Paws::Inspector2::DeleteCisScanConfigurationResponse> instance

Deletes a CIS scan configuration.


=head2 DeleteFilter

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::DeleteFilter>

Returns: a L<Paws::Inspector2::DeleteFilterResponse> instance

Deletes a filter resource.


=head2 DescribeOrganizationConfiguration






Each argument is described in detail in: L<Paws::Inspector2::DescribeOrganizationConfiguration>

Returns: a L<Paws::Inspector2::DescribeOrganizationConfigurationResponse> instance

Describe Amazon Inspector configuration settings for an Amazon Web
Services organization.


=head2 Disable

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [ResourceTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Inspector2::Disable>

Returns: a L<Paws::Inspector2::DisableResponse> instance

Disables Amazon Inspector scans for one or more Amazon Web Services
accounts. Disabling all scan types in an account disables the Amazon
Inspector service.


=head2 DisableDelegatedAdminAccount

=over

=item DelegatedAdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::DisableDelegatedAdminAccount>

Returns: a L<Paws::Inspector2::DisableDelegatedAdminAccountResponse> instance

Disables the Amazon Inspector delegated administrator for your
organization.


=head2 DisassociateMember

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::DisassociateMember>

Returns: a L<Paws::Inspector2::DisassociateMemberResponse> instance

Disassociates a member account from an Amazon Inspector delegated
administrator.


=head2 Enable

=over

=item ResourceTypes => ArrayRef[Str|Undef]

=item [AccountIds => ArrayRef[Str|Undef]]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::Enable>

Returns: a L<Paws::Inspector2::EnableResponse> instance

Enables Amazon Inspector scans for one or more Amazon Web Services
accounts.


=head2 EnableDelegatedAdminAccount

=over

=item DelegatedAdminAccountId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::EnableDelegatedAdminAccount>

Returns: a L<Paws::Inspector2::EnableDelegatedAdminAccountResponse> instance

Enables the Amazon Inspector delegated administrator for your
Organizations organization.


=head2 GetCisScanReport

=over

=item ScanArn => Str

=item [ReportFormat => Str]

=item [TargetAccounts => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Inspector2::GetCisScanReport>

Returns: a L<Paws::Inspector2::GetCisScanReportResponse> instance

Retrieves a CIS scan report.


=head2 GetCisScanResultDetails

=over

=item AccountId => Str

=item ScanArn => Str

=item TargetResourceId => Str

=item [FilterCriteria => L<Paws::Inspector2::CisScanResultDetailsFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::GetCisScanResultDetails>

Returns: a L<Paws::Inspector2::GetCisScanResultDetailsResponse> instance

Retrieves CIS scan result details.


=head2 GetConfiguration






Each argument is described in detail in: L<Paws::Inspector2::GetConfiguration>

Returns: a L<Paws::Inspector2::GetConfigurationResponse> instance

Retrieves setting configurations for Inspector scans.


=head2 GetDelegatedAdminAccount






Each argument is described in detail in: L<Paws::Inspector2::GetDelegatedAdminAccount>

Returns: a L<Paws::Inspector2::GetDelegatedAdminAccountResponse> instance

Retrieves information about the Amazon Inspector delegated
administrator for your organization.


=head2 GetEc2DeepInspectionConfiguration






Each argument is described in detail in: L<Paws::Inspector2::GetEc2DeepInspectionConfiguration>

Returns: a L<Paws::Inspector2::GetEc2DeepInspectionConfigurationResponse> instance

Retrieves the activation status of Amazon Inspector deep inspection and
custom paths associated with your account.


=head2 GetEncryptionKey

=over

=item ResourceType => Str

=item ScanType => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::GetEncryptionKey>

Returns: a L<Paws::Inspector2::GetEncryptionKeyResponse> instance

Gets an encryption key.


=head2 GetFindingsReportStatus

=over

=item [ReportId => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::GetFindingsReportStatus>

Returns: a L<Paws::Inspector2::GetFindingsReportStatusResponse> instance

Gets the status of a findings report.


=head2 GetMember

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::GetMember>

Returns: a L<Paws::Inspector2::GetMemberResponse> instance

Gets member information for your organization.


=head2 GetSbomExport

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::GetSbomExport>

Returns: a L<Paws::Inspector2::GetSbomExportResponse> instance

Gets details of a software bill of materials (SBOM) report.


=head2 ListAccountPermissions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Service => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListAccountPermissions>

Returns: a L<Paws::Inspector2::ListAccountPermissionsResponse> instance

Lists the permissions an account has to configure Amazon Inspector.


=head2 ListCisScanConfigurations

=over

=item [FilterCriteria => L<Paws::Inspector2::ListCisScanConfigurationsFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCisScanConfigurations>

Returns: a L<Paws::Inspector2::ListCisScanConfigurationsResponse> instance

Lists CIS scan configurations.


=head2 ListCisScanResultsAggregatedByChecks

=over

=item ScanArn => Str

=item [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByChecksFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCisScanResultsAggregatedByChecks>

Returns: a L<Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse> instance

Lists scan results aggregated by checks.


=head2 ListCisScanResultsAggregatedByTargetResource

=over

=item ScanArn => Str

=item [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByTargetResourceFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCisScanResultsAggregatedByTargetResource>

Returns: a L<Paws::Inspector2::ListCisScanResultsAggregatedByTargetResourceResponse> instance

Lists scan results aggregated by a target resource.


=head2 ListCisScans

=over

=item [DetailLevel => Str]

=item [FilterCriteria => L<Paws::Inspector2::ListCisScansFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCisScans>

Returns: a L<Paws::Inspector2::ListCisScansResponse> instance

Returns a CIS scan list.


=head2 ListCoverage

=over

=item [FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCoverage>

Returns: a L<Paws::Inspector2::ListCoverageResponse> instance

Lists coverage details for your environment.


=head2 ListCoverageStatistics

=over

=item [FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>]

=item [GroupBy => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListCoverageStatistics>

Returns: a L<Paws::Inspector2::ListCoverageStatisticsResponse> instance

Lists Amazon Inspector coverage statistics for your environment.


=head2 ListDelegatedAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListDelegatedAdminAccounts>

Returns: a L<Paws::Inspector2::ListDelegatedAdminAccountsResponse> instance

Lists information about the Amazon Inspector delegated administrator of
your organization.


=head2 ListFilters

=over

=item [Action => Str]

=item [Arns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListFilters>

Returns: a L<Paws::Inspector2::ListFiltersResponse> instance

Lists the filters associated with your account.


=head2 ListFindingAggregations

=over

=item AggregationType => Str

=item [AccountIds => ArrayRef[L<Paws::Inspector2::StringFilter>]]

=item [AggregationRequest => L<Paws::Inspector2::AggregationRequest>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListFindingAggregations>

Returns: a L<Paws::Inspector2::ListFindingAggregationsResponse> instance

Lists aggregated finding data for your environment based on specific
criteria.


=head2 ListFindings

=over

=item [FilterCriteria => L<Paws::Inspector2::FilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Inspector2::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListFindings>

Returns: a L<Paws::Inspector2::ListFindingsResponse> instance

Lists findings for your environment.


=head2 ListMembers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Bool]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListMembers>

Returns: a L<Paws::Inspector2::ListMembersResponse> instance

List members associated with the Amazon Inspector delegated
administrator for your organization.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::ListTagsForResource>

Returns: a L<Paws::Inspector2::ListTagsForResourceResponse> instance

Lists all tags attached to a given resource.


=head2 ListUsageTotals

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::ListUsageTotals>

Returns: a L<Paws::Inspector2::ListUsageTotalsResponse> instance

Lists the Amazon Inspector usage totals over the last 30 days.


=head2 ResetEncryptionKey

=over

=item ResourceType => Str

=item ScanType => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::ResetEncryptionKey>

Returns: a L<Paws::Inspector2::ResetEncryptionKeyResponse> instance

Resets an encryption key. After the key is reset your resources will be
encrypted by an Amazon Web Services owned key.


=head2 SearchVulnerabilities

=over

=item FilterCriteria => L<Paws::Inspector2::SearchVulnerabilitiesFilterCriteria>

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::SearchVulnerabilities>

Returns: a L<Paws::Inspector2::SearchVulnerabilitiesResponse> instance

Lists Amazon Inspector coverage details for a specific vulnerability.


=head2 SendCisSessionHealth

=over

=item ScanJobId => Str

=item SessionToken => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::SendCisSessionHealth>

Returns: a L<Paws::Inspector2::SendCisSessionHealthResponse> instance

Sends a CIS session health. This API is used by the Amazon Inspector
SSM plugin to communicate with the Amazon Inspector service. The Amazon
Inspector SSM plugin calls this API to start a CIS scan session for the
scan ID supplied by the service.


=head2 SendCisSessionTelemetry

=over

=item Messages => ArrayRef[L<Paws::Inspector2::CisSessionMessage>]

=item ScanJobId => Str

=item SessionToken => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::SendCisSessionTelemetry>

Returns: a L<Paws::Inspector2::SendCisSessionTelemetryResponse> instance

Sends a CIS session telemetry. This API is used by the Amazon Inspector
SSM plugin to communicate with the Amazon Inspector service. The Amazon
Inspector SSM plugin calls this API to start a CIS scan session for the
scan ID supplied by the service.


=head2 StartCisSession

=over

=item Message => L<Paws::Inspector2::StartCisSessionMessage>

=item ScanJobId => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::StartCisSession>

Returns: a L<Paws::Inspector2::StartCisSessionResponse> instance

Starts a CIS session. This API is used by the Amazon Inspector SSM
plugin to communicate with the Amazon Inspector service. The Amazon
Inspector SSM plugin calls this API to start a CIS scan session for the
scan ID supplied by the service.


=head2 StopCisSession

=over

=item Message => L<Paws::Inspector2::StopCisSessionMessage>

=item ScanJobId => Str

=item SessionToken => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::StopCisSession>

Returns: a L<Paws::Inspector2::StopCisSessionResponse> instance

Stops a CIS session. This API is used by the Amazon Inspector SSM
plugin to communicate with the Amazon Inspector service. The Amazon
Inspector SSM plugin calls this API to stop a CIS scan session for the
scan ID supplied by the service.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Inspector2::TagMap>


=back

Each argument is described in detail in: L<Paws::Inspector2::TagResource>

Returns: a L<Paws::Inspector2::TagResourceResponse> instance

Adds tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector2::UntagResource>

Returns: a L<Paws::Inspector2::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateCisScanConfiguration

=over

=item ScanConfigurationArn => Str

=item [ScanName => Str]

=item [Schedule => L<Paws::Inspector2::Schedule>]

=item [SecurityLevel => Str]

=item [Targets => L<Paws::Inspector2::UpdateCisTargets>]


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateCisScanConfiguration>

Returns: a L<Paws::Inspector2::UpdateCisScanConfigurationResponse> instance

Updates a CIS scan configuration.


=head2 UpdateConfiguration

=over

=item [Ec2Configuration => L<Paws::Inspector2::Ec2Configuration>]

=item [EcrConfiguration => L<Paws::Inspector2::EcrConfiguration>]


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateConfiguration>

Returns: a L<Paws::Inspector2::UpdateConfigurationResponse> instance

Updates setting configurations for your Amazon Inspector account. When
you use this API as an Amazon Inspector delegated administrator this
updates the setting for all accounts you manage. Member accounts in an
organization cannot update this setting.


=head2 UpdateEc2DeepInspectionConfiguration

=over

=item [ActivateDeepInspection => Bool]

=item [PackagePaths => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateEc2DeepInspectionConfiguration>

Returns: a L<Paws::Inspector2::UpdateEc2DeepInspectionConfigurationResponse> instance

Activates, deactivates Amazon Inspector deep inspection, or updates
custom paths for your account.


=head2 UpdateEncryptionKey

=over

=item KmsKeyId => Str

=item ResourceType => Str

=item ScanType => Str


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateEncryptionKey>

Returns: a L<Paws::Inspector2::UpdateEncryptionKeyResponse> instance

Updates an encryption key. A C<ResourceNotFoundException> means that an
Amazon Web Services owned key is being used for encryption.


=head2 UpdateFilter

=over

=item FilterArn => Str

=item [Action => Str]

=item [Description => Str]

=item [FilterCriteria => L<Paws::Inspector2::FilterCriteria>]

=item [Name => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateFilter>

Returns: a L<Paws::Inspector2::UpdateFilterResponse> instance

Specifies the action that is to be applied to the findings that match
the filter.


=head2 UpdateOrganizationConfiguration

=over

=item AutoEnable => L<Paws::Inspector2::AutoEnable>


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateOrganizationConfiguration>

Returns: a L<Paws::Inspector2::UpdateOrganizationConfigurationResponse> instance

Updates the configurations for your Amazon Inspector organization.


=head2 UpdateOrgEc2DeepInspectionConfiguration

=over

=item OrgPackagePaths => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Inspector2::UpdateOrgEc2DeepInspectionConfiguration>

Returns: a L<Paws::Inspector2::UpdateOrgEc2DeepInspectionConfigurationResponse> instance

Updates the Amazon Inspector deep inspection custom paths for your
organization. You must be an Amazon Inspector delegated administrator
to use this API.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllCisScanResultDetails(sub { },AccountId => Str, ScanArn => Str, TargetResourceId => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultDetailsFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 GetAllCisScanResultDetails(AccountId => Str, ScanArn => Str, TargetResourceId => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultDetailsFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scanResultDetails, passing the object as the first parameter, and the string 'scanResultDetails' as the second parameter 

If not, it will return a a L<Paws::Inspector2::GetCisScanResultDetailsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountPermissions(sub { },[MaxResults => Int, NextToken => Str, Service => Str])

=head2 ListAllAccountPermissions([MaxResults => Int, NextToken => Str, Service => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - permissions, passing the object as the first parameter, and the string 'permissions' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListAccountPermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCisScanConfigurations(sub { },[FilterCriteria => L<Paws::Inspector2::ListCisScanConfigurationsFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCisScanConfigurations([FilterCriteria => L<Paws::Inspector2::ListCisScanConfigurationsFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scanConfigurations, passing the object as the first parameter, and the string 'scanConfigurations' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCisScanConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCisScanResultsAggregatedByChecks(sub { },ScanArn => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByChecksFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCisScanResultsAggregatedByChecks(ScanArn => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByChecksFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - checkAggregations, passing the object as the first parameter, and the string 'checkAggregations' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCisScanResultsAggregatedByTargetResource(sub { },ScanArn => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByTargetResourceFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCisScanResultsAggregatedByTargetResource(ScanArn => Str, [FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByTargetResourceFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - targetResourceAggregations, passing the object as the first parameter, and the string 'targetResourceAggregations' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCisScanResultsAggregatedByTargetResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCisScans(sub { },[DetailLevel => Str, FilterCriteria => L<Paws::Inspector2::ListCisScansFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCisScans([DetailLevel => Str, FilterCriteria => L<Paws::Inspector2::ListCisScansFilterCriteria>, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scans, passing the object as the first parameter, and the string 'scans' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCisScansResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoverage(sub { },[FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>, MaxResults => Int, NextToken => Str])

=head2 ListAllCoverage([FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - coveredResources, passing the object as the first parameter, and the string 'coveredResources' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCoverageResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoverageStatistics(sub { },[FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>, GroupBy => Str, NextToken => Str])

=head2 ListAllCoverageStatistics([FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>, GroupBy => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - countsByGroup, passing the object as the first parameter, and the string 'countsByGroup' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListCoverageStatisticsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDelegatedAdminAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDelegatedAdminAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - delegatedAdminAccounts, passing the object as the first parameter, and the string 'delegatedAdminAccounts' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListDelegatedAdminAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilters(sub { },[Action => Str, Arns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllFilters([Action => Str, Arns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - filters, passing the object as the first parameter, and the string 'filters' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindingAggregations(sub { },AggregationType => Str, [AccountIds => ArrayRef[L<Paws::Inspector2::StringFilter>], AggregationRequest => L<Paws::Inspector2::AggregationRequest>, MaxResults => Int, NextToken => Str])

=head2 ListAllFindingAggregations(AggregationType => Str, [AccountIds => ArrayRef[L<Paws::Inspector2::StringFilter>], AggregationRequest => L<Paws::Inspector2::AggregationRequest>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - responses, passing the object as the first parameter, and the string 'responses' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListFindingAggregationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },[FilterCriteria => L<Paws::Inspector2::FilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Inspector2::SortCriteria>])

=head2 ListAllFindings([FilterCriteria => L<Paws::Inspector2::FilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Inspector2::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },[MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])

=head2 ListAllMembers([MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsageTotals(sub { },[AccountIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllUsageTotals([AccountIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - totals, passing the object as the first parameter, and the string 'totals' as the second parameter 

If not, it will return a a L<Paws::Inspector2::ListUsageTotalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllVulnerabilities(sub { },FilterCriteria => L<Paws::Inspector2::SearchVulnerabilitiesFilterCriteria>, [NextToken => Str])

=head2 SearchAllVulnerabilities(FilterCriteria => L<Paws::Inspector2::SearchVulnerabilitiesFilterCriteria>, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - vulnerabilities, passing the object as the first parameter, and the string 'vulnerabilities' as the second parameter 

If not, it will return a a L<Paws::Inspector2::SearchVulnerabilitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

