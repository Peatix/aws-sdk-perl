
package Paws::ConnectCases::CreateCaseResponse;
  use Moose;
  has CaseArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseArn', required => 1);
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateCaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseArn => Str

The Amazon Resource Name (ARN) of the case.


=head2 B<REQUIRED> CaseId => Str

A unique identifier of the case.


=head2 _request_id => Str


=cut

