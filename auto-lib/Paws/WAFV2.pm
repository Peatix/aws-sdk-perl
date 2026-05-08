package Paws::WAFV2;
  use Moose;
  sub service { 'wafv2' }
  sub signing_name { 'wafv2' }
  sub version { '2019-07-29' }
  sub target_prefix { 'AWSWAF_20190729' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::AssociateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CheckCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAPIKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateAPIKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAPIKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteAPIKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallManagerRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteFirewallManagerRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeletePermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAllManagedProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DescribeAllManagedProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedProductsByVendor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DescribeManagedProductsByVendor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DescribeManagedRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DisassociateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateMobileSdkReleaseUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GenerateMobileSdkReleaseUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDecryptedAPIKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetDecryptedAPIKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetManagedRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMobileSdkRelease {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetMobileSdkRelease', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRateBasedStatementManagedKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRateBasedStatementManagedKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSampledRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetSampledRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACLForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetWebACLForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAPIKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListAPIKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableManagedRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListAvailableManagedRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableManagedRuleGroupVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListAvailableManagedRuleGroupVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListLoggingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedRuleSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListManagedRuleSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMobileSdkReleases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListMobileSdkReleases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegexPatternSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListRegexPatternSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesForWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListResourcesForWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebACLs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListWebACLs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::PutLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutManagedRuleSetVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::PutManagedRuleSetVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::PutPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateManagedRuleSetVersionExpiryDate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateManagedRuleSetVersionExpiryDate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateWebACL CheckCapacity CreateAPIKey CreateIPSet CreateRegexPatternSet CreateRuleGroup CreateWebACL DeleteAPIKey DeleteFirewallManagerRuleGroups DeleteIPSet DeleteLoggingConfiguration DeletePermissionPolicy DeleteRegexPatternSet DeleteRuleGroup DeleteWebACL DescribeAllManagedProducts DescribeManagedProductsByVendor DescribeManagedRuleGroup DisassociateWebACL GenerateMobileSdkReleaseUrl GetDecryptedAPIKey GetIPSet GetLoggingConfiguration GetManagedRuleSet GetMobileSdkRelease GetPermissionPolicy GetRateBasedStatementManagedKeys GetRegexPatternSet GetRuleGroup GetSampledRequests GetWebACL GetWebACLForResource ListAPIKeys ListAvailableManagedRuleGroups ListAvailableManagedRuleGroupVersions ListIPSets ListLoggingConfigurations ListManagedRuleSets ListMobileSdkReleases ListRegexPatternSets ListResourcesForWebACL ListRuleGroups ListTagsForResource ListWebACLs PutLoggingConfiguration PutManagedRuleSetVersions PutPermissionPolicy TagResource UntagResource UpdateIPSet UpdateManagedRuleSetVersionExpiryDate UpdateRegexPatternSet UpdateRuleGroup UpdateWebACL / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2 - Perl Interface to AWS AWS WAFV2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WAFV2');
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

WAF

This is the latest version of the B<WAF> API, released in November,
2019. The names of the entities that you use to access this API, like
endpoints and namespaces, all have the versioning information added,
like "V2" or "v2", to distinguish from the prior version. We recommend
migrating your resources to this version, because it has a number of
significant improvements.

If you used WAF prior to this release, you can't use this WAFV2 API to
access any WAF resources that you created before. WAF Classic support
will end on September 30, 2025.

For information about WAF, including how to migrate your WAF Classic
resources to this version, see the WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

WAF is a web application firewall that lets you monitor the HTTP and
HTTPS requests that are forwarded to a protected resource. Protected
resource types include Amazon CloudFront distribution, Amazon API
Gateway REST API, Application Load Balancer, AppSync GraphQL API,
Amazon Cognito user pool, App Runner service, Amplify application, and
Amazon Web Services Verified Access instance. WAF also lets you control
access to your content, to protect the Amazon Web Services resource
that WAF is monitoring. Based on conditions that you specify, such as
the IP addresses that requests originate from or the values of query
strings, the protected resource responds to requests with either the
requested content, an HTTP 403 status code (Forbidden), or with a
custom response.

This API guide is for developers who need detailed information about
WAF API actions, data types, and errors. For detailed information about
WAF features and guidance for configuring and using WAF, see the WAF
Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).

You can make calls using the endpoints listed in WAF endpoints and
quotas (https://docs.aws.amazon.com/general/latest/gr/waf.html).

=over

=item *

For regional resources, you can use any of the endpoints in the list. A
regional application can be an Application Load Balancer (ALB), an
Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon Cognito
user pool, an App Runner service, or an Amazon Web Services Verified
Access instance.

=item *

For Amazon CloudFront and Amplify, you must use the API endpoint listed
for US East (N. Virginia): us-east-1.

=back

Alternatively, you can use one of the Amazon Web Services SDKs to
access an API that's tailored to the programming language or platform
that you're using. For more information, see Amazon Web Services SDKs
(http://aws.amazon.com/tools/#SDKs).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29>


=head1 METHODS

=head2 AssociateWebACL

=over

=item ResourceArn => Str

=item WebACLArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::AssociateWebACL>

Returns: a L<Paws::WAFV2::AssociateWebACLResponse> instance

Associates a web ACL with a resource, to protect the resource.

Use this for all resource types except for Amazon CloudFront
distributions. For Amazon CloudFront, call C<UpdateDistribution> for
the distribution and provide the Amazon Resource Name (ARN) of the web
ACL in the web ACL ID. For information, see UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
in the I<Amazon CloudFront Developer Guide>.

B<Required permissions for customer-managed IAM policies>

This call requires permissions that are specific to the protected
resource type. For details, see Permissions for AssociateWebACL
(https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-AssociateWebACL)
in the I<WAF Developer Guide>.

B<Temporary inconsistencies during updates>

When you create or change a web ACL or other WAF resources, the changes
take a small amount of time to propagate to all areas where the
resources are stored. The propagation time can be from a few seconds to
a number of minutes.

The following are examples of the temporary inconsistencies that you
might notice during change propagation:

=over

=item *

After you create a web ACL, if you try to associate it with a resource,
you might get an exception indicating that the web ACL is unavailable.

=item *

After you add a rule group to a web ACL, the new rule group rules might
be in effect in one area where the web ACL is used and not in another.

=item *

After you change a rule action setting, you might see the old action in
some places and the new action in others.

=item *

After you add an IP address to an IP set that is in use in a blocking
rule, the new address might be blocked in one area while still allowed
in another.

=back



=head2 CheckCapacity

=over

=item Rules => ArrayRef[L<Paws::WAFV2::Rule>]

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::CheckCapacity>

Returns: a L<Paws::WAFV2::CheckCapacityResponse> instance

Returns the web ACL capacity unit (WCU) requirements for a specified
scope and set of rules. You can use this to check the capacity
requirements for the rules you want to use in a RuleGroup or WebACL.

WAF uses WCUs to calculate and control the operating resources that are
used to run your rules, rule groups, and web ACLs. WAF calculates
capacity differently for each rule type, to reflect the relative cost
of each rule. Simple rules that cost little to run use fewer WCUs than
more complex rules that use more processing power. Rule group capacity
is fixed at creation, which helps users plan their web ACL WCU usage
when they use a rule group. For more information, see WAF web ACL
capacity units (WCU)
(https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html)
in the I<WAF Developer Guide>.


=head2 CreateAPIKey

=over

=item Scope => Str

=item TokenDomains => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateAPIKey>

Returns: a L<Paws::WAFV2::CreateAPIKeyResponse> instance

Creates an API key that contains a set of token domains.

API keys are required for the integration of the CAPTCHA API in your
JavaScript client applications. The API lets you customize the
placement and characteristics of the CAPTCHA puzzle for your end users.
For more information about the CAPTCHA JavaScript integration, see WAF
client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.

You can use a single key for up to 5 domains. After you generate a key,
you can copy it for use in your JavaScript integration.


=head2 CreateIPSet

=over

=item Addresses => ArrayRef[Str|Undef]

=item IPAddressVersion => Str

=item Name => Str

=item Scope => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateIPSet>

Returns: a L<Paws::WAFV2::CreateIPSetResponse> instance

Creates an IPSet, which you use to identify web requests that originate
from specific IP addresses or ranges of IP addresses. For example, if
you're receiving a lot of requests from a ranges of IP addresses, you
can configure WAF to block them using an IPSet that lists those IP
addresses.


=head2 CreateRegexPatternSet

=over

=item Name => Str

=item RegularExpressionList => ArrayRef[L<Paws::WAFV2::Regex>]

=item Scope => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateRegexPatternSet>

Returns: a L<Paws::WAFV2::CreateRegexPatternSetResponse> instance

Creates a RegexPatternSet, which you reference in a
RegexPatternSetReferenceStatement, to have WAF inspect a web request
component for the specified patterns.


=head2 CreateRuleGroup

=over

=item Capacity => Int

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateRuleGroup>

Returns: a L<Paws::WAFV2::CreateRuleGroupResponse> instance

Creates a RuleGroup per the specifications provided.

A rule group defines a collection of rules to inspect and control web
requests that you can use in a WebACL. When you create a rule group,
you define an immutable capacity limit. If you update a rule group, you
must stay within the capacity. This allows others to reuse the rule
group with confidence in its capacity requirements.


=head2 CreateWebACL

=over

=item DefaultAction => L<Paws::WAFV2::DefaultAction>

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [AssociationConfig => L<Paws::WAFV2::AssociationConfig>]

=item [CaptchaConfig => L<Paws::WAFV2::CaptchaConfig>]

=item [ChallengeConfig => L<Paws::WAFV2::ChallengeConfig>]

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [DataProtectionConfig => L<Paws::WAFV2::DataProtectionConfig>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]

=item [TokenDomains => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateWebACL>

Returns: a L<Paws::WAFV2::CreateWebACLResponse> instance

Creates a WebACL per the specifications provided.

A web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has a statement that defines what to look for
in web requests and an action that WAF applies to requests that match
the statement. In the web ACL, you assign a default action to take
(allow, block) for any request that does not match any of the rules.
The rules in a web ACL can be a combination of the types Rule,
RuleGroup, and managed rule group. You can associate a web ACL with one
or more Amazon Web Services resources to protect. The resource types
include Amazon CloudFront distribution, Amazon API Gateway REST API,
Application Load Balancer, AppSync GraphQL API, Amazon Cognito user
pool, App Runner service, Amplify application, and Amazon Web Services
Verified Access instance.


=head2 DeleteAPIKey

=over

=item APIKey => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteAPIKey>

Returns: a L<Paws::WAFV2::DeleteAPIKeyResponse> instance

Deletes the specified API key.

After you delete a key, it can take up to 24 hours for WAF to disallow
use of the key in all regions.


=head2 DeleteFirewallManagerRuleGroups

=over

=item WebACLArn => Str

=item WebACLLockToken => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteFirewallManagerRuleGroups>

Returns: a L<Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse> instance

Deletes all rule groups that are managed by Firewall Manager from the
specified WebACL.

You can only use this if C<ManagedByFirewallManager> and
C<RetrofittedByFirewallManager> are both false in the web ACL.


=head2 DeleteIPSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteIPSet>

Returns: a L<Paws::WAFV2::DeleteIPSetResponse> instance

Deletes the specified IPSet.


=head2 DeleteLoggingConfiguration

=over

=item ResourceArn => Str

=item [LogScope => Str]

=item [LogType => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteLoggingConfiguration>

Returns: a L<Paws::WAFV2::DeleteLoggingConfigurationResponse> instance

Deletes the LoggingConfiguration from the specified web ACL.


=head2 DeletePermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeletePermissionPolicy>

Returns: a L<Paws::WAFV2::DeletePermissionPolicyResponse> instance

Permanently deletes an IAM policy from the specified rule group.

You must be the owner of the rule group to perform this operation.


=head2 DeleteRegexPatternSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteRegexPatternSet>

Returns: a L<Paws::WAFV2::DeleteRegexPatternSetResponse> instance

Deletes the specified RegexPatternSet.


=head2 DeleteRuleGroup

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteRuleGroup>

Returns: a L<Paws::WAFV2::DeleteRuleGroupResponse> instance

Deletes the specified RuleGroup.


=head2 DeleteWebACL

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteWebACL>

Returns: a L<Paws::WAFV2::DeleteWebACLResponse> instance

Deletes the specified WebACL.

You can only use this if C<ManagedByFirewallManager> is false in the
web ACL.

Before deleting any web ACL, first disassociate it from all resources.

=over

=item *

To retrieve a list of the resources that are associated with a web ACL,
use the following calls:

=over

=item *

For Amazon CloudFront distributions, use the CloudFront call
C<ListDistributionsByWebACLId>. For information, see
ListDistributionsByWebACLId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html)
in the I<Amazon CloudFront API Reference>.

=item *

For all other resources, call ListResourcesForWebACL.

=back

=item *

To disassociate a resource from a web ACL, use the following calls:

=over

=item *

For Amazon CloudFront distributions, provide an empty web ACL ID in the
CloudFront call C<UpdateDistribution>. For information, see
UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
in the I<Amazon CloudFront API Reference>.

=item *

For all other resources, call DisassociateWebACL.

=back

=back



=head2 DescribeAllManagedProducts

=over

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DescribeAllManagedProducts>

Returns: a L<Paws::WAFV2::DescribeAllManagedProductsResponse> instance

Provides high-level information for the Amazon Web Services Managed
Rules rule groups and Amazon Web Services Marketplace managed rule
groups.


=head2 DescribeManagedProductsByVendor

=over

=item Scope => Str

=item VendorName => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DescribeManagedProductsByVendor>

Returns: a L<Paws::WAFV2::DescribeManagedProductsByVendorResponse> instance

Provides high-level information for the managed rule groups owned by a
specific vendor.


=head2 DescribeManagedRuleGroup

=over

=item Name => Str

=item Scope => Str

=item VendorName => Str

=item [VersionName => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::DescribeManagedRuleGroup>

Returns: a L<Paws::WAFV2::DescribeManagedRuleGroupResponse> instance

Provides high-level information for a managed rule group, including
descriptions of the rules.


=head2 DisassociateWebACL

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DisassociateWebACL>

Returns: a L<Paws::WAFV2::DisassociateWebACLResponse> instance

Disassociates the specified resource from its web ACL association, if
it has one.

Use this for all resource types except for Amazon CloudFront
distributions. For Amazon CloudFront, call C<UpdateDistribution> for
the distribution and provide an empty web ACL ID. For information, see
UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
in the I<Amazon CloudFront API Reference>.

B<Required permissions for customer-managed IAM policies>

This call requires permissions that are specific to the protected
resource type. For details, see Permissions for DisassociateWebACL
(https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-DisassociateWebACL)
in the I<WAF Developer Guide>.


=head2 GenerateMobileSdkReleaseUrl

=over

=item Platform => Str

=item ReleaseVersion => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GenerateMobileSdkReleaseUrl>

Returns: a L<Paws::WAFV2::GenerateMobileSdkReleaseUrlResponse> instance

Generates a presigned download URL for the specified release of the
mobile SDK.

The mobile SDK is not generally available. Customers who have access to
the mobile SDK can use it to establish and manage WAF tokens for use in
HTTP(S) requests from a mobile device to WAF. For more information, see
WAF client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 GetDecryptedAPIKey

=over

=item APIKey => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetDecryptedAPIKey>

Returns: a L<Paws::WAFV2::GetDecryptedAPIKeyResponse> instance

Returns your API key in decrypted form. Use this to check the token
domains that you have defined for the key.

API keys are required for the integration of the CAPTCHA API in your
JavaScript client applications. The API lets you customize the
placement and characteristics of the CAPTCHA puzzle for your end users.
For more information about the CAPTCHA JavaScript integration, see WAF
client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 GetIPSet

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetIPSet>

Returns: a L<Paws::WAFV2::GetIPSetResponse> instance

Retrieves the specified IPSet.


=head2 GetLoggingConfiguration

=over

=item ResourceArn => Str

=item [LogScope => Str]

=item [LogType => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::GetLoggingConfiguration>

Returns: a L<Paws::WAFV2::GetLoggingConfigurationResponse> instance

Returns the LoggingConfiguration for the specified web ACL.


=head2 GetManagedRuleSet

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetManagedRuleSet>

Returns: a L<Paws::WAFV2::GetManagedRuleSetResponse> instance

Retrieves the specified managed rule set.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are C<ListManagedRuleSets>, C<GetManagedRuleSet>,
C<PutManagedRuleSetVersions>, and
C<UpdateManagedRuleSetVersionExpiryDate>.


=head2 GetMobileSdkRelease

=over

=item Platform => Str

=item ReleaseVersion => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetMobileSdkRelease>

Returns: a L<Paws::WAFV2::GetMobileSdkReleaseResponse> instance

Retrieves information for the specified mobile SDK release, including
release notes and tags.

The mobile SDK is not generally available. Customers who have access to
the mobile SDK can use it to establish and manage WAF tokens for use in
HTTP(S) requests from a mobile device to WAF. For more information, see
WAF client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 GetPermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetPermissionPolicy>

Returns: a L<Paws::WAFV2::GetPermissionPolicyResponse> instance

Returns the IAM policy that is attached to the specified rule group.

You must be the owner of the rule group to perform this operation.


=head2 GetRateBasedStatementManagedKeys

=over

=item RuleName => Str

=item Scope => Str

=item WebACLId => Str

=item WebACLName => Str

=item [RuleGroupRuleName => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRateBasedStatementManagedKeys>

Returns: a L<Paws::WAFV2::GetRateBasedStatementManagedKeysResponse> instance

Retrieves the IP addresses that are currently blocked by a rate-based
rule instance. This is only available for rate-based rules that
aggregate solely on the IP address or on the forwarded IP address.

The maximum number of addresses that can be blocked for a single
rate-based rule instance is 10,000. If more than 10,000 addresses
exceed the rate limit, those with the highest rates are blocked.

For a rate-based rule that you've defined inside a rule group, provide
the name of the rule group reference statement in your request, in
addition to the rate-based rule name and the web ACL name.

WAF monitors web requests and manages keys independently for each
unique combination of web ACL, optional rule group, and rate-based
rule. For example, if you define a rate-based rule inside a rule group,
and then use the rule group in a web ACL, WAF monitors web requests and
manages keys for that web ACL, rule group reference statement, and
rate-based rule instance. If you use the same rule group in a second
web ACL, WAF monitors web requests and manages keys for this second
usage completely independent of your first.


=head2 GetRegexPatternSet

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRegexPatternSet>

Returns: a L<Paws::WAFV2::GetRegexPatternSetResponse> instance

Retrieves the specified RegexPatternSet.


=head2 GetRuleGroup

=over

=item [ARN => Str]

=item [Id => Str]

=item [Name => Str]

=item [Scope => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRuleGroup>

Returns: a L<Paws::WAFV2::GetRuleGroupResponse> instance

Retrieves the specified RuleGroup.


=head2 GetSampledRequests

=over

=item MaxItems => Int

=item RuleMetricName => Str

=item Scope => Str

=item TimeWindow => L<Paws::WAFV2::TimeWindow>

=item WebAclArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetSampledRequests>

Returns: a L<Paws::WAFV2::GetSampledRequestsResponse> instance

Gets detailed information about a specified number of requests--a
sample--that WAF randomly selects from among the first 5,000 requests
that your Amazon Web Services resource received during a time range
that you choose. You can specify a sample size of up to 500 requests,
and you can specify any time range in the previous three hours.

C<GetSampledRequests> returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, C<GetSampledRequests> returns an updated time
range. This new time range indicates the actual period during which WAF
selected the requests in the sample.


=head2 GetWebACL

=over

=item [ARN => Str]

=item [Id => Str]

=item [Name => Str]

=item [Scope => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::GetWebACL>

Returns: a L<Paws::WAFV2::GetWebACLResponse> instance

Retrieves the specified WebACL.


=head2 GetWebACLForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetWebACLForResource>

Returns: a L<Paws::WAFV2::GetWebACLForResourceResponse> instance

Retrieves the WebACL for the specified resource.

This call uses C<GetWebACL>, to verify that your account has permission
to access the retrieved web ACL. If you get an error that indicates
that your account isn't authorized to perform C<wafv2:GetWebACL> on the
resource, that error won't be included in your CloudTrail event
history.

For Amazon CloudFront, don't use this call. Instead, call the
CloudFront action C<GetDistributionConfig>. For information, see
GetDistributionConfig
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html)
in the I<Amazon CloudFront API Reference>.

B<Required permissions for customer-managed IAM policies>

This call requires permissions that are specific to the protected
resource type. For details, see Permissions for GetWebACLForResource
(https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-GetWebACLForResource)
in the I<WAF Developer Guide>.


=head2 ListAPIKeys

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListAPIKeys>

Returns: a L<Paws::WAFV2::ListAPIKeysResponse> instance

Retrieves a list of the API keys that you've defined for the specified
scope.

API keys are required for the integration of the CAPTCHA API in your
JavaScript client applications. The API lets you customize the
placement and characteristics of the CAPTCHA puzzle for your end users.
For more information about the CAPTCHA JavaScript integration, see WAF
client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 ListAvailableManagedRuleGroups

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListAvailableManagedRuleGroups>

Returns: a L<Paws::WAFV2::ListAvailableManagedRuleGroupsResponse> instance

Retrieves an array of managed rule groups that are available for you to
use. This list includes all Amazon Web Services Managed Rules rule
groups and all of the Amazon Web Services Marketplace managed rule
groups that you're subscribed to.


=head2 ListAvailableManagedRuleGroupVersions

=over

=item Name => Str

=item Scope => Str

=item VendorName => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListAvailableManagedRuleGroupVersions>

Returns: a L<Paws::WAFV2::ListAvailableManagedRuleGroupVersionsResponse> instance

Returns a list of the available versions for the specified managed rule
group.


=head2 ListIPSets

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListIPSets>

Returns: a L<Paws::WAFV2::ListIPSetsResponse> instance

Retrieves an array of IPSetSummary objects for the IP sets that you
manage.


=head2 ListLoggingConfigurations

=over

=item Scope => Str

=item [Limit => Int]

=item [LogScope => Str]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListLoggingConfigurations>

Returns: a L<Paws::WAFV2::ListLoggingConfigurationsResponse> instance

Retrieves an array of your LoggingConfiguration objects.


=head2 ListManagedRuleSets

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListManagedRuleSets>

Returns: a L<Paws::WAFV2::ListManagedRuleSetsResponse> instance

Retrieves the managed rule sets that you own.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are C<ListManagedRuleSets>, C<GetManagedRuleSet>,
C<PutManagedRuleSetVersions>, and
C<UpdateManagedRuleSetVersionExpiryDate>.


=head2 ListMobileSdkReleases

=over

=item Platform => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListMobileSdkReleases>

Returns: a L<Paws::WAFV2::ListMobileSdkReleasesResponse> instance

Retrieves a list of the available releases for the mobile SDK and the
specified device platform.

The mobile SDK is not generally available. Customers who have access to
the mobile SDK can use it to establish and manage WAF tokens for use in
HTTP(S) requests from a mobile device to WAF. For more information, see
WAF client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 ListRegexPatternSets

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListRegexPatternSets>

Returns: a L<Paws::WAFV2::ListRegexPatternSetsResponse> instance

Retrieves an array of RegexPatternSetSummary objects for the regex
pattern sets that you manage.


=head2 ListResourcesForWebACL

=over

=item WebACLArn => Str

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListResourcesForWebACL>

Returns: a L<Paws::WAFV2::ListResourcesForWebACLResponse> instance

Retrieves an array of the Amazon Resource Names (ARNs) for the
resources that are associated with the specified web ACL.

For Amazon CloudFront, don't use this call. Instead, use the CloudFront
call C<ListDistributionsByWebACLId>. For information, see
ListDistributionsByWebACLId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html)
in the I<Amazon CloudFront API Reference>.

B<Required permissions for customer-managed IAM policies>

This call requires permissions that are specific to the protected
resource type. For details, see Permissions for ListResourcesForWebACL
(https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-ListResourcesForWebACL)
in the I<WAF Developer Guide>.


=head2 ListRuleGroups

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListRuleGroups>

Returns: a L<Paws::WAFV2::ListRuleGroupsResponse> instance

Retrieves an array of RuleGroupSummary objects for the rule groups that
you manage.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListTagsForResource>

Returns: a L<Paws::WAFV2::ListTagsForResourceResponse> instance

Retrieves the TagInfoForResource for the specified resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't
manage or view tags through the WAF console.


=head2 ListWebACLs

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListWebACLs>

Returns: a L<Paws::WAFV2::ListWebACLsResponse> instance

Retrieves an array of WebACLSummary objects for the web ACLs that you
manage.


=head2 PutLoggingConfiguration

=over

=item LoggingConfiguration => L<Paws::WAFV2::LoggingConfiguration>


=back

Each argument is described in detail in: L<Paws::WAFV2::PutLoggingConfiguration>

Returns: a L<Paws::WAFV2::PutLoggingConfigurationResponse> instance

Enables the specified LoggingConfiguration, to start logging from a web
ACL, according to the configuration provided.

If you configure data protection for the web ACL, the protection
applies to the data that WAF sends to the logs.

This operation completely replaces any mutable specifications that you
already have for a logging configuration with the ones that you provide
to this call.

To modify an existing logging configuration, do the following:

=over

=item 1.

Retrieve it by calling GetLoggingConfiguration

=item 2.

Update its settings as needed

=item 3.

Provide the complete logging configuration specification to this call

=back

You can define one logging destination per web ACL.

You can access information about the traffic that WAF inspects using
the following steps:

=over

=item 1.

Create your logging destination. You can use an Amazon CloudWatch Logs
log group, an Amazon Simple Storage Service (Amazon S3) bucket, or an
Amazon Kinesis Data Firehose.

The name that you give the destination must start with
C<aws-waf-logs->. Depending on the type of destination, you might need
to configure additional settings or permissions.

For configuration requirements and pricing information for each
destination type, see Logging web ACL traffic
(https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) in
the I<WAF Developer Guide>.

=item 2.

Associate your logging destination to your web ACL using a
C<PutLoggingConfiguration> request.

=back

When you successfully enable logging using a C<PutLoggingConfiguration>
request, WAF creates an additional role or policy that is required to
write logs to the logging destination. For an Amazon CloudWatch Logs
log group, WAF creates a resource policy on the log group. For an
Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis
Data Firehose, WAF creates a service-linked role.

For additional information about web ACL logging, see Logging web ACL
traffic information
(https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) in
the I<WAF Developer Guide>.


=head2 PutManagedRuleSetVersions

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item [RecommendedVersion => Str]

=item [VersionsToPublish => L<Paws::WAFV2::VersionsToPublish>]


=back

Each argument is described in detail in: L<Paws::WAFV2::PutManagedRuleSetVersions>

Returns: a L<Paws::WAFV2::PutManagedRuleSetVersionsResponse> instance

Defines the versions of your managed rule set that you are offering to
the customers. Customers see your offerings as managed rule groups with
versioning.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are C<ListManagedRuleSets>, C<GetManagedRuleSet>,
C<PutManagedRuleSetVersions>, and
C<UpdateManagedRuleSetVersionExpiryDate>.

Customers retrieve their managed rule group list by calling
ListAvailableManagedRuleGroups. The name that you provide here for your
managed rule set is the name the customer sees for the corresponding
managed rule group. Customers can retrieve the available versions for a
managed rule group by calling ListAvailableManagedRuleGroupVersions.
You provide a rule group specification for each version. For each
managed rule set, you must specify a version that you recommend using.

To initiate the expiration of a managed rule group version, use
UpdateManagedRuleSetVersionExpiryDate.


=head2 PutPermissionPolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::PutPermissionPolicy>

Returns: a L<Paws::WAFV2::PutPermissionPolicyResponse> instance

Use this to share a rule group with other accounts.

This action attaches an IAM policy to the specified resource. You must
be the owner of the rule group to perform this operation.

This action is subject to the following restrictions:

=over

=item *

You can attach only one policy with each C<PutPermissionPolicy>
request.

=item *

The ARN in the request must be a valid WAF RuleGroup ARN and the rule
group must exist in the same Region.

=item *

The user making the request must be the owner of the rule group.

=back

If a rule group has been shared with your account, you can access it
through the call C<GetRuleGroup>, and you can reference it in
C<CreateWebACL> and C<UpdateWebACL>. Rule groups that are shared with
you don't appear in your WAF console rule groups listing.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::WAFV2::Tag>]


=back

Each argument is described in detail in: L<Paws::WAFV2::TagResource>

Returns: a L<Paws::WAFV2::TagResourceResponse> instance

Associates tags with the specified Amazon Web Services resource. Tags
are key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't
manage or view tags through the WAF console.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WAFV2::UntagResource>

Returns: a L<Paws::WAFV2::UntagResourceResponse> instance

Disassociates tags from an Amazon Web Services resource. Tags are
key:value pairs that you can associate with Amazon Web Services
resources. For example, the tag key might be "customer" and the tag
value might be "companyA." You can specify one or more tags to add to
each container. You can add up to 50 tags to each Amazon Web Services
resource.


=head2 UpdateIPSet

=over

=item Addresses => ArrayRef[Str|Undef]

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateIPSet>

Returns: a L<Paws::WAFV2::UpdateIPSetResponse> instance

Updates the specified IPSet.

This operation completely replaces the mutable specifications that you
already have for the IP set with the ones that you provide to this
call.

To modify an IP set, do the following:

=over

=item 1.

Retrieve it by calling GetIPSet

=item 2.

Update its settings as needed

=item 3.

Provide the complete IP set specification to this call

=back

B<Temporary inconsistencies during updates>

When you create or change a web ACL or other WAF resources, the changes
take a small amount of time to propagate to all areas where the
resources are stored. The propagation time can be from a few seconds to
a number of minutes.

The following are examples of the temporary inconsistencies that you
might notice during change propagation:

=over

=item *

After you create a web ACL, if you try to associate it with a resource,
you might get an exception indicating that the web ACL is unavailable.

=item *

After you add a rule group to a web ACL, the new rule group rules might
be in effect in one area where the web ACL is used and not in another.

=item *

After you change a rule action setting, you might see the old action in
some places and the new action in others.

=item *

After you add an IP address to an IP set that is in use in a blocking
rule, the new address might be blocked in one area while still allowed
in another.

=back



=head2 UpdateManagedRuleSetVersionExpiryDate

=over

=item ExpiryTimestamp => Str

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item VersionToExpire => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateManagedRuleSetVersionExpiryDate>

Returns: a L<Paws::WAFV2::UpdateManagedRuleSetVersionExpiryDateResponse> instance

Updates the expiration information for your managed rule set. Use this
to initiate the expiration of a managed rule group version. After you
initiate expiration for a version, WAF excludes it from the response to
ListAvailableManagedRuleGroupVersions for the managed rule group.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are C<ListManagedRuleSets>, C<GetManagedRuleSet>,
C<PutManagedRuleSetVersions>, and
C<UpdateManagedRuleSetVersionExpiryDate>.


=head2 UpdateRegexPatternSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item RegularExpressionList => ArrayRef[L<Paws::WAFV2::Regex>]

=item Scope => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateRegexPatternSet>

Returns: a L<Paws::WAFV2::UpdateRegexPatternSetResponse> instance

Updates the specified RegexPatternSet.

This operation completely replaces the mutable specifications that you
already have for the regex pattern set with the ones that you provide
to this call.

To modify a regex pattern set, do the following:

=over

=item 1.

Retrieve it by calling GetRegexPatternSet

=item 2.

Update its settings as needed

=item 3.

Provide the complete regex pattern set specification to this call

=back

B<Temporary inconsistencies during updates>

When you create or change a web ACL or other WAF resources, the changes
take a small amount of time to propagate to all areas where the
resources are stored. The propagation time can be from a few seconds to
a number of minutes.

The following are examples of the temporary inconsistencies that you
might notice during change propagation:

=over

=item *

After you create a web ACL, if you try to associate it with a resource,
you might get an exception indicating that the web ACL is unavailable.

=item *

After you add a rule group to a web ACL, the new rule group rules might
be in effect in one area where the web ACL is used and not in another.

=item *

After you change a rule action setting, you might see the old action in
some places and the new action in others.

=item *

After you add an IP address to an IP set that is in use in a blocking
rule, the new address might be blocked in one area while still allowed
in another.

=back



=head2 UpdateRuleGroup

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateRuleGroup>

Returns: a L<Paws::WAFV2::UpdateRuleGroupResponse> instance

Updates the specified RuleGroup.

This operation completely replaces the mutable specifications that you
already have for the rule group with the ones that you provide to this
call.

To modify a rule group, do the following:

=over

=item 1.

Retrieve it by calling GetRuleGroup

=item 2.

Update its settings as needed

=item 3.

Provide the complete rule group specification to this call

=back

A rule group defines a collection of rules to inspect and control web
requests that you can use in a WebACL. When you create a rule group,
you define an immutable capacity limit. If you update a rule group, you
must stay within the capacity. This allows others to reuse the rule
group with confidence in its capacity requirements.

B<Temporary inconsistencies during updates>

When you create or change a web ACL or other WAF resources, the changes
take a small amount of time to propagate to all areas where the
resources are stored. The propagation time can be from a few seconds to
a number of minutes.

The following are examples of the temporary inconsistencies that you
might notice during change propagation:

=over

=item *

After you create a web ACL, if you try to associate it with a resource,
you might get an exception indicating that the web ACL is unavailable.

=item *

After you add a rule group to a web ACL, the new rule group rules might
be in effect in one area where the web ACL is used and not in another.

=item *

After you change a rule action setting, you might see the old action in
some places and the new action in others.

=item *

After you add an IP address to an IP set that is in use in a blocking
rule, the new address might be blocked in one area while still allowed
in another.

=back



=head2 UpdateWebACL

=over

=item DefaultAction => L<Paws::WAFV2::DefaultAction>

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [AssociationConfig => L<Paws::WAFV2::AssociationConfig>]

=item [CaptchaConfig => L<Paws::WAFV2::CaptchaConfig>]

=item [ChallengeConfig => L<Paws::WAFV2::ChallengeConfig>]

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [DataProtectionConfig => L<Paws::WAFV2::DataProtectionConfig>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]

=item [TokenDomains => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateWebACL>

Returns: a L<Paws::WAFV2::UpdateWebACLResponse> instance

Updates the specified WebACL. While updating a web ACL, WAF provides
continuous coverage to the resources that you have associated with the
web ACL.

This operation completely replaces the mutable specifications that you
already have for the web ACL with the ones that you provide to this
call.

To modify a web ACL, do the following:

=over

=item 1.

Retrieve it by calling GetWebACL

=item 2.

Update its settings as needed

=item 3.

Provide the complete web ACL specification to this call

=back

A web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has a statement that defines what to look for
in web requests and an action that WAF applies to requests that match
the statement. In the web ACL, you assign a default action to take
(allow, block) for any request that does not match any of the rules.
The rules in a web ACL can be a combination of the types Rule,
RuleGroup, and managed rule group. You can associate a web ACL with one
or more Amazon Web Services resources to protect. The resource types
include Amazon CloudFront distribution, Amazon API Gateway REST API,
Application Load Balancer, AppSync GraphQL API, Amazon Cognito user
pool, App Runner service, Amplify application, and Amazon Web Services
Verified Access instance.

B<Temporary inconsistencies during updates>

When you create or change a web ACL or other WAF resources, the changes
take a small amount of time to propagate to all areas where the
resources are stored. The propagation time can be from a few seconds to
a number of minutes.

The following are examples of the temporary inconsistencies that you
might notice during change propagation:

=over

=item *

After you create a web ACL, if you try to associate it with a resource,
you might get an exception indicating that the web ACL is unavailable.

=item *

After you add a rule group to a web ACL, the new rule group rules might
be in effect in one area where the web ACL is used and not in another.

=item *

After you change a rule action setting, you might see the old action in
some places and the new action in others.

=item *

After you add an IP address to an IP set that is in use in a blocking
rule, the new address might be blocked in one area while still allowed
in another.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

