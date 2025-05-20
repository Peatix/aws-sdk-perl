
package Paws::MailManager::GetRuleSetResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', required => 1);
  has LastModificationDate => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Rule]', required => 1);
  has RuleSetArn => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetId => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetRuleSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date of when then rule set was created.


=head2 B<REQUIRED> LastModificationDate => Str

The date of when the rule set was last modified.


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::MailManager::Rule>]

The rules contained in the rule set.


=head2 B<REQUIRED> RuleSetArn => Str

The Amazon Resource Name (ARN) of the rule set resource.


=head2 B<REQUIRED> RuleSetId => Str

The identifier of the rule set resource.


=head2 B<REQUIRED> RuleSetName => Str

A user-friendly name for the rule set resource.


=head2 _request_id => Str


=cut

1;