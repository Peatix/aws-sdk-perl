package Paws::CognitoIdp;
  use Moose;
  sub service { 'cognito-idp' }
  sub signing_name { 'cognito-idp' }
  sub version { '2016-04-18' }
  sub target_prefix { 'AWSCognitoIdentityProviderService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddCustomAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AddCustomAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminAddUserToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminAddUserToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminConfirmSignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminConfirmSignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminCreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminCreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDeleteUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDeleteUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDisableProviderForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDisableProviderForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDisableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDisableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminEnableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminEnableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminForgetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminForgetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminGetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminGetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminGetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminGetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminInitiateAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminInitiateAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminLinkProviderForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminLinkProviderForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListGroupsForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListGroupsForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListUserAuthEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListUserAuthEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminRemoveUserFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminRemoveUserFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminResetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminResetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminRespondToAuthChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminRespondToAuthChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserMFAPreference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserMFAPreference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateAuthEventFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateAuthEventFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateDeviceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateDeviceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUserGlobalSignOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUserGlobalSignOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSoftwareToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AssociateSoftwareToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangePassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ChangePassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteWebAuthnRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CompleteWebAuthnRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmForgotPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmForgotPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmSignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmSignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateManagedLoginBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateManagedLoginBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteManagedLoginBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteManagedLoginBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebAuthnCredential {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteWebAuthnCredential', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedLoginBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeManagedLoginBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedLoginBrandingByClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeManagedLoginBrandingByClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRiskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeRiskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ForgetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ForgetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ForgotPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ForgotPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCSVHeader {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetCSVHeader', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityProviderByIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetIdentityProviderByIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogDeliveryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetLogDeliveryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSigningCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetSigningCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTokensFromRefreshToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetTokensFromRefreshToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUICustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUICustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserAttributeVerificationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUserAttributeVerificationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserAuthFactors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUserAuthFactors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserPoolMfaConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUserPoolMfaConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GlobalSignOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GlobalSignOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::InitiateAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListIdentityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListResourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserPoolClients {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserPoolClients', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsersInGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUsersInGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebAuthnCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListWebAuthnCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendConfirmationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ResendConfirmationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondToAuthChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::RespondToAuthChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::RevokeToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLogDeliveryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetLogDeliveryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetRiskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetRiskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUICustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUICustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserMFAPreference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserMFAPreference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserPoolMfaConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserPoolMfaConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::StartUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWebAuthnRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::StartWebAuthnRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::StopUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthEventFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateAuthEventFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateDeviceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateManagedLoginBranding {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateManagedLoginBranding', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifySoftwareToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::VerifySoftwareToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyUserAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::VerifyUserAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub AdminListAllGroupsForUser {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->AdminListGroupsForUser(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->AdminListGroupsForUser(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->AdminListGroupsForUser(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub AdminListAllUserAuthEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->AdminListUserAuthEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->AdminListUserAuthEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthEvents }, @{ $next_result->AuthEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthEvents') foreach (@{ $result->AuthEvents });
        $result = $self->AdminListUserAuthEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthEvents') foreach (@{ $result->AuthEvents });
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
  sub ListAllIdentityProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentityProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIdentityProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->Providers }, @{ $next_result->Providers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Providers') foreach (@{ $result->Providers });
        $result = $self->ListIdentityProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Providers') foreach (@{ $result->Providers });
    }

    return undef
  }
  sub ListAllResourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceServers }, @{ $next_result->ResourceServers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceServers') foreach (@{ $result->ResourceServers });
        $result = $self->ListResourceServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceServers') foreach (@{ $result->ResourceServers });
    }

    return undef
  }
  sub ListAllUserPoolClients {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserPoolClients(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserPoolClients(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserPoolClients }, @{ $next_result->UserPoolClients };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserPoolClients') foreach (@{ $result->UserPoolClients });
        $result = $self->ListUserPoolClients(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserPoolClients') foreach (@{ $result->UserPoolClients });
    }

    return undef
  }
  sub ListAllUserPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserPools }, @{ $next_result->UserPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserPools') foreach (@{ $result->UserPools });
        $result = $self->ListUserPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserPools') foreach (@{ $result->UserPools });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PaginationToken) {
        $next_result = $self->ListUsers(@_, PaginationToken => $next_result->PaginationToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->PaginationToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, PaginationToken => $result->PaginationToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }
  sub ListAllUsersInGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsersInGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsersInGroup(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsersInGroup(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AddCustomAttributes AdminAddUserToGroup AdminConfirmSignUp AdminCreateUser AdminDeleteUser AdminDeleteUserAttributes AdminDisableProviderForUser AdminDisableUser AdminEnableUser AdminForgetDevice AdminGetDevice AdminGetUser AdminInitiateAuth AdminLinkProviderForUser AdminListDevices AdminListGroupsForUser AdminListUserAuthEvents AdminRemoveUserFromGroup AdminResetUserPassword AdminRespondToAuthChallenge AdminSetUserMFAPreference AdminSetUserPassword AdminSetUserSettings AdminUpdateAuthEventFeedback AdminUpdateDeviceStatus AdminUpdateUserAttributes AdminUserGlobalSignOut AssociateSoftwareToken ChangePassword CompleteWebAuthnRegistration ConfirmDevice ConfirmForgotPassword ConfirmSignUp CreateGroup CreateIdentityProvider CreateManagedLoginBranding CreateResourceServer CreateUserImportJob CreateUserPool CreateUserPoolClient CreateUserPoolDomain DeleteGroup DeleteIdentityProvider DeleteManagedLoginBranding DeleteResourceServer DeleteUser DeleteUserAttributes DeleteUserPool DeleteUserPoolClient DeleteUserPoolDomain DeleteWebAuthnCredential DescribeIdentityProvider DescribeManagedLoginBranding DescribeManagedLoginBrandingByClient DescribeResourceServer DescribeRiskConfiguration DescribeUserImportJob DescribeUserPool DescribeUserPoolClient DescribeUserPoolDomain ForgetDevice ForgotPassword GetCSVHeader GetDevice GetGroup GetIdentityProviderByIdentifier GetLogDeliveryConfiguration GetSigningCertificate GetTokensFromRefreshToken GetUICustomization GetUser GetUserAttributeVerificationCode GetUserAuthFactors GetUserPoolMfaConfig GlobalSignOut InitiateAuth ListDevices ListGroups ListIdentityProviders ListResourceServers ListTagsForResource ListUserImportJobs ListUserPoolClients ListUserPools ListUsers ListUsersInGroup ListWebAuthnCredentials ResendConfirmationCode RespondToAuthChallenge RevokeToken SetLogDeliveryConfiguration SetRiskConfiguration SetUICustomization SetUserMFAPreference SetUserPoolMfaConfig SetUserSettings SignUp StartUserImportJob StartWebAuthnRegistration StopUserImportJob TagResource UntagResource UpdateAuthEventFeedback UpdateDeviceStatus UpdateGroup UpdateIdentityProvider UpdateManagedLoginBranding UpdateResourceServer UpdateUserAttributes UpdateUserPool UpdateUserPoolClient UpdateUserPoolDomain VerifySoftwareToken VerifyUserAttribute / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp - Perl Interface to AWS Amazon Cognito Identity Provider

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CognitoIdp');
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

With the Amazon Cognito user pools API, you can configure user pools
and authenticate users. To authenticate users from third-party identity
providers (IdPs) in this API, you can link IdP users to native user
profiles
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).
Learn more about the authentication and authorization of federated
users at Adding user pool sign-in through a third party
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html)
and in the User pool federation endpoints and managed login reference
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).

This API reference provides detailed information about API operations
and object types in Amazon Cognito.

Along with resource management operations, the Amazon Cognito user
pools API includes classes of operations and authorization models for
client-side and server-side authentication of users. You can interact
with operations in the Amazon Cognito user pools API as any of the
following subjects.

=over

=item 1.

An administrator who wants to configure user pools, app clients, users,
groups, or other user pool functions.

=item 2.

A server-side app, like a web application, that wants to use its Amazon
Web Services privileges to manage, authenticate, or authorize a user.

=item 3.

A client-side app, like a mobile app, that wants to make
unauthenticated requests to manage, authenticate, or authorize a user.

=back

For more information, see Understanding API, OIDC, and managed login
pages authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html#user-pools-API-operations)
in the I<Amazon Cognito Developer Guide>.

With your Amazon Web Services SDK, you can build the logic to support
operational flows in every use case for this API. You can also make
direct REST API requests to Amazon Cognito user pools service endpoints
(https://docs.aws.amazon.com/general/latest/gr/cognito_identity.html#cognito_identity_your_user_pools_region).
The following links can get you started with the
C<CognitoIdentityProvider> client in supported Amazon Web Services
SDKs.

To get started with an Amazon Web Services SDK, see Tools to Build on
Amazon Web Services (http://aws.amazon.com/developer/tools/). For
example actions and scenarios, see Code examples for Amazon Cognito
Identity Provider using Amazon Web Services SDKs
(https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddCustomAttributes

=over

=item CustomAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AddCustomAttributes>

Returns: a L<Paws::CognitoIdp::AddCustomAttributesResponse> instance

Adds additional user attributes to the user pool schema. Custom
attributes can be mutable or immutable and have a C<custom:> or C<dev:>
prefix. For more information, see Custom attributes
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-custom-attributes).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminAddUserToGroup

=over

=item GroupName => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminAddUserToGroup>

Returns: nothing

Adds a user to a group. A user who is in a group can present a
preferred-role claim to an identity pool, and populates a
C<cognito:groups> claim to their access and identity tokens.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminConfirmSignUp

=over

=item Username => Str

=item UserPoolId => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminConfirmSignUp>

Returns: a L<Paws::CognitoIdp::AdminConfirmSignUpResponse> instance

Confirms user sign-up as an administrator.

This request sets a user account active in a user pool that requires
confirmation of new user accounts
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin)
before they can sign in. You can configure your user pool to not send
confirmation codes to new users and instead confirm them with this API
operation on the back end.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back

To configure your user pool to require administrative confirmation of
users, set C<AllowAdminCreateUserOnly> to C<true> in a
C<CreateUserPool> or C<UpdateUserPool> request.


=head2 AdminCreateUser

=over

=item Username => Str

=item UserPoolId => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [DesiredDeliveryMediums => ArrayRef[Str|Undef]]

=item [ForceAliasCreation => Bool]

=item [MessageAction => Str]

=item [TemporaryPassword => Str]

=item [UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]

=item [ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminCreateUser>

Returns: a L<Paws::CognitoIdp::AdminCreateUserResponse> instance

Creates a new user in the specified user pool.

If C<MessageAction> isn't set, the default is to send a welcome message
via email or phone (SMS).

This message is based on a template that you configured in your call to
create or update a user pool. This template includes your custom
sign-up instructions and placeholders for user name and temporary
password.

Alternatively, you can call C<AdminCreateUser> with C<SUPPRESS> for the
C<MessageAction> parameter, and Amazon Cognito won't send any email.

In either case, if the user has a password, they will be in the
C<FORCE_CHANGE_PASSWORD> state until they sign in and set their
password. Your invitation message template must have the C<{####}>
password placeholder if your users have passwords. If your template
doesn't have this placeholder, Amazon Cognito doesn't deliver the
invitation message. In this case, you must update your message template
and resend the password with a new C<AdminCreateUser> request with a
C<MessageAction> value of C<RESEND>.

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminDeleteUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUser>

Returns: nothing

Deletes a user profile in your user pool.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminDeleteUserAttributes

=over

=item UserAttributeNames => ArrayRef[Str|Undef]

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminDeleteUserAttributesResponse> instance

Deletes attribute values from a user. This operation doesn't affect
tokens for existing user sessions. The next ID token that the user
receives will no longer have the deleted attributes.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminDisableProviderForUser

=over

=item User => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDisableProviderForUser>

Returns: a L<Paws::CognitoIdp::AdminDisableProviderForUserResponse> instance

Prevents the user from signing in with the specified external (SAML or
social) identity provider (IdP). If the user that you want to
deactivate is a Amazon Cognito user pools native username + password
user, they can't use their password to sign in. If the user to
deactivate is a linked external IdP user, any link between that user
and an existing user is removed. When the external user signs in again,
and the user is no longer attached to the previously linked
C<DestinationUser>, the user must create a new user account.

The value of C<ProviderName> must match the name of a user pool IdP.

To deactivate a local user, set C<ProviderName> to C<Cognito> and the
C<ProviderAttributeName> to C<Cognito_Subject>. The
C<ProviderAttributeValue> must be user's local username.

The C<ProviderAttributeName> must always be C<Cognito_Subject> for
social IdPs. The C<ProviderAttributeValue> must always be the exact
subject that was used when the user was originally linked as a source
user.

For de-linking a SAML identity, there are two scenarios. If the linked
identity has not yet been used to sign in, the C<ProviderAttributeName>
and C<ProviderAttributeValue> must be the same values that were used
for the C<SourceUser> when the identities were originally linked using
C< AdminLinkProviderForUser> call. This is also true if the linking was
done with C<ProviderAttributeName> set to C<Cognito_Subject>. If the
user has already signed in, the C<ProviderAttributeName> must be
C<Cognito_Subject> and C<ProviderAttributeValue> must be the C<NameID>
from their SAML assertion.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminDisableUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDisableUser>

Returns: a L<Paws::CognitoIdp::AdminDisableUserResponse> instance

Deactivates a user profile and revokes all access tokens for the user.
A deactivated user can't sign in, but still appears in the responses to
C<ListUsers> API requests.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminEnableUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminEnableUser>

Returns: a L<Paws::CognitoIdp::AdminEnableUserResponse> instance

Activates sign-in for a user profile that previously had sign-in access
disabled.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminForgetDevice

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminForgetDevice>

Returns: nothing

Forgets, or deletes, a remembered device from a user's profile. After
you forget the device, the user can no longer complete device
authentication with that device and when applicable, must submit MFA
codes again. For more information, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminGetDevice

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminGetDevice>

Returns: a L<Paws::CognitoIdp::AdminGetDeviceResponse> instance

Given the device key, returns details for a user's device. For more
information, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminGetUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminGetUser>

Returns: a L<Paws::CognitoIdp::AdminGetUserResponse> instance

Given a username, returns details about a user profile in a user pool.
You can specify alias attributes in the C<Username> request parameter.

This operation contributes to your monthly active user (MAU) count for
the purpose of billing.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminInitiateAuth

=over

=item AuthFlow => Str

=item ClientId => Str

=item UserPoolId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [AuthParameters => L<Paws::CognitoIdp::AuthParametersType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [ContextData => L<Paws::CognitoIdp::ContextDataType>]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminInitiateAuth>

Returns: a L<Paws::CognitoIdp::AdminInitiateAuthResponse> instance

Starts sign-in for applications with a server-side component, for
example a traditional web application. This operation specifies the
authentication flow that you'd like to begin. The authentication flow
that you specify must be supported in your app client configuration.
For more information about authentication flows, see Authentication
flows
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminLinkProviderForUser

=over

=item DestinationUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item SourceUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminLinkProviderForUser>

Returns: a L<Paws::CognitoIdp::AdminLinkProviderForUserResponse> instance

Links an existing user account in a user pool, or C<DestinationUser>,
to an identity from an external IdP, or C<SourceUser>, based on a
specified attribute name and value from the external IdP.

This operation connects a local user profile with a user identity who
hasn't yet signed in from their third-party IdP. When the user signs in
with their IdP, they get access-control configuration from the local
user profile. Linked local users can also sign in with SDK-based API
operations like C<InitiateAuth> after they sign in at least once
through their IdP. For more information, see Linking federated users
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).

The maximum number of federated identities linked to a user is five.

Because this API allows a user with an external federated identity to
sign in as a local user, it is critical that it only be used with
external IdPs and linked attributes that you trust.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminListDevices

=over

=item Username => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListDevices>

Returns: a L<Paws::CognitoIdp::AdminListDevicesResponse> instance

Lists a user's registered devices. Remembered devices are used in
authentication services where you offer a "Remember me" option for
users who you want to permit to sign in without MFA from a trusted
device. Users can bypass MFA while your application performs device SRP
authentication on the back end. For more information, see Working with
devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminListGroupsForUser

=over

=item Username => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListGroupsForUser>

Returns: a L<Paws::CognitoIdp::AdminListGroupsForUserResponse> instance

Lists the groups that a user belongs to. User pool groups are
identifiers that you can reference from the contents of ID and access
tokens, and set preferred IAM roles for identity-pool authentication.
For more information, see Adding groups to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminListUserAuthEvents

=over

=item Username => Str

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListUserAuthEvents>

Returns: a L<Paws::CognitoIdp::AdminListUserAuthEventsResponse> instance

Requests a history of user activity and any risks detected as part of
Amazon Cognito threat protection. For more information, see Viewing
user event history
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-event-user-history).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminRemoveUserFromGroup

=over

=item GroupName => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminRemoveUserFromGroup>

Returns: nothing

Given a username and a group name, removes them from the group. User
pool groups are identifiers that you can reference from the contents of
ID and access tokens, and set preferred IAM roles for identity-pool
authentication. For more information, see Adding groups to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminResetUserPassword

=over

=item Username => Str

=item UserPoolId => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminResetUserPassword>

Returns: a L<Paws::CognitoIdp::AdminResetUserPasswordResponse> instance

Resets the specified user's password in a user pool. This operation
doesn't change the user's password, but sends a password-reset code.

To use this API operation, your user pool must have self-service
account recovery configured.

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminRespondToAuthChallenge

=over

=item ChallengeName => Str

=item ClientId => Str

=item UserPoolId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [ContextData => L<Paws::CognitoIdp::ContextDataType>]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminRespondToAuthChallenge>

Returns: a L<Paws::CognitoIdp::AdminRespondToAuthChallengeResponse> instance

Some API operations in a user pool generate a challenge, like a prompt
for an MFA code, for device authentication that bypasses MFA, or for a
custom authentication challenge. An C<AdminRespondToAuthChallenge> API
request provides the answer to that challenge, like a code or a secure
remote password (SRP). The parameters of a response to an
authentication challenge vary with the type of challenge.

For more information about custom authentication challenges, see Custom
authentication challenge Lambda triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminSetUserMFAPreference

=over

=item Username => Str

=item UserPoolId => Str

=item [EmailMfaSettings => L<Paws::CognitoIdp::EmailMfaSettingsType>]

=item [SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>]

=item [SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserMFAPreference>

Returns: a L<Paws::CognitoIdp::AdminSetUserMFAPreferenceResponse> instance

Sets the user's multi-factor authentication (MFA) preference, including
which MFA options are activated, and if any are preferred. Only one
factor can be set as preferred. The preferred MFA factor will be used
to authenticate a user if multiple factors are activated. If multiple
options are activated and no preference is set, a challenge to choose
an MFA option will be returned during sign-in.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminSetUserPassword

=over

=item Password => Str

=item Username => Str

=item UserPoolId => Str

=item [Permanent => Bool]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserPassword>

Returns: a L<Paws::CognitoIdp::AdminSetUserPasswordResponse> instance

Sets the specified user's password in a user pool. This operation
administratively sets a temporary or permanent password for a user.
With this operation, you can bypass self-service password changes and
permit immediate sign-in with the password that you set. To do this,
set C<Permanent> to C<true>.

You can also set a new temporary password in this request, send it to a
user, and require them to choose a new password on their next sign-in.
To do this, set C<Permanent> to C<false>.

If the password is temporary, the user's C<Status> becomes
C<FORCE_CHANGE_PASSWORD>. When the user next tries to sign in, the
C<InitiateAuth> or C<AdminInitiateAuth> response includes the
C<NEW_PASSWORD_REQUIRED> challenge. If the user doesn't sign in before
the temporary password expires, they can no longer sign in and you must
repeat this operation to set a temporary or permanent password for
them.

After the user sets a new password, or if you set a permanent password,
their status becomes C<Confirmed>.

C<AdminSetUserPassword> can set a password for the user profile that
Amazon Cognito creates for third-party federated users. When you set a
password, the federated user's status changes from C<EXTERNAL_PROVIDER>
to C<CONFIRMED>. A user in this state can sign in as a federated user,
and initiate authentication flows in the API like a linked native user.
They can also modify their password and attributes in
token-authenticated API requests like C<ChangePassword> and
C<UpdateUserAttributes>. As a best security practice and to keep users
in sync with your external IdP, don't set passwords on federated user
profiles. To set up a federated user for native sign-in with a linked
native user, refer to Linking federated users to an existing user
profile
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminSetUserSettings

=over

=item MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserSettings>

Returns: a L<Paws::CognitoIdp::AdminSetUserSettingsResponse> instance

I<This action is no longer supported.> You can use it to configure only
SMS MFA. You can't use it to configure time-based one-time password
(TOTP) software token MFA.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminUpdateAuthEventFeedback

=over

=item EventId => Str

=item FeedbackValue => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateAuthEventFeedback>

Returns: a L<Paws::CognitoIdp::AdminUpdateAuthEventFeedbackResponse> instance

Provides the feedback for an authentication event generated by threat
protection features. Your response indicates that you think that the
event either was from a valid user or was an unwanted authentication
attempt. This feedback improves the risk evaluation decision for the
user pool as part of Amazon Cognito threat protection. To activate this
setting, your user pool must be on the Plus tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).

To train the threat-protection model to recognize trusted and untrusted
sign-in characteristics, configure threat protection in audit-only mode
and provide a mechanism for users or administrators to submit feedback.
Your feedback can tell Amazon Cognito that a risk rating was assigned
at a level you don't agree with.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminUpdateDeviceStatus

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str

=item [DeviceRememberedStatus => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateDeviceStatus>

Returns: a L<Paws::CognitoIdp::AdminUpdateDeviceStatusResponse> instance

Updates the status of a user's device so that it is marked as
remembered or not remembered for the purpose of device authentication.
Device authentication is a "remember me" mechanism that silently
completes sign-in from trusted devices with a device key instead of a
user-provided MFA code. This operation changes the status of a device
without deleting it, so you can enable it again later. For more
information about device authentication, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AdminUpdateUserAttributes

=over

=item UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

=item Username => Str

=item UserPoolId => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminUpdateUserAttributesResponse> instance

Updates the specified user's attributes. To delete an attribute from
your user, submit the attribute in your API request with a blank value.

For custom attributes, you must add a C<custom:> prefix to the
attribute name, for example C<custom:department>.

This operation can set a user's email address or phone number as
verified and permit immediate sign-in in user pools that require
verification of these attributes. To do this, set the C<email_verified>
or C<phone_number_verified> attribute to C<true>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 AdminUserGlobalSignOut

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUserGlobalSignOut>

Returns: a L<Paws::CognitoIdp::AdminUserGlobalSignOutResponse> instance

Invalidates the identity, access, and refresh tokens that Amazon
Cognito issued to a user. Call this operation with your administrative
credentials when your user signs out of your app. This results in the
following behavior.

=over

=item *

Amazon Cognito no longer accepts I<token-authorized> user operations
that you authorize with a signed-out user's access tokens. For more
information, see Using the Amazon Cognito user pools API and user pool
endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

Amazon Cognito returns an C<Access Token has been revoked> error when
your app attempts to authorize a user pools API request with a revoked
access token that contains the scope C<aws.cognito.signin.user.admin>.

=item *

Amazon Cognito no longer accepts a signed-out user's ID token in a
GetId
(https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
request to an identity pool with C<ServerSideTokenCheck> enabled for
its user pool IdP configuration in CognitoIdentityProvider
(https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html).

=item *

Amazon Cognito no longer accepts a signed-out user's refresh tokens in
refresh requests.

=back

Other requests might be valid until your user's token expires. This
operation doesn't clear the managed login
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html)
session cookie. To clear the session for a user who signed in with
managed login or the classic hosted UI, direct their browser session to
the logout endpoint
(https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 AssociateSoftwareToken

=over

=item [AccessToken => Str]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AssociateSoftwareToken>

Returns: a L<Paws::CognitoIdp::AssociateSoftwareTokenResponse> instance

Begins setup of time-based one-time password (TOTP) multi-factor
authentication (MFA) for a user, with a unique private key that Amazon
Cognito generates and returns in the API response. You can authorize an
C<AssociateSoftwareToken> request with either the user's access token,
or a session string from a challenge response that you received from
Amazon Cognito.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.


=head2 ChangePassword

=over

=item AccessToken => Str

=item ProposedPassword => Str

=item [PreviousPassword => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ChangePassword>

Returns: a L<Paws::CognitoIdp::ChangePasswordResponse> instance

Changes the password for the currently signed-in user.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 CompleteWebAuthnRegistration

=over

=item AccessToken => Str

=item Credential => L<Paws::CognitoIdp::Document>


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CompleteWebAuthnRegistration>

Returns: a L<Paws::CognitoIdp::CompleteWebAuthnRegistrationResponse> instance

Completes registration of a passkey authenticator for the currently
signed-in user.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.


=head2 ConfirmDevice

=over

=item AccessToken => Str

=item DeviceKey => Str

=item [DeviceName => Str]

=item [DeviceSecretVerifierConfig => L<Paws::CognitoIdp::DeviceSecretVerifierConfigType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmDevice>

Returns: a L<Paws::CognitoIdp::ConfirmDeviceResponse> instance

Confirms a device that a user wants to remember. A remembered device is
a "Remember me on this device" option for user pools that perform
authentication with the device key of a trusted device in the back end,
instead of a user-provided MFA code. For more information about device
authentication, see Working with user devices in your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 ConfirmForgotPassword

=over

=item ClientId => Str

=item ConfirmationCode => Str

=item Password => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmForgotPassword>

Returns: a L<Paws::CognitoIdp::ConfirmForgotPasswordResponse> instance

This public API operation accepts a confirmation code that Amazon
Cognito sent to a user and accepts a new password for that user.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 ConfirmSignUp

=over

=item ClientId => Str

=item ConfirmationCode => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [ForceAliasCreation => Bool]

=item [SecretHash => Str]

=item [Session => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmSignUp>

Returns: a L<Paws::CognitoIdp::ConfirmSignUpResponse> instance

Confirms the account of a new user. This public API operation submits a
code that Amazon Cognito sent to your user when they signed up in your
user pool. After your user enters their code, they confirm ownership of
the email address or phone number that they provided, and their user
account becomes active. Depending on your user pool configuration, your
users will receive their confirmation code in an email or SMS message.

Local users who signed up in your user pool are the only type of user
who can confirm sign-up with a code. Users who federate through an
external identity provider (IdP) have already been confirmed by their
IdP.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 CreateGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Description => Str]

=item [Precedence => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateGroup>

Returns: a L<Paws::CognitoIdp::CreateGroupResponse> instance

Creates a new group in the specified user pool. For more information
about user pool groups, see Adding groups to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateIdentityProvider

=over

=item ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>

=item ProviderName => Str

=item ProviderType => Str

=item UserPoolId => Str

=item [AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>]

=item [IdpIdentifiers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateIdentityProvider>

Returns: a L<Paws::CognitoIdp::CreateIdentityProviderResponse> instance

Adds a configuration and trust relationship between a third-party
identity provider (IdP) and a user pool. Amazon Cognito accepts sign-in
with third-party identity providers through managed login and OIDC
relying-party libraries. For more information, see Third-party IdP
sign-in
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateManagedLoginBranding

=over

=item ClientId => Str

=item UserPoolId => Str

=item [Assets => ArrayRef[L<Paws::CognitoIdp::AssetType>]]

=item [Settings => L<Paws::CognitoIdp::Document>]

=item [UseCognitoProvidedValues => Bool]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateManagedLoginBranding>

Returns: a L<Paws::CognitoIdp::CreateManagedLoginBrandingResponse> instance

Creates a new set of branding settings for a user pool style and
associates it with an app client. This operation is the programmatic
option for the creation of a new style in the branding designer.

Provides values for UI customization in a C<Settings> JSON object and
image files in an C<Assets> array. To send the JSON object C<Document>
type parameter in C<Settings>, you might need to update to the most
recent version of your Amazon Web Services SDK. To create a new style
with default settings, set C<UseCognitoProvidedValues> to C<true> and
don't provide values for any other options.

This operation has a 2-megabyte request-size limit and include the CSS
settings and image assets for your app client. Your branding settings
might exceed 2MB in size. Amazon Cognito doesn't require that you pass
all parameters in one request and preserves existing style settings
that you don't specify. If your request is larger than 2MB, separate it
into multiple requests, each with a size smaller than the limit.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateResourceServer

=over

=item Identifier => Str

=item Name => Str

=item UserPoolId => Str

=item [Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateResourceServer>

Returns: a L<Paws::CognitoIdp::CreateResourceServerResponse> instance

Creates a new OAuth2.0 resource server and defines custom scopes within
it. Resource servers are associated with custom scopes and
machine-to-machine (M2M) authorization. For more information, see
Access control with resource servers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateUserImportJob

=over

=item CloudWatchLogsRoleArn => Str

=item JobName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserImportJob>

Returns: a L<Paws::CognitoIdp::CreateUserImportJobResponse> instance

Creates a user import job. You can import users into user pools from a
comma-separated values (CSV) file without adding Amazon Cognito MAU
costs to your Amazon Web Services bill.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateUserPool

=over

=item PoolName => Str

=item [AccountRecoverySetting => L<Paws::CognitoIdp::AccountRecoverySettingType>]

=item [AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>]

=item [AliasAttributes => ArrayRef[Str|Undef]]

=item [AutoVerifiedAttributes => ArrayRef[Str|Undef]]

=item [DeletionProtection => Str]

=item [DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>]

=item [EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>]

=item [EmailVerificationMessage => Str]

=item [EmailVerificationSubject => Str]

=item [LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>]

=item [MfaConfiguration => Str]

=item [Policies => L<Paws::CognitoIdp::UserPoolPolicyType>]

=item [Schema => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]]

=item [SmsAuthenticationMessage => Str]

=item [SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>]

=item [SmsVerificationMessage => Str]

=item [UserAttributeUpdateSettings => L<Paws::CognitoIdp::UserAttributeUpdateSettingsType>]

=item [UsernameAttributes => ArrayRef[Str|Undef]]

=item [UsernameConfiguration => L<Paws::CognitoIdp::UsernameConfigurationType>]

=item [UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>]

=item [UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>]

=item [UserPoolTier => Str]

=item [VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPool>

Returns: a L<Paws::CognitoIdp::CreateUserPoolResponse> instance

Creates a new Amazon Cognito user pool. This operation sets basic and
advanced configuration options.

If you don't provide a value for an attribute, Amazon Cognito sets it
to its default value.

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateUserPoolClient

=over

=item ClientName => Str

=item UserPoolId => Str

=item [AccessTokenValidity => Int]

=item [AllowedOAuthFlows => ArrayRef[Str|Undef]]

=item [AllowedOAuthFlowsUserPoolClient => Bool]

=item [AllowedOAuthScopes => ArrayRef[Str|Undef]]

=item [AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>]

=item [AuthSessionValidity => Int]

=item [CallbackURLs => ArrayRef[Str|Undef]]

=item [DefaultRedirectURI => Str]

=item [EnablePropagateAdditionalUserContextData => Bool]

=item [EnableTokenRevocation => Bool]

=item [ExplicitAuthFlows => ArrayRef[Str|Undef]]

=item [GenerateSecret => Bool]

=item [IdTokenValidity => Int]

=item [LogoutURLs => ArrayRef[Str|Undef]]

=item [PreventUserExistenceErrors => Str]

=item [ReadAttributes => ArrayRef[Str|Undef]]

=item [RefreshTokenRotation => L<Paws::CognitoIdp::RefreshTokenRotationType>]

=item [RefreshTokenValidity => Int]

=item [SupportedIdentityProviders => ArrayRef[Str|Undef]]

=item [TokenValidityUnits => L<Paws::CognitoIdp::TokenValidityUnitsType>]

=item [WriteAttributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPoolClient>

Returns: a L<Paws::CognitoIdp::CreateUserPoolClientResponse> instance

Creates an app client in a user pool. This operation sets basic and
advanced configuration options.

Unlike app clients created in the console, Amazon Cognito doesn't
automatically assign a branding style to app clients that you configure
with this API operation. Managed login and classic hosted UI pages
aren't available for your client until after you apply a branding
style.

If you don't provide a value for an attribute, Amazon Cognito sets it
to its default value.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 CreateUserPoolDomain

=over

=item Domain => Str

=item UserPoolId => Str

=item [CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>]

=item [ManagedLoginVersion => Int]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPoolDomain>

Returns: a L<Paws::CognitoIdp::CreateUserPoolDomainResponse> instance

A user pool domain hosts managed login, an authorization server and web
server for authentication in your application. This operation creates a
new user pool prefix domain or custom domain and sets the managed login
branding version. Set the branding version to C<1> for hosted UI
(classic) or C<2> for managed login. When you choose a custom domain,
you must provide an SSL certificate in the US East (N. Virginia) Amazon
Web Services Region in your request.

Your prefix domain might take up to one minute to take effect. Your
custom domain is online within five minutes, but it can take up to one
hour to distribute your SSL certificate.

For more information about adding a custom domain to your user pool,
see Configuring a user pool domain
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DeleteGroup

=over

=item GroupName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteGroup>

Returns: nothing

Deletes a group from the specified user pool. When you delete a group,
that group no longer contributes to users' C<cognito:preferred_group>
or C<cognito:groups> claims, and no longer influence access-control
decision that are based on group membership. For more information about
user pool groups, see Adding groups to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DeleteIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteIdentityProvider>

Returns: nothing

Deletes a user pool identity provider (IdP). After you delete an IdP,
users can no longer sign in to your user pool through that IdP. For
more information about user pool IdPs, see Third-party IdP sign-in
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DeleteManagedLoginBranding

=over

=item ManagedLoginBrandingId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteManagedLoginBranding>

Returns: nothing

Deletes a managed login branding style. When you delete a style, you
delete the branding association for an app client. When an app client
doesn't have a style assigned, your managed login pages for that app
client are nonfunctional until you create a new style or switch the
domain branding version.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DeleteResourceServer

=over

=item Identifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteResourceServer>

Returns: nothing

Deletes a resource server. After you delete a resource server, users
can no longer generate access tokens with scopes that are associate
with that resource server.

Resource servers are associated with custom scopes and
machine-to-machine (M2M) authorization. For more information, see
Access control with resource servers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DeleteUser

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUser>

Returns: nothing

Deletes the profile of the currently signed-in user. A deleted user
profile can no longer be used to sign in and can't be restored.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 DeleteUserAttributes

=over

=item AccessToken => Str

=item UserAttributeNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::DeleteUserAttributesResponse> instance

Deletes attributes from the currently signed-in user. For example, your
application can submit a request to this operation when a user wants to
remove their C<birthdate> attribute value.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 DeleteUserPool

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPool>

Returns: nothing

Deletes a user pool. After you delete a user pool, users can no longer
sign in to any associated applications.

When you delete a user pool, it's no longer visible or operational in
your Amazon Web Services account. Amazon Cognito retains deleted user
pools in an inactive state for 14 days, then begins a cleanup process
that fully removes them from Amazon Web Services systems. In case of
accidental deletion, contact Amazon Web ServicesSupport within 14 days
for restoration assistance.

Amazon Cognito begins full deletion of all resources from deleted user
pools after 14 days. In the case of large user pools, the cleanup
process might take significant additional time before all user data is
permanently deleted.


=head2 DeleteUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPoolClient>

Returns: nothing

Deletes a user pool app client. After you delete an app client, users
can no longer sign in to the associated application.


=head2 DeleteUserPoolDomain

=over

=item Domain => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPoolDomain>

Returns: a L<Paws::CognitoIdp::DeleteUserPoolDomainResponse> instance

Given a user pool ID and domain identifier, deletes a user pool domain.
After you delete a user pool domain, your managed login pages and
authorization server are no longer available.


=head2 DeleteWebAuthnCredential

=over

=item AccessToken => Str

=item CredentialId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteWebAuthnCredential>

Returns: a L<Paws::CognitoIdp::DeleteWebAuthnCredentialResponse> instance

Deletes a registered passkey, or WebAuthn, authenticator for the
currently signed-in user.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 DescribeIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeIdentityProvider>

Returns: a L<Paws::CognitoIdp::DescribeIdentityProviderResponse> instance

Given a user pool ID and identity provider (IdP) name, returns details
about the IdP.


=head2 DescribeManagedLoginBranding

=over

=item ManagedLoginBrandingId => Str

=item UserPoolId => Str

=item [ReturnMergedResources => Bool]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeManagedLoginBranding>

Returns: a L<Paws::CognitoIdp::DescribeManagedLoginBrandingResponse> instance

Given the ID of a managed login branding style, returns detailed
information about the style.


=head2 DescribeManagedLoginBrandingByClient

=over

=item ClientId => Str

=item UserPoolId => Str

=item [ReturnMergedResources => Bool]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeManagedLoginBrandingByClient>

Returns: a L<Paws::CognitoIdp::DescribeManagedLoginBrandingByClientResponse> instance

Given the ID of a user pool app client, returns detailed information
about the style assigned to the app client.


=head2 DescribeResourceServer

=over

=item Identifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeResourceServer>

Returns: a L<Paws::CognitoIdp::DescribeResourceServerResponse> instance

Describes a resource server. For more information about resource
servers, see Access control with resource servers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).


=head2 DescribeRiskConfiguration

=over

=item UserPoolId => Str

=item [ClientId => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeRiskConfiguration>

Returns: a L<Paws::CognitoIdp::DescribeRiskConfigurationResponse> instance

Given an app client or user pool ID where threat protection is
configured, describes the risk configuration. This operation returns
details about adaptive authentication, compromised credentials, and
IP-address allow- and denylists. For more information about threat
protection, see Threat protection
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-threat-protection.html).


=head2 DescribeUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserImportJob>

Returns: a L<Paws::CognitoIdp::DescribeUserImportJobResponse> instance

Describes a user import job. For more information about user CSV
import, see Importing users from a CSV file
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).


=head2 DescribeUserPool

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPool>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolResponse> instance

Given a user pool ID, returns configuration information. This operation
is useful when you want to inspect an existing user pool and
programmatically replicate the configuration to another user pool.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DescribeUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPoolClient>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolClientResponse> instance

Given an app client ID, returns configuration information. This
operation is useful when you want to inspect an existing app client and
programmatically replicate the configuration to another app client. For
more information about app clients, see App clients
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 DescribeUserPoolDomain

=over

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPoolDomain>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolDomainResponse> instance

Given a user pool domain name, returns information about the domain
configuration.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ForgetDevice

=over

=item DeviceKey => Str

=item [AccessToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ForgetDevice>

Returns: nothing

Given a device key, deletes a remembered device as the currently
signed-in user. For more information about device authentication, see
Working with user devices in your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 ForgotPassword

=over

=item ClientId => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ForgotPassword>

Returns: a L<Paws::CognitoIdp::ForgotPasswordResponse> instance

Sends a password-reset confirmation code for the currently signed-in
user.

For the C<Username> parameter, you can use the username or user alias.

If neither a verified phone number nor a verified email exists, Amazon
Cognito responds with an C<InvalidParameterException> error . If your
app client has a client secret and you don't provide a C<SECRET_HASH>
parameter, this API returns C<NotAuthorizedException>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 GetCSVHeader

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetCSVHeader>

Returns: a L<Paws::CognitoIdp::GetCSVHeaderResponse> instance

Given a user pool ID, generates a comma-separated value (CSV) list
populated with available user attributes in the user pool. This list is
the header for the CSV file that determines the users in a user import
job. Save the content of C<CSVHeader> in the response as a C<.csv> file
and populate it with the usernames and attributes of users that you
want to import. For more information about CSV user import, see
Importing users from a CSV file
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 GetDevice

=over

=item DeviceKey => Str

=item [AccessToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetDevice>

Returns: a L<Paws::CognitoIdp::GetDeviceResponse> instance

Given a device key, returns information about a remembered device for
the current user. For more information about device authentication, see
Working with user devices in your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 GetGroup

=over

=item GroupName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetGroup>

Returns: a L<Paws::CognitoIdp::GetGroupResponse> instance

Given a user pool ID and a group name, returns information about the
user group.

For more information about user pool groups, see Adding groups to a
user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 GetIdentityProviderByIdentifier

=over

=item IdpIdentifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetIdentityProviderByIdentifier>

Returns: a L<Paws::CognitoIdp::GetIdentityProviderByIdentifierResponse> instance

Given the identifier of an identity provider (IdP), for example
C<examplecorp>, returns information about the user pool configuration
for that IdP. For more information about IdPs, see Third-party IdP
sign-in
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).


=head2 GetLogDeliveryConfiguration

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetLogDeliveryConfiguration>

Returns: a L<Paws::CognitoIdp::GetLogDeliveryConfigurationResponse> instance

Given a user pool ID, returns the logging configuration. User pools can
export message-delivery error and threat-protection activity logs to
external Amazon Web Services services. For more information, see
Exporting user pool logs
(https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 GetSigningCertificate

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetSigningCertificate>

Returns: a L<Paws::CognitoIdp::GetSigningCertificateResponse> instance

Given a user pool ID, returns the signing certificate for SAML 2.0
federation.

Issued certificates are valid for 10 years from the date of issue.
Amazon Cognito issues and assigns a new signing certificate annually.
This renewal process returns a new value in the response to
C<GetSigningCertificate>, but doesn't invalidate the original
certificate.

For more information, see Signing SAML requests
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-SAML-signing-encryption.html#cognito-user-pools-SAML-signing).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 GetTokensFromRefreshToken

=over

=item ClientId => Str

=item RefreshToken => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [ClientSecret => Str]

=item [DeviceKey => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetTokensFromRefreshToken>

Returns: a L<Paws::CognitoIdp::GetTokensFromRefreshTokenResponse> instance

Given a refresh token, issues new ID, access, and optionally refresh
tokens for the user who owns the submitted token. This operation issues
a new refresh token and invalidates the original refresh token after an
optional grace period when refresh token rotation is enabled. If
refresh token rotation is disabled, issues new ID and access tokens
only.


=head2 GetUICustomization

=over

=item UserPoolId => Str

=item [ClientId => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUICustomization>

Returns: a L<Paws::CognitoIdp::GetUICustomizationResponse> instance

Given a user pool ID or app client, returns information about classic
hosted UI branding that you applied, if any. Returns user-pool level
branding information if no app client branding is applied, or if you
don't specify an app client ID. Returns an empty object if you haven't
applied hosted UI branding to either the client or the user pool. For
more information, see Hosted UI (classic) branding
(https://docs.aws.amazon.com/cognito/latest/developerguide/hosted-ui-classic-branding.html).


=head2 GetUser

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUser>

Returns: a L<Paws::CognitoIdp::GetUserResponse> instance

Gets user attributes and and MFA settings for the currently signed-in
user.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 GetUserAttributeVerificationCode

=over

=item AccessToken => Str

=item AttributeName => Str

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserAttributeVerificationCode>

Returns: a L<Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse> instance

Given an attribute name, sends a user attribute verification code for
the specified attribute name to the currently signed-in user.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 GetUserAuthFactors

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserAuthFactors>

Returns: a L<Paws::CognitoIdp::GetUserAuthFactorsResponse> instance

Lists the authentication options for the currently signed-in user.
Returns the following:

=over

=item 1.

The user's multi-factor authentication (MFA) preferences.

=item 2.

The user's options for choice-based authentication with the
C<USER_AUTH> flow.

=back

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 GetUserPoolMfaConfig

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserPoolMfaConfig>

Returns: a L<Paws::CognitoIdp::GetUserPoolMfaConfigResponse> instance

Given a user pool ID, returns configuration for sign-in with WebAuthn
authenticators and for multi-factor authentication (MFA). This
operation describes the following:

=over

=item *

The WebAuthn relying party (RP) ID and user-verification settings.

=item *

The required, optional, or disabled state of MFA for all user pool
users.

=item *

The message templates for email and SMS MFA.

=item *

The enabled or disabled state of time-based one-time password (TOTP)
MFA.

=back

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 GlobalSignOut

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GlobalSignOut>

Returns: a L<Paws::CognitoIdp::GlobalSignOutResponse> instance

Invalidates the identity, access, and refresh tokens that Amazon
Cognito issued to a user. Call this operation when your user signs out
of your app. This results in the following behavior.

=over

=item *

Amazon Cognito no longer accepts I<token-authorized> user operations
that you authorize with a signed-out user's access tokens. For more
information, see Using the Amazon Cognito user pools API and user pool
endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

Amazon Cognito returns an C<Access Token has been revoked> error when
your app attempts to authorize a user pools API request with a revoked
access token that contains the scope C<aws.cognito.signin.user.admin>.

=item *

Amazon Cognito no longer accepts a signed-out user's ID token in a
GetId
(https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
request to an identity pool with C<ServerSideTokenCheck> enabled for
its user pool IdP configuration in CognitoIdentityProvider
(https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html).

=item *

Amazon Cognito no longer accepts a signed-out user's refresh tokens in
refresh requests.

=back

Other requests might be valid until your user's token expires. This
operation doesn't clear the managed login
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html)
session cookie. To clear the session for a user who signed in with
managed login or the classic hosted UI, direct their browser session to
the logout endpoint
(https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 InitiateAuth

=over

=item AuthFlow => Str

=item ClientId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [AuthParameters => L<Paws::CognitoIdp::AuthParametersType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [Session => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::InitiateAuth>

Returns: a L<Paws::CognitoIdp::InitiateAuthResponse> instance

Declares an authentication flow and initiates sign-in for a user in the
Amazon Cognito user directory. Amazon Cognito might respond with an
additional challenge or an C<AuthenticationResult> that contains the
outcome of a successful authentication. You can't sign in a user with a
federated IdP with C<InitiateAuth>. For more information, see
Authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html).

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 ListDevices

=over

=item AccessToken => Str

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListDevices>

Returns: a L<Paws::CognitoIdp::ListDevicesResponse> instance

Lists the devices that Amazon Cognito has registered to the currently
signed-in user. For more information about device authentication, see
Working with user devices in your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 ListGroups

=over

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListGroups>

Returns: a L<Paws::CognitoIdp::ListGroupsResponse> instance

Given a user pool ID, returns user pool groups and their details.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListIdentityProviders

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListIdentityProviders>

Returns: a L<Paws::CognitoIdp::ListIdentityProvidersResponse> instance

Given a user pool ID, returns information about configured identity
providers (IdPs). For more information about IdPs, see Third-party IdP
sign-in
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListResourceServers

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListResourceServers>

Returns: a L<Paws::CognitoIdp::ListResourceServersResponse> instance

Given a user pool ID, returns all resource servers and their details.
For more information about resource servers, see Access control with
resource servers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListTagsForResource>

Returns: a L<Paws::CognitoIdp::ListTagsForResourceResponse> instance

Lists the tags that are assigned to an Amazon Cognito user pool. For
more information, see Tagging resources
(https://docs.aws.amazon.com/cognito/latest/developerguide/tagging.html).


=head2 ListUserImportJobs

=over

=item MaxResults => Int

=item UserPoolId => Str

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserImportJobs>

Returns: a L<Paws::CognitoIdp::ListUserImportJobsResponse> instance

Given a user pool ID, returns user import jobs and their details.
Import jobs are retained in user pool configuration so that you can
stage, stop, start, review, and delete them. For more information about
user import, see Importing users from a CSV file
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListUserPoolClients

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPoolClients>

Returns: a L<Paws::CognitoIdp::ListUserPoolClientsResponse> instance

Given a user pool ID, lists app clients. App clients are sets of rules
for the access that you want a user pool to grant to one application.
For more information, see App clients
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListUserPools

=over

=item MaxResults => Int

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPools>

Returns: a L<Paws::CognitoIdp::ListUserPoolsResponse> instance

Lists user pools and their details in the current Amazon Web Services
account.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListUsers

=over

=item UserPoolId => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [Filter => Str]

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUsers>

Returns: a L<Paws::CognitoIdp::ListUsersResponse> instance

Given a user pool ID, returns a list of users and their basic details
in a user pool.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListUsersInGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUsersInGroup>

Returns: a L<Paws::CognitoIdp::ListUsersInGroupResponse> instance

Given a user pool ID and a group name, returns a list of users in the
group. For more information about user pool groups, see Adding groups
to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 ListWebAuthnCredentials

=over

=item AccessToken => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListWebAuthnCredentials>

Returns: a L<Paws::CognitoIdp::ListWebAuthnCredentialsResponse> instance

Generates a list of the currently signed-in user's registered passkey,
or WebAuthn, credentials.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 ResendConfirmationCode

=over

=item ClientId => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ResendConfirmationCode>

Returns: a L<Paws::CognitoIdp::ResendConfirmationCodeResponse> instance

Resends the code that confirms a new account for a user who has signed
up in your user pool. Amazon Cognito sends confirmation codes to the
user attribute in the C<AutoVerifiedAttributes> property of your user
pool. When you prompt new users for the confirmation code, include a
"Resend code" option that generates a call to this API operation.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 RespondToAuthChallenge

=over

=item ChallengeName => Str

=item ClientId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [Session => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::RespondToAuthChallenge>

Returns: a L<Paws::CognitoIdp::RespondToAuthChallengeResponse> instance

Some API operations in a user pool generate a challenge, like a prompt
for an MFA code, for device authentication that bypasses MFA, or for a
custom authentication challenge. A C<RespondToAuthChallenge> API
request provides the answer to that challenge, like a code or a secure
remote password (SRP). The parameters of a response to an
authentication challenge vary with the type of challenge.

For more information about custom authentication challenges, see Custom
authentication challenge Lambda triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 RevokeToken

=over

=item ClientId => Str

=item Token => Str

=item [ClientSecret => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::RevokeToken>

Returns: a L<Paws::CognitoIdp::RevokeTokenResponse> instance

Revokes all of the access tokens generated by, and at the same time as,
the specified refresh token. After a token is revoked, you can't use
the revoked token to access Amazon Cognito user APIs, or to authorize
access to your resource server.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 SetLogDeliveryConfiguration

=over

=item LogConfigurations => ArrayRef[L<Paws::CognitoIdp::LogConfigurationType>]

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetLogDeliveryConfiguration>

Returns: a L<Paws::CognitoIdp::SetLogDeliveryConfigurationResponse> instance

Sets up or modifies the logging configuration of a user pool. User
pools can export user notification logs and, when threat protection is
active, user-activity logs. For more information, see Exporting user
pool logs
(https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html).


=head2 SetRiskConfiguration

=over

=item UserPoolId => Str

=item [AccountTakeoverRiskConfiguration => L<Paws::CognitoIdp::AccountTakeoverRiskConfigurationType>]

=item [ClientId => Str]

=item [CompromisedCredentialsRiskConfiguration => L<Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType>]

=item [RiskExceptionConfiguration => L<Paws::CognitoIdp::RiskExceptionConfigurationType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetRiskConfiguration>

Returns: a L<Paws::CognitoIdp::SetRiskConfigurationResponse> instance

Configures threat protection for a user pool or app client. Sets
configuration for the following.

=over

=item *

Responses to risks with adaptive authentication

=item *

Responses to vulnerable passwords with compromised-credentials
detection

=item *

Notifications to users who have had risky activity detected

=item *

IP-address denylist and allowlist

=back

To set the risk configuration for the user pool to defaults, send this
request with only the C<UserPoolId> parameter. To reset the threat
protection settings of an app client to be inherited from the user
pool, send C<UserPoolId> and C<ClientId> parameters only. To change
threat protection to audit-only or off, update the value of
C<UserPoolAddOns> in an C<UpdateUserPool> request. To activate this
setting, your user pool must be on the Plus tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).


=head2 SetUICustomization

=over

=item UserPoolId => Str

=item [ClientId => Str]

=item [CSS => Str]

=item [ImageFile => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUICustomization>

Returns: a L<Paws::CognitoIdp::SetUICustomizationResponse> instance

Configures UI branding settings for domains with the hosted UI
(classic) branding version. Your user pool must have a domain.
Configure a domain with .

Set the default configuration for all clients with a C<ClientId> of
C<ALL>. When the C<ClientId> value is an app client ID, the settings
you pass in this request apply to that app client and override the
default C<ALL> configuration.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 SetUserMFAPreference

=over

=item AccessToken => Str

=item [EmailMfaSettings => L<Paws::CognitoIdp::EmailMfaSettingsType>]

=item [SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>]

=item [SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserMFAPreference>

Returns: a L<Paws::CognitoIdp::SetUserMFAPreferenceResponse> instance

Set the user's multi-factor authentication (MFA) method preference,
including which MFA factors are activated and if any are preferred.
Only one factor can be set as preferred. The preferred MFA factor will
be used to authenticate a user if multiple factors are activated. If
multiple options are activated and no preference is set, a challenge to
choose an MFA option will be returned during sign-in. If an MFA type is
activated for a user, the user will be prompted for MFA during all
sign-in attempts unless device tracking is turned on and the device has
been trusted. If you want MFA to be applied selectively based on the
assessed risk level of sign-in attempts, deactivate MFA for users and
turn on Adaptive Authentication for the user pool.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 SetUserPoolMfaConfig

=over

=item UserPoolId => Str

=item [EmailMfaConfiguration => L<Paws::CognitoIdp::EmailMfaConfigType>]

=item [MfaConfiguration => Str]

=item [SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>]

=item [SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>]

=item [WebAuthnConfiguration => L<Paws::CognitoIdp::WebAuthnConfigurationType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserPoolMfaConfig>

Returns: a L<Paws::CognitoIdp::SetUserPoolMfaConfigResponse> instance

Sets user pool multi-factor authentication (MFA) and passkey
configuration. For more information about user pool MFA, see Adding MFA
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html).
For more information about WebAuthn passkeys see Authentication flows
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 SetUserSettings

=over

=item AccessToken => Str

=item MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserSettings>

Returns: a L<Paws::CognitoIdp::SetUserSettingsResponse> instance

I<This action is no longer supported.> You can use it to configure only
SMS MFA. You can't use it to configure time-based one-time password
(TOTP) software token or email MFA.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 SignUp

=over

=item ClientId => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [Password => Str]

=item [SecretHash => Str]

=item [UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]

=item [ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SignUp>

Returns: a L<Paws::CognitoIdp::SignUpResponse> instance

Registers a user with an app client and requests a user name, password,
and user attributes in the user pool.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

You might receive a C<LimitExceeded> exception in response to this
request if you have exceeded a rate quota for email or SMS messages,
and if your user pool automatically verifies email addresses or phone
numbers. When you get this exception in the response, the user is
successfully created and is in an C<UNCONFIRMED> state.


=head2 StartUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::StartUserImportJob>

Returns: a L<Paws::CognitoIdp::StartUserImportJobResponse> instance

Instructs your user pool to start importing users from a CSV file that
contains their usernames and attributes. For more information about
importing users from a CSV file, see Importing users from a CSV file
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).


=head2 StartWebAuthnRegistration

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::StartWebAuthnRegistration>

Returns: a L<Paws::CognitoIdp::StartWebAuthnRegistrationResponse> instance

Requests credential creation options from your user pool for the
currently signed-in user. Returns information about the user pool, the
user profile, and authentication requirements. Users must provide this
information in their request to enroll your application with their
passkey provider.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.


=head2 StopUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::StopUserImportJob>

Returns: a L<Paws::CognitoIdp::StopUserImportJobResponse> instance

Instructs your user pool to stop a running job that's importing users
from a CSV file that contains their usernames and attributes. For more
information about importing users from a CSV file, see Importing users
from a CSV file
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CognitoIdp::UserPoolTagsType>


=back

Each argument is described in detail in: L<Paws::CognitoIdp::TagResource>

Returns: a L<Paws::CognitoIdp::TagResourceResponse> instance

Assigns a set of tags to an Amazon Cognito user pool. A tag is a label
that you can use to categorize and manage user pools in different ways,
such as by purpose, owner, environment, or other criteria.

Each tag consists of a key and value, both of which you define. A key
is a general category for more specific values. For example, if you
have two versions of a user pool, one for testing and another for
production, you might assign an C<Environment> tag key to both user
pools. The value of this key might be C<Test> for one user pool, and
C<Production> for the other.

Tags are useful for cost tracking and access control. You can activate
your tags so that they appear on the Billing and Cost Management
console, where you can track the costs associated with your user pools.
In an Identity and Access Management policy, you can constrain
permissions for user pools based on specific tags or tag values.

You can use this action up to 5 times per second, per account. A user
pool can have as many as 50 tags.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UntagResource>

Returns: a L<Paws::CognitoIdp::UntagResourceResponse> instance

Given tag IDs that you previously assigned to a user pool, removes
them.


=head2 UpdateAuthEventFeedback

=over

=item EventId => Str

=item FeedbackToken => Str

=item FeedbackValue => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateAuthEventFeedback>

Returns: a L<Paws::CognitoIdp::UpdateAuthEventFeedbackResponse> instance

Provides the feedback for an authentication event generated by threat
protection features. The user's response indicates that you think that
the event either was from a valid user or was an unwanted
authentication attempt. This feedback improves the risk evaluation
decision for the user pool as part of Amazon Cognito threat protection.
To activate this setting, your user pool must be on the Plus tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).

This operation requires a C<FeedbackToken> that Amazon Cognito
generates and adds to notification emails when users have potentially
suspicious authentication events. Users invoke this operation when they
select the link that corresponds to C<{one-click-link-valid}> or
C<{one-click-link-invalid}> in your notification template. Because
C<FeedbackToken> is a required parameter, you can' make requests to
C<UpdateAuthEventFeedback> without the contents of the notification
email message.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 UpdateDeviceStatus

=over

=item AccessToken => Str

=item DeviceKey => Str

=item [DeviceRememberedStatus => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateDeviceStatus>

Returns: a L<Paws::CognitoIdp::UpdateDeviceStatusResponse> instance

Updates the status of a the currently signed-in user's device so that
it is marked as remembered or not remembered for the purpose of device
authentication. Device authentication is a "remember me" mechanism that
silently completes sign-in from trusted devices with a device key
instead of a user-provided MFA code. This operation changes the status
of a device without deleting it, so you can enable it again later. For
more information about device authentication, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 UpdateGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Description => Str]

=item [Precedence => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateGroup>

Returns: a L<Paws::CognitoIdp::UpdateGroupResponse> instance

Given the name of a user pool group, updates any of the properties for
precedence, IAM role, or description. For more information about user
pool groups, see Adding groups to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str

=item [AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>]

=item [IdpIdentifiers => ArrayRef[Str|Undef]]

=item [ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateIdentityProvider>

Returns: a L<Paws::CognitoIdp::UpdateIdentityProviderResponse> instance

Modifies the configuration and trust relationship between a third-party
identity provider (IdP) and a user pool. Amazon Cognito accepts sign-in
with third-party identity providers through managed login and OIDC
relying-party libraries. For more information, see Third-party IdP
sign-in
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateManagedLoginBranding

=over

=item [Assets => ArrayRef[L<Paws::CognitoIdp::AssetType>]]

=item [ManagedLoginBrandingId => Str]

=item [Settings => L<Paws::CognitoIdp::Document>]

=item [UseCognitoProvidedValues => Bool]

=item [UserPoolId => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateManagedLoginBranding>

Returns: a L<Paws::CognitoIdp::UpdateManagedLoginBrandingResponse> instance

Configures the branding settings for a user pool style. This operation
is the programmatic option for the configuration of a style in the
branding designer.

Provides values for UI customization in a C<Settings> JSON object and
image files in an C<Assets> array.

This operation has a 2-megabyte request-size limit and include the CSS
settings and image assets for your app client. Your branding settings
might exceed 2MB in size. Amazon Cognito doesn't require that you pass
all parameters in one request and preserves existing style settings
that you don't specify. If your request is larger than 2MB, separate it
into multiple requests, each with a size smaller than the limit.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateResourceServer

=over

=item Identifier => Str

=item Name => Str

=item UserPoolId => Str

=item [Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateResourceServer>

Returns: a L<Paws::CognitoIdp::UpdateResourceServerResponse> instance

Updates the name and scopes of a resource server. All other fields are
read-only. For more information about resource servers, see Access
control with resource servers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

If you don't provide a value for an attribute, it is set to the default
value.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateUserAttributes

=over

=item AccessToken => Str

=item UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::UpdateUserAttributesResponse> instance

Updates the currently signed-in user's attributes. To delete an
attribute from the user, submit the attribute in your API request with
a blank value.

For custom attributes, you must add a C<custom:> prefix to the
attribute name, for example C<custom:department>.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.


=head2 UpdateUserPool

=over

=item UserPoolId => Str

=item [AccountRecoverySetting => L<Paws::CognitoIdp::AccountRecoverySettingType>]

=item [AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>]

=item [AutoVerifiedAttributes => ArrayRef[Str|Undef]]

=item [DeletionProtection => Str]

=item [DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>]

=item [EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>]

=item [EmailVerificationMessage => Str]

=item [EmailVerificationSubject => Str]

=item [LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>]

=item [MfaConfiguration => Str]

=item [Policies => L<Paws::CognitoIdp::UserPoolPolicyType>]

=item [PoolName => Str]

=item [SmsAuthenticationMessage => Str]

=item [SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>]

=item [SmsVerificationMessage => Str]

=item [UserAttributeUpdateSettings => L<Paws::CognitoIdp::UserAttributeUpdateSettingsType>]

=item [UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>]

=item [UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>]

=item [UserPoolTier => Str]

=item [VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPool>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolResponse> instance

Updates the configuration of a user pool. To avoid setting parameters
to Amazon Cognito defaults, construct this API request to pass the
existing configuration of your user pool, modified to include the
changes that you want to make.

If you don't provide a value for an attribute, Amazon Cognito sets it
to its default value.

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint (https://console.aws.amazon.com/pinpoint/home/). Amazon
Cognito uses the registered number automatically. Otherwise, Amazon
Cognito users who must receive SMS messages might not be able to sign
up, activate their accounts, or sign in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Services service, Amazon Simple Notification Service
might place your account in the SMS sandbox. In I< sandbox mode
(https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) >, you
can send messages only to verified phone numbers. After you test your
app while in the sandbox environment, you can move out of the sandbox
and into production. For more information, see SMS message settings for
Amazon Cognito user pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
in the I<Amazon Cognito Developer Guide>.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str

=item [AccessTokenValidity => Int]

=item [AllowedOAuthFlows => ArrayRef[Str|Undef]]

=item [AllowedOAuthFlowsUserPoolClient => Bool]

=item [AllowedOAuthScopes => ArrayRef[Str|Undef]]

=item [AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>]

=item [AuthSessionValidity => Int]

=item [CallbackURLs => ArrayRef[Str|Undef]]

=item [ClientName => Str]

=item [DefaultRedirectURI => Str]

=item [EnablePropagateAdditionalUserContextData => Bool]

=item [EnableTokenRevocation => Bool]

=item [ExplicitAuthFlows => ArrayRef[Str|Undef]]

=item [IdTokenValidity => Int]

=item [LogoutURLs => ArrayRef[Str|Undef]]

=item [PreventUserExistenceErrors => Str]

=item [ReadAttributes => ArrayRef[Str|Undef]]

=item [RefreshTokenRotation => L<Paws::CognitoIdp::RefreshTokenRotationType>]

=item [RefreshTokenValidity => Int]

=item [SupportedIdentityProviders => ArrayRef[Str|Undef]]

=item [TokenValidityUnits => L<Paws::CognitoIdp::TokenValidityUnitsType>]

=item [WriteAttributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPoolClient>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolClientResponse> instance

Given a user pool app client ID, updates the configuration. To avoid
setting parameters to Amazon Cognito defaults, construct this API
request to pass the existing configuration of your app client, modified
to include the changes that you want to make.

If you don't provide a value for an attribute, Amazon Cognito sets it
to its default value.

Unlike app clients created in the console, Amazon Cognito doesn't
automatically assign a branding style to app clients that you configure
with this API operation. Managed login and classic hosted UI pages
aren't available for your client until after you apply a branding
style.

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 UpdateUserPoolDomain

=over

=item Domain => Str

=item UserPoolId => Str

=item [CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>]

=item [ManagedLoginVersion => Int]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPoolDomain>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolDomainResponse> instance

A user pool domain hosts managed login, an authorization server and web
server for authentication in your application. This operation updates
the branding version for user pool domains between C<1> for hosted UI
(classic) and C<2> for managed login. It also updates the SSL
certificate for user pool custom domains.

Changes to the domain branding version take up to one minute to take
effect for a prefix domain and up to five minutes for a custom domain.

This operation doesn't change the name of your user pool domain. To
change your domain, delete it with C<DeleteUserPoolDomain> and create a
new domain with C<CreateUserPoolDomain>.

You can pass the ARN of a new Certificate Manager certificate in this
request. Typically, ACM certificates automatically renew and you user
pool can continue to use the same ARN. But if you generate a new
certificate for your custom domain name, replace the original
configuration with the new ARN in this request.

ACM certificates for custom domains must be in the US East (N.
Virginia) Amazon Web Services Region. After you submit your request,
Amazon Cognito requires up to 1 hour to distribute your new certificate
to your custom domain.

For more information about adding a custom domain to your user pool,
see Configuring a user pool domain
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).

Amazon Cognito evaluates Identity and Access Management (IAM) policies
in requests for this API operation. For this operation, you must use
IAM credentials to authorize requests, and you must grant yourself the
corresponding IAM permission in a policy.

B<Learn more>

=over

=item *

Signing Amazon Web Services API Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

=item *

Using the Amazon Cognito user pools API and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

=back



=head2 VerifySoftwareToken

=over

=item UserCode => Str

=item [AccessToken => Str]

=item [FriendlyDeviceName => Str]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::VerifySoftwareToken>

Returns: a L<Paws::CognitoIdp::VerifySoftwareTokenResponse> instance

Registers the current user's time-based one-time password (TOTP)
authenticator with a code generated in their authenticator app from a
private key that's supplied by your user pool. Marks the user's
software token MFA status as "verified" if successful. The request
takes an access token or a session string, but not both.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).


=head2 VerifyUserAttribute

=over

=item AccessToken => Str

=item AttributeName => Str

=item Code => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::VerifyUserAttribute>

Returns: a L<Paws::CognitoIdp::VerifyUserAttributeResponse> instance

Submits a verification code for a signed-in user who has added or
changed a value of an auto-verified attribute. When successful, the
user's attribute becomes verified and the attribute C<email_verified>
or C<phone_number_verified> becomes C<true>.

If your user pool requires verification before Amazon Cognito updates
the attribute value, this operation updates the affected attribute to
its pending value.

Authorize this action with a signed-in user's access token. It must
include the scope C<aws.cognito.signin.user.admin>.

Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
policies in requests for this API operation. For this operation, you
can't use IAM credentials to authorize requests, and you can't grant
IAM permissions in policies. For more information about authorization
models in Amazon Cognito, see Using the Amazon Cognito user pools API
and user pool endpoints
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 AdminListAllGroupsForUser(sub { },Username => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 AdminListAllGroupsForUser(Username => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::AdminListGroupsForUserResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 AdminListAllUserAuthEvents(sub { },Username => Str, UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 AdminListAllUserAuthEvents(Username => Str, UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthEvents, passing the object as the first parameter, and the string 'AuthEvents' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::AdminListUserAuthEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllGroups(UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdentityProviders(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdentityProviders(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Providers, passing the object as the first parameter, and the string 'Providers' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListIdentityProvidersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceServers(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResourceServers(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceServers, passing the object as the first parameter, and the string 'ResourceServers' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListResourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserPoolClients(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserPoolClients(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserPoolClients, passing the object as the first parameter, and the string 'UserPoolClients' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUserPoolClientsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserPools(sub { },MaxResults => Int, [NextToken => Str])

=head2 ListAllUserPools(MaxResults => Int, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserPools, passing the object as the first parameter, and the string 'UserPools' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUserPoolsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },UserPoolId => Str, [AttributesToGet => ArrayRef[Str|Undef], Filter => Str, Limit => Int, PaginationToken => Str])

=head2 ListAllUsers(UserPoolId => Str, [AttributesToGet => ArrayRef[Str|Undef], Filter => Str, Limit => Int, PaginationToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsersInGroup(sub { },GroupName => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllUsersInGroup(GroupName => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUsersInGroupResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

