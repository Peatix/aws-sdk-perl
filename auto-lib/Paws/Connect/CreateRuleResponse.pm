
package Paws::Connect::CreateRuleResponse;
  use Moose;
  has RuleArn => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleArn => Str

The Amazon Resource Name (ARN) of the rule.


=head2 B<REQUIRED> RuleId => Str

A unique identifier for the rule.


=head2 _request_id => Str


=cut

