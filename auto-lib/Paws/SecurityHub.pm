package Paws::SecurityHub;
  use Moose;
  sub service { 'securityhub' }
  sub signing_name { 'securityhub' }
  sub version { '2018-10-26' }
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
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::AcceptAdministratorInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteAutomationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchDeleteAutomationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisableStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchDisableStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchEnableStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchEnableStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetAutomationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchGetAutomationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetConfigurationPolicyAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchGetConfigurationPolicyAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetSecurityControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchGetSecurityControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetStandardsControlAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchGetStandardsControlAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchImportFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchImportFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateAutomationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchUpdateAutomationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchUpdateFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateStandardsControlAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchUpdateStandardsControlAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutomationRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateAutomationRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateConfigurationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFindingAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateFindingAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeclineInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteConfigurationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFindingAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteFindingAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActionTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeActionTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStandardsControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeStandardsControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImportFindingsForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableImportFindingsForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateFromAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateFromMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImportFindingsForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableImportFindingsForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetConfigurationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationPolicyAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetConfigurationPolicyAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnabledStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetEnabledStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetFindingAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetFindingHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInsightResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvitationsCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInvitationsCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityControlDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetSecurityControlDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::InviteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutomationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListAutomationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListConfigurationPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationPolicyAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListConfigurationPolicyAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnabledProductsForImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListEnabledProductsForImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindingAggregators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListFindingAggregators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListOrganizationAdminAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityControlDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListSecurityControlDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStandardsControlAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListStandardsControlAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigurationPolicyAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::StartConfigurationPolicyAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigurationPolicyDisassociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::StartConfigurationPolicyDisassociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateConfigurationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindingAggregator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateFindingAggregator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateSecurityControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityHubConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateSecurityHubConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStandardsControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateStandardsControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllActionTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeActionTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeActionTargets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActionTargets }, @{ $next_result->ActionTargets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActionTargets') foreach (@{ $result->ActionTargets });
        $result = $self->DescribeActionTargets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActionTargets') foreach (@{ $result->ActionTargets });
    }

    return undef
  }
  sub DescribeAllProducts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeProducts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeProducts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Products }, @{ $next_result->Products };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Products') foreach (@{ $result->Products });
        $result = $self->DescribeProducts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Products') foreach (@{ $result->Products });
    }

    return undef
  }
  sub DescribeAllStandards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStandards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStandards(@_, NextToken => $next_result->NextToken);
        push @{ $result->Standards }, @{ $next_result->Standards };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Standards') foreach (@{ $result->Standards });
        $result = $self->DescribeStandards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Standards') foreach (@{ $result->Standards });
    }

    return undef
  }
  sub DescribeAllStandardsControls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStandardsControls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStandardsControls(@_, NextToken => $next_result->NextToken);
        push @{ $result->Controls }, @{ $next_result->Controls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Controls') foreach (@{ $result->Controls });
        $result = $self->DescribeStandardsControls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Controls') foreach (@{ $result->Controls });
    }

    return undef
  }
  sub GetAllEnabledStandards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetEnabledStandards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetEnabledStandards(@_, NextToken => $next_result->NextToken);
        push @{ $result->StandardsSubscriptions }, @{ $next_result->StandardsSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StandardsSubscriptions') foreach (@{ $result->StandardsSubscriptions });
        $result = $self->GetEnabledStandards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StandardsSubscriptions') foreach (@{ $result->StandardsSubscriptions });
    }

    return undef
  }
  sub GetAllFindingHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFindingHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetFindingHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->Records }, @{ $next_result->Records };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Records') foreach (@{ $result->Records });
        $result = $self->GetFindingHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Records') foreach (@{ $result->Records });
    }

    return undef
  }
  sub GetAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetFindings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Findings }, @{ $next_result->Findings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Findings') foreach (@{ $result->Findings });
        $result = $self->GetFindings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Findings') foreach (@{ $result->Findings });
    }

    return undef
  }
  sub GetAllInsights {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInsights(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetInsights(@_, NextToken => $next_result->NextToken);
        push @{ $result->Insights }, @{ $next_result->Insights };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Insights') foreach (@{ $result->Insights });
        $result = $self->GetInsights(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Insights') foreach (@{ $result->Insights });
    }

    return undef
  }
  sub ListAllConfigurationPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationPolicySummaries }, @{ $next_result->ConfigurationPolicySummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationPolicySummaries') foreach (@{ $result->ConfigurationPolicySummaries });
        $result = $self->ListConfigurationPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationPolicySummaries') foreach (@{ $result->ConfigurationPolicySummaries });
    }

    return undef
  }
  sub ListAllConfigurationPolicyAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationPolicyAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationPolicyAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationPolicyAssociationSummaries }, @{ $next_result->ConfigurationPolicyAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationPolicyAssociationSummaries') foreach (@{ $result->ConfigurationPolicyAssociationSummaries });
        $result = $self->ListConfigurationPolicyAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationPolicyAssociationSummaries') foreach (@{ $result->ConfigurationPolicyAssociationSummaries });
    }

    return undef
  }
  sub ListAllEnabledProductsForImport {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnabledProductsForImport(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnabledProductsForImport(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProductSubscriptions }, @{ $next_result->ProductSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProductSubscriptions') foreach (@{ $result->ProductSubscriptions });
        $result = $self->ListEnabledProductsForImport(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProductSubscriptions') foreach (@{ $result->ProductSubscriptions });
    }

    return undef
  }
  sub ListAllFindingAggregators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindingAggregators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFindingAggregators(@_, NextToken => $next_result->NextToken);
        push @{ $result->FindingAggregators }, @{ $next_result->FindingAggregators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FindingAggregators') foreach (@{ $result->FindingAggregators });
        $result = $self->ListFindingAggregators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FindingAggregators') foreach (@{ $result->FindingAggregators });
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
  sub ListAllSecurityControlDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityControlDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityControlDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityControlDefinitions }, @{ $next_result->SecurityControlDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityControlDefinitions') foreach (@{ $result->SecurityControlDefinitions });
        $result = $self->ListSecurityControlDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityControlDefinitions') foreach (@{ $result->SecurityControlDefinitions });
    }

    return undef
  }
  sub ListAllStandardsControlAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStandardsControlAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStandardsControlAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->StandardsControlAssociationSummaries }, @{ $next_result->StandardsControlAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StandardsControlAssociationSummaries') foreach (@{ $result->StandardsControlAssociationSummaries });
        $result = $self->ListStandardsControlAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StandardsControlAssociationSummaries') foreach (@{ $result->StandardsControlAssociationSummaries });
    }

    return undef
  }


  sub operations { qw/AcceptAdministratorInvitation AcceptInvitation BatchDeleteAutomationRules BatchDisableStandards BatchEnableStandards BatchGetAutomationRules BatchGetConfigurationPolicyAssociations BatchGetSecurityControls BatchGetStandardsControlAssociations BatchImportFindings BatchUpdateAutomationRules BatchUpdateFindings BatchUpdateStandardsControlAssociations CreateActionTarget CreateAutomationRule CreateConfigurationPolicy CreateFindingAggregator CreateInsight CreateMembers DeclineInvitations DeleteActionTarget DeleteConfigurationPolicy DeleteFindingAggregator DeleteInsight DeleteInvitations DeleteMembers DescribeActionTargets DescribeHub DescribeOrganizationConfiguration DescribeProducts DescribeStandards DescribeStandardsControls DisableImportFindingsForProduct DisableOrganizationAdminAccount DisableSecurityHub DisassociateFromAdministratorAccount DisassociateFromMasterAccount DisassociateMembers EnableImportFindingsForProduct EnableOrganizationAdminAccount EnableSecurityHub GetAdministratorAccount GetConfigurationPolicy GetConfigurationPolicyAssociation GetEnabledStandards GetFindingAggregator GetFindingHistory GetFindings GetInsightResults GetInsights GetInvitationsCount GetMasterAccount GetMembers GetSecurityControlDefinition InviteMembers ListAutomationRules ListConfigurationPolicies ListConfigurationPolicyAssociations ListEnabledProductsForImport ListFindingAggregators ListInvitations ListMembers ListOrganizationAdminAccounts ListSecurityControlDefinitions ListStandardsControlAssociations ListTagsForResource StartConfigurationPolicyAssociation StartConfigurationPolicyDisassociation TagResource UntagResource UpdateActionTarget UpdateConfigurationPolicy UpdateFindingAggregator UpdateFindings UpdateInsight UpdateOrganizationConfiguration UpdateSecurityControl UpdateSecurityHubConfiguration UpdateStandardsControl / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub - Perl Interface to AWS AWS SecurityHub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecurityHub');
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

Security Hub provides you with a comprehensive view of your security
state in Amazon Web Services and helps you assess your Amazon Web
Services environment against security industry standards and best
practices.

Security Hub collects security data across Amazon Web Services
accounts, Amazon Web Services services, and supported third-party
products and helps you analyze your security trends and identify the
highest priority security issues.

To help you manage the security state of your organization, Security
Hub supports multiple security standards. These include the Amazon Web
Services Foundational Security Best Practices (FSBP) standard developed
by Amazon Web Services, and external compliance frameworks such as the
Center for Internet Security (CIS), the Payment Card Industry Data
Security Standard (PCI DSS), and the National Institute of Standards
and Technology (NIST). Each standard includes several security
controls, each of which represents a security best practice. Security
Hub runs checks against security controls and generates control
findings to help you assess your compliance against security best
practices.

In addition to generating control findings, Security Hub also receives
findings from other Amazon Web Services services, such as Amazon
GuardDuty and Amazon Inspector, and supported third-party products.
This gives you a single pane of glass into a variety of
security-related issues. You can also send Security Hub findings to
other Amazon Web Services services and supported third-party products.

Security Hub offers automation features that help you triage and
remediate security issues. For example, you can use automation rules to
automatically update critical findings when a security check fails. You
can also leverage the integration with Amazon EventBridge to trigger
automatic responses to specific findings.

This guide, the I<Security Hub API Reference>, provides information
about the Security Hub API. This includes supported resources, HTTP
methods, parameters, and schemas. If you're new to Security Hub, you
might find it helpful to also review the I<Security Hub User Guide>
(https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html).
The user guide explains key concepts and provides procedures that
demonstrate how to use Security Hub features. It also provides
information about topics such as integrating Security Hub with other
Amazon Web Services services.

In addition to interacting with Security Hub by making calls to the
Security Hub API, you can use a current version of an Amazon Web
Services command line tool or SDK. Amazon Web Services provides tools
and SDKs that consist of libraries and sample code for various
languages and platforms, such as PowerShell, Java, Go, Python, C++, and
.NET. These tools and SDKs provide convenient, programmatic access to
Security Hub and other Amazon Web Services services . They also handle
tasks such as signing requests, managing errors, and retrying requests
automatically. For information about installing and using the Amazon
Web Services tools and SDKs, see Tools to Build on Amazon Web Services
(http://aws.amazon.com/developer/tools/).

With the exception of operations that are related to central
configuration, Security Hub API requests are executed only in the
Amazon Web Services Region that is currently active or in the specific
Amazon Web Services Region that you specify in your request. Any
configuration or settings change that results from the operation is
applied only to that Region. To make the same change in other Regions,
call the same API operation in each Region in which you want to apply
the change. When you use central configuration, API requests for
enabling Security Hub, standards, and controls are executed in the home
Region and all linked Regions. For a list of central configuration
operations, see the Central configuration terms and concepts
(https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html#central-configuration-concepts)
section of the I<Security Hub User Guide>.

The following throttling limits apply to Security Hub API operations.

=over

=item *

C<BatchEnableStandards> - C<RateLimit> of 1 request per second.
C<BurstLimit> of 1 request per second.

=item *

C<GetFindings> - C<RateLimit> of 3 requests per second. C<BurstLimit>
of 6 requests per second.

=item *

C<BatchImportFindings> - C<RateLimit> of 10 requests per second.
C<BurstLimit> of 30 requests per second.

=item *

C<BatchUpdateFindings> - C<RateLimit> of 10 requests per second.
C<BurstLimit> of 30 requests per second.

=item *

C<UpdateStandardsControl> - C<RateLimit> of 1 request per second.
C<BurstLimit> of 5 requests per second.

=item *

All other operations - C<RateLimit> of 10 requests per second.
C<BurstLimit> of 30 requests per second.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptAdministratorInvitation

=over

=item AdministratorId => Str

=item InvitationId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptAdministratorInvitation>

Returns: a L<Paws::SecurityHub::AcceptAdministratorInvitationResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted
to the administrator account to view findings generated in the member
account.


=head2 AcceptInvitation

=over

=item InvitationId => Str

=item MasterId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptInvitation>

Returns: a L<Paws::SecurityHub::AcceptInvitationResponse> instance

This method is deprecated. Instead, use
C<AcceptAdministratorInvitation>.

The Security Hub console continues to use C<AcceptInvitation>. It will
eventually change to use C<AcceptAdministratorInvitation>. Any IAM
policies that specifically control access to this function must
continue to use C<AcceptInvitation>. You should also add
C<AcceptAdministratorInvitation> to your policies to ensure that the
correct permissions are in place after the console begins to use
C<AcceptAdministratorInvitation>.

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted
to the administrator account to view findings generated in the member
account.


=head2 BatchDeleteAutomationRules

=over

=item AutomationRulesArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchDeleteAutomationRules>

Returns: a L<Paws::SecurityHub::BatchDeleteAutomationRulesResponse> instance

Deletes one or more automation rules.


=head2 BatchDisableStandards

=over

=item StandardsSubscriptionArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchDisableStandards>

Returns: a L<Paws::SecurityHub::BatchDisableStandardsResponse> instance

Disables the standards specified by the provided
C<StandardsSubscriptionArns>.

For more information, see Security Standards
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the I<Security Hub User Guide>.


=head2 BatchEnableStandards

=over

=item StandardsSubscriptionRequests => ArrayRef[L<Paws::SecurityHub::StandardsSubscriptionRequest>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchEnableStandards>

Returns: a L<Paws::SecurityHub::BatchEnableStandardsResponse> instance

Enables the standards specified by the provided C<StandardsArn>. To
obtain the ARN for a standard, use the C<DescribeStandards> operation.

For more information, see the Security Standards
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the I<Security Hub User Guide>.


=head2 BatchGetAutomationRules

=over

=item AutomationRulesArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchGetAutomationRules>

Returns: a L<Paws::SecurityHub::BatchGetAutomationRulesResponse> instance

Retrieves a list of details for automation rules based on rule Amazon
Resource Names (ARNs).


=head2 BatchGetConfigurationPolicyAssociations

=over

=item ConfigurationPolicyAssociationIdentifiers => ArrayRef[L<Paws::SecurityHub::ConfigurationPolicyAssociation>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchGetConfigurationPolicyAssociations>

Returns: a L<Paws::SecurityHub::BatchGetConfigurationPolicyAssociationsResponse> instance

Returns associations between an Security Hub configuration and a batch
of target accounts, organizational units, or the root. Only the
Security Hub delegated administrator can invoke this operation from the
home Region. A configuration can refer to a configuration policy or to
a self-managed configuration.


=head2 BatchGetSecurityControls

=over

=item SecurityControlIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchGetSecurityControls>

Returns: a L<Paws::SecurityHub::BatchGetSecurityControlsResponse> instance

Provides details about a batch of security controls for the current
Amazon Web Services account and Amazon Web Services Region.


=head2 BatchGetStandardsControlAssociations

=over

=item StandardsControlAssociationIds => ArrayRef[L<Paws::SecurityHub::StandardsControlAssociationId>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchGetStandardsControlAssociations>

Returns: a L<Paws::SecurityHub::BatchGetStandardsControlAssociationsResponse> instance

For a batch of security controls and standards, identifies whether each
control is currently enabled or disabled in a standard.

Calls to this operation return a C<RESOURCE_NOT_FOUND_EXCEPTION> error
when the standard subscription for the association has a
C<NOT_READY_FOR_UPDATES> value for C<StandardsControlsUpdatable>.


=head2 BatchImportFindings

=over

=item Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchImportFindings>

Returns: a L<Paws::SecurityHub::BatchImportFindingsResponse> instance

Imports security findings generated by a finding provider into Security
Hub. This action is requested by the finding provider to import its
findings into Security Hub.

C<BatchImportFindings> must be called by one of the following:

=over

=item *

The Amazon Web Services account that is associated with a finding if
you are using the default product ARN
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs)
or are a partner sending findings from within a customer's Amazon Web
Services account. In these cases, the identifier of the account that
you are calling C<BatchImportFindings> from needs to be the same as the
C<AwsAccountId> attribute for the finding.

=item *

An Amazon Web Services account that Security Hub has allow-listed for
an official partner integration. In this case, you can call
C<BatchImportFindings> from the allow-listed account and send findings
from different customer accounts in the same batch.

=back

The maximum allowed size for a finding is 240 Kb. An error is returned
for any finding larger than 240 Kb.

After a finding is created, C<BatchImportFindings> cannot be used to
update the following finding fields and objects, which Security Hub
customers use to manage their investigation workflow.

=over

=item *

C<Note>

=item *

C<UserDefinedFields>

=item *

C<VerificationState>

=item *

C<Workflow>

=back

Finding providers also should not use C<BatchImportFindings> to update
the following attributes.

=over

=item *

C<Confidence>

=item *

C<Criticality>

=item *

C<RelatedFindings>

=item *

C<Severity>

=item *

C<Types>

=back

Instead, finding providers use C<FindingProviderFields> to provide
values for these attributes.


=head2 BatchUpdateAutomationRules

=over

=item UpdateAutomationRulesRequestItems => ArrayRef[L<Paws::SecurityHub::UpdateAutomationRulesRequestItem>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchUpdateAutomationRules>

Returns: a L<Paws::SecurityHub::BatchUpdateAutomationRulesResponse> instance

Updates one or more automation rules based on rule Amazon Resource
Names (ARNs) and input parameters.


=head2 BatchUpdateFindings

=over

=item FindingIdentifiers => ArrayRef[L<Paws::SecurityHub::AwsSecurityFindingIdentifier>]

=item [Confidence => Int]

=item [Criticality => Int]

=item [Note => L<Paws::SecurityHub::NoteUpdate>]

=item [RelatedFindings => ArrayRef[L<Paws::SecurityHub::RelatedFinding>]]

=item [Severity => L<Paws::SecurityHub::SeverityUpdate>]

=item [Types => ArrayRef[Str|Undef]]

=item [UserDefinedFields => L<Paws::SecurityHub::FieldMap>]

=item [VerificationState => Str]

=item [Workflow => L<Paws::SecurityHub::WorkflowUpdate>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchUpdateFindings>

Returns: a L<Paws::SecurityHub::BatchUpdateFindingsResponse> instance

Used by Security Hub customers to update information about their
investigation into a finding. Requested by administrator accounts or
member accounts. Administrator accounts can update findings for their
account and their member accounts. Member accounts can update findings
for their account.

Updates from C<BatchUpdateFindings> don't affect the value of
C<UpdatedAt> for a finding.

Administrator and member accounts can use C<BatchUpdateFindings> to
update the following finding fields and objects.

=over

=item *

C<Confidence>

=item *

C<Criticality>

=item *

C<Note>

=item *

C<RelatedFindings>

=item *

C<Severity>

=item *

C<Types>

=item *

C<UserDefinedFields>

=item *

C<VerificationState>

=item *

C<Workflow>

=back

You can configure IAM policies to restrict access to fields and field
values. For example, you might not want member accounts to be able to
suppress findings or change the finding severity. See Configuring
access to BatchUpdateFindings
(https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
in the I<Security Hub User Guide>.


=head2 BatchUpdateStandardsControlAssociations

=over

=item StandardsControlAssociationUpdates => ArrayRef[L<Paws::SecurityHub::StandardsControlAssociationUpdate>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchUpdateStandardsControlAssociations>

Returns: a L<Paws::SecurityHub::BatchUpdateStandardsControlAssociationsResponse> instance

For a batch of security controls and standards, this operation updates
the enablement status of a control in a standard.


=head2 CreateActionTarget

=over

=item Description => Str

=item Id => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateActionTarget>

Returns: a L<Paws::SecurityHub::CreateActionTargetResponse> instance

Creates a custom action target in Security Hub.

You can use custom actions on findings and insights in Security Hub to
trigger target actions in Amazon CloudWatch Events.


=head2 CreateAutomationRule

=over

=item Actions => ArrayRef[L<Paws::SecurityHub::AutomationRulesAction>]

=item Criteria => L<Paws::SecurityHub::AutomationRulesFindingFilters>

=item Description => Str

=item RuleName => Str

=item RuleOrder => Int

=item [IsTerminal => Bool]

=item [RuleStatus => Str]

=item [Tags => L<Paws::SecurityHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateAutomationRule>

Returns: a L<Paws::SecurityHub::CreateAutomationRuleResponse> instance

Creates an automation rule based on input parameters.


=head2 CreateConfigurationPolicy

=over

=item ConfigurationPolicy => L<Paws::SecurityHub::Policy>

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::SecurityHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateConfigurationPolicy>

Returns: a L<Paws::SecurityHub::CreateConfigurationPolicyResponse> instance

Creates a configuration policy with the defined configuration. Only the
Security Hub delegated administrator can invoke this operation from the
home Region.


=head2 CreateFindingAggregator

=over

=item RegionLinkingMode => Str

=item [Regions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateFindingAggregator>

Returns: a L<Paws::SecurityHub::CreateFindingAggregatorResponse> instance

The I<aggregation Region> is now called the I<home Region>.

Used to enable cross-Region aggregation. This operation can be invoked
from the home Region only.

For information about how cross-Region aggregation works, see
Understanding cross-Region aggregation in Security Hub
(https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html)
in the I<Security Hub User Guide>.


=head2 CreateInsight

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item GroupByAttribute => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateInsight>

Returns: a L<Paws::SecurityHub::CreateInsightResponse> instance

Creates a custom insight in Security Hub. An insight is a consolidation
of findings that relate to a security issue that requires attention or
remediation.

To group the related findings in the insight, use the
C<GroupByAttribute>.


=head2 CreateMembers

=over

=item AccountDetails => ArrayRef[L<Paws::SecurityHub::AccountDetails>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateMembers>

Returns: a L<Paws::SecurityHub::CreateMembersResponse> instance

Creates a member association in Security Hub between the specified
accounts and the account used to make the request, which is the
administrator account. If you are integrated with Organizations, then
the administrator account is designated by the organization management
account.

C<CreateMembers> is always used to add accounts that are not
organization members.

For accounts that are managed using Organizations, C<CreateMembers> is
only used in the following cases:

=over

=item *

Security Hub is not configured to automatically add new organization
accounts.

=item *

The account was disassociated or deleted in Security Hub.

=back

This action can only be used by an account that has Security Hub
enabled. To enable Security Hub, you can use the C<EnableSecurityHub>
operation.

For accounts that are not organization members, you create the account
association and then send an invitation to the member account. To send
the invitation, you use the C<InviteMembers> operation. If the account
owner accepts the invitation, the account becomes a member account in
Security Hub.

Accounts that are managed using Organizations don't receive an
invitation. They automatically become a member account in Security Hub.

=over

=item *

If the organization account does not have Security Hub enabled, then
Security Hub and the default standards are automatically enabled. Note
that Security Hub cannot be enabled automatically for the organization
management account. The organization management account must enable
Security Hub before the administrator account enables it as a member
account.

=item *

For organization accounts that already have Security Hub enabled,
Security Hub does not make any other changes to those accounts. It does
not change their enabled standards or controls.

=back

A permissions policy is added that permits the administrator account to
view the findings generated in the member account.

To remove the association between the administrator and member
accounts, use the C<DisassociateFromMasterAccount> or
C<DisassociateMembers> operation.


=head2 DeclineInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeclineInvitations>

Returns: a L<Paws::SecurityHub::DeclineInvitationsResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Declines invitations to become a Security Hub member account.

A prospective member account uses this operation to decline an
invitation to become a member.

Only member accounts that aren't part of an Amazon Web Services
organization should use this operation. Organization accounts don't
receive invitations.


=head2 DeleteActionTarget

=over

=item ActionTargetArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteActionTarget>

Returns: a L<Paws::SecurityHub::DeleteActionTargetResponse> instance

Deletes a custom action target from Security Hub.

Deleting a custom action target does not affect any findings or
insights that were already sent to Amazon CloudWatch Events using the
custom action.


=head2 DeleteConfigurationPolicy

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteConfigurationPolicy>

Returns: a L<Paws::SecurityHub::DeleteConfigurationPolicyResponse> instance

Deletes a configuration policy. Only the Security Hub delegated
administrator can invoke this operation from the home Region. For the
deletion to succeed, you must first disassociate a configuration policy
from target accounts, organizational units, or the root by invoking the
C<StartConfigurationPolicyDisassociation> operation.


=head2 DeleteFindingAggregator

=over

=item FindingAggregatorArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteFindingAggregator>

Returns: a L<Paws::SecurityHub::DeleteFindingAggregatorResponse> instance

The I<aggregation Region> is now called the I<home Region>.

Deletes a finding aggregator. When you delete the finding aggregator,
you stop cross-Region aggregation. Finding replication stops occurring
from the linked Regions to the home Region.

When you stop cross-Region aggregation, findings that were already
replicated and sent to the home Region are still visible from the home
Region. However, new findings and finding updates are no longer
replicated and sent to the home Region.


=head2 DeleteInsight

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInsight>

Returns: a L<Paws::SecurityHub::DeleteInsightResponse> instance

Deletes the insight specified by the C<InsightArn>.


=head2 DeleteInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInvitations>

Returns: a L<Paws::SecurityHub::DeleteInvitationsResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Deletes invitations to become a Security Hub member account.

A Security Hub administrator account can use this operation to delete
invitations sent to one or more prospective member accounts.

This operation is only used to delete invitations that are sent to
prospective member accounts that aren't part of an Amazon Web Services
organization. Organization accounts don't receive invitations.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteMembers>

Returns: a L<Paws::SecurityHub::DeleteMembersResponse> instance

Deletes the specified member accounts from Security Hub.

You can invoke this API only to delete accounts that became members
through invitation. You can't invoke this API to delete accounts that
belong to an Organizations organization.


=head2 DescribeActionTargets

=over

=item [ActionTargetArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeActionTargets>

Returns: a L<Paws::SecurityHub::DescribeActionTargetsResponse> instance

Returns a list of the custom action targets in Security Hub in your
account.


=head2 DescribeHub

=over

=item [HubArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeHub>

Returns: a L<Paws::SecurityHub::DescribeHubResponse> instance

Returns details about the Hub resource in your account, including the
C<HubArn> and the time when you enabled Security Hub.


=head2 DescribeOrganizationConfiguration






Each argument is described in detail in: L<Paws::SecurityHub::DescribeOrganizationConfiguration>

Returns: a L<Paws::SecurityHub::DescribeOrganizationConfigurationResponse> instance

Returns information about the way your organization is configured in
Security Hub. Only the Security Hub administrator account can invoke
this operation.


=head2 DescribeProducts

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeProducts>

Returns: a L<Paws::SecurityHub::DescribeProductsResponse> instance

Returns information about product integrations in Security Hub.

You can optionally provide an integration ARN. If you provide an
integration ARN, then the results only include that integration.

If you don't provide an integration ARN, then the results include all
of the available product integrations.


=head2 DescribeStandards

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeStandards>

Returns: a L<Paws::SecurityHub::DescribeStandardsResponse> instance

Returns a list of the available standards in Security Hub.

For each standard, the results include the standard ARN, the name, and
a description.


=head2 DescribeStandardsControls

=over

=item StandardsSubscriptionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeStandardsControls>

Returns: a L<Paws::SecurityHub::DescribeStandardsControlsResponse> instance

Returns a list of security standards controls.

For each control, the results include information about whether it is
currently enabled, the severity, and a link to remediation information.

This operation returns an empty list for standard subscriptions where
C<StandardsControlsUpdatable> has value C<NOT_READY_FOR_UPDATES>.


=head2 DisableImportFindingsForProduct

=over

=item ProductSubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::DisableImportFindingsForProductResponse> instance

Disables the integration of the specified product with Security Hub.
After the integration is disabled, findings from that product are no
longer sent to Security Hub.


=head2 DisableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableOrganizationAdminAccount>

Returns: a L<Paws::SecurityHub::DisableOrganizationAdminAccountResponse> instance

Disables a Security Hub administrator account. Can only be called by
the organization management account.


=head2 DisableSecurityHub






Each argument is described in detail in: L<Paws::SecurityHub::DisableSecurityHub>

Returns: a L<Paws::SecurityHub::DisableSecurityHubResponse> instance

Disables Security Hub in your account only in the current Amazon Web
Services Region. To disable Security Hub in all Regions, you must
submit one request per Region where you have enabled Security Hub.

You can't disable Security Hub in an account that is currently the
Security Hub administrator.

When you disable Security Hub, your existing findings and insights and
any Security Hub configuration settings are deleted after 90 days and
cannot be recovered. Any standards that were enabled are disabled, and
your administrator and member account associations are removed.

If you want to save your existing findings, you must export them before
you disable Security Hub.


=head2 DisassociateFromAdministratorAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromAdministratorAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromAdministratorAccountResponse> instance

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.


=head2 DisassociateFromMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromMasterAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromMasterAccountResponse> instance

This method is deprecated. Instead, use
C<DisassociateFromAdministratorAccount>.

The Security Hub console continues to use
C<DisassociateFromMasterAccount>. It will eventually change to use
C<DisassociateFromAdministratorAccount>. Any IAM policies that
specifically control access to this function must continue to use
C<DisassociateFromMasterAccount>. You should also add
C<DisassociateFromAdministratorAccount> to your policies to ensure that
the correct permissions are in place after the console begins to use
C<DisassociateFromAdministratorAccount>.

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.


=head2 DisassociateMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisassociateMembers>

Returns: a L<Paws::SecurityHub::DisassociateMembersResponse> instance

Disassociates the specified member accounts from the associated
administrator account.

Can be used to disassociate both accounts that are managed using
Organizations and accounts that were invited manually.


=head2 EnableImportFindingsForProduct

=over

=item ProductArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::EnableImportFindingsForProductResponse> instance

Enables the integration of a partner product with Security Hub.
Integrated products send findings to Security Hub.

When you enable a product integration, a permissions policy that grants
permission for the product to send findings to Security Hub is applied.


=head2 EnableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableOrganizationAdminAccount>

Returns: a L<Paws::SecurityHub::EnableOrganizationAdminAccountResponse> instance

Designates the Security Hub administrator account for an organization.
Can only be called by the organization management account.


=head2 EnableSecurityHub

=over

=item [ControlFindingGenerator => Str]

=item [EnableDefaultStandards => Bool]

=item [Tags => L<Paws::SecurityHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableSecurityHub>

Returns: a L<Paws::SecurityHub::EnableSecurityHubResponse> instance

Enables Security Hub for your account in the current Region or the
Region you specify in the request.

When you enable Security Hub, you grant to Security Hub the permissions
necessary to gather findings from other services that are integrated
with Security Hub.

When you use the C<EnableSecurityHub> operation to enable Security Hub,
you also automatically enable the following standards:

=over

=item *

Center for Internet Security (CIS) Amazon Web Services Foundations
Benchmark v1.2.0

=item *

Amazon Web Services Foundational Security Best Practices

=back

Other standards are not automatically enabled.

To opt out of automatically enabled standards, set
C<EnableDefaultStandards> to C<false>.

After you enable Security Hub, to enable a standard, use the
C<BatchEnableStandards> operation. To disable a standard, use the
C<BatchDisableStandards> operation.

To learn more, see the setup information
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
in the I<Security Hub User Guide>.


=head2 GetAdministratorAccount






Each argument is described in detail in: L<Paws::SecurityHub::GetAdministratorAccount>

Returns: a L<Paws::SecurityHub::GetAdministratorAccountResponse> instance

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using
Organizations and accounts that were invited manually.


=head2 GetConfigurationPolicy

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetConfigurationPolicy>

Returns: a L<Paws::SecurityHub::GetConfigurationPolicyResponse> instance

Provides information about a configuration policy. Only the Security
Hub delegated administrator can invoke this operation from the home
Region.


=head2 GetConfigurationPolicyAssociation

=over

=item Target => L<Paws::SecurityHub::Target>


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetConfigurationPolicyAssociation>

Returns: a L<Paws::SecurityHub::GetConfigurationPolicyAssociationResponse> instance

Returns the association between a configuration and a target account,
organizational unit, or the root. The configuration can be a
configuration policy or self-managed behavior. Only the Security Hub
delegated administrator can invoke this operation from the home Region.


=head2 GetEnabledStandards

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StandardsSubscriptionArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetEnabledStandards>

Returns: a L<Paws::SecurityHub::GetEnabledStandardsResponse> instance

Returns a list of the standards that are currently enabled.


=head2 GetFindingAggregator

=over

=item FindingAggregatorArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetFindingAggregator>

Returns: a L<Paws::SecurityHub::GetFindingAggregatorResponse> instance

The I<aggregation Region> is now called the I<home Region>.

Returns the current configuration in the calling account for
cross-Region aggregation. A finding aggregator is a resource that
establishes the home Region and any linked Regions.


=head2 GetFindingHistory

=over

=item FindingIdentifier => L<Paws::SecurityHub::AwsSecurityFindingIdentifier>

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetFindingHistory>

Returns: a L<Paws::SecurityHub::GetFindingHistoryResponse> instance

Returns history for a Security Hub finding in the last 90 days. The
history includes changes made to any fields in the Amazon Web Services
Security Finding Format (ASFF).


=head2 GetFindings

=over

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetFindings>

Returns: a L<Paws::SecurityHub::GetFindingsResponse> instance

Returns a list of findings that match the specified criteria.

If cross-Region aggregation is enabled, then when you call
C<GetFindings> from the home Region, the results include all of the
matching findings from both the home Region and linked Regions.


=head2 GetInsightResults

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetInsightResults>

Returns: a L<Paws::SecurityHub::GetInsightResultsResponse> instance

Lists the results of the Security Hub insight specified by the insight
ARN.


=head2 GetInsights

=over

=item [InsightArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetInsights>

Returns: a L<Paws::SecurityHub::GetInsightsResponse> instance

Lists and describes insights for the specified insight ARNs.


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::SecurityHub::GetInvitationsCount>

Returns: a L<Paws::SecurityHub::GetInvitationsCountResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Returns the count of all Security Hub membership invitations that were
sent to the calling member account, not including the currently
accepted invitation.


=head2 GetMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::GetMasterAccount>

Returns: a L<Paws::SecurityHub::GetMasterAccountResponse> instance

This method is deprecated. Instead, use C<GetAdministratorAccount>.

The Security Hub console continues to use C<GetMasterAccount>. It will
eventually change to use C<GetAdministratorAccount>. Any IAM policies
that specifically control access to this function must continue to use
C<GetMasterAccount>. You should also add C<GetAdministratorAccount> to
your policies to ensure that the correct permissions are in place after
the console begins to use C<GetAdministratorAccount>.

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using
Organizations and accounts that were invited manually.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetMembers>

Returns: a L<Paws::SecurityHub::GetMembersResponse> instance

Returns the details for the Security Hub member accounts for the
specified account IDs.

An administrator account can be either the delegated Security Hub
administrator account for an organization or an administrator account
that enabled Security Hub manually.

The results include both member accounts that are managed using
Organizations and accounts that were invited manually.


=head2 GetSecurityControlDefinition

=over

=item SecurityControlId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetSecurityControlDefinition>

Returns: a L<Paws::SecurityHub::GetSecurityControlDefinitionResponse> instance

Retrieves the definition of a security control. The definition includes
the control title, description, Region availability, parameter
definitions, and other details.


=head2 InviteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::InviteMembers>

Returns: a L<Paws::SecurityHub::InviteMembersResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Invites other Amazon Web Services accounts to become member accounts
for the Security Hub administrator account that the invitation is sent
from.

This operation is only used to invite accounts that don't belong to an
Amazon Web Services organization. Organization accounts don't receive
invitations.

Before you can use this action to invite a member, you must first use
the C<CreateMembers> action to create the member account in Security
Hub.

When the account owner enables Security Hub and accepts the invitation
to become a member account, the administrator account can view the
findings generated in the member account.


=head2 ListAutomationRules

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListAutomationRules>

Returns: a L<Paws::SecurityHub::ListAutomationRulesResponse> instance

A list of automation rules and their metadata for the calling account.


=head2 ListConfigurationPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListConfigurationPolicies>

Returns: a L<Paws::SecurityHub::ListConfigurationPoliciesResponse> instance

Lists the configuration policies that the Security Hub delegated
administrator has created for your organization. Only the delegated
administrator can invoke this operation from the home Region.


=head2 ListConfigurationPolicyAssociations

=over

=item [Filters => L<Paws::SecurityHub::AssociationFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListConfigurationPolicyAssociations>

Returns: a L<Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse> instance

Provides information about the associations for your configuration
policies and self-managed behavior. Only the Security Hub delegated
administrator can invoke this operation from the home Region.


=head2 ListEnabledProductsForImport

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListEnabledProductsForImport>

Returns: a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance

Lists all findings-generating solutions (products) that you are
subscribed to receive findings from in Security Hub.


=head2 ListFindingAggregators

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListFindingAggregators>

Returns: a L<Paws::SecurityHub::ListFindingAggregatorsResponse> instance

If cross-Region aggregation is enabled, then C<ListFindingAggregators>
returns the Amazon Resource Name (ARN) of the finding aggregator. You
can run this operation from any Amazon Web Services Region.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListInvitations>

Returns: a L<Paws::SecurityHub::ListInvitationsResponse> instance

We recommend using Organizations instead of Security Hub invitations to
manage your member accounts. For information, see Managing Security Hub
administrator and member accounts with Organizations
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
in the I<Security Hub User Guide>.

Lists all Security Hub membership invitations that were sent to the
calling account.

Only accounts that are managed by invitation can use this operation.
Accounts that are managed using the integration with Organizations
don't receive invitations.


=head2 ListMembers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Bool]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListMembers>

Returns: a L<Paws::SecurityHub::ListMembersResponse> instance

Lists details about all member accounts for the current Security Hub
administrator account.

The results include both member accounts that belong to an organization
and member accounts that were invited manually.


=head2 ListOrganizationAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListOrganizationAdminAccounts>

Returns: a L<Paws::SecurityHub::ListOrganizationAdminAccountsResponse> instance

Lists the Security Hub administrator accounts. Can only be called by
the organization management account.


=head2 ListSecurityControlDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StandardsArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListSecurityControlDefinitions>

Returns: a L<Paws::SecurityHub::ListSecurityControlDefinitionsResponse> instance

Lists all of the security controls that apply to a specified standard.


=head2 ListStandardsControlAssociations

=over

=item SecurityControlId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListStandardsControlAssociations>

Returns: a L<Paws::SecurityHub::ListStandardsControlAssociationsResponse> instance

Specifies whether a control is currently enabled or disabled in each
enabled standard in the calling account.

This operation omits standards control associations for standard
subscriptions where C<StandardsControlsUpdatable> has value
C<NOT_READY_FOR_UPDATES>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListTagsForResource>

Returns: a L<Paws::SecurityHub::ListTagsForResourceResponse> instance

Returns a list of tags associated with a resource.


=head2 StartConfigurationPolicyAssociation

=over

=item ConfigurationPolicyIdentifier => Str

=item Target => L<Paws::SecurityHub::Target>


=back

Each argument is described in detail in: L<Paws::SecurityHub::StartConfigurationPolicyAssociation>

Returns: a L<Paws::SecurityHub::StartConfigurationPolicyAssociationResponse> instance

Associates a target account, organizational unit, or the root with a
specified configuration. The target can be associated with a
configuration policy or self-managed behavior. Only the Security Hub
delegated administrator can invoke this operation from the home Region.


=head2 StartConfigurationPolicyDisassociation

=over

=item ConfigurationPolicyIdentifier => Str

=item [Target => L<Paws::SecurityHub::Target>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::StartConfigurationPolicyDisassociation>

Returns: a L<Paws::SecurityHub::StartConfigurationPolicyDisassociationResponse> instance

Disassociates a target account, organizational unit, or the root from a
specified configuration. When you disassociate a configuration from its
target, the target inherits the configuration of the closest parent. If
thereE<rsquo>s no configuration to inherit, the target retains its
settings but becomes a self-managed account. A target can be
disassociated from a configuration policy or self-managed behavior.
Only the Security Hub delegated administrator can invoke this operation
from the home Region.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SecurityHub::TagMap>


=back

Each argument is described in detail in: L<Paws::SecurityHub::TagResource>

Returns: a L<Paws::SecurityHub::TagResourceResponse> instance

Adds one or more tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UntagResource>

Returns: a L<Paws::SecurityHub::UntagResourceResponse> instance

Removes one or more tags from a resource.


=head2 UpdateActionTarget

=over

=item ActionTargetArn => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateActionTarget>

Returns: a L<Paws::SecurityHub::UpdateActionTargetResponse> instance

Updates the name and description of a custom action target in Security
Hub.


=head2 UpdateConfigurationPolicy

=over

=item Identifier => Str

=item [ConfigurationPolicy => L<Paws::SecurityHub::Policy>]

=item [Description => Str]

=item [Name => Str]

=item [UpdatedReason => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateConfigurationPolicy>

Returns: a L<Paws::SecurityHub::UpdateConfigurationPolicyResponse> instance

Updates a configuration policy. Only the Security Hub delegated
administrator can invoke this operation from the home Region.


=head2 UpdateFindingAggregator

=over

=item FindingAggregatorArn => Str

=item RegionLinkingMode => Str

=item [Regions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateFindingAggregator>

Returns: a L<Paws::SecurityHub::UpdateFindingAggregatorResponse> instance

The I<aggregation Region> is now called the I<home Region>.

Updates cross-Region aggregation settings. You can use this operation
to update the Region linking mode and the list of included or excluded
Amazon Web Services Regions. However, you can't use this operation to
change the home Region.

You can invoke this operation from the current home Region only.


=head2 UpdateFindings

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item [Note => L<Paws::SecurityHub::NoteUpdate>]

=item [RecordState => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateFindings>

Returns: a L<Paws::SecurityHub::UpdateFindingsResponse> instance

C<UpdateFindings> is a deprecated operation. Instead of
C<UpdateFindings>, use the C<BatchUpdateFindings> operation.

The C<UpdateFindings> operation updates the C<Note> and C<RecordState>
of the Security Hub aggregated findings that the filter attributes
specify. Any member account that can view the finding can also see the
update to the finding.

Finding updates made with C<UpdateFindings> aren't persisted if the
same finding is later updated by the finding provider through the
C<BatchImportFindings> operation. In addition, Security Hub doesn't
record updates made with C<UpdateFindings> in the finding history.


=head2 UpdateInsight

=over

=item InsightArn => Str

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [GroupByAttribute => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateInsight>

Returns: a L<Paws::SecurityHub::UpdateInsightResponse> instance

Updates the Security Hub insight identified by the specified insight
ARN.


=head2 UpdateOrganizationConfiguration

=over

=item AutoEnable => Bool

=item [AutoEnableStandards => Str]

=item [OrganizationConfiguration => L<Paws::SecurityHub::OrganizationConfiguration>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateOrganizationConfiguration>

Returns: a L<Paws::SecurityHub::UpdateOrganizationConfigurationResponse> instance

Updates the configuration of your organization in Security Hub. Only
the Security Hub administrator account can invoke this operation.


=head2 UpdateSecurityControl

=over

=item Parameters => L<Paws::SecurityHub::Parameters>

=item SecurityControlId => Str

=item [LastUpdateReason => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateSecurityControl>

Returns: a L<Paws::SecurityHub::UpdateSecurityControlResponse> instance

Updates the properties of a security control.


=head2 UpdateSecurityHubConfiguration

=over

=item [AutoEnableControls => Bool]

=item [ControlFindingGenerator => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateSecurityHubConfiguration>

Returns: a L<Paws::SecurityHub::UpdateSecurityHubConfigurationResponse> instance

Updates configuration options for Security Hub.


=head2 UpdateStandardsControl

=over

=item StandardsControlArn => Str

=item [ControlStatus => Str]

=item [DisabledReason => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateStandardsControl>

Returns: a L<Paws::SecurityHub::UpdateStandardsControlResponse> instance

Used to control whether an individual security standard control is
enabled or disabled.

Calls to this operation return a C<RESOURCE_NOT_FOUND_EXCEPTION> error
when the standard subscription for the control has
C<StandardsControlsUpdatable> value C<NOT_READY_FOR_UPDATES>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllActionTargets(sub { },[ActionTargetArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllActionTargets([ActionTargetArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActionTargets, passing the object as the first parameter, and the string 'ActionTargets' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::DescribeActionTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllProducts(sub { },[MaxResults => Int, NextToken => Str, ProductArn => Str])

=head2 DescribeAllProducts([MaxResults => Int, NextToken => Str, ProductArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Products, passing the object as the first parameter, and the string 'Products' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::DescribeProductsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStandards(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllStandards([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Standards, passing the object as the first parameter, and the string 'Standards' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::DescribeStandardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStandardsControls(sub { },StandardsSubscriptionArn => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllStandardsControls(StandardsSubscriptionArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Controls, passing the object as the first parameter, and the string 'Controls' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::DescribeStandardsControlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllEnabledStandards(sub { },[MaxResults => Int, NextToken => Str, StandardsSubscriptionArns => ArrayRef[Str|Undef]])

=head2 GetAllEnabledStandards([MaxResults => Int, NextToken => Str, StandardsSubscriptionArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StandardsSubscriptions, passing the object as the first parameter, and the string 'StandardsSubscriptions' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetEnabledStandardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllFindingHistory(sub { },FindingIdentifier => L<Paws::SecurityHub::AwsSecurityFindingIdentifier>, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 GetAllFindingHistory(FindingIdentifier => L<Paws::SecurityHub::AwsSecurityFindingIdentifier>, [EndTime => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Records, passing the object as the first parameter, and the string 'Records' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetFindingHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllFindings(sub { },[Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>, MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]])

=head2 GetAllFindings([Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>, MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Findings, passing the object as the first parameter, and the string 'Findings' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInsights(sub { },[InsightArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllInsights([InsightArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Insights, passing the object as the first parameter, and the string 'Insights' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetInsightsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurationPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationPolicySummaries, passing the object as the first parameter, and the string 'ConfigurationPolicySummaries' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListConfigurationPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationPolicyAssociations(sub { },[Filters => L<Paws::SecurityHub::AssociationFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurationPolicyAssociations([Filters => L<Paws::SecurityHub::AssociationFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationPolicyAssociationSummaries, passing the object as the first parameter, and the string 'ConfigurationPolicyAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnabledProductsForImport(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnabledProductsForImport([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProductSubscriptions, passing the object as the first parameter, and the string 'ProductSubscriptions' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindingAggregators(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFindingAggregators([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FindingAggregators, passing the object as the first parameter, and the string 'FindingAggregators' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListFindingAggregatorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvitations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInvitations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Invitations, passing the object as the first parameter, and the string 'Invitations' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },[MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])

=head2 ListAllMembers([MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationAdminAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizationAdminAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AdminAccounts, passing the object as the first parameter, and the string 'AdminAccounts' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListOrganizationAdminAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityControlDefinitions(sub { },[MaxResults => Int, NextToken => Str, StandardsArn => Str])

=head2 ListAllSecurityControlDefinitions([MaxResults => Int, NextToken => Str, StandardsArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityControlDefinitions, passing the object as the first parameter, and the string 'SecurityControlDefinitions' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListSecurityControlDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStandardsControlAssociations(sub { },SecurityControlId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllStandardsControlAssociations(SecurityControlId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StandardsControlAssociationSummaries, passing the object as the first parameter, and the string 'StandardsControlAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListStandardsControlAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

