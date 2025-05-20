
package Paws::VPCLattice::CreateRuleResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'action');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', traits => ['NameInRequest'], request_name => 'match');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateRuleResponse

=head1 ATTRIBUTES


=head2 Action => L<Paws::VPCLattice::RuleAction>

The rule action.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the rule.


=head2 Id => Str

The ID of the rule.


=head2 Match => L<Paws::VPCLattice::RuleMatch>

The rule match. The C<RuleMatch> must be an C<HttpMatch>. This means
that the rule should be an exact match on HTTP constraints which are
made up of the HTTP method, path, and header.


=head2 Name => Str

The name of the rule.


=head2 Priority => Int

The priority assigned to the rule. The lower the priority number the
higher the priority.


=head2 _request_id => Str


=cut

