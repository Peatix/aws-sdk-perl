
package Paws::SecurityIR::CloseCaseResponse;
  use Moose;
  has CaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseStatus');
  has ClosedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'closedDate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CloseCaseResponse

=head1 ATTRIBUTES


=head2 CaseStatus => Str

A response element providing responses for requests to CloseCase. This
element responds with the case status following the action.

Valid values are: C<"Submitted">, C<"Acknowledged">, C<"Detection and Analysis">, C<"Containment, Eradication and Recovery">, C<"Post-incident Activities">, C<"Ready to Close">, C<"Closed">
=head2 ClosedDate => Str

A response element providing responses for requests to CloseCase. This
element responds with the case closure date following the action.


=head2 _request_id => Str


=cut

