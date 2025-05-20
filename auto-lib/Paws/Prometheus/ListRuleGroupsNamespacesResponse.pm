
package Paws::Prometheus::ListRuleGroupsNamespacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RuleGroupsNamespaces => (is => 'ro', isa => 'ArrayRef[Paws::Prometheus::RuleGroupsNamespaceSummary]', traits => ['NameInRequest'], request_name => 'ruleGroupsNamespaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListRuleGroupsNamespacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are more results to retrieve. You can use
this token as part of your next C<ListRuleGroupsNamespaces> request to
retrieve those results.


=head2 B<REQUIRED> RuleGroupsNamespaces => ArrayRef[L<Paws::Prometheus::RuleGroupsNamespaceSummary>]

The returned list of rule groups namespaces.


=head2 _request_id => Str


=cut

