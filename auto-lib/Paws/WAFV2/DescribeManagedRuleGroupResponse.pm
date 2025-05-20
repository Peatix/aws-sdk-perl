
package Paws::WAFV2::DescribeManagedRuleGroupResponse;
  use Moose;
  has AvailableLabels => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::LabelSummary]');
  has Capacity => (is => 'ro', isa => 'Int');
  has ConsumedLabels => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::LabelSummary]');
  has LabelNamespace => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::RuleSummary]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DescribeManagedRuleGroupResponse

=head1 ATTRIBUTES


=head2 AvailableLabels => ArrayRef[L<Paws::WAFV2::LabelSummary>]

The labels that one or more rules in this rule group add to matching
web requests. These labels are defined in the C<RuleLabels> for a Rule.


=head2 Capacity => Int

The web ACL capacity units (WCUs) required for this rule group.

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


=head2 ConsumedLabels => ArrayRef[L<Paws::WAFV2::LabelSummary>]

The labels that one or more rules in this rule group match against in
label match statements. These labels are defined in a
C<LabelMatchStatement> specification, in the Statement definition of a
rule.


=head2 LabelNamespace => Str

The label namespace prefix for this rule group. All labels added by
rules in this rule group have this prefix.

=over

=item *

The syntax for the label namespace prefix for a managed rule group is
the following:

C<awswaf:managed:E<lt>vendorE<gt>:E<lt>rule group nameE<gt>>:

=item *

When a rule with a label matches a web request, WAF adds the fully
qualified label to the request. A fully qualified label is made up of
the label namespace from the rule group or web ACL where the rule is
defined and the label from the rule, separated by a colon:

C<E<lt>label namespaceE<gt>:E<lt>label from ruleE<gt>>

=back



=head2 Rules => ArrayRef[L<Paws::WAFV2::RuleSummary>]




=head2 SnsTopicArn => Str

The Amazon resource name (ARN) of the Amazon Simple Notification
Service SNS topic that's used to provide notification of changes to the
managed rule group. You can subscribe to the SNS topic to receive
notifications when the managed rule group is modified, such as for new
versions and for version expiration. For more information, see the
Amazon Simple Notification Service Developer Guide
(https://docs.aws.amazon.com/sns/latest/dg/welcome.html).


=head2 VersionName => Str

The managed rule group's version.


=head2 _request_id => Str


=cut

1;