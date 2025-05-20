
package Paws::ConnectCases::BatchGetCaseRuleResponse;
  use Moose;
  has CaseRules => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::GetCaseRuleResponse]', traits => ['NameInRequest'], request_name => 'caseRules', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::CaseRuleError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BatchGetCaseRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRules => ArrayRef[L<Paws::ConnectCases::GetCaseRuleResponse>]

List of detailed case rule information.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::ConnectCases::CaseRuleError>]

List of case rule errors.


=head2 _request_id => Str


=cut

