
package Paws::SecurityIR::CreateCaseResponse;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateCaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

A response element providing responses for requests to CreateCase. This
element responds with the case ID.


=head2 _request_id => Str


=cut

