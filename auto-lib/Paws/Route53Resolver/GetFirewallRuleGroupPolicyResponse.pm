
package Paws::Route53Resolver::GetFirewallRuleGroupPolicyResponse;
  use Moose;
  has FirewallRuleGroupPolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetFirewallRuleGroupPolicyResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupPolicy => Str

The Identity and Access Management (Amazon Web Services IAM) policy for
sharing the specified rule group. You can use the policy to share the
rule group using Resource Access Manager (RAM).


=head2 _request_id => Str


=cut

1;