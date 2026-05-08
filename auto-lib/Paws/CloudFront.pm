package Paws::CloudFront;
  warn "Paws::CloudFront is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 'cloudfront' }
  sub signing_name { 'cloudfront' }
  sub version { '2020-05-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://cloudfront.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AssociateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::AssociateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDistributionTenantWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::AssociateDistributionTenantWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDistributionWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::AssociateDistributionWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CopyDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnycastIpList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateAnycastIpList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateConnectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContinuousDeploymentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateContinuousDeploymentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistributionWithTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistributionWithTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvalidationForDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidationForDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyValueStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateKeyValueStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOriginAccessControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateOriginAccessControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreatePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResponseHeadersPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateResponseHeadersPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistributionWithTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistributionWithTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateVpcOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnycastIpList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteAnycastIpList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteConnectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContinuousDeploymentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteContinuousDeploymentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyValueStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteKeyValueStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginAccessControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteOriginAccessControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeletePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResponseHeadersPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteResponseHeadersPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteVpcOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DescribeFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyValueStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DescribeKeyValueStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDistributionTenantWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DisassociateDistributionTenantWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDistributionWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DisassociateDistributionWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnycastIpList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetAnycastIpList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCachePolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCachePolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetConnectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectionGroupByRoutingEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetConnectionGroupByRoutingEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContinuousDeploymentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetContinuousDeploymentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContinuousDeploymentPolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetContinuousDeploymentPolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionTenantByDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionTenantByDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFieldLevelEncryptionProfileConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFieldLevelEncryptionProfileConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvalidationForDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidationForDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyGroupConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetKeyGroupConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedCertificateDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetManagedCertificateDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitoringSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetMonitoringSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginAccessControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginAccessControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginAccessControlConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginAccessControlConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginRequestPolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetOriginRequestPolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKeyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetPublicKeyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResponseHeadersPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetResponseHeadersPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResponseHeadersPolicyConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetResponseHeadersPolicyConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpcOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetVpcOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnycastIpLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListAnycastIpLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCachePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCachePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCloudFrontOriginAccessIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCloudFrontOriginAccessIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConflictingAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListConflictingAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListConnectionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContinuousDeploymentPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListContinuousDeploymentPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByAnycastIpListId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByAnycastIpListId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByCachePolicyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByCachePolicyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByConnectionMode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByConnectionMode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByOriginRequestPolicyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByOriginRequestPolicyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByResponseHeadersPolicyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByResponseHeadersPolicyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByVpcOriginId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByVpcOriginId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByWebACLId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByWebACLId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionTenants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionTenants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionTenantsByCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionTenantsByCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainConflicts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDomainConflicts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFieldLevelEncryptionConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFieldLevelEncryptionConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFieldLevelEncryptionProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFieldLevelEncryptionProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvalidations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvalidationsForDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidationsForDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListKeyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyValueStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListKeyValueStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOriginAccessControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListOriginAccessControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOriginRequestPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListOriginRequestPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListPublicKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRealtimeLogConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListRealtimeLogConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResponseHeadersPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListResponseHeadersPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListStreamingDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcOrigins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListVpcOrigins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::PublishFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::TestFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCachePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCachePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateConnectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContinuousDeploymentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateContinuousDeploymentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistributionTenant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistributionTenant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistributionWithStagingConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistributionWithStagingConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDomainAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFieldLevelEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFieldLevelEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFieldLevelEncryptionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFieldLevelEncryptionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateKeyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyValueStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateKeyValueStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOriginAccessControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateOriginAccessControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOriginRequestPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateOriginRequestPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdatePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRealtimeLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateRealtimeLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResponseHeadersPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateResponseHeadersPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateVpcOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyDnsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::VerifyDnsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCloudFrontOriginAccessIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCloudFrontOriginAccessIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->CloudFrontOriginAccessIdentityList->IsTruncated) {
        $next_result = $self->ListCloudFrontOriginAccessIdentities(@_, Marker => $next_result->CloudFrontOriginAccessIdentityList->NextMarker);
        push @{ $result->CloudFrontOriginAccessIdentityList->Items }, @{ $next_result->CloudFrontOriginAccessIdentityList->Items };
      }
      return $result;
    } else {
      while ($result->CloudFrontOriginAccessIdentityList->IsTruncated) {
        $callback->($_ => 'CloudFrontOriginAccessIdentityList.Items') foreach (@{ $result->CloudFrontOriginAccessIdentityList->Items });
        $result = $self->ListCloudFrontOriginAccessIdentities(@_, Marker => $result->CloudFrontOriginAccessIdentityList->NextMarker);
      }
      $callback->($_ => 'CloudFrontOriginAccessIdentityList.Items') foreach (@{ $result->CloudFrontOriginAccessIdentityList->Items });
    }

    return undef
  }
  sub ListAllConnectionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectionGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListConnectionGroups(@_, Marker => $next_result->NextMarker);
        push @{ $result->ConnectionGroups }, @{ $next_result->ConnectionGroups };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ConnectionGroups') foreach (@{ $result->ConnectionGroups });
        $result = $self->ListConnectionGroups(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'ConnectionGroups') foreach (@{ $result->ConnectionGroups });
    }

    return undef
  }
  sub ListAllDistributions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDistributions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->DistributionList->IsTruncated) {
        $next_result = $self->ListDistributions(@_, Marker => $next_result->DistributionList->NextMarker);
        push @{ $result->DistributionList->Items }, @{ $next_result->DistributionList->Items };
      }
      return $result;
    } else {
      while ($result->DistributionList->IsTruncated) {
        $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
        $result = $self->ListDistributions(@_, Marker => $result->DistributionList->NextMarker);
      }
      $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
    }

    return undef
  }
  sub ListAllDistributionsByConnectionMode {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDistributionsByConnectionMode(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->DistributionList->NextMarker) {
        $next_result = $self->ListDistributionsByConnectionMode(@_, Marker => $next_result->DistributionList->NextMarker);
        push @{ $result->DistributionList->Items }, @{ $next_result->DistributionList->Items };
      }
      return $result;
    } else {
      while ($result->DistributionList->NextMarker) {
        $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
        $result = $self->ListDistributionsByConnectionMode(@_, Marker => $result->DistributionList->NextMarker);
      }
      $callback->($_ => 'DistributionList.Items') foreach (@{ $result->DistributionList->Items });
    }

    return undef
  }
  sub ListAllDistributionTenants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDistributionTenants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListDistributionTenants(@_, Marker => $next_result->NextMarker);
        push @{ $result->DistributionTenantList }, @{ $next_result->DistributionTenantList };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'DistributionTenantList') foreach (@{ $result->DistributionTenantList });
        $result = $self->ListDistributionTenants(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'DistributionTenantList') foreach (@{ $result->DistributionTenantList });
    }

    return undef
  }
  sub ListAllDistributionTenantsByCustomization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDistributionTenantsByCustomization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListDistributionTenantsByCustomization(@_, Marker => $next_result->NextMarker);
        push @{ $result->DistributionTenantList }, @{ $next_result->DistributionTenantList };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'DistributionTenantList') foreach (@{ $result->DistributionTenantList });
        $result = $self->ListDistributionTenantsByCustomization(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'DistributionTenantList') foreach (@{ $result->DistributionTenantList });
    }

    return undef
  }
  sub ListAllDomainConflicts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomainConflicts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListDomainConflicts(@_, Marker => $next_result->NextMarker);
        push @{ $result->DomainConflicts }, @{ $next_result->DomainConflicts };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'DomainConflicts') foreach (@{ $result->DomainConflicts });
        $result = $self->ListDomainConflicts(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'DomainConflicts') foreach (@{ $result->DomainConflicts });
    }

    return undef
  }
  sub ListAllInvalidations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvalidations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->InvalidationList->IsTruncated) {
        $next_result = $self->ListInvalidations(@_, Marker => $next_result->InvalidationList->NextMarker);
        push @{ $result->InvalidationList->Items }, @{ $next_result->InvalidationList->Items };
      }
      return $result;
    } else {
      while ($result->InvalidationList->IsTruncated) {
        $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
        $result = $self->ListInvalidations(@_, Marker => $result->InvalidationList->NextMarker);
      }
      $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
    }

    return undef
  }
  sub ListAllInvalidationsForDistributionTenant {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvalidationsForDistributionTenant(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->InvalidationList->NextMarker) {
        $next_result = $self->ListInvalidationsForDistributionTenant(@_, Marker => $next_result->InvalidationList->NextMarker);
        push @{ $result->InvalidationList->Items }, @{ $next_result->InvalidationList->Items };
      }
      return $result;
    } else {
      while ($result->InvalidationList->NextMarker) {
        $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
        $result = $self->ListInvalidationsForDistributionTenant(@_, Marker => $result->InvalidationList->NextMarker);
      }
      $callback->($_ => 'InvalidationList.Items') foreach (@{ $result->InvalidationList->Items });
    }

    return undef
  }
  sub ListAllKeyValueStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyValueStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->KeyValueStoreList->NextMarker) {
        $next_result = $self->ListKeyValueStores(@_, Marker => $next_result->KeyValueStoreList->NextMarker);
        push @{ $result->KeyValueStoreList->Items }, @{ $next_result->KeyValueStoreList->Items };
      }
      return $result;
    } else {
      while ($result->KeyValueStoreList->NextMarker) {
        $callback->($_ => 'KeyValueStoreList.Items') foreach (@{ $result->KeyValueStoreList->Items });
        $result = $self->ListKeyValueStores(@_, Marker => $result->KeyValueStoreList->NextMarker);
      }
      $callback->($_ => 'KeyValueStoreList.Items') foreach (@{ $result->KeyValueStoreList->Items });
    }

    return undef
  }
  sub ListAllPublicKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPublicKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PublicKeyList->NextMarker) {
        $next_result = $self->ListPublicKeys(@_, Marker => $next_result->PublicKeyList->NextMarker);
        push @{ $result->PublicKeyList->Items }, @{ $next_result->PublicKeyList->Items };
      }
      return $result;
    } else {
      while ($result->PublicKeyList->NextMarker) {
        $callback->($_ => 'PublicKeyList.Items') foreach (@{ $result->PublicKeyList->Items });
        $result = $self->ListPublicKeys(@_, Marker => $result->PublicKeyList->NextMarker);
      }
      $callback->($_ => 'PublicKeyList.Items') foreach (@{ $result->PublicKeyList->Items });
    }

    return undef
  }
  sub ListAllStreamingDistributions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamingDistributions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->StreamingDistributionList->IsTruncated) {
        $next_result = $self->ListStreamingDistributions(@_, Marker => $next_result->StreamingDistributionList->NextMarker);
        push @{ $result->StreamingDistributionList->Items }, @{ $next_result->StreamingDistributionList->Items };
      }
      return $result;
    } else {
      while ($result->StreamingDistributionList->IsTruncated) {
        $callback->($_ => 'StreamingDistributionList.Items') foreach (@{ $result->StreamingDistributionList->Items });
        $result = $self->ListStreamingDistributions(@_, Marker => $result->StreamingDistributionList->NextMarker);
      }
      $callback->($_ => 'StreamingDistributionList.Items') foreach (@{ $result->StreamingDistributionList->Items });
    }

    return undef
  }


  sub operations { qw/AssociateAlias AssociateDistributionTenantWebACL AssociateDistributionWebACL CopyDistribution CreateAnycastIpList CreateCachePolicy CreateCloudFrontOriginAccessIdentity CreateConnectionGroup CreateContinuousDeploymentPolicy CreateDistribution CreateDistributionTenant CreateDistributionWithTags CreateFieldLevelEncryptionConfig CreateFieldLevelEncryptionProfile CreateFunction CreateInvalidation CreateInvalidationForDistributionTenant CreateKeyGroup CreateKeyValueStore CreateMonitoringSubscription CreateOriginAccessControl CreateOriginRequestPolicy CreatePublicKey CreateRealtimeLogConfig CreateResponseHeadersPolicy CreateStreamingDistribution CreateStreamingDistributionWithTags CreateVpcOrigin DeleteAnycastIpList DeleteCachePolicy DeleteCloudFrontOriginAccessIdentity DeleteConnectionGroup DeleteContinuousDeploymentPolicy DeleteDistribution DeleteDistributionTenant DeleteFieldLevelEncryptionConfig DeleteFieldLevelEncryptionProfile DeleteFunction DeleteKeyGroup DeleteKeyValueStore DeleteMonitoringSubscription DeleteOriginAccessControl DeleteOriginRequestPolicy DeletePublicKey DeleteRealtimeLogConfig DeleteResponseHeadersPolicy DeleteStreamingDistribution DeleteVpcOrigin DescribeFunction DescribeKeyValueStore DisassociateDistributionTenantWebACL DisassociateDistributionWebACL GetAnycastIpList GetCachePolicy GetCachePolicyConfig GetCloudFrontOriginAccessIdentity GetCloudFrontOriginAccessIdentityConfig GetConnectionGroup GetConnectionGroupByRoutingEndpoint GetContinuousDeploymentPolicy GetContinuousDeploymentPolicyConfig GetDistribution GetDistributionConfig GetDistributionTenant GetDistributionTenantByDomain GetFieldLevelEncryption GetFieldLevelEncryptionConfig GetFieldLevelEncryptionProfile GetFieldLevelEncryptionProfileConfig GetFunction GetInvalidation GetInvalidationForDistributionTenant GetKeyGroup GetKeyGroupConfig GetManagedCertificateDetails GetMonitoringSubscription GetOriginAccessControl GetOriginAccessControlConfig GetOriginRequestPolicy GetOriginRequestPolicyConfig GetPublicKey GetPublicKeyConfig GetRealtimeLogConfig GetResponseHeadersPolicy GetResponseHeadersPolicyConfig GetStreamingDistribution GetStreamingDistributionConfig GetVpcOrigin ListAnycastIpLists ListCachePolicies ListCloudFrontOriginAccessIdentities ListConflictingAliases ListConnectionGroups ListContinuousDeploymentPolicies ListDistributions ListDistributionsByAnycastIpListId ListDistributionsByCachePolicyId ListDistributionsByConnectionMode ListDistributionsByKeyGroup ListDistributionsByOriginRequestPolicyId ListDistributionsByRealtimeLogConfig ListDistributionsByResponseHeadersPolicyId ListDistributionsByVpcOriginId ListDistributionsByWebACLId ListDistributionTenants ListDistributionTenantsByCustomization ListDomainConflicts ListFieldLevelEncryptionConfigs ListFieldLevelEncryptionProfiles ListFunctions ListInvalidations ListInvalidationsForDistributionTenant ListKeyGroups ListKeyValueStores ListOriginAccessControls ListOriginRequestPolicies ListPublicKeys ListRealtimeLogConfigs ListResponseHeadersPolicies ListStreamingDistributions ListTagsForResource ListVpcOrigins PublishFunction TagResource TestFunction UntagResource UpdateCachePolicy UpdateCloudFrontOriginAccessIdentity UpdateConnectionGroup UpdateContinuousDeploymentPolicy UpdateDistribution UpdateDistributionTenant UpdateDistributionWithStagingConfig UpdateDomainAssociation UpdateFieldLevelEncryptionConfig UpdateFieldLevelEncryptionProfile UpdateFunction UpdateKeyGroup UpdateKeyValueStore UpdateOriginAccessControl UpdateOriginRequestPolicy UpdatePublicKey UpdateRealtimeLogConfig UpdateResponseHeadersPolicy UpdateStreamingDistribution UpdateVpcOrigin VerifyDnsConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront - Perl Interface to AWS Amazon CloudFront

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudFront');
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

Amazon CloudFront

This is the I<Amazon CloudFront API Reference>. This guide is for
developers who need detailed information about CloudFront API actions,
data types, and errors. For detailed information about CloudFront
features, see the Amazon CloudFront Developer Guide
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31>


=head1 METHODS

=head2 AssociateAlias

=over

=item Alias => Str

=item TargetDistributionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::AssociateAlias>

Returns: nothing

Associates an alias (also known as a CNAME or an alternate domain name)
with a CloudFront distribution.

With this operation you can move an alias that's already in use on a
CloudFront distribution to a different distribution in one step. This
prevents the downtime that could occur if you first remove the alias
from one distribution and then separately add the alias to another
distribution.

To use this operation to associate an alias with a distribution, you
provide the alias and the ID of the target distribution for the alias.
For more information, including how to set up the target distribution,
prerequisites that you must complete, and other restrictions, see
Moving an alternate domain name to a different distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
in the I<Amazon CloudFront Developer Guide>.


=head2 AssociateDistributionTenantWebACL

=over

=item Id => Str

=item WebACLArn => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::AssociateDistributionTenantWebACL>

Returns: a L<Paws::CloudFront::AssociateDistributionTenantWebACLResult> instance

Associates the WAF web ACL with a distribution tenant.


=head2 AssociateDistributionWebACL

=over

=item Id => Str

=item WebACLArn => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::AssociateDistributionWebACL>

Returns: a L<Paws::CloudFront::AssociateDistributionWebACLResult> instance

Associates the WAF web ACL with a distribution.


=head2 CopyDistribution

=over

=item CallerReference => Str

=item PrimaryDistributionId => Str

=item [Enabled => Bool]

=item [IfMatch => Str]

=item [Staging => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFront::CopyDistribution>

Returns: a L<Paws::CloudFront::CopyDistributionResult> instance

Creates a staging distribution using the configuration of the provided
primary distribution. A staging distribution is a copy of an existing
distribution (called the primary distribution) that you can use in a
continuous deployment workflow.

After you create a staging distribution, you can use
C<UpdateDistribution> to modify the staging distribution's
configuration. Then you can use C<CreateContinuousDeploymentPolicy> to
incrementally move traffic to the staging distribution.

This API operation requires the following IAM permissions:

=over

=item *

GetDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)

=item *

CreateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html)

=item *

CopyDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html)

=back



=head2 CreateAnycastIpList

=over

=item IpCount => Int

=item Name => Str

=item [Tags => L<Paws::CloudFront::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateAnycastIpList>

Returns: a L<Paws::CloudFront::CreateAnycastIpListResult> instance

Creates an Anycast static IP list.


=head2 CreateCachePolicy

=over

=item CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateCachePolicy>

Returns: a L<Paws::CloudFront::CreateCachePolicyResult> instance

Creates a cache policy.

After you create a cache policy, you can attach it to one or more cache
behaviors. When it's attached to a cache behavior, the cache policy
determines the following:

=over

=item *

The values that CloudFront includes in the I<cache key>. These values
can include HTTP headers, cookies, and URL query strings. CloudFront
uses the cache key to find an object in its cache that it can return to
the viewer.

=item *

The default, minimum, and maximum time to live (TTL) values that you
want objects to stay in the CloudFront cache.

=back

The headers, cookies, and query strings that are included in the cache
key are also included in requests that CloudFront sends to the origin.
CloudFront sends a request when it can't find an object in its cache
that matches the request's cache key. If you want to send values to the
origin but I<not> include them in the cache key, use
C<OriginRequestPolicy>.

For more information about cache policies, see Controlling the cache
key
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateCloudFrontOriginAccessIdentity

=over

=item CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult> instance

Creates a new origin access identity. If you're using Amazon S3 for
your origin, you can use an origin access identity to require users to
access your content using a CloudFront URL instead of the Amazon S3
URL. For more information about how to use origin access identities,
see Serving Private Content through CloudFront
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateConnectionGroup

=over

=item Name => Str

=item [AnycastIpListId => Str]

=item [Enabled => Bool]

=item [Ipv6Enabled => Bool]

=item [Tags => L<Paws::CloudFront::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateConnectionGroup>

Returns: a L<Paws::CloudFront::CreateConnectionGroupResult> instance

Creates a connection group.


=head2 CreateContinuousDeploymentPolicy

=over

=item ContinuousDeploymentPolicyConfig => L<Paws::CloudFront::ContinuousDeploymentPolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateContinuousDeploymentPolicy>

Returns: a L<Paws::CloudFront::CreateContinuousDeploymentPolicyResult> instance

Creates a continuous deployment policy that distributes traffic for a
custom domain name to two different CloudFront distributions.

To use a continuous deployment policy, first use C<CopyDistribution> to
create a staging distribution, then use C<UpdateDistribution> to modify
the staging distribution's configuration.

After you create and update a staging distribution, you can use a
continuous deployment policy to incrementally move traffic to the
staging distribution. This workflow enables you to test changes to a
distribution's configuration before moving all of your domain's
production traffic to the new configuration.


=head2 CreateDistribution

=over

=item DistributionConfig => L<Paws::CloudFront::DistributionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateDistribution>

Returns: a L<Paws::CloudFront::CreateDistributionResult> instance

Creates a CloudFront distribution.


=head2 CreateDistributionTenant

=over

=item DistributionId => Str

=item Domains => ArrayRef[L<Paws::CloudFront::DomainItem>]

=item Name => Str

=item [ConnectionGroupId => Str]

=item [Customizations => L<Paws::CloudFront::Customizations>]

=item [Enabled => Bool]

=item [ManagedCertificateRequest => L<Paws::CloudFront::ManagedCertificateRequest>]

=item [Parameters => ArrayRef[L<Paws::CloudFront::Parameter>]]

=item [Tags => L<Paws::CloudFront::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateDistributionTenant>

Returns: a L<Paws::CloudFront::CreateDistributionTenantResult> instance

Creates a distribution tenant.


=head2 CreateDistributionWithTags

=over

=item DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateDistributionWithTagsResult> instance

Create a new distribution with tags. This API operation requires the
following IAM permissions:

=over

=item *

CreateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html)

=item *

TagResource
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html)

=back



=head2 CreateFieldLevelEncryptionConfig

=over

=item FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::CreateFieldLevelEncryptionConfigResult> instance

Create a new field-level encryption configuration.


=head2 CreateFieldLevelEncryptionProfile

=over

=item FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::CreateFieldLevelEncryptionProfileResult> instance

Create a field-level encryption profile.


=head2 CreateFunction

=over

=item FunctionCode => Str

=item FunctionConfig => L<Paws::CloudFront::FunctionConfig>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateFunction>

Returns: a L<Paws::CloudFront::CreateFunctionResult> instance

Creates a CloudFront function.

To create a function, you provide the function code and some
configuration information about the function. The response contains an
Amazon Resource Name (ARN) that uniquely identifies the function.

When you create a function, it's in the C<DEVELOPMENT> stage. In this
stage, you can test the function with C<TestFunction>, and update it
with C<UpdateFunction>.

When you're ready to use your function with a CloudFront distribution,
use C<PublishFunction> to copy the function from the C<DEVELOPMENT>
stage to C<LIVE>. When it's live, you can attach the function to a
distribution's cache behavior, using the function's ARN.


=head2 CreateInvalidation

=over

=item DistributionId => Str

=item InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidation>

Returns: a L<Paws::CloudFront::CreateInvalidationResult> instance

Create a new invalidation. For more information, see Invalidating files
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateInvalidationForDistributionTenant

=over

=item Id => Str

=item InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidationForDistributionTenant>

Returns: a L<Paws::CloudFront::CreateInvalidationForDistributionTenantResult> instance

Creates an invalidation for a distribution tenant. For more
information, see Invalidating files
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateKeyGroup

=over

=item KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateKeyGroup>

Returns: a L<Paws::CloudFront::CreateKeyGroupResult> instance

Creates a key group that you can use with CloudFront signed URLs and
signed cookies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).

To create a key group, you must specify at least one public key for the
key group. After you create a key group, you can reference it from one
or more cache behaviors. When you reference a key group in a cache
behavior, CloudFront requires signed URLs or signed cookies for all
requests that match the cache behavior. The URLs or cookies must be
signed with a private key whose corresponding public key is in the key
group. The signed URL or cookie contains information about which public
key CloudFront should use to verify the signature. For more
information, see Serving private content
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateKeyValueStore

=over

=item Name => Str

=item [Comment => Str]

=item [ImportSource => L<Paws::CloudFront::ImportSource>]


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateKeyValueStore>

Returns: a L<Paws::CloudFront::CreateKeyValueStoreResult> instance

Specifies the key value store resource to add to your account. In your
account, the key value store names must be unique. You can also import
key value store data in JSON format from an S3 bucket by providing a
valid C<ImportSource> that you own.


=head2 CreateMonitoringSubscription

=over

=item DistributionId => Str

=item MonitoringSubscription => L<Paws::CloudFront::MonitoringSubscription>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateMonitoringSubscription>

Returns: a L<Paws::CloudFront::CreateMonitoringSubscriptionResult> instance

Enables or disables additional Amazon CloudWatch metrics for the
specified CloudFront distribution. The additional metrics incur an
additional cost.

For more information, see Viewing additional CloudFront distribution
metrics
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateOriginAccessControl

=over

=item OriginAccessControlConfig => L<Paws::CloudFront::OriginAccessControlConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateOriginAccessControl>

Returns: a L<Paws::CloudFront::CreateOriginAccessControlResult> instance

Creates a new origin access control in CloudFront. After you create an
origin access control, you can add it to an origin in a CloudFront
distribution so that CloudFront sends authenticated (signed) requests
to the origin.

This makes it possible to block public access to the origin, allowing
viewers (users) to access the origin's content only through CloudFront.

For more information about using a CloudFront origin access control,
see Restricting access to an Amazon Web Services origin
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateOriginRequestPolicy

=over

=item OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateOriginRequestPolicy>

Returns: a L<Paws::CloudFront::CreateOriginRequestPolicyResult> instance

Creates an origin request policy.

After you create an origin request policy, you can attach it to one or
more cache behaviors. When it's attached to a cache behavior, the
origin request policy determines the values that CloudFront includes in
requests that it sends to the origin. Each request that CloudFront
sends to the origin includes the following:

=over

=item *

The request body and the URL path (without the domain name) from the
viewer request.

=item *

The headers that CloudFront automatically includes in every origin
request, including C<Host>, C<User-Agent>, and C<X-Amz-Cf-Id>.

=item *

All HTTP headers, cookies, and URL query strings that are specified in
the cache policy or the origin request policy. These can include items
from the viewer request and, in the case of headers, additional ones
that are added by CloudFront.

=back

CloudFront sends a request when it can't find a valid object in its
cache that matches the request. If you want to send values to the
origin and also include them in the cache key, use C<CachePolicy>.

For more information about origin request policies, see Controlling
origin requests
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreatePublicKey

=over

=item PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreatePublicKey>

Returns: a L<Paws::CloudFront::CreatePublicKeyResult> instance

Uploads a public key to CloudFront that you can use with signed URLs
and signed cookies
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html),
or with field-level encryption
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).


=head2 CreateRealtimeLogConfig

=over

=item EndPoints => ArrayRef[L<Paws::CloudFront::EndPoint>]

=item Fields => ArrayRef[Str|Undef]

=item Name => Str

=item SamplingRate => Int


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateRealtimeLogConfig>

Returns: a L<Paws::CloudFront::CreateRealtimeLogConfigResult> instance

Creates a real-time log configuration.

After you create a real-time log configuration, you can attach it to
one or more cache behaviors to send real-time log data to the specified
Amazon Kinesis data stream.

For more information about real-time log configurations, see Real-time
logs
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateResponseHeadersPolicy

=over

=item ResponseHeadersPolicyConfig => L<Paws::CloudFront::ResponseHeadersPolicyConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateResponseHeadersPolicy>

Returns: a L<Paws::CloudFront::CreateResponseHeadersPolicyResult> instance

Creates a response headers policy.

A response headers policy contains information about a set of HTTP
headers. To create a response headers policy, you provide some metadata
about the policy and a set of configurations that specify the headers.

After you create a response headers policy, you can use its ID to
attach it to one or more cache behaviors in a CloudFront distribution.
When it's attached to a cache behavior, the response headers policy
affects the HTTP headers that CloudFront includes in HTTP responses to
requests that match the cache behavior. CloudFront adds or removes
response headers according to the configuration of the response headers
policy.

For more information, see Adding or removing HTTP headers in CloudFront
responses
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 CreateStreamingDistribution

=over

=item StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistribution>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionResult> instance

This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, read the announcement
(http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
CloudFront discussion forum.


=head2 CreateStreamingDistributionWithTags

=over

=item StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistributionWithTags>

Returns: a L<Paws::CloudFront::CreateStreamingDistributionWithTagsResult> instance

This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, read the announcement
(http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
CloudFront discussion forum.


=head2 CreateVpcOrigin

=over

=item VpcOriginEndpointConfig => L<Paws::CloudFront::VpcOriginEndpointConfig>

=item [Tags => L<Paws::CloudFront::Tags>]


=back

Each argument is described in detail in: L<Paws::CloudFront::CreateVpcOrigin>

Returns: a L<Paws::CloudFront::CreateVpcOriginResult> instance

Create an Amazon CloudFront VPC origin.


=head2 DeleteAnycastIpList

=over

=item Id => Str

=item IfMatch => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteAnycastIpList>

Returns: nothing

Deletes an Anycast static IP list.


=head2 DeleteCachePolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteCachePolicy>

Returns: nothing

Deletes a cache policy.

You cannot delete a cache policy if it's attached to a cache behavior.
First update your distributions to remove the cache policy from all
cache behaviors, then delete the cache policy.

To delete a cache policy, you must provide the policy's identifier and
version. To get these values, you can use C<ListCachePolicies> or
C<GetCachePolicy>.


=head2 DeleteCloudFrontOriginAccessIdentity

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity>

Returns: nothing

Delete an origin access identity.


=head2 DeleteConnectionGroup

=over

=item Id => Str

=item IfMatch => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteConnectionGroup>

Returns: nothing

Deletes a connection group.


=head2 DeleteContinuousDeploymentPolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteContinuousDeploymentPolicy>

Returns: nothing

Deletes a continuous deployment policy.

You cannot delete a continuous deployment policy that's attached to a
primary distribution. First update your distribution to remove the
continuous deployment policy, then you can delete the policy.


=head2 DeleteDistribution

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteDistribution>

Returns: nothing

Delete a distribution.


=head2 DeleteDistributionTenant

=over

=item Id => Str

=item IfMatch => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteDistributionTenant>

Returns: nothing

Deletes a distribution tenant. If you use this API operation to delete
a distribution tenant that is currently enabled, the request will fail.

To delete a distribution tenant, you must first disable the
distribution tenant by using the C<UpdateDistributionTenant> API
operation.


=head2 DeleteFieldLevelEncryptionConfig

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFieldLevelEncryptionConfig>

Returns: nothing

Remove a field-level encryption configuration.


=head2 DeleteFieldLevelEncryptionProfile

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFieldLevelEncryptionProfile>

Returns: nothing

Remove a field-level encryption profile.


=head2 DeleteFunction

=over

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteFunction>

Returns: nothing

Deletes a CloudFront function.

You cannot delete a function if it's associated with a cache behavior.
First, update your distributions to remove the function association
from all cache behaviors, then delete the function.

To delete a function, you must provide the function's name and version
(C<ETag> value). To get these values, you can use C<ListFunctions> and
C<DescribeFunction>.


=head2 DeleteKeyGroup

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteKeyGroup>

Returns: nothing

Deletes a key group.

You cannot delete a key group that is referenced in a cache behavior.
First update your distributions to remove the key group from all cache
behaviors, then delete the key group.

To delete a key group, you must provide the key group's identifier and
version. To get these values, use C<ListKeyGroups> followed by
C<GetKeyGroup> or C<GetKeyGroupConfig>.


=head2 DeleteKeyValueStore

=over

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteKeyValueStore>

Returns: nothing

Specifies the key value store to delete.


=head2 DeleteMonitoringSubscription

=over

=item DistributionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteMonitoringSubscription>

Returns: a L<Paws::CloudFront::DeleteMonitoringSubscriptionResult> instance

Disables additional CloudWatch metrics for the specified CloudFront
distribution.


=head2 DeleteOriginAccessControl

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteOriginAccessControl>

Returns: nothing

Deletes a CloudFront origin access control.

You cannot delete an origin access control if it's in use. First,
update all distributions to remove the origin access control from all
origins, then delete the origin access control.


=head2 DeleteOriginRequestPolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteOriginRequestPolicy>

Returns: nothing

Deletes an origin request policy.

You cannot delete an origin request policy if it's attached to any
cache behaviors. First update your distributions to remove the origin
request policy from all cache behaviors, then delete the origin request
policy.

To delete an origin request policy, you must provide the policy's
identifier and version. To get the identifier, you can use
C<ListOriginRequestPolicies> or C<GetOriginRequestPolicy>.


=head2 DeletePublicKey

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeletePublicKey>

Returns: nothing

Remove a public key you previously added to CloudFront.


=head2 DeleteRealtimeLogConfig

=over

=item [ARN => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteRealtimeLogConfig>

Returns: nothing

Deletes a real-time log configuration.

You cannot delete a real-time log configuration if it's attached to a
cache behavior. First update your distributions to remove the real-time
log configuration from all cache behaviors, then delete the real-time
log configuration.

To delete a real-time log configuration, you can provide the
configuration's name or its Amazon Resource Name (ARN). You must
provide at least one. If you provide both, CloudFront uses the name to
identify the real-time log configuration to delete.


=head2 DeleteResponseHeadersPolicy

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteResponseHeadersPolicy>

Returns: nothing

Deletes a response headers policy.

You cannot delete a response headers policy if it's attached to a cache
behavior. First update your distributions to remove the response
headers policy from all cache behaviors, then delete the response
headers policy.

To delete a response headers policy, you must provide the policy's
identifier and version. To get these values, you can use
C<ListResponseHeadersPolicies> or C<GetResponseHeadersPolicy>.


=head2 DeleteStreamingDistribution

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteStreamingDistribution>

Returns: nothing

Delete a streaming distribution. To delete an RTMP distribution using
the CloudFront API, perform the following steps.

B<To delete an RTMP distribution using the CloudFront API>:

=over

=item 1.

Disable the RTMP distribution.

=item 2.

Submit a C<GET Streaming Distribution Config> request to get the
current configuration and the C<Etag> header for the distribution.

=item 3.

Update the XML document that was returned in the response to your C<GET
Streaming Distribution Config> request to change the value of
C<Enabled> to C<false>.

=item 4.

Submit a C<PUT Streaming Distribution Config> request to update the
configuration for your distribution. In the request body, include the
XML document that you updated in Step 3. Then set the value of the HTTP
C<If-Match> header to the value of the C<ETag> header that CloudFront
returned when you submitted the C<GET Streaming Distribution Config>
request in Step 2.

=item 5.

Review the response to the C<PUT Streaming Distribution Config> request
to confirm that the distribution was successfully disabled.

=item 6.

Submit a C<GET Streaming Distribution Config> request to confirm that
your changes have propagated. When propagation is complete, the value
of C<Status> is C<Deployed>.

=item 7.

Submit a C<DELETE Streaming Distribution> request. Set the value of the
HTTP C<If-Match> header to the value of the C<ETag> header that
CloudFront returned when you submitted the C<GET Streaming Distribution
Config> request in Step 2.

=item 8.

Review the response to your C<DELETE Streaming Distribution> request to
confirm that the distribution was successfully deleted.

=back

For information about deleting a distribution using the CloudFront
console, see Deleting a Distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 DeleteVpcOrigin

=over

=item Id => Str

=item IfMatch => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DeleteVpcOrigin>

Returns: a L<Paws::CloudFront::DeleteVpcOriginResult> instance

Delete an Amazon CloudFront VPC origin.


=head2 DescribeFunction

=over

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DescribeFunction>

Returns: a L<Paws::CloudFront::DescribeFunctionResult> instance

Gets configuration information and metadata about a CloudFront
function, but not the function's code. To get a function's code, use
C<GetFunction>.

To get configuration information and metadata about a function, you
must provide the function's name and stage. To get these values, you
can use C<ListFunctions>.


=head2 DescribeKeyValueStore

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::DescribeKeyValueStore>

Returns: a L<Paws::CloudFront::DescribeKeyValueStoreResult> instance

Specifies the key value store and its configuration.


=head2 DisassociateDistributionTenantWebACL

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DisassociateDistributionTenantWebACL>

Returns: a L<Paws::CloudFront::DisassociateDistributionTenantWebACLResult> instance

Disassociates a distribution tenant from the WAF web ACL.


=head2 DisassociateDistributionWebACL

=over

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::DisassociateDistributionWebACL>

Returns: a L<Paws::CloudFront::DisassociateDistributionWebACLResult> instance

Disassociates a distribution from the WAF web ACL.


=head2 GetAnycastIpList

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetAnycastIpList>

Returns: a L<Paws::CloudFront::GetAnycastIpListResult> instance

Gets an Anycast static IP list.


=head2 GetCachePolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCachePolicy>

Returns: a L<Paws::CloudFront::GetCachePolicyResult> instance

Gets a cache policy, including the following metadata:

=over

=item *

The policy's identifier.

=item *

The date and time when the policy was last modified.

=back

To get a cache policy, you must provide the policy's identifier. If the
cache policy is attached to a distribution's cache behavior, you can
get the policy's identifier using C<ListDistributions> or
C<GetDistribution>. If the cache policy is not attached to a cache
behavior, you can get the identifier using C<ListCachePolicies>.


=head2 GetCachePolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCachePolicyConfig>

Returns: a L<Paws::CloudFront::GetCachePolicyConfigResult> instance

Gets a cache policy configuration.

To get a cache policy configuration, you must provide the policy's
identifier. If the cache policy is attached to a distribution's cache
behavior, you can get the policy's identifier using
C<ListDistributions> or C<GetDistribution>. If the cache policy is not
attached to a cache behavior, you can get the identifier using
C<ListCachePolicies>.


=head2 GetCloudFrontOriginAccessIdentity

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult> instance

Get the information about an origin access identity.


=head2 GetCloudFrontOriginAccessIdentityConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig>

Returns: a L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult> instance

Get the configuration information about an origin access identity.


=head2 GetConnectionGroup

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetConnectionGroup>

Returns: a L<Paws::CloudFront::GetConnectionGroupResult> instance

Gets information about a connection group.


=head2 GetConnectionGroupByRoutingEndpoint

=over

=item RoutingEndpoint => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetConnectionGroupByRoutingEndpoint>

Returns: a L<Paws::CloudFront::GetConnectionGroupByRoutingEndpointResult> instance

Gets information about a connection group by using the endpoint that
you specify.


=head2 GetContinuousDeploymentPolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetContinuousDeploymentPolicy>

Returns: a L<Paws::CloudFront::GetContinuousDeploymentPolicyResult> instance

Gets a continuous deployment policy, including metadata (the policy's
identifier and the date and time when the policy was last modified).


=head2 GetContinuousDeploymentPolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetContinuousDeploymentPolicyConfig>

Returns: a L<Paws::CloudFront::GetContinuousDeploymentPolicyConfigResult> instance

Gets configuration information about a continuous deployment policy.


=head2 GetDistribution

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistribution>

Returns: a L<Paws::CloudFront::GetDistributionResult> instance

Get the information about a distribution.


=head2 GetDistributionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionConfig>

Returns: a L<Paws::CloudFront::GetDistributionConfigResult> instance

Get the configuration information about a distribution.


=head2 GetDistributionTenant

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionTenant>

Returns: a L<Paws::CloudFront::GetDistributionTenantResult> instance

Gets information about a distribution tenant.


=head2 GetDistributionTenantByDomain

=over

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionTenantByDomain>

Returns: a L<Paws::CloudFront::GetDistributionTenantByDomainResult> instance

Gets information about a distribution tenant by the associated domain.


=head2 GetFieldLevelEncryption

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryption>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionResult> instance

Get the field-level encryption configuration information.


=head2 GetFieldLevelEncryptionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionConfigResult> instance

Get the field-level encryption configuration information.


=head2 GetFieldLevelEncryptionProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionProfileResult> instance

Get the field-level encryption profile information.


=head2 GetFieldLevelEncryptionProfileConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFieldLevelEncryptionProfileConfig>

Returns: a L<Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult> instance

Get the field-level encryption profile configuration information.


=head2 GetFunction

=over

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::GetFunction>

Returns: a L<Paws::CloudFront::GetFunctionResult> instance

Gets the code of a CloudFront function. To get configuration
information and metadata about a function, use C<DescribeFunction>.

To get a function's code, you must provide the function's name and
stage. To get these values, you can use C<ListFunctions>.


=head2 GetInvalidation

=over

=item DistributionId => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidation>

Returns: a L<Paws::CloudFront::GetInvalidationResult> instance

Get the information about an invalidation.


=head2 GetInvalidationForDistributionTenant

=over

=item DistributionTenantId => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidationForDistributionTenant>

Returns: a L<Paws::CloudFront::GetInvalidationForDistributionTenantResult> instance

Gets information about a specific invalidation for a distribution
tenant.


=head2 GetKeyGroup

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetKeyGroup>

Returns: a L<Paws::CloudFront::GetKeyGroupResult> instance

Gets a key group, including the date and time when the key group was
last modified.

To get a key group, you must provide the key group's identifier. If the
key group is referenced in a distribution's cache behavior, you can get
the key group's identifier using C<ListDistributions> or
C<GetDistribution>. If the key group is not referenced in a cache
behavior, you can get the identifier using C<ListKeyGroups>.


=head2 GetKeyGroupConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetKeyGroupConfig>

Returns: a L<Paws::CloudFront::GetKeyGroupConfigResult> instance

Gets a key group configuration.

To get a key group configuration, you must provide the key group's
identifier. If the key group is referenced in a distribution's cache
behavior, you can get the key group's identifier using
C<ListDistributions> or C<GetDistribution>. If the key group is not
referenced in a cache behavior, you can get the identifier using
C<ListKeyGroups>.


=head2 GetManagedCertificateDetails

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetManagedCertificateDetails>

Returns: a L<Paws::CloudFront::GetManagedCertificateDetailsResult> instance

Gets details about the CloudFront managed ACM certificate.


=head2 GetMonitoringSubscription

=over

=item DistributionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetMonitoringSubscription>

Returns: a L<Paws::CloudFront::GetMonitoringSubscriptionResult> instance

Gets information about whether additional CloudWatch metrics are
enabled for the specified CloudFront distribution.


=head2 GetOriginAccessControl

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginAccessControl>

Returns: a L<Paws::CloudFront::GetOriginAccessControlResult> instance

Gets a CloudFront origin access control, including its unique
identifier.


=head2 GetOriginAccessControlConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginAccessControlConfig>

Returns: a L<Paws::CloudFront::GetOriginAccessControlConfigResult> instance

Gets a CloudFront origin access control configuration.


=head2 GetOriginRequestPolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginRequestPolicy>

Returns: a L<Paws::CloudFront::GetOriginRequestPolicyResult> instance

Gets an origin request policy, including the following metadata:

=over

=item *

The policy's identifier.

=item *

The date and time when the policy was last modified.

=back

To get an origin request policy, you must provide the policy's
identifier. If the origin request policy is attached to a
distribution's cache behavior, you can get the policy's identifier
using C<ListDistributions> or C<GetDistribution>. If the origin request
policy is not attached to a cache behavior, you can get the identifier
using C<ListOriginRequestPolicies>.


=head2 GetOriginRequestPolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetOriginRequestPolicyConfig>

Returns: a L<Paws::CloudFront::GetOriginRequestPolicyConfigResult> instance

Gets an origin request policy configuration.

To get an origin request policy configuration, you must provide the
policy's identifier. If the origin request policy is attached to a
distribution's cache behavior, you can get the policy's identifier
using C<ListDistributions> or C<GetDistribution>. If the origin request
policy is not attached to a cache behavior, you can get the identifier
using C<ListOriginRequestPolicies>.


=head2 GetPublicKey

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKey>

Returns: a L<Paws::CloudFront::GetPublicKeyResult> instance

Gets a public key.


=head2 GetPublicKeyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetPublicKeyConfig>

Returns: a L<Paws::CloudFront::GetPublicKeyConfigResult> instance

Gets a public key configuration.


=head2 GetRealtimeLogConfig

=over

=item [ARN => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::GetRealtimeLogConfig>

Returns: a L<Paws::CloudFront::GetRealtimeLogConfigResult> instance

Gets a real-time log configuration.

To get a real-time log configuration, you can provide the
configuration's name or its Amazon Resource Name (ARN). You must
provide at least one. If you provide both, CloudFront uses the name to
identify the real-time log configuration to get.


=head2 GetResponseHeadersPolicy

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetResponseHeadersPolicy>

Returns: a L<Paws::CloudFront::GetResponseHeadersPolicyResult> instance

Gets a response headers policy, including metadata (the policy's
identifier and the date and time when the policy was last modified).

To get a response headers policy, you must provide the policy's
identifier. If the response headers policy is attached to a
distribution's cache behavior, you can get the policy's identifier
using C<ListDistributions> or C<GetDistribution>. If the response
headers policy is not attached to a cache behavior, you can get the
identifier using C<ListResponseHeadersPolicies>.


=head2 GetResponseHeadersPolicyConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetResponseHeadersPolicyConfig>

Returns: a L<Paws::CloudFront::GetResponseHeadersPolicyConfigResult> instance

Gets a response headers policy configuration.

To get a response headers policy configuration, you must provide the
policy's identifier. If the response headers policy is attached to a
distribution's cache behavior, you can get the policy's identifier
using C<ListDistributions> or C<GetDistribution>. If the response
headers policy is not attached to a cache behavior, you can get the
identifier using C<ListResponseHeadersPolicies>.


=head2 GetStreamingDistribution

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistribution>

Returns: a L<Paws::CloudFront::GetStreamingDistributionResult> instance

Gets information about a specified RTMP distribution, including the
distribution configuration.


=head2 GetStreamingDistributionConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistributionConfig>

Returns: a L<Paws::CloudFront::GetStreamingDistributionConfigResult> instance

Get the configuration information about a streaming distribution.


=head2 GetVpcOrigin

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::GetVpcOrigin>

Returns: a L<Paws::CloudFront::GetVpcOriginResult> instance

Get the details of an Amazon CloudFront VPC origin.


=head2 ListAnycastIpLists

=over

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListAnycastIpLists>

Returns: a L<Paws::CloudFront::ListAnycastIpListsResult> instance

Lists your Anycast static IP lists.


=head2 ListCachePolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListCachePolicies>

Returns: a L<Paws::CloudFront::ListCachePoliciesResult> instance

Gets a list of cache policies.

You can optionally apply a filter to return only the managed policies
created by Amazon Web Services, or only the custom policies created in
your Amazon Web Services account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListCloudFrontOriginAccessIdentities

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities>

Returns: a L<Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult> instance

Lists origin access identities.


=head2 ListConflictingAliases

=over

=item Alias => Str

=item DistributionId => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListConflictingAliases>

Returns: a L<Paws::CloudFront::ListConflictingAliasesResult> instance

Gets a list of aliases (also called CNAMEs or alternate domain names)
that conflict or overlap with the provided alias, and the associated
CloudFront distributions and Amazon Web Services accounts for each
conflicting alias. In the returned list, the distribution and account
IDs are partially hidden, which allows you to identify the
distributions and accounts that you own, but helps to protect the
information of ones that you don't own.

Use this operation to find aliases that are in use in CloudFront that
conflict or overlap with the provided alias. For example, if you
provide C<www.example.com> as input, the returned list can include
C<www.example.com> and the overlapping wildcard alternate domain name
(C<*.example.com>), if they exist. If you provide C<*.example.com> as
input, the returned list can include C<*.example.com> and any alternate
domain names covered by that wildcard (for example, C<www.example.com>,
C<test.example.com>, C<dev.example.com>, and so on), if they exist.

To list conflicting aliases, you provide the alias to search and the ID
of a distribution in your account that has an attached SSL/TLS
certificate that includes the provided alias. For more information,
including how to set up the distribution and certificate, see Moving an
alternate domain name to a different distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
in the I<Amazon CloudFront Developer Guide>.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListConnectionGroups

=over

=item [AssociationFilter => L<Paws::CloudFront::ConnectionGroupAssociationFilter>]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListConnectionGroups>

Returns: a L<Paws::CloudFront::ListConnectionGroupsResult> instance

Lists the connection groups in your Amazon Web Services account.


=head2 ListContinuousDeploymentPolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListContinuousDeploymentPolicies>

Returns: a L<Paws::CloudFront::ListContinuousDeploymentPoliciesResult> instance

Gets a list of the continuous deployment policies in your Amazon Web
Services account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributions

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributions>

Returns: a L<Paws::CloudFront::ListDistributionsResult> instance

List CloudFront distributions.


=head2 ListDistributionsByAnycastIpListId

=over

=item AnycastIpListId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByAnycastIpListId>

Returns: a L<Paws::CloudFront::ListDistributionsByAnycastIpListIdResult> instance

Lists the distributions in your account that are associated with the
specified C<AnycastIpListId>.


=head2 ListDistributionsByCachePolicyId

=over

=item CachePolicyId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByCachePolicyId>

Returns: a L<Paws::CloudFront::ListDistributionsByCachePolicyIdResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior that's associated with the specified cache policy.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByConnectionMode

=over

=item ConnectionMode => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByConnectionMode>

Returns: a L<Paws::CloudFront::ListDistributionsByConnectionModeResult> instance

Lists the distributions by the connection mode that you specify.


=head2 ListDistributionsByKeyGroup

=over

=item KeyGroupId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByKeyGroup>

Returns: a L<Paws::CloudFront::ListDistributionsByKeyGroupResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior that references the specified key group.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByOriginRequestPolicyId

=over

=item OriginRequestPolicyId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByOriginRequestPolicyId>

Returns: a L<Paws::CloudFront::ListDistributionsByOriginRequestPolicyIdResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior that's associated with the specified origin request policy.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByRealtimeLogConfig

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [RealtimeLogConfigArn => Str]

=item [RealtimeLogConfigName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByRealtimeLogConfig>

Returns: a L<Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult> instance

Gets a list of distributions that have a cache behavior that's
associated with the specified real-time log configuration.

You can specify the real-time log configuration by its name or its
Amazon Resource Name (ARN). You must provide at least one. If you
provide both, CloudFront uses the name to identify the real-time log
configuration to list distributions for.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByResponseHeadersPolicyId

=over

=item ResponseHeadersPolicyId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByResponseHeadersPolicyId>

Returns: a L<Paws::CloudFront::ListDistributionsByResponseHeadersPolicyIdResult> instance

Gets a list of distribution IDs for distributions that have a cache
behavior that's associated with the specified response headers policy.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListDistributionsByVpcOriginId

=over

=item VpcOriginId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByVpcOriginId>

Returns: a L<Paws::CloudFront::ListDistributionsByVpcOriginIdResult> instance

List CloudFront distributions by their VPC origin ID.


=head2 ListDistributionsByWebACLId

=over

=item WebACLId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByWebACLId>

Returns: a L<Paws::CloudFront::ListDistributionsByWebACLIdResult> instance

List the distributions that are associated with a specified WAF web
ACL.


=head2 ListDistributionTenants

=over

=item [AssociationFilter => L<Paws::CloudFront::DistributionTenantAssociationFilter>]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionTenants>

Returns: a L<Paws::CloudFront::ListDistributionTenantsResult> instance

Lists the distribution tenants in your Amazon Web Services account.


=head2 ListDistributionTenantsByCustomization

=over

=item [CertificateArn => Str]

=item [Marker => Str]

=item [MaxItems => Int]

=item [WebACLArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionTenantsByCustomization>

Returns: a L<Paws::CloudFront::ListDistributionTenantsByCustomizationResult> instance

Lists distribution tenants by the customization that you specify.

You must specify either the C<CertificateArn> parameter or C<WebACLArn>
parameter, but not both in the same request.


=head2 ListDomainConflicts

=over

=item Domain => Str

=item DomainControlValidationResource => L<Paws::CloudFront::DistributionResourceId>

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListDomainConflicts>

Returns: a L<Paws::CloudFront::ListDomainConflictsResult> instance

Lists existing domain associations that conflict with the domain that
you specify.

You can use this API operation when transferring domains to identify
potential domain conflicts. Domain conflicts must be resolved first
before they can be moved.


=head2 ListFieldLevelEncryptionConfigs

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFieldLevelEncryptionConfigs>

Returns: a L<Paws::CloudFront::ListFieldLevelEncryptionConfigsResult> instance

List all field-level encryption configurations that have been created
in CloudFront for this account.


=head2 ListFieldLevelEncryptionProfiles

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFieldLevelEncryptionProfiles>

Returns: a L<Paws::CloudFront::ListFieldLevelEncryptionProfilesResult> instance

Request a list of field-level encryption profiles that have been
created in CloudFront for this account.


=head2 ListFunctions

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListFunctions>

Returns: a L<Paws::CloudFront::ListFunctionsResult> instance

Gets a list of all CloudFront functions in your Amazon Web Services
account.

You can optionally apply a filter to return only the functions that are
in the specified stage, either C<DEVELOPMENT> or C<LIVE>.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListInvalidations

=over

=item DistributionId => Str

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidations>

Returns: a L<Paws::CloudFront::ListInvalidationsResult> instance

Lists invalidation batches.


=head2 ListInvalidationsForDistributionTenant

=over

=item Id => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidationsForDistributionTenant>

Returns: a L<Paws::CloudFront::ListInvalidationsForDistributionTenantResult> instance

Lists the invalidations for a distribution tenant.


=head2 ListKeyGroups

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListKeyGroups>

Returns: a L<Paws::CloudFront::ListKeyGroupsResult> instance

Gets a list of key groups.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListKeyValueStores

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListKeyValueStores>

Returns: a L<Paws::CloudFront::ListKeyValueStoresResult> instance

Specifies the key value stores to list.


=head2 ListOriginAccessControls

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListOriginAccessControls>

Returns: a L<Paws::CloudFront::ListOriginAccessControlsResult> instance

Gets the list of CloudFront origin access controls (OACs) in this
Amazon Web Services account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send another request that
specifies the C<NextMarker> value from the current response as the
C<Marker> value in the next request.

If you're not using origin access controls for your Amazon Web Services
account, the C<ListOriginAccessControls> operation doesn't return the
C<Items> element in the response.


=head2 ListOriginRequestPolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListOriginRequestPolicies>

Returns: a L<Paws::CloudFront::ListOriginRequestPoliciesResult> instance

Gets a list of origin request policies.

You can optionally apply a filter to return only the managed policies
created by Amazon Web Services, or only the custom policies created in
your Amazon Web Services account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListPublicKeys

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListPublicKeys>

Returns: a L<Paws::CloudFront::ListPublicKeysResult> instance

List all public keys that have been added to CloudFront for this
account.


=head2 ListRealtimeLogConfigs

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListRealtimeLogConfigs>

Returns: a L<Paws::CloudFront::ListRealtimeLogConfigsResult> instance

Gets a list of real-time log configurations.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListResponseHeadersPolicies

=over

=item [Marker => Str]

=item [MaxItems => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListResponseHeadersPolicies>

Returns: a L<Paws::CloudFront::ListResponseHeadersPoliciesResult> instance

Gets a list of response headers policies.

You can optionally apply a filter to get only the managed policies
created by Amazon Web Services, or only the custom policies created in
your Amazon Web Services account.

You can optionally specify the maximum number of items to receive in
the response. If the total number of items in the list exceeds the
maximum that you specify, or the default maximum, the response is
paginated. To get the next page of items, send a subsequent request
that specifies the C<NextMarker> value from the current response as the
C<Marker> value in the subsequent request.


=head2 ListStreamingDistributions

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListStreamingDistributions>

Returns: a L<Paws::CloudFront::ListStreamingDistributionsResult> instance

List streaming distributions.


=head2 ListTagsForResource

=over

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::ListTagsForResource>

Returns: a L<Paws::CloudFront::ListTagsForResourceResult> instance

List tags for a CloudFront resource. For more information, see Tagging
a distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 ListVpcOrigins

=over

=item [Marker => Str]

=item [MaxItems => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::ListVpcOrigins>

Returns: a L<Paws::CloudFront::ListVpcOriginsResult> instance

List the CloudFront VPC origins in your account.


=head2 PublishFunction

=over

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::PublishFunction>

Returns: a L<Paws::CloudFront::PublishFunctionResult> instance

Publishes a CloudFront function by copying the function code from the
C<DEVELOPMENT> stage to C<LIVE>. This automatically updates all cache
behaviors that are using this function to use the newly published copy
in the C<LIVE> stage.

When a function is published to the C<LIVE> stage, you can attach the
function to a distribution's cache behavior, using the function's
Amazon Resource Name (ARN).

To publish a function, you must provide the function's name and version
(C<ETag> value). To get these values, you can use C<ListFunctions> and
C<DescribeFunction>.


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::CloudFront::Tags>


=back

Each argument is described in detail in: L<Paws::CloudFront::TagResource>

Returns: nothing

Add tags to a CloudFront resource. For more information, see Tagging a
distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 TestFunction

=over

=item EventObject => Str

=item IfMatch => Str

=item Name => Str

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::TestFunction>

Returns: a L<Paws::CloudFront::TestFunctionResult> instance

Tests a CloudFront function.

To test a function, you provide an I<event object> that represents an
HTTP request or response that your CloudFront distribution could
receive in production. CloudFront runs the function, passing it the
event object that you provided, and returns the function's result (the
modified event object) in the response. The response also contains
function logs and error messages, if any exist. For more information
about testing functions, see Testing functions
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
in the I<Amazon CloudFront Developer Guide>.

To test a function, you provide the function's name and version
(C<ETag> value) along with the event object. To get the function's name
and version, you can use C<ListFunctions> and C<DescribeFunction>.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => L<Paws::CloudFront::TagKeys>


=back

Each argument is described in detail in: L<Paws::CloudFront::UntagResource>

Returns: nothing

Remove tags from a CloudFront resource. For more information, see
Tagging a distribution
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 UpdateCachePolicy

=over

=item CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateCachePolicy>

Returns: a L<Paws::CloudFront::UpdateCachePolicyResult> instance

Updates a cache policy configuration.

When you update a cache policy configuration, all the fields are
updated with the values provided in the request. You cannot update some
fields independent of others. To update a cache policy configuration:

=over

=item 1.

Use C<GetCachePolicyConfig> to get the current configuration.

=item 2.

Locally modify the fields in the cache policy configuration that you
want to update.

=item 3.

Call C<UpdateCachePolicy> by providing the entire cache policy
configuration, including the fields that you modified and those that
you didn't.

=back



=head2 UpdateCloudFrontOriginAccessIdentity

=over

=item CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity>

Returns: a L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult> instance

Update an origin access identity.


=head2 UpdateConnectionGroup

=over

=item Id => Str

=item IfMatch => Str

=item [AnycastIpListId => Str]

=item [Enabled => Bool]

=item [Ipv6Enabled => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateConnectionGroup>

Returns: a L<Paws::CloudFront::UpdateConnectionGroupResult> instance

Updates a connection group.


=head2 UpdateContinuousDeploymentPolicy

=over

=item ContinuousDeploymentPolicyConfig => L<Paws::CloudFront::ContinuousDeploymentPolicyConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateContinuousDeploymentPolicy>

Returns: a L<Paws::CloudFront::UpdateContinuousDeploymentPolicyResult> instance

Updates a continuous deployment policy. You can update a continuous
deployment policy to enable or disable it, to change the percentage of
traffic that it sends to the staging distribution, or to change the
staging distribution that it sends traffic to.

When you update a continuous deployment policy configuration, all the
fields are updated with the values that are provided in the request.
You cannot update some fields independent of others. To update a
continuous deployment policy configuration:

=over

=item 1.

Use C<GetContinuousDeploymentPolicyConfig> to get the current
configuration.

=item 2.

Locally modify the fields in the continuous deployment policy
configuration that you want to update.

=item 3.

Use C<UpdateContinuousDeploymentPolicy>, providing the entire
continuous deployment policy configuration, including the fields that
you modified and those that you didn't.

=back



=head2 UpdateDistribution

=over

=item DistributionConfig => L<Paws::CloudFront::DistributionConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistribution>

Returns: a L<Paws::CloudFront::UpdateDistributionResult> instance

Updates the configuration for a CloudFront distribution.

The update process includes getting the current distribution
configuration, updating it to make your changes, and then submitting an
C<UpdateDistribution> request to make the updates.

B<To update a web distribution using the CloudFront API>

=over

=item 1.

Use C<GetDistributionConfig> to get the current configuration,
including the version identifier (C<ETag>).

=item 2.

Update the distribution configuration that was returned in the
response. Note the following important requirements and restrictions:

=over

=item *

You must copy the C<ETag> field value from the response. (You'll use it
for the C<IfMatch> parameter in your request.) Then, remove the C<ETag>
field from the distribution configuration.

=item *

You can't change the value of C<CallerReference>.

=back

=item 3.

Submit an C<UpdateDistribution> request, providing the updated
distribution configuration. The new configuration replaces the existing
configuration. The values that you specify in an C<UpdateDistribution>
request are not merged into your existing configuration. Make sure to
include all fields: the ones that you modified and also the ones that
you didn't.

=back



=head2 UpdateDistributionTenant

=over

=item Id => Str

=item IfMatch => Str

=item [ConnectionGroupId => Str]

=item [Customizations => L<Paws::CloudFront::Customizations>]

=item [DistributionId => Str]

=item [Domains => ArrayRef[L<Paws::CloudFront::DomainItem>]]

=item [Enabled => Bool]

=item [ManagedCertificateRequest => L<Paws::CloudFront::ManagedCertificateRequest>]

=item [Parameters => ArrayRef[L<Paws::CloudFront::Parameter>]]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistributionTenant>

Returns: a L<Paws::CloudFront::UpdateDistributionTenantResult> instance

Updates a distribution tenant.


=head2 UpdateDistributionWithStagingConfig

=over

=item Id => Str

=item [IfMatch => Str]

=item [StagingDistributionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistributionWithStagingConfig>

Returns: a L<Paws::CloudFront::UpdateDistributionWithStagingConfigResult> instance

Copies the staging distribution's configuration to its corresponding
primary distribution. The primary distribution retains its C<Aliases>
(also known as alternate domain names or CNAMEs) and
C<ContinuousDeploymentPolicyId> value, but otherwise its configuration
is overwritten to match the staging distribution.

You can use this operation in a continuous deployment workflow after
you have tested configuration changes on the staging distribution.
After using a continuous deployment policy to move a portion of your
domain name's traffic to the staging distribution and verifying that it
works as intended, you can use this operation to copy the staging
distribution's configuration to the primary distribution. This action
will disable the continuous deployment policy and move your domain's
traffic back to the primary distribution.

This API operation requires the following IAM permissions:

=over

=item *

GetDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)

=item *

UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)

=back



=head2 UpdateDomainAssociation

=over

=item Domain => Str

=item TargetResource => L<Paws::CloudFront::DistributionResourceId>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateDomainAssociation>

Returns: a L<Paws::CloudFront::UpdateDomainAssociationResult> instance

Moves a domain from its current distribution or distribution tenant to
another one.


=head2 UpdateFieldLevelEncryptionConfig

=over

=item FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFieldLevelEncryptionConfig>

Returns: a L<Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult> instance

Update a field-level encryption configuration.


=head2 UpdateFieldLevelEncryptionProfile

=over

=item FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>

=item Id => Str

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFieldLevelEncryptionProfile>

Returns: a L<Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult> instance

Update a field-level encryption profile.


=head2 UpdateFunction

=over

=item FunctionCode => Str

=item FunctionConfig => L<Paws::CloudFront::FunctionConfig>

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateFunction>

Returns: a L<Paws::CloudFront::UpdateFunctionResult> instance

Updates a CloudFront function.

You can update a function's code or the comment that describes the
function. You cannot update a function's name.

To update a function, you provide the function's name and version
(C<ETag> value) along with the updated function code. To get the name
and version, you can use C<ListFunctions> and C<DescribeFunction>.


=head2 UpdateKeyGroup

=over

=item Id => Str

=item KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateKeyGroup>

Returns: a L<Paws::CloudFront::UpdateKeyGroupResult> instance

Updates a key group.

When you update a key group, all the fields are updated with the values
provided in the request. You cannot update some fields independent of
others. To update a key group:

=over

=item 1.

Get the current key group with C<GetKeyGroup> or C<GetKeyGroupConfig>.

=item 2.

Locally modify the fields in the key group that you want to update. For
example, add or remove public key IDs.

=item 3.

Call C<UpdateKeyGroup> with the entire key group object, including the
fields that you modified and those that you didn't.

=back



=head2 UpdateKeyValueStore

=over

=item Comment => Str

=item IfMatch => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateKeyValueStore>

Returns: a L<Paws::CloudFront::UpdateKeyValueStoreResult> instance

Specifies the key value store to update.


=head2 UpdateOriginAccessControl

=over

=item Id => Str

=item OriginAccessControlConfig => L<Paws::CloudFront::OriginAccessControlConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateOriginAccessControl>

Returns: a L<Paws::CloudFront::UpdateOriginAccessControlResult> instance

Updates a CloudFront origin access control.


=head2 UpdateOriginRequestPolicy

=over

=item Id => Str

=item OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateOriginRequestPolicy>

Returns: a L<Paws::CloudFront::UpdateOriginRequestPolicyResult> instance

Updates an origin request policy configuration.

When you update an origin request policy configuration, all the fields
are updated with the values provided in the request. You cannot update
some fields independent of others. To update an origin request policy
configuration:

=over

=item 1.

Use C<GetOriginRequestPolicyConfig> to get the current configuration.

=item 2.

Locally modify the fields in the origin request policy configuration
that you want to update.

=item 3.

Call C<UpdateOriginRequestPolicy> by providing the entire origin
request policy configuration, including the fields that you modified
and those that you didn't.

=back



=head2 UpdatePublicKey

=over

=item Id => Str

=item PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdatePublicKey>

Returns: a L<Paws::CloudFront::UpdatePublicKeyResult> instance

Update public key information. Note that the only value you can change
is the comment.


=head2 UpdateRealtimeLogConfig

=over

=item [ARN => Str]

=item [EndPoints => ArrayRef[L<Paws::CloudFront::EndPoint>]]

=item [Fields => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [SamplingRate => Int]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateRealtimeLogConfig>

Returns: a L<Paws::CloudFront::UpdateRealtimeLogConfigResult> instance

Updates a real-time log configuration.

When you update a real-time log configuration, all the parameters are
updated with the values provided in the request. You cannot update some
parameters independent of others. To update a real-time log
configuration:

=over

=item 1.

Call C<GetRealtimeLogConfig> to get the current real-time log
configuration.

=item 2.

Locally modify the parameters in the real-time log configuration that
you want to update.

=item 3.

Call this API (C<UpdateRealtimeLogConfig>) by providing the entire
real-time log configuration, including the parameters that you modified
and those that you didn't.

=back

You cannot update a real-time log configuration's C<Name> or C<ARN>.


=head2 UpdateResponseHeadersPolicy

=over

=item Id => Str

=item ResponseHeadersPolicyConfig => L<Paws::CloudFront::ResponseHeadersPolicyConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateResponseHeadersPolicy>

Returns: a L<Paws::CloudFront::UpdateResponseHeadersPolicyResult> instance

Updates a response headers policy.

When you update a response headers policy, the entire policy is
replaced. You cannot update some policy fields independent of others.
To update a response headers policy configuration:

=over

=item 1.

Use C<GetResponseHeadersPolicyConfig> to get the current policy's
configuration.

=item 2.

Modify the fields in the response headers policy configuration that you
want to update.

=item 3.

Call C<UpdateResponseHeadersPolicy>, providing the entire response
headers policy configuration, including the fields that you modified
and those that you didn't.

=back



=head2 UpdateStreamingDistribution

=over

=item Id => Str

=item StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

=item [IfMatch => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateStreamingDistribution>

Returns: a L<Paws::CloudFront::UpdateStreamingDistributionResult> instance

Update a streaming distribution.


=head2 UpdateVpcOrigin

=over

=item Id => Str

=item IfMatch => Str

=item VpcOriginEndpointConfig => L<Paws::CloudFront::VpcOriginEndpointConfig>


=back

Each argument is described in detail in: L<Paws::CloudFront::UpdateVpcOrigin>

Returns: a L<Paws::CloudFront::UpdateVpcOriginResult> instance

Update an Amazon CloudFront VPC origin in your account.


=head2 VerifyDnsConfiguration

=over

=item Identifier => Str

=item [Domain => Str]


=back

Each argument is described in detail in: L<Paws::CloudFront::VerifyDnsConfiguration>

Returns: a L<Paws::CloudFront::VerifyDnsConfigurationResult> instance

Verify the DNS configuration for your domain names. This API operation
checks whether your domain name points to the correct routing endpoint
of the connection group, such as d111111abcdef8.cloudfront.net. You can
use this API operation to troubleshoot and resolve DNS configuration
issues.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCloudFrontOriginAccessIdentities(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllCloudFrontOriginAccessIdentities([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CloudFrontOriginAccessIdentityList.Items, passing the object as the first parameter, and the string 'CloudFrontOriginAccessIdentityList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectionGroups(sub { },[AssociationFilter => L<Paws::CloudFront::ConnectionGroupAssociationFilter>, Marker => Str, MaxItems => Int])

=head2 ListAllConnectionGroups([AssociationFilter => L<Paws::CloudFront::ConnectionGroupAssociationFilter>, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionGroups, passing the object as the first parameter, and the string 'ConnectionGroups' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListConnectionGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDistributions(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllDistributions([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DistributionList.Items, passing the object as the first parameter, and the string 'DistributionList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDistributionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDistributionsByConnectionMode(sub { },ConnectionMode => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllDistributionsByConnectionMode(ConnectionMode => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DistributionList.Items, passing the object as the first parameter, and the string 'DistributionList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDistributionsByConnectionModeResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDistributionTenants(sub { },[AssociationFilter => L<Paws::CloudFront::DistributionTenantAssociationFilter>, Marker => Str, MaxItems => Int])

=head2 ListAllDistributionTenants([AssociationFilter => L<Paws::CloudFront::DistributionTenantAssociationFilter>, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DistributionTenantList, passing the object as the first parameter, and the string 'DistributionTenantList' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDistributionTenantsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDistributionTenantsByCustomization(sub { },[CertificateArn => Str, Marker => Str, MaxItems => Int, WebACLArn => Str])

=head2 ListAllDistributionTenantsByCustomization([CertificateArn => Str, Marker => Str, MaxItems => Int, WebACLArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DistributionTenantList, passing the object as the first parameter, and the string 'DistributionTenantList' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDistributionTenantsByCustomizationResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomainConflicts(sub { },Domain => Str, DomainControlValidationResource => L<Paws::CloudFront::DistributionResourceId>, [Marker => Str, MaxItems => Int])

=head2 ListAllDomainConflicts(Domain => Str, DomainControlValidationResource => L<Paws::CloudFront::DistributionResourceId>, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DomainConflicts, passing the object as the first parameter, and the string 'DomainConflicts' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListDomainConflictsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvalidations(sub { },DistributionId => Str, [Marker => Str, MaxItems => Str])

=head2 ListAllInvalidations(DistributionId => Str, [Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InvalidationList.Items, passing the object as the first parameter, and the string 'InvalidationList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListInvalidationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvalidationsForDistributionTenant(sub { },Id => Str, [Marker => Str, MaxItems => Int])

=head2 ListAllInvalidationsForDistributionTenant(Id => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InvalidationList.Items, passing the object as the first parameter, and the string 'InvalidationList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListInvalidationsForDistributionTenantResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyValueStores(sub { },[Marker => Str, MaxItems => Str, Status => Str])

=head2 ListAllKeyValueStores([Marker => Str, MaxItems => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - KeyValueStoreList.Items, passing the object as the first parameter, and the string 'KeyValueStoreList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListKeyValueStoresResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPublicKeys(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllPublicKeys([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PublicKeyList.Items, passing the object as the first parameter, and the string 'PublicKeyList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListPublicKeysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamingDistributions(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllStreamingDistributions([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamingDistributionList.Items, passing the object as the first parameter, and the string 'StreamingDistributionList.Items' as the second parameter 

If not, it will return a a L<Paws::CloudFront::ListStreamingDistributionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

