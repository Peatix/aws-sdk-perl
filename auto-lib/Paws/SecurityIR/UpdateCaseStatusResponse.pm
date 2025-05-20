
package Paws::SecurityIR::UpdateCaseStatusResponse;
  use Moose;
  has CaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateCaseStatusResponse

=head1 ATTRIBUTES


=head2 CaseStatus => Str

Response element for UpdateCaseStatus showing the newly configured
status.

Valid values are: C<"Submitted">, C<"Detection and Analysis">, C<"Containment, Eradication and Recovery">, C<"Post-incident Activities">
=head2 _request_id => Str


=cut

