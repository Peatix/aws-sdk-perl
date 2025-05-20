
package Paws::ConnectCases::CreateCaseRuleResponse;
  use Moose;
  has CaseRuleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseRuleArn', required => 1);
  has CaseRuleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseRuleId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateCaseRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRuleArn => Str

The Amazon Resource Name (ARN) of a case rule.


=head2 B<REQUIRED> CaseRuleId => Str

Unique identifier of a case rule.


=head2 _request_id => Str


=cut

