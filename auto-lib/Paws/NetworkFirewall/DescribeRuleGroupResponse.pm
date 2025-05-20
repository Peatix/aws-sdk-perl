
package Paws::NetworkFirewall::DescribeRuleGroupResponse;
  use Moose;
  has RuleGroup => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleGroup');
  has RuleGroupResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleGroupResponse', required => 1);
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeRuleGroupResponse

=head1 ATTRIBUTES


=head2 RuleGroup => L<Paws::NetworkFirewall::RuleGroup>

The object that defines the rules in a rule group. This, along with
RuleGroupResponse, define the rule group. You can retrieve all objects
for a rule group by calling DescribeRuleGroup.

Network Firewall uses a rule group to inspect and control network
traffic. You define stateless rule groups to inspect individual packets
and you define stateful rule groups to inspect packets in the context
of their traffic flow.

To use a rule group, you include it by reference in an Network Firewall
firewall policy, then you use the policy in a firewall. You can
reference a rule group from more than one firewall policy, and you can
use a firewall policy in more than one firewall.


=head2 B<REQUIRED> RuleGroupResponse => L<Paws::NetworkFirewall::RuleGroupResponse>

The high-level properties of a rule group. This, along with the
RuleGroup, define the rule group. You can retrieve all objects for a
rule group by calling DescribeRuleGroup.


=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the rule group. The token marks the state
of the rule group resource at the time of the request.

To make changes to the rule group, you provide the token in your
request. Network Firewall uses the token to ensure that the rule group
hasn't changed since you last retrieved it. If it has changed, the
operation fails with an C<InvalidTokenException>. If this happens,
retrieve the rule group again to get a current copy of it with a
current token. Reapply your changes as needed, then try the operation
again using the new token.


=head2 _request_id => Str


=cut

1;