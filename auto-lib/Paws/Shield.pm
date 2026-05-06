package Paws::Shield;
  use Moose;
  sub service { 'shield' }
  sub signing_name { 'shield' }
  sub version { '2016-06-02' }
  sub target_prefix { 'AWSShield_20160616' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDRTLogBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateDRTLogBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDRTRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateDRTRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateProactiveEngagementDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateProactiveEngagementDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeAttack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttackStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeAttackStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDRTAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeDRTAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEmergencyContactSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeEmergencyContactSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableApplicationLayerAutomaticResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisableApplicationLayerAutomaticResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableProactiveEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisableProactiveEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDRTLogBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateDRTLogBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDRTRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateDRTRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableApplicationLayerAutomaticResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::EnableApplicationLayerAutomaticResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableProactiveEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::EnableProactiveEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::GetSubscriptionState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListAttacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListProtectionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListProtections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesInProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListResourcesInProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationLayerAutomaticResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateApplicationLayerAutomaticResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEmergencyContactSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateEmergencyContactSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAttacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAttacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttackSummaries }, @{ $next_result->AttackSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttackSummaries') foreach (@{ $result->AttackSummaries });
        $result = $self->ListAttacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttackSummaries') foreach (@{ $result->AttackSummaries });
    }

    return undef
  }
  sub ListAllProtections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Protections }, @{ $next_result->Protections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Protections') foreach (@{ $result->Protections });
        $result = $self->ListProtections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Protections') foreach (@{ $result->Protections });
    }

    return undef
  }


  sub operations { qw/AssociateDRTLogBucket AssociateDRTRole AssociateHealthCheck AssociateProactiveEngagementDetails CreateProtection CreateProtectionGroup CreateSubscription DeleteProtection DeleteProtectionGroup DeleteSubscription DescribeAttack DescribeAttackStatistics DescribeDRTAccess DescribeEmergencyContactSettings DescribeProtection DescribeProtectionGroup DescribeSubscription DisableApplicationLayerAutomaticResponse DisableProactiveEngagement DisassociateDRTLogBucket DisassociateDRTRole DisassociateHealthCheck EnableApplicationLayerAutomaticResponse EnableProactiveEngagement GetSubscriptionState ListAttacks ListProtectionGroups ListProtections ListResourcesInProtectionGroup ListTagsForResource TagResource UntagResource UpdateApplicationLayerAutomaticResponse UpdateEmergencyContactSettings UpdateProtectionGroup UpdateSubscription / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield - Perl Interface to AWS AWS Shield

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Shield');
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

Shield Advanced

This is the I<Shield Advanced API Reference>. This guide is for
developers who need detailed information about the Shield Advanced API
actions, data types, and errors. For detailed information about WAF and
Shield Advanced features and an overview of how to use the WAF and
Shield Advanced APIs, see the WAF and Shield Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateDRTLogBucket

=over

=item LogBucket => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateDRTLogBucket>

Returns: a L<Paws::Shield::AssociateDRTLogBucketResponse> instance

Authorizes the Shield Response Team (SRT) to access the specified
Amazon S3 bucket containing log data such as Application Load Balancer
access logs, CloudFront logs, or logs from third party sources. You can
associate up to 10 Amazon S3 buckets with your subscription.

To use the services of the SRT and make an C<AssociateDRTLogBucket>
request, you must be subscribed to the Business Support plan
(http://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(http://aws.amazon.com/premiumsupport/enterprise-support/).


=head2 AssociateDRTRole

=over

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateDRTRole>

Returns: a L<Paws::Shield::AssociateDRTRoleResponse> instance

Authorizes the Shield Response Team (SRT) using the specified role, to
access your Amazon Web Services account to assist with DDoS attack
mitigation during potential attacks. This enables the SRT to inspect
your WAF configuration and create or update WAF rules and web ACLs.

You can associate only one C<RoleArn> with your subscription. If you
submit an C<AssociateDRTRole> request for an account that already has
an associated role, the new C<RoleArn> will replace the existing
C<RoleArn>.

Prior to making the C<AssociateDRTRole> request, you must attach the
C<AWSShieldDRTAccessPolicy> managed policy to the role that you'll
specify in the request. You can access this policy in the IAM console
at AWSShieldDRTAccessPolicy
(https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy).
For more information see Adding and removing IAM identity permissions
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
The role must also trust the service principal
C<drt.shield.amazonaws.com>. For more information, see IAM JSON policy
elements: Principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

The SRT will have access only to your WAF and Shield resources. By
submitting this request, you authorize the SRT to inspect your WAF and
Shield configuration and create and update WAF rules and web ACLs on
your behalf. The SRT takes these actions only if explicitly authorized
by you.

You must have the C<iam:PassRole> permission to make an
C<AssociateDRTRole> request. For more information, see Granting a user
permissions to pass a role to an Amazon Web Services service
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

To use the services of the SRT and make an C<AssociateDRTRole> request,
you must be subscribed to the Business Support plan
(http://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(http://aws.amazon.com/premiumsupport/enterprise-support/).


=head2 AssociateHealthCheck

=over

=item HealthCheckArn => Str

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateHealthCheck>

Returns: a L<Paws::Shield::AssociateHealthCheckResponse> instance

Adds health-based detection to the Shield Advanced protection for a
resource. Shield Advanced health-based detection uses the health of
your Amazon Web Services resource to improve responsiveness and
accuracy in attack detection and response.

You define the health check in Route 53 and then associate it with your
Shield Advanced protection. For more information, see Shield Advanced
Health-Based Detection
(https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
in the I<WAF Developer Guide>.


=head2 AssociateProactiveEngagementDetails

=over

=item EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]


=back

Each argument is described in detail in: L<Paws::Shield::AssociateProactiveEngagementDetails>

Returns: a L<Paws::Shield::AssociateProactiveEngagementDetailsResponse> instance

Initializes proactive engagement and sets the list of contacts for the
Shield Response Team (SRT) to use. You must provide at least one phone
number in the emergency contact list.

After you have initialized proactive engagement using this call, to
disable or enable proactive engagement, use the calls
C<DisableProactiveEngagement> and C<EnableProactiveEngagement>.

This call defines the list of email addresses and phone numbers that
the SRT can use to contact you for escalations to the SRT and to
initiate proactive customer support.

The contacts that you provide in the request replace any contacts that
were already defined. If you already have contacts defined and want to
use them, retrieve the list using C<DescribeEmergencyContactSettings>
and then provide it to this call.


=head2 CreateProtection

=over

=item Name => Str

=item ResourceArn => Str

=item [Tags => ArrayRef[L<Paws::Shield::Tag>]]


=back

Each argument is described in detail in: L<Paws::Shield::CreateProtection>

Returns: a L<Paws::Shield::CreateProtectionResponse> instance

Enables Shield Advanced for a specific Amazon Web Services resource.
The resource can be an Amazon CloudFront distribution, Amazon Route 53
hosted zone, Global Accelerator standard accelerator, Elastic IP
Address, Application Load Balancer, or a Classic Load Balancer. You can
protect Amazon EC2 instances and Network Load Balancers by association
with protected Amazon EC2 Elastic IP addresses.

You can add protection to only a single resource with each
C<CreateProtection> request. You can add protection to multiple
resources at once through the Shield Advanced console at
https://console.aws.amazon.com/wafv2/shieldv2#/
(https://console.aws.amazon.com/wafv2/shieldv2#/). For more information
see Getting Started with Shield Advanced
(https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
and Adding Shield Advanced protection to Amazon Web Services resources
(https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).


=head2 CreateProtectionGroup

=over

=item Aggregation => Str

=item Pattern => Str

=item ProtectionGroupId => Str

=item [Members => ArrayRef[Str|Undef]]

=item [ResourceType => Str]

=item [Tags => ArrayRef[L<Paws::Shield::Tag>]]


=back

Each argument is described in detail in: L<Paws::Shield::CreateProtectionGroup>

Returns: a L<Paws::Shield::CreateProtectionGroupResponse> instance

Creates a grouping of protected resources so they can be handled as a
collective. This resource grouping improves the accuracy of detection
and reduces false positives.


=head2 CreateSubscription






Each argument is described in detail in: L<Paws::Shield::CreateSubscription>

Returns: a L<Paws::Shield::CreateSubscriptionResponse> instance

Activates Shield Advanced for an account.

For accounts that are members of an Organizations organization, Shield
Advanced subscriptions are billed against the organization's payer
account, regardless of whether the payer account itself is subscribed.

When you initially create a subscription, your subscription is set to
be automatically renewed at the end of the existing subscription
period. You can change this by submitting an C<UpdateSubscription>
request.


=head2 DeleteProtection

=over

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DeleteProtection>

Returns: a L<Paws::Shield::DeleteProtectionResponse> instance

Deletes an Shield Advanced Protection.


=head2 DeleteProtectionGroup

=over

=item ProtectionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DeleteProtectionGroup>

Returns: a L<Paws::Shield::DeleteProtectionGroupResponse> instance

Removes the specified protection group.


=head2 DeleteSubscription






Each argument is described in detail in: L<Paws::Shield::DeleteSubscription>

Returns: a L<Paws::Shield::DeleteSubscriptionResponse> instance

Removes Shield Advanced from an account. Shield Advanced requires a
1-year subscription commitment. You cannot delete a subscription prior
to the completion of that commitment.


=head2 DescribeAttack

=over

=item AttackId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeAttack>

Returns: a L<Paws::Shield::DescribeAttackResponse> instance

Describes the details of a DDoS attack.


=head2 DescribeAttackStatistics






Each argument is described in detail in: L<Paws::Shield::DescribeAttackStatistics>

Returns: a L<Paws::Shield::DescribeAttackStatisticsResponse> instance

Provides information about the number and type of attacks Shield has
detected in the last year for all resources that belong to your
account, regardless of whether you've defined Shield protections for
them. This operation is available to Shield customers as well as to
Shield Advanced customers.

The operation returns data for the time range of midnight UTC, one year
ago, to midnight UTC, today. For example, if the current time is
C<2020-10-26 15:39:32 PDT>, equal to C<2020-10-26 22:39:32 UTC>, then
the time range for the attack data returned is from C<2019-10-26
00:00:00 UTC> to C<2020-10-26 00:00:00 UTC>.

The time range indicates the period covered by the attack statistics
data items.


=head2 DescribeDRTAccess






Each argument is described in detail in: L<Paws::Shield::DescribeDRTAccess>

Returns: a L<Paws::Shield::DescribeDRTAccessResponse> instance

Returns the current role and list of Amazon S3 log buckets used by the
Shield Response Team (SRT) to access your Amazon Web Services account
while assisting with attack mitigation.


=head2 DescribeEmergencyContactSettings






Each argument is described in detail in: L<Paws::Shield::DescribeEmergencyContactSettings>

Returns: a L<Paws::Shield::DescribeEmergencyContactSettingsResponse> instance

A list of email addresses and phone numbers that the Shield Response
Team (SRT) can use to contact you if you have proactive engagement
enabled, for escalations to the SRT and to initiate proactive customer
support.


=head2 DescribeProtection

=over

=item [ProtectionId => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Shield::DescribeProtection>

Returns: a L<Paws::Shield::DescribeProtectionResponse> instance

Lists the details of a Protection object.


=head2 DescribeProtectionGroup

=over

=item ProtectionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeProtectionGroup>

Returns: a L<Paws::Shield::DescribeProtectionGroupResponse> instance

Returns the specification for the specified protection group.


=head2 DescribeSubscription






Each argument is described in detail in: L<Paws::Shield::DescribeSubscription>

Returns: a L<Paws::Shield::DescribeSubscriptionResponse> instance

Provides details about the Shield Advanced subscription for an account.


=head2 DisableApplicationLayerAutomaticResponse

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::DisableApplicationLayerAutomaticResponse>

Returns: a L<Paws::Shield::DisableApplicationLayerAutomaticResponseResponse> instance

Disable the Shield Advanced automatic application layer DDoS mitigation
feature for the protected resource. This stops Shield Advanced from
creating, verifying, and applying WAF rules for attacks that it detects
for the resource.


=head2 DisableProactiveEngagement






Each argument is described in detail in: L<Paws::Shield::DisableProactiveEngagement>

Returns: a L<Paws::Shield::DisableProactiveEngagementResponse> instance

Removes authorization from the Shield Response Team (SRT) to notify
contacts about escalations to the SRT and to initiate proactive
customer support.


=head2 DisassociateDRTLogBucket

=over

=item LogBucket => Str


=back

Each argument is described in detail in: L<Paws::Shield::DisassociateDRTLogBucket>

Returns: a L<Paws::Shield::DisassociateDRTLogBucketResponse> instance

Removes the Shield Response Team's (SRT) access to the specified Amazon
S3 bucket containing the logs that you shared previously.


=head2 DisassociateDRTRole






Each argument is described in detail in: L<Paws::Shield::DisassociateDRTRole>

Returns: a L<Paws::Shield::DisassociateDRTRoleResponse> instance

Removes the Shield Response Team's (SRT) access to your Amazon Web
Services account.


=head2 DisassociateHealthCheck

=over

=item HealthCheckArn => Str

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DisassociateHealthCheck>

Returns: a L<Paws::Shield::DisassociateHealthCheckResponse> instance

Removes health-based detection from the Shield Advanced protection for
a resource. Shield Advanced health-based detection uses the health of
your Amazon Web Services resource to improve responsiveness and
accuracy in attack detection and response.

You define the health check in Route 53 and then associate or
disassociate it with your Shield Advanced protection. For more
information, see Shield Advanced Health-Based Detection
(https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
in the I<WAF Developer Guide>.


=head2 EnableApplicationLayerAutomaticResponse

=over

=item Action => L<Paws::Shield::ResponseAction>

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::EnableApplicationLayerAutomaticResponse>

Returns: a L<Paws::Shield::EnableApplicationLayerAutomaticResponseResponse> instance

Enable the Shield Advanced automatic application layer DDoS mitigation
for the protected resource.

This feature is available for Amazon CloudFront distributions and
Application Load Balancers only.

This causes Shield Advanced to create, verify, and apply WAF rules for
DDoS attacks that it detects for the resource. Shield Advanced applies
the rules in a Shield rule group inside the web ACL that you've
associated with the resource. For information about how automatic
mitigation works and the requirements for using it, see Shield Advanced
automatic application layer DDoS mitigation
(https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html).

Don't use this action to make changes to automatic mitigation settings
when it's already enabled for a resource. Instead, use
UpdateApplicationLayerAutomaticResponse.

To use this feature, you must associate a web ACL with the protected
resource. The web ACL must be created using the latest version of WAF
(v2). You can associate the web ACL through the Shield Advanced console
at https://console.aws.amazon.com/wafv2/shieldv2#/
(https://console.aws.amazon.com/wafv2/shieldv2#/). For more
information, see Getting Started with Shield Advanced
(https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html).
You can also associate the web ACL to the resource through the WAF
console or the WAF API, but you must manage Shield Advanced automatic
mitigation through Shield Advanced. For information about WAF, see WAF
Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 EnableProactiveEngagement






Each argument is described in detail in: L<Paws::Shield::EnableProactiveEngagement>

Returns: a L<Paws::Shield::EnableProactiveEngagementResponse> instance

Authorizes the Shield Response Team (SRT) to use email and phone to
notify contacts about escalations to the SRT and to initiate proactive
customer support.


=head2 GetSubscriptionState






Each argument is described in detail in: L<Paws::Shield::GetSubscriptionState>

Returns: a L<Paws::Shield::GetSubscriptionStateResponse> instance

Returns the C<SubscriptionState>, either C<Active> or C<Inactive>.


=head2 ListAttacks

=over

=item [EndTime => L<Paws::Shield::TimeRange>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [StartTime => L<Paws::Shield::TimeRange>]


=back

Each argument is described in detail in: L<Paws::Shield::ListAttacks>

Returns: a L<Paws::Shield::ListAttacksResponse> instance

Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period.


=head2 ListProtectionGroups

=over

=item [InclusionFilters => L<Paws::Shield::InclusionProtectionGroupFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListProtectionGroups>

Returns: a L<Paws::Shield::ListProtectionGroupsResponse> instance

Retrieves ProtectionGroup objects for the account. You can retrieve all
protection groups or you can provide filtering criteria and retrieve
just the subset of protection groups that match the criteria.


=head2 ListProtections

=over

=item [InclusionFilters => L<Paws::Shield::InclusionProtectionFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListProtections>

Returns: a L<Paws::Shield::ListProtectionsResponse> instance

Retrieves Protection objects for the account. You can retrieve all
protections or you can provide filtering criteria and retrieve just the
subset of protections that match the criteria.


=head2 ListResourcesInProtectionGroup

=over

=item ProtectionGroupId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListResourcesInProtectionGroup>

Returns: a L<Paws::Shield::ListResourcesInProtectionGroupResponse> instance

Retrieves the resources that are included in the protection group.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Shield::ListTagsForResource>

Returns: a L<Paws::Shield::ListTagsForResourceResponse> instance

Gets information about Amazon Web Services tags for a specified Amazon
Resource Name (ARN) in Shield.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Shield::Tag>]


=back

Each argument is described in detail in: L<Paws::Shield::TagResource>

Returns: a L<Paws::Shield::TagResourceResponse> instance

Adds or updates tags for a resource in Shield.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Shield::UntagResource>

Returns: a L<Paws::Shield::UntagResourceResponse> instance

Removes tags from a resource in Shield.


=head2 UpdateApplicationLayerAutomaticResponse

=over

=item Action => L<Paws::Shield::ResponseAction>

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::UpdateApplicationLayerAutomaticResponse>

Returns: a L<Paws::Shield::UpdateApplicationLayerAutomaticResponseResponse> instance

Updates an existing Shield Advanced automatic application layer DDoS
mitigation configuration for the specified resource.


=head2 UpdateEmergencyContactSettings

=over

=item [EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateEmergencyContactSettings>

Returns: a L<Paws::Shield::UpdateEmergencyContactSettingsResponse> instance

Updates the details of the list of email addresses and phone numbers
that the Shield Response Team (SRT) can use to contact you if you have
proactive engagement enabled, for escalations to the SRT and to
initiate proactive customer support.


=head2 UpdateProtectionGroup

=over

=item Aggregation => Str

=item Pattern => Str

=item ProtectionGroupId => Str

=item [Members => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateProtectionGroup>

Returns: a L<Paws::Shield::UpdateProtectionGroupResponse> instance

Updates an existing protection group. A protection group is a grouping
of protected resources so they can be handled as a collective. This
resource grouping improves the accuracy of detection and reduces false
positives.


=head2 UpdateSubscription

=over

=item [AutoRenew => Str]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateSubscription>

Returns: a L<Paws::Shield::UpdateSubscriptionResponse> instance

Updates the details of an existing subscription. Only enter values for
parameters you want to change. Empty parameters are not updated.

For accounts that are members of an Organizations organization, Shield
Advanced subscriptions are billed against the organization's payer
account, regardless of whether the payer account itself is subscribed.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAttacks(sub { },[EndTime => L<Paws::Shield::TimeRange>, MaxResults => Int, NextToken => Str, ResourceArns => ArrayRef[Str|Undef], StartTime => L<Paws::Shield::TimeRange>])

=head2 ListAllAttacks([EndTime => L<Paws::Shield::TimeRange>, MaxResults => Int, NextToken => Str, ResourceArns => ArrayRef[Str|Undef], StartTime => L<Paws::Shield::TimeRange>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttackSummaries, passing the object as the first parameter, and the string 'AttackSummaries' as the second parameter 

If not, it will return a a L<Paws::Shield::ListAttacksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtections(sub { },[InclusionFilters => L<Paws::Shield::InclusionProtectionFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllProtections([InclusionFilters => L<Paws::Shield::InclusionProtectionFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Protections, passing the object as the first parameter, and the string 'Protections' as the second parameter 

If not, it will return a a L<Paws::Shield::ListProtectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

