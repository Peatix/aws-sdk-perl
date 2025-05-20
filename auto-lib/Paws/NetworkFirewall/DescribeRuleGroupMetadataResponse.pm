
package Paws::NetworkFirewall::DescribeRuleGroupMetadataResponse;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has RuleGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has RuleGroupName => (is => 'ro', isa => 'Str', required => 1);
  has StatefulRuleOptions => (is => 'ro', isa => 'Paws::NetworkFirewall::StatefulRuleOptions');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeRuleGroupMetadataResponse

=head1 ATTRIBUTES


=head2 Capacity => Int

The maximum operating resources that this rule group can use. Rule
group capacity is fixed at creation. When you update a rule group, you
are limited to this capacity. When you reference a rule group from a
firewall policy, Network Firewall reserves this capacity for the rule
group.

You can retrieve the capacity that would be required for a rule group
before you create the rule group by calling CreateRuleGroup with
C<DryRun> set to C<TRUE>.


=head2 Description => Str

Returns the metadata objects for the specified rule group.


=head2 LastModifiedTime => Str

The last time that the rule group was changed.


=head2 B<REQUIRED> RuleGroupArn => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.

You must specify the ARN or the name, and you can specify both.


=head2 B<REQUIRED> RuleGroupName => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.

You must specify the ARN or the name, and you can specify both.


=head2 StatefulRuleOptions => L<Paws::NetworkFirewall::StatefulRuleOptions>




=head2 Type => Str

Indicates whether the rule group is stateless or stateful. If the rule
group is stateless, it contains stateless rules. If it is stateful, it
contains stateful rules.

This setting is required for requests that do not include the
C<RuleGroupARN>.

Valid values are: C<"STATELESS">, C<"STATEFUL">
=head2 _request_id => Str


=cut

1;