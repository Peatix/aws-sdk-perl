
package Paws::Prometheus::DescribeRuleGroupsNamespaceResponse;
  use Moose;
  has RuleGroupsNamespace => (is => 'ro', isa => 'Paws::Prometheus::RuleGroupsNamespaceDescription', traits => ['NameInRequest'], request_name => 'ruleGroupsNamespace', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeRuleGroupsNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleGroupsNamespace => L<Paws::Prometheus::RuleGroupsNamespaceDescription>

The information about the rule groups namespace.


=head2 _request_id => Str


=cut

