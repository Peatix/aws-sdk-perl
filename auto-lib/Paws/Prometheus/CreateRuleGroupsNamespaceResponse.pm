
package Paws::Prometheus::CreateRuleGroupsNamespaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Paws::Prometheus::RuleGroupsNamespaceStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateRuleGroupsNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the new rule groups namespace.


=head2 B<REQUIRED> Name => Str

The name of the new rule groups namespace.


=head2 B<REQUIRED> Status => L<Paws::Prometheus::RuleGroupsNamespaceStatus>

A structure that returns the current status of the rule groups
namespace.


=head2 Tags => L<Paws::Prometheus::TagMap>

The list of tag keys and values that are associated with the namespace.


=head2 _request_id => Str


=cut

