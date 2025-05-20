
package Paws::WAFV2::GetWebACLResponse;
  use Moose;
  has ApplicationIntegrationURL => (is => 'ro', isa => 'Str');
  has LockToken => (is => 'ro', isa => 'Str');
  has WebACL => (is => 'ro', isa => 'Paws::WAFV2::WebACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetWebACLResponse

=head1 ATTRIBUTES


=head2 ApplicationIntegrationURL => Str

The URL to use in SDK integrations with Amazon Web Services managed
rule groups. For example, you can use the integration SDKs with the
account takeover prevention managed rule group
C<AWSManagedRulesATPRuleSet> and the account creation fraud prevention
managed rule group C<AWSManagedRulesACFPRuleSet>. This is only
populated if you are using a rule group in your web ACL that integrates
with your applications in this way. For more information, see WAF
client application integration
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the I<WAF Developer Guide>.


=head2 LockToken => Str

A token used for optimistic locking. WAF returns a token to your C<get>
and C<list> requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like C<update> and C<delete>. WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another C<get>, and use the new token returned by that operation.


=head2 WebACL => L<Paws::WAFV2::WebACL>

The web ACL specification. You can modify the settings in this web ACL
and use it to update this web ACL or create a new one.


=head2 _request_id => Str


=cut

1;