
package Paws::VPCLattice::UpdateRuleResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'action');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDefault');
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', traits => ['NameInRequest'], request_name => 'match');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateRuleResponse

=head1 ATTRIBUTES


=head2 Action => L<Paws::VPCLattice::RuleAction>

Information about the action for the specified listener rule.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the listener.


=head2 Id => Str

The ID of the listener.


=head2 IsDefault => Bool

Indicates whether this is the default rule.


=head2 Match => L<Paws::VPCLattice::RuleMatch>

The rule match.


=head2 Name => Str

The name of the listener.


=head2 Priority => Int

The rule priority.


=head2 _request_id => Str


=cut

