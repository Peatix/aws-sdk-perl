package Paws::SSOAdmin;
  use Moose;
  sub service { 'sso' }
  sub signing_name { 'sso' }
  sub version { '2020-07-20' }
  sub target_prefix { 'SWBExternalService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AttachCustomerManagedPolicyReferenceToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::AttachCustomerManagedPolicyReferenceToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachManagedPolicyToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::AttachManagedPolicyToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccountAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateAccountAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplicationAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateApplicationAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreatePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrustedTokenIssuer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateTrustedTokenIssuer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteAccountAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationAccessScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteApplicationAccessScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteApplicationAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationAuthenticationMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteApplicationAuthenticationMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteApplicationGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInlinePolicyFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionsBoundaryFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeletePermissionsBoundaryFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeletePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrustedTokenIssuer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteTrustedTokenIssuer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAssignmentCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeAccountAssignmentCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAssignmentDeletionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeApplicationAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeApplicationProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePermissionSetProvisioningStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribePermissionSetProvisioningStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrustedTokenIssuer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeTrustedTokenIssuer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachCustomerManagedPolicyReferenceFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachManagedPolicyFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DetachManagedPolicyFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationAccessScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetApplicationAccessScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationAssignmentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetApplicationAssignmentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationAuthenticationMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetApplicationAuthenticationMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetApplicationGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInlinePolicyForPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetInlinePolicyForPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermissionsBoundaryForPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetPermissionsBoundaryForPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignmentCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignmentCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignmentDeletionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignmentDeletionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignmentsForPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignmentsForPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountsForProvisionedPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationAccessScopes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationAccessScopes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationAssignments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationAssignments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationAssignmentsForPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationAssignmentsForPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationAuthenticationMethods {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationAuthenticationMethods', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplicationProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomerManagedPolicyReferencesInPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedPoliciesInPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListManagedPoliciesInPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSetProvisioningStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSetProvisioningStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSetsProvisionedToAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrustedTokenIssuers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListTrustedTokenIssuers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ProvisionPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApplicationAccessScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutApplicationAccessScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApplicationAssignmentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutApplicationAssignmentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApplicationAuthenticationMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutApplicationAuthenticationMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApplicationGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutApplicationGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInlinePolicyToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutInlinePolicyToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermissionsBoundaryToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdatePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrustedTokenIssuer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdateTrustedTokenIssuer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountAssignmentCreationStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignmentCreationStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignmentCreationStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignmentsCreationStatus }, @{ $next_result->AccountAssignmentsCreationStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignmentsCreationStatus') foreach (@{ $result->AccountAssignmentsCreationStatus });
        $result = $self->ListAccountAssignmentCreationStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignmentsCreationStatus') foreach (@{ $result->AccountAssignmentsCreationStatus });
    }

    return undef
  }
  sub ListAllAccountAssignmentDeletionStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignmentDeletionStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignmentDeletionStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignmentsDeletionStatus }, @{ $next_result->AccountAssignmentsDeletionStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignmentsDeletionStatus') foreach (@{ $result->AccountAssignmentsDeletionStatus });
        $result = $self->ListAccountAssignmentDeletionStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignmentsDeletionStatus') foreach (@{ $result->AccountAssignmentsDeletionStatus });
    }

    return undef
  }
  sub ListAllAccountAssignments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignments(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignments }, @{ $next_result->AccountAssignments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
        $result = $self->ListAccountAssignments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
    }

    return undef
  }
  sub ListAllAccountAssignmentsForPrincipal {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignmentsForPrincipal(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignmentsForPrincipal(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignments }, @{ $next_result->AccountAssignments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
        $result = $self->ListAccountAssignmentsForPrincipal(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
    }

    return undef
  }
  sub ListAllAccountsForProvisionedPermissionSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountsForProvisionedPermissionSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountsForProvisionedPermissionSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountIds }, @{ $next_result->AccountIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountIds') foreach (@{ $result->AccountIds });
        $result = $self->ListAccountsForProvisionedPermissionSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountIds') foreach (@{ $result->AccountIds });
    }

    return undef
  }
  sub ListAllApplicationAccessScopes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationAccessScopes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationAccessScopes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Scopes }, @{ $next_result->Scopes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Scopes') foreach (@{ $result->Scopes });
        $result = $self->ListApplicationAccessScopes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Scopes') foreach (@{ $result->Scopes });
    }

    return undef
  }
  sub ListAllApplicationAssignments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationAssignments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationAssignments(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationAssignments }, @{ $next_result->ApplicationAssignments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationAssignments') foreach (@{ $result->ApplicationAssignments });
        $result = $self->ListApplicationAssignments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationAssignments') foreach (@{ $result->ApplicationAssignments });
    }

    return undef
  }
  sub ListAllApplicationAssignmentsForPrincipal {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationAssignmentsForPrincipal(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationAssignmentsForPrincipal(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationAssignments }, @{ $next_result->ApplicationAssignments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationAssignments') foreach (@{ $result->ApplicationAssignments });
        $result = $self->ListApplicationAssignmentsForPrincipal(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationAssignments') foreach (@{ $result->ApplicationAssignments });
    }

    return undef
  }
  sub ListAllApplicationAuthenticationMethods {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationAuthenticationMethods(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationAuthenticationMethods(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthenticationMethods }, @{ $next_result->AuthenticationMethods };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthenticationMethods') foreach (@{ $result->AuthenticationMethods });
        $result = $self->ListApplicationAuthenticationMethods(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthenticationMethods') foreach (@{ $result->AuthenticationMethods });
    }

    return undef
  }
  sub ListAllApplicationGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationGrants(@_, NextToken => $next_result->NextToken);
        push @{ $result->Grants }, @{ $next_result->Grants };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Grants') foreach (@{ $result->Grants });
        $result = $self->ListApplicationGrants(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Grants') foreach (@{ $result->Grants });
    }

    return undef
  }
  sub ListAllApplicationProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationProviders }, @{ $next_result->ApplicationProviders };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationProviders') foreach (@{ $result->ApplicationProviders });
        $result = $self->ListApplicationProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationProviders') foreach (@{ $result->ApplicationProviders });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->Applications }, @{ $next_result->Applications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Applications') foreach (@{ $result->Applications });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Applications') foreach (@{ $result->Applications });
    }

    return undef
  }
  sub ListAllCustomerManagedPolicyReferencesInPermissionSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomerManagedPolicyReferencesInPermissionSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomerManagedPolicyReferencesInPermissionSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomerManagedPolicyReferences }, @{ $next_result->CustomerManagedPolicyReferences };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomerManagedPolicyReferences') foreach (@{ $result->CustomerManagedPolicyReferences });
        $result = $self->ListCustomerManagedPolicyReferencesInPermissionSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomerManagedPolicyReferences') foreach (@{ $result->CustomerManagedPolicyReferences });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllManagedPoliciesInPermissionSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedPoliciesInPermissionSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedPoliciesInPermissionSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttachedManagedPolicies }, @{ $next_result->AttachedManagedPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttachedManagedPolicies') foreach (@{ $result->AttachedManagedPolicies });
        $result = $self->ListManagedPoliciesInPermissionSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttachedManagedPolicies') foreach (@{ $result->AttachedManagedPolicies });
    }

    return undef
  }
  sub ListAllPermissionSetProvisioningStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSetProvisioningStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSetProvisioningStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSetsProvisioningStatus }, @{ $next_result->PermissionSetsProvisioningStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSetsProvisioningStatus') foreach (@{ $result->PermissionSetsProvisioningStatus });
        $result = $self->ListPermissionSetProvisioningStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSetsProvisioningStatus') foreach (@{ $result->PermissionSetsProvisioningStatus });
    }

    return undef
  }
  sub ListAllPermissionSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSets }, @{ $next_result->PermissionSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
        $result = $self->ListPermissionSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
    }

    return undef
  }
  sub ListAllPermissionSetsProvisionedToAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSetsProvisionedToAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSetsProvisionedToAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSets }, @{ $next_result->PermissionSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
        $result = $self->ListPermissionSetsProvisionedToAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTrustedTokenIssuers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrustedTokenIssuers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrustedTokenIssuers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrustedTokenIssuers }, @{ $next_result->TrustedTokenIssuers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrustedTokenIssuers') foreach (@{ $result->TrustedTokenIssuers });
        $result = $self->ListTrustedTokenIssuers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrustedTokenIssuers') foreach (@{ $result->TrustedTokenIssuers });
    }

    return undef
  }


  sub operations { qw/AttachCustomerManagedPolicyReferenceToPermissionSet AttachManagedPolicyToPermissionSet CreateAccountAssignment CreateApplication CreateApplicationAssignment CreateInstance CreateInstanceAccessControlAttributeConfiguration CreatePermissionSet CreateTrustedTokenIssuer DeleteAccountAssignment DeleteApplication DeleteApplicationAccessScope DeleteApplicationAssignment DeleteApplicationAuthenticationMethod DeleteApplicationGrant DeleteInlinePolicyFromPermissionSet DeleteInstance DeleteInstanceAccessControlAttributeConfiguration DeletePermissionsBoundaryFromPermissionSet DeletePermissionSet DeleteTrustedTokenIssuer DescribeAccountAssignmentCreationStatus DescribeAccountAssignmentDeletionStatus DescribeApplication DescribeApplicationAssignment DescribeApplicationProvider DescribeInstance DescribeInstanceAccessControlAttributeConfiguration DescribePermissionSet DescribePermissionSetProvisioningStatus DescribeTrustedTokenIssuer DetachCustomerManagedPolicyReferenceFromPermissionSet DetachManagedPolicyFromPermissionSet GetApplicationAccessScope GetApplicationAssignmentConfiguration GetApplicationAuthenticationMethod GetApplicationGrant GetInlinePolicyForPermissionSet GetPermissionsBoundaryForPermissionSet ListAccountAssignmentCreationStatus ListAccountAssignmentDeletionStatus ListAccountAssignments ListAccountAssignmentsForPrincipal ListAccountsForProvisionedPermissionSet ListApplicationAccessScopes ListApplicationAssignments ListApplicationAssignmentsForPrincipal ListApplicationAuthenticationMethods ListApplicationGrants ListApplicationProviders ListApplications ListCustomerManagedPolicyReferencesInPermissionSet ListInstances ListManagedPoliciesInPermissionSet ListPermissionSetProvisioningStatus ListPermissionSets ListPermissionSetsProvisionedToAccount ListTagsForResource ListTrustedTokenIssuers ProvisionPermissionSet PutApplicationAccessScope PutApplicationAssignmentConfiguration PutApplicationAuthenticationMethod PutApplicationGrant PutInlinePolicyToPermissionSet PutPermissionsBoundaryToPermissionSet TagResource UntagResource UpdateApplication UpdateInstance UpdateInstanceAccessControlAttributeConfiguration UpdatePermissionSet UpdateTrustedTokenIssuer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin - Perl Interface to AWS AWS Single Sign-On Admin

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOAdmin');
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

IAM Identity Center is the Amazon Web Services solution for connecting
your workforce users to Amazon Web Services managed applications and
other Amazon Web Services resources. You can connect your existing
identity provider and synchronize users and groups from your directory,
or create and manage your users directly in IAM Identity Center. You
can then use IAM Identity Center for either or both of the following:

=over

=item *

User access to applications

=item *

User access to Amazon Web Services accounts

=back

This guide provides information about single sign-on operations that
you can use for access to applications and Amazon Web Services
accounts. For information about IAM Identity Center features, see the
IAM Identity Center User Guide
(https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

IAM Identity Center uses the C<sso> and C<identitystore> API
namespaces.

Many API operations for IAM Identity Center rely on identifiers for
users and groups, known as principals. For more information about how
to work with principals and principal IDs in IAM Identity Center, see
the Identity Store API Reference
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).

Amazon Web Services provides SDKs that consist of libraries and sample
code for various programming languages and platforms (Java, Ruby, .Net,
iOS, Android, and more). The SDKs provide a convenient way to create
programmatic access to IAM Identity Center and other Amazon Web
Services services. For more information about the Amazon Web Services
SDKs, including how to download and install them, see Tools for Amazon
Web Services (http://aws.amazon.com/tools/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso-2020-07-20>


=head1 METHODS

=head2 AttachCustomerManagedPolicyReferenceToPermissionSet

=over

=item CustomerManagedPolicyReference => L<Paws::SSOAdmin::CustomerManagedPolicyReference>

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::AttachCustomerManagedPolicyReferenceToPermissionSet>

Returns: a L<Paws::SSOAdmin::AttachCustomerManagedPolicyReferenceToPermissionSetResponse> instance

Attaches the specified customer managed policy to the specified
PermissionSet.


=head2 AttachManagedPolicyToPermissionSet

=over

=item InstanceArn => Str

=item ManagedPolicyArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::AttachManagedPolicyToPermissionSet>

Returns: a L<Paws::SSOAdmin::AttachManagedPolicyToPermissionSetResponse> instance

Attaches an Amazon Web Services managed policy ARN to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call C< ProvisionPermissionSet > after
this operation. Calling C<ProvisionPermissionSet> applies the
corresponding IAM policy updates to all assigned accounts.


=head2 CreateAccountAssignment

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item TargetId => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateAccountAssignment>

Returns: a L<Paws::SSOAdmin::CreateAccountAssignmentResponse> instance

Assigns access to a principal for a specified Amazon Web Services
account using a specified permission set.

The term I<principal> here refers to a user or group that is defined in
IAM Identity Center.

As part of a successful C<CreateAccountAssignment> call, the specified
permission set will automatically be provisioned to the account in the
form of an IAM policy. That policy is attached to the IAM role created
in IAM Identity Center. If the permission set is subsequently updated,
the corresponding IAM policies attached to roles in your accounts will
not be updated automatically. In this case, you must call C<
ProvisionPermissionSet > to make these updates.

After a successful response, call
C<DescribeAccountAssignmentCreationStatus> to describe the status of an
assignment creation request.


=head2 CreateApplication

=over

=item ApplicationProviderArn => Str

=item InstanceArn => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [PortalOptions => L<Paws::SSOAdmin::PortalOptions>]

=item [Status => Str]

=item [Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateApplication>

Returns: a L<Paws::SSOAdmin::CreateApplicationResponse> instance

Creates an OAuth 2.0 customer managed application in IAM Identity
Center for the given application provider.

This API does not support creating SAML 2.0 customer managed
applications or Amazon Web Services managed applications. To learn how
to create an Amazon Web Services managed application, see the
application user guide. You can create a SAML 2.0 customer managed
application in the Amazon Web Services Management Console only. See
Setting up customer managed SAML 2.0 applications
(https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-setup.html).
For more information on these application types, see Amazon Web
Services managed applications
(https://docs.aws.amazon.com/singlesignon/latest/userguide/awsapps.html).


=head2 CreateApplicationAssignment

=over

=item ApplicationArn => Str

=item PrincipalId => Str

=item PrincipalType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateApplicationAssignment>

Returns: a L<Paws::SSOAdmin::CreateApplicationAssignmentResponse> instance

Grant application access to a user or group.


=head2 CreateInstance

=over

=item [ClientToken => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateInstance>

Returns: a L<Paws::SSOAdmin::CreateInstanceResponse> instance

Creates an instance of IAM Identity Center for a standalone Amazon Web
Services account that is not managed by Organizations or a member
Amazon Web Services account in an organization. You can create only one
instance per account and across all Amazon Web Services Regions.

The CreateInstance request is rejected if the following apply:

=over

=item *

The instance is created within the organization management account.

=item *

An instance already exists in the same account.

=back



=head2 CreateInstanceAccessControlAttributeConfiguration

=over

=item InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfigurationResponse> instance

Enables the attributes-based access control (ABAC) feature for the
specified IAM Identity Center instance. You can also specify new
attributes to add to your ABAC configuration during the enabling
process. For more information about ABAC, see Attribute-Based Access
Control in the I<IAM Identity Center User Guide>.

After a successful response, call
C<DescribeInstanceAccessControlAttributeConfiguration> to validate that
C<InstanceAccessControlAttributeConfiguration> was created.


=head2 CreatePermissionSet

=over

=item InstanceArn => Str

=item Name => Str

=item [Description => Str]

=item [RelayState => Str]

=item [SessionDuration => Str]

=item [Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreatePermissionSet>

Returns: a L<Paws::SSOAdmin::CreatePermissionSetResponse> instance

Creates a permission set within a specified IAM Identity Center
instance.

To grant users and groups access to Amazon Web Services account
resources, use C< CreateAccountAssignment >.


=head2 CreateTrustedTokenIssuer

=over

=item InstanceArn => Str

=item Name => Str

=item TrustedTokenIssuerConfiguration => L<Paws::SSOAdmin::TrustedTokenIssuerConfiguration>

=item TrustedTokenIssuerType => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateTrustedTokenIssuer>

Returns: a L<Paws::SSOAdmin::CreateTrustedTokenIssuerResponse> instance

Creates a connection to a trusted token issuer in an instance of IAM
Identity Center. A trusted token issuer enables trusted identity
propagation to be used with applications that authenticate outside of
Amazon Web Services.

This trusted token issuer describes an external identity provider (IdP)
that can generate claims or assertions in the form of access tokens for
a user. Applications enabled for IAM Identity Center can use these
tokens for authentication.


=head2 DeleteAccountAssignment

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item TargetId => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteAccountAssignment>

Returns: a L<Paws::SSOAdmin::DeleteAccountAssignmentResponse> instance

Deletes a principal's access from a specified Amazon Web Services
account using a specified permission set.

After a successful response, call
C<DescribeAccountAssignmentDeletionStatus> to describe the status of an
assignment deletion request.


=head2 DeleteApplication

=over

=item ApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteApplication>

Returns: a L<Paws::SSOAdmin::DeleteApplicationResponse> instance

Deletes the association with the application. The connected service
resource still exists.


=head2 DeleteApplicationAccessScope

=over

=item ApplicationArn => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteApplicationAccessScope>

Returns: nothing

Deletes an IAM Identity Center access scope from an application.


=head2 DeleteApplicationAssignment

=over

=item ApplicationArn => Str

=item PrincipalId => Str

=item PrincipalType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteApplicationAssignment>

Returns: a L<Paws::SSOAdmin::DeleteApplicationAssignmentResponse> instance

Revoke application access to an application by deleting application
assignments for a user or group.


=head2 DeleteApplicationAuthenticationMethod

=over

=item ApplicationArn => Str

=item AuthenticationMethodType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteApplicationAuthenticationMethod>

Returns: nothing

Deletes an authentication method from an application.


=head2 DeleteApplicationGrant

=over

=item ApplicationArn => Str

=item GrantType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteApplicationGrant>

Returns: nothing

Deletes a grant from an application.


=head2 DeleteInlinePolicyFromPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSetResponse> instance

Deletes the inline policy from a specified permission set.


=head2 DeleteInstance

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteInstance>

Returns: a L<Paws::SSOAdmin::DeleteInstanceResponse> instance

Deletes the instance of IAM Identity Center. Only the account that owns
the instance can call this API. Neither the delegated administrator nor
member account can delete the organization instance, but those roles
can delete their own instance.


=head2 DeleteInstanceAccessControlAttributeConfiguration

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfigurationResponse> instance

Disables the attributes-based access control (ABAC) feature for the
specified IAM Identity Center instance and deletes all of the attribute
mappings that have been configured. Once deleted, any attributes that
are received from an identity source and any custom attributes you have
previously configured will not be passed. For more information about
ABAC, see Attribute-Based Access Control in the I<IAM Identity Center
User Guide>.


=head2 DeletePermissionsBoundaryFromPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeletePermissionsBoundaryFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DeletePermissionsBoundaryFromPermissionSetResponse> instance

Deletes the permissions boundary from a specified PermissionSet.


=head2 DeletePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeletePermissionSet>

Returns: a L<Paws::SSOAdmin::DeletePermissionSetResponse> instance

Deletes the specified permission set.


=head2 DeleteTrustedTokenIssuer

=over

=item TrustedTokenIssuerArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteTrustedTokenIssuer>

Returns: a L<Paws::SSOAdmin::DeleteTrustedTokenIssuerResponse> instance

Deletes a trusted token issuer configuration from an instance of IAM
Identity Center.

Deleting this trusted token issuer configuration will cause users to
lose access to any applications that are configured to use the trusted
token issuer.


=head2 DescribeAccountAssignmentCreationStatus

=over

=item AccountAssignmentCreationRequestId => Str

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeAccountAssignmentCreationStatus>

Returns: a L<Paws::SSOAdmin::DescribeAccountAssignmentCreationStatusResponse> instance

Describes the status of the assignment creation request.


=head2 DescribeAccountAssignmentDeletionStatus

=over

=item AccountAssignmentDeletionRequestId => Str

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus>

Returns: a L<Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse> instance

Describes the status of the assignment deletion request.


=head2 DescribeApplication

=over

=item ApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeApplication>

Returns: a L<Paws::SSOAdmin::DescribeApplicationResponse> instance

Retrieves the details of an application associated with an instance of
IAM Identity Center.


=head2 DescribeApplicationAssignment

=over

=item ApplicationArn => Str

=item PrincipalId => Str

=item PrincipalType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeApplicationAssignment>

Returns: a L<Paws::SSOAdmin::DescribeApplicationAssignmentResponse> instance

Retrieves a direct assignment of a user or group to an application. If
the user doesnE<rsquo>t have a direct assignment to the application,
the user may still have access to the application through a group.
Therefore, donE<rsquo>t use this API to test access to an application
for a user. Instead use ListApplicationAssignmentsForPrincipal.


=head2 DescribeApplicationProvider

=over

=item ApplicationProviderArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeApplicationProvider>

Returns: a L<Paws::SSOAdmin::DescribeApplicationProviderResponse> instance

Retrieves details about a provider that can be used to connect an
Amazon Web Services managed application or customer managed application
to IAM Identity Center.


=head2 DescribeInstance

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeInstance>

Returns: a L<Paws::SSOAdmin::DescribeInstanceResponse> instance

Returns the details of an instance of IAM Identity Center. The status
can be one of the following:

=over

=item *

C<CREATE_IN_PROGRESS> - The instance is in the process of being
created. When the instance is ready for use, DescribeInstance returns
the status of C<ACTIVE>. While the instance is in the
C<CREATE_IN_PROGRESS> state, you can call only DescribeInstance and
DeleteInstance operations.

=item *

C<DELETE_IN_PROGRESS> - The instance is being deleted. Returns
C<AccessDeniedException> after the delete operation completes.

=item *

C<ACTIVE> - The instance is active.

=back



=head2 DescribeInstanceAccessControlAttributeConfiguration

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfigurationResponse> instance

Returns the list of IAM Identity Center identity store attributes that
have been configured to work with attributes-based access control
(ABAC) for the specified IAM Identity Center instance. This will not
return attributes configured and sent by an external identity provider.
For more information about ABAC, see Attribute-Based Access Control in
the I<IAM Identity Center User Guide>.


=head2 DescribePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribePermissionSet>

Returns: a L<Paws::SSOAdmin::DescribePermissionSetResponse> instance

Gets the details of the permission set.


=head2 DescribePermissionSetProvisioningStatus

=over

=item InstanceArn => Str

=item ProvisionPermissionSetRequestId => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribePermissionSetProvisioningStatus>

Returns: a L<Paws::SSOAdmin::DescribePermissionSetProvisioningStatusResponse> instance

Describes the status for the given permission set provisioning request.


=head2 DescribeTrustedTokenIssuer

=over

=item TrustedTokenIssuerArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeTrustedTokenIssuer>

Returns: a L<Paws::SSOAdmin::DescribeTrustedTokenIssuerResponse> instance

Retrieves details about a trusted token issuer configuration stored in
an instance of IAM Identity Center. Details include the name of the
trusted token issuer, the issuer URL, and the path of the source
attribute and the destination attribute for a trusted token issuer
configuration.


=head2 DetachCustomerManagedPolicyReferenceFromPermissionSet

=over

=item CustomerManagedPolicyReference => L<Paws::SSOAdmin::CustomerManagedPolicyReference>

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse> instance

Detaches the specified customer managed policy from the specified
PermissionSet.


=head2 DetachManagedPolicyFromPermissionSet

=over

=item InstanceArn => Str

=item ManagedPolicyArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DetachManagedPolicyFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DetachManagedPolicyFromPermissionSetResponse> instance

Detaches the attached Amazon Web Services managed policy ARN from the
specified permission set.


=head2 GetApplicationAccessScope

=over

=item ApplicationArn => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetApplicationAccessScope>

Returns: a L<Paws::SSOAdmin::GetApplicationAccessScopeResponse> instance

Retrieves the authorized targets for an IAM Identity Center access
scope for an application.


=head2 GetApplicationAssignmentConfiguration

=over

=item ApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetApplicationAssignmentConfiguration>

Returns: a L<Paws::SSOAdmin::GetApplicationAssignmentConfigurationResponse> instance

Retrieves the configuration of PutApplicationAssignmentConfiguration.


=head2 GetApplicationAuthenticationMethod

=over

=item ApplicationArn => Str

=item AuthenticationMethodType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetApplicationAuthenticationMethod>

Returns: a L<Paws::SSOAdmin::GetApplicationAuthenticationMethodResponse> instance

Retrieves details about an authentication method used by an
application.


=head2 GetApplicationGrant

=over

=item ApplicationArn => Str

=item GrantType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetApplicationGrant>

Returns: a L<Paws::SSOAdmin::GetApplicationGrantResponse> instance

Retrieves details about an application grant.


=head2 GetInlinePolicyForPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetInlinePolicyForPermissionSet>

Returns: a L<Paws::SSOAdmin::GetInlinePolicyForPermissionSetResponse> instance

Obtains the inline policy assigned to the permission set.


=head2 GetPermissionsBoundaryForPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetPermissionsBoundaryForPermissionSet>

Returns: a L<Paws::SSOAdmin::GetPermissionsBoundaryForPermissionSetResponse> instance

Obtains the permissions boundary for a specified PermissionSet.


=head2 ListAccountAssignmentCreationStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignmentCreationStatus>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentCreationStatusResponse> instance

Lists the status of the Amazon Web Services account assignment creation
requests for a specified IAM Identity Center instance.


=head2 ListAccountAssignmentDeletionStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatus>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse> instance

Lists the status of the Amazon Web Services account assignment deletion
requests for a specified IAM Identity Center instance.


=head2 ListAccountAssignments

=over

=item AccountId => Str

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignments>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentsResponse> instance

Lists the assignee of the specified Amazon Web Services account with
the specified permission set.


=head2 ListAccountAssignmentsForPrincipal

=over

=item InstanceArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item [Filter => L<Paws::SSOAdmin::ListAccountAssignmentsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignmentsForPrincipal>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentsForPrincipalResponse> instance

Retrieves a list of the IAM Identity Center associated Amazon Web
Services accounts that the principal has access to. This action must be
called from the management account containing your organization
instance of IAM Identity Center. This action is not valid for account
instances of IAM Identity Center.


=head2 ListAccountsForProvisionedPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProvisioningStatus => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet>

Returns: a L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse> instance

Lists all the Amazon Web Services accounts where the specified
permission set is provisioned.


=head2 ListApplicationAccessScopes

=over

=item ApplicationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationAccessScopes>

Returns: a L<Paws::SSOAdmin::ListApplicationAccessScopesResponse> instance

Lists the access scopes and authorized targets associated with an
application.


=head2 ListApplicationAssignments

=over

=item ApplicationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationAssignments>

Returns: a L<Paws::SSOAdmin::ListApplicationAssignmentsResponse> instance

Lists Amazon Web Services account users that are assigned to an
application.


=head2 ListApplicationAssignmentsForPrincipal

=over

=item InstanceArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item [Filter => L<Paws::SSOAdmin::ListApplicationAssignmentsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationAssignmentsForPrincipal>

Returns: a L<Paws::SSOAdmin::ListApplicationAssignmentsForPrincipalResponse> instance

Lists the applications to which a specified principal is assigned. You
must provide a filter when calling this action from a member account
against your organization instance of IAM Identity Center. A filter is
not required when called from the management account against an
organization instance of IAM Identity Center, or from a member account
against an account instance of IAM Identity Center in the same account.


=head2 ListApplicationAuthenticationMethods

=over

=item ApplicationArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationAuthenticationMethods>

Returns: a L<Paws::SSOAdmin::ListApplicationAuthenticationMethodsResponse> instance

Lists all of the authentication methods supported by the specified
application.


=head2 ListApplicationGrants

=over

=item ApplicationArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationGrants>

Returns: a L<Paws::SSOAdmin::ListApplicationGrantsResponse> instance

List the grants associated with an application.


=head2 ListApplicationProviders

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplicationProviders>

Returns: a L<Paws::SSOAdmin::ListApplicationProvidersResponse> instance

Lists the application providers configured in the IAM Identity Center
identity store.


=head2 ListApplications

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::ListApplicationsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListApplications>

Returns: a L<Paws::SSOAdmin::ListApplicationsResponse> instance

Lists all applications associated with the instance of IAM Identity
Center. When listing applications for an organization instance in the
management account, member accounts must use the C<applicationAccount>
parameter to filter the list to only applications created from that
account. When listing applications for an account instance in the same
member account, a filter is not required.


=head2 ListCustomerManagedPolicyReferencesInPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSet>

Returns: a L<Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSetResponse> instance

Lists all customer managed policies attached to a specified
PermissionSet.


=head2 ListInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListInstances>

Returns: a L<Paws::SSOAdmin::ListInstancesResponse> instance

Lists the details of the organization and account instances of IAM
Identity Center that were created in or visible to the account calling
this API.


=head2 ListManagedPoliciesInPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSet>

Returns: a L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse> instance

Lists the Amazon Web Services managed policy that is attached to a
specified permission set.


=head2 ListPermissionSetProvisioningStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSetProvisioningStatus>

Returns: a L<Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse> instance

Lists the status of the permission set provisioning requests for a
specified IAM Identity Center instance.


=head2 ListPermissionSets

=over

=item InstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSets>

Returns: a L<Paws::SSOAdmin::ListPermissionSetsResponse> instance

Lists the PermissionSets in an IAM Identity Center instance.


=head2 ListPermissionSetsProvisionedToAccount

=over

=item AccountId => Str

=item InstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProvisioningStatus => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount>

Returns: a L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse> instance

Lists all the permission sets that are provisioned to a specified
Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [InstanceArn => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListTagsForResource>

Returns: a L<Paws::SSOAdmin::ListTagsForResourceResponse> instance

Lists the tags that are attached to a specified resource.


=head2 ListTrustedTokenIssuers

=over

=item InstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListTrustedTokenIssuers>

Returns: a L<Paws::SSOAdmin::ListTrustedTokenIssuersResponse> instance

Lists all the trusted token issuers configured in an instance of IAM
Identity Center.


=head2 ProvisionPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item TargetType => Str

=item [TargetId => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ProvisionPermissionSet>

Returns: a L<Paws::SSOAdmin::ProvisionPermissionSetResponse> instance

The process by which a specified permission set is provisioned to the
specified target.


=head2 PutApplicationAccessScope

=over

=item ApplicationArn => Str

=item Scope => Str

=item [AuthorizedTargets => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutApplicationAccessScope>

Returns: nothing

Adds or updates the list of authorized targets for an IAM Identity
Center access scope for an application.


=head2 PutApplicationAssignmentConfiguration

=over

=item ApplicationArn => Str

=item AssignmentRequired => Bool


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutApplicationAssignmentConfiguration>

Returns: a L<Paws::SSOAdmin::PutApplicationAssignmentConfigurationResponse> instance

Configure how users gain access to an application. If
C<AssignmentsRequired> is C<true> (default value), users donE<rsquo>t
have access to the application unless an assignment is created using
the CreateApplicationAssignment API
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).
If C<false>, all users have access to the application. If an assignment
is created using CreateApplicationAssignment
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).,
the user retains access if C<AssignmentsRequired> is set to C<true>.


=head2 PutApplicationAuthenticationMethod

=over

=item ApplicationArn => Str

=item AuthenticationMethod => L<Paws::SSOAdmin::AuthenticationMethod>

=item AuthenticationMethodType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutApplicationAuthenticationMethod>

Returns: nothing

Adds or updates an authentication method for an application.


=head2 PutApplicationGrant

=over

=item ApplicationArn => Str

=item Grant => L<Paws::SSOAdmin::Grant>

=item GrantType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutApplicationGrant>

Returns: nothing

Creates a configuration for an application to use grants. Conceptually
grants are authorization to request actions related to tokens. This
configuration will be used when parties are requesting and receiving
tokens during the trusted identity propagation process. For more
information on the IAM Identity Center supported grant workflows, see
SAML 2.0 and OAuth 2.0
(https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-oauth2.html).

A grant is created between your applications and Identity Center
instance which enables an application to use specified mechanisms to
obtain tokens. These tokens are used by your applications to gain
access to Amazon Web Services resources on behalf of users. The
following elements are within these exchanges:

=over

=item *

B<Requester> - The application requesting access to Amazon Web Services
resources.

=item *

B<Subject> - Typically the user that is requesting access to Amazon Web
Services resources.

=item *

B<Grant> - Conceptually, a grant is authorization to access Amazon Web
Services resources. These grants authorize token generation for
authenticating access to the requester and for the request to make
requests on behalf of the subjects. There are four types of grants:

=over

=item *

B<AuthorizationCode> - Allows an application to request authorization
through a series of user-agent redirects.

=item *

B<JWT bearer > - Authorizes an application to exchange a JSON Web Token
that came from an external identity provider. To learn more, see RFC
6479 (https://datatracker.ietf.org/doc/html/rfc6749).

=item *

B<Refresh token> - Enables application to request new access tokens to
replace expiring or expired access tokens.

=item *

B<Exchange token> - A grant that requests tokens from the authorization
server by providing a E<lsquo>subjectE<rsquo> token with access scope
authorizing trusted identity propagation to this application. To learn
more, see RFC 8693 (https://datatracker.ietf.org/doc/html/rfc8693).

=back

=item *

B<Authorization server> - IAM Identity Center requests tokens.

=back

User credentials are never shared directly within these exchanges.
Instead, applications use grants to request access tokens from IAM
Identity Center. For more information, see RFC 6479
(https://datatracker.ietf.org/doc/html/rfc6749).

B<Use cases>

=over

=item *

Connecting to custom applications.

=item *

Configuring an Amazon Web Services service to make calls to another
Amazon Web Services services using JWT tokens.

=back



=head2 PutInlinePolicyToPermissionSet

=over

=item InlinePolicy => Str

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutInlinePolicyToPermissionSet>

Returns: a L<Paws::SSOAdmin::PutInlinePolicyToPermissionSetResponse> instance

Attaches an inline policy to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call C< ProvisionPermissionSet > after
this action to apply the corresponding IAM policy updates to all
assigned accounts.


=head2 PutPermissionsBoundaryToPermissionSet

=over

=item InstanceArn => Str

=item PermissionsBoundary => L<Paws::SSOAdmin::PermissionsBoundary>

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSet>

Returns: a L<Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSetResponse> instance

Attaches an Amazon Web Services managed or customer managed policy to
the specified PermissionSet as a permissions boundary.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

=item [InstanceArn => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::TagResource>

Returns: a L<Paws::SSOAdmin::TagResourceResponse> instance

Associates a set of tags with a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]

=item [InstanceArn => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UntagResource>

Returns: a L<Paws::SSOAdmin::UntagResourceResponse> instance

Disassociates a set of tags from a specified resource.


=head2 UpdateApplication

=over

=item ApplicationArn => Str

=item [Description => Str]

=item [Name => Str]

=item [PortalOptions => L<Paws::SSOAdmin::UpdateApplicationPortalOptions>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdateApplication>

Returns: a L<Paws::SSOAdmin::UpdateApplicationResponse> instance

Updates application properties.


=head2 UpdateInstance

=over

=item InstanceArn => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdateInstance>

Returns: a L<Paws::SSOAdmin::UpdateInstanceResponse> instance

Update the details for the instance of IAM Identity Center that is
owned by the Amazon Web Services account.


=head2 UpdateInstanceAccessControlAttributeConfiguration

=over

=item InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfigurationResponse> instance

Updates the IAM Identity Center identity store attributes that you can
use with the IAM Identity Center instance for attributes-based access
control (ABAC). When using an external identity provider as an identity
source, you can pass attributes through the SAML assertion as an
alternative to configuring attributes from the IAM Identity Center
identity store. If a SAML assertion passes any of these attributes, IAM
Identity Center replaces the attribute value with the value from the
IAM Identity Center identity store. For more information about ABAC,
see Attribute-Based Access Control in the I<IAM Identity Center User
Guide>.


=head2 UpdatePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [Description => Str]

=item [RelayState => Str]

=item [SessionDuration => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdatePermissionSet>

Returns: a L<Paws::SSOAdmin::UpdatePermissionSetResponse> instance

Updates an existing permission set.


=head2 UpdateTrustedTokenIssuer

=over

=item TrustedTokenIssuerArn => Str

=item [Name => Str]

=item [TrustedTokenIssuerConfiguration => L<Paws::SSOAdmin::TrustedTokenIssuerUpdateConfiguration>]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdateTrustedTokenIssuer>

Returns: a L<Paws::SSOAdmin::UpdateTrustedTokenIssuerResponse> instance

Updates the name of the trusted token issuer, or the path of a source
attribute or destination attribute for a trusted token issuer
configuration.

Updating this trusted token issuer configuration might cause users to
lose access to any applications that are configured to use the trusted
token issuer.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountAssignmentCreationStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignmentCreationStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignmentsCreationStatus, passing the object as the first parameter, and the string 'AccountAssignmentsCreationStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentCreationStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountAssignmentDeletionStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignmentDeletionStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignmentsDeletionStatus, passing the object as the first parameter, and the string 'AccountAssignmentsDeletionStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountAssignments(sub { },AccountId => Str, InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignments(AccountId => Str, InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignments, passing the object as the first parameter, and the string 'AccountAssignments' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountAssignmentsForPrincipal(sub { },InstanceArn => Str, PrincipalId => Str, PrincipalType => Str, [Filter => L<Paws::SSOAdmin::ListAccountAssignmentsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignmentsForPrincipal(InstanceArn => Str, PrincipalId => Str, PrincipalType => Str, [Filter => L<Paws::SSOAdmin::ListAccountAssignmentsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignments, passing the object as the first parameter, and the string 'AccountAssignments' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentsForPrincipalResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountsForProvisionedPermissionSet(sub { },InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])

=head2 ListAllAccountsForProvisionedPermissionSet(InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountIds, passing the object as the first parameter, and the string 'AccountIds' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationAccessScopes(sub { },ApplicationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationAccessScopes(ApplicationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Scopes, passing the object as the first parameter, and the string 'Scopes' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationAccessScopesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationAssignments(sub { },ApplicationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationAssignments(ApplicationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationAssignments, passing the object as the first parameter, and the string 'ApplicationAssignments' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationAssignmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationAssignmentsForPrincipal(sub { },InstanceArn => Str, PrincipalId => Str, PrincipalType => Str, [Filter => L<Paws::SSOAdmin::ListApplicationAssignmentsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationAssignmentsForPrincipal(InstanceArn => Str, PrincipalId => Str, PrincipalType => Str, [Filter => L<Paws::SSOAdmin::ListApplicationAssignmentsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationAssignments, passing the object as the first parameter, and the string 'ApplicationAssignments' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationAssignmentsForPrincipalResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationAuthenticationMethods(sub { },ApplicationArn => Str, [NextToken => Str])

=head2 ListAllApplicationAuthenticationMethods(ApplicationArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthenticationMethods, passing the object as the first parameter, and the string 'AuthenticationMethods' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationAuthenticationMethodsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationGrants(sub { },ApplicationArn => Str, [NextToken => Str])

=head2 ListAllApplicationGrants(ApplicationArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Grants, passing the object as the first parameter, and the string 'Grants' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationProviders(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationProviders([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationProviders, passing the object as the first parameter, and the string 'ApplicationProviders' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationProvidersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::ListApplicationsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllApplications(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::ListApplicationsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Applications, passing the object as the first parameter, and the string 'Applications' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomerManagedPolicyReferencesInPermissionSet(sub { },InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCustomerManagedPolicyReferencesInPermissionSet(InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomerManagedPolicyReferences, passing the object as the first parameter, and the string 'CustomerManagedPolicyReferences' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedPoliciesInPermissionSet(sub { },InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllManagedPoliciesInPermissionSet(InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttachedManagedPolicies, passing the object as the first parameter, and the string 'AttachedManagedPolicies' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSetProvisioningStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPermissionSetProvisioningStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSetsProvisioningStatus, passing the object as the first parameter, and the string 'PermissionSetsProvisioningStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSets(sub { },InstanceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPermissionSets(InstanceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSets, passing the object as the first parameter, and the string 'PermissionSets' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSetsProvisionedToAccount(sub { },AccountId => Str, InstanceArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])

=head2 ListAllPermissionSetsProvisionedToAccount(AccountId => Str, InstanceArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSets, passing the object as the first parameter, and the string 'PermissionSets' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [InstanceArn => Str, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [InstanceArn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrustedTokenIssuers(sub { },InstanceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTrustedTokenIssuers(InstanceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrustedTokenIssuers, passing the object as the first parameter, and the string 'TrustedTokenIssuers' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListTrustedTokenIssuersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

