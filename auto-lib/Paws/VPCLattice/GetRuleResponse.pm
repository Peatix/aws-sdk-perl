
package Paws::VPCLattice::GetRuleResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'action');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDefault');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', traits => ['NameInRequest'], request_name => 'match');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetRuleResponse

=head1 ATTRIBUTES


=head2 Action => L<Paws::VPCLattice::RuleAction>

The action for the default rule.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the listener.


=head2 CreatedAt => Str

The date and time that the listener rule was created, in ISO-8601
format.


=head2 Id => Str

The ID of the listener.


=head2 IsDefault => Bool

Indicates whether this is the default rule.


=head2 LastUpdatedAt => Str

The date and time that the listener rule was last updated, in ISO-8601
format.


=head2 Match => L<Paws::VPCLattice::RuleMatch>

The rule match.


=head2 Name => Str

The name of the listener.


=head2 Priority => Int

The priority level for the specified rule.


=head2 _request_id => Str


=cut

