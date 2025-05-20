
package Paws::SecurityIR::UpdateResolverTypeResponse;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId', required => 1);
  has CaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseStatus');
  has ResolverType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolverType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateResolverTypeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Response element for UpdateResolver identifying the case ID being
updated.


=head2 CaseStatus => Str

Response element for UpdateResolver identifying the current status of
the case.

Valid values are: C<"Submitted">, C<"Acknowledged">, C<"Detection and Analysis">, C<"Containment, Eradication and Recovery">, C<"Post-incident Activities">, C<"Ready to Close">, C<"Closed">
=head2 ResolverType => Str

Response element for UpdateResolver identifying the current resolver of
the case.

Valid values are: C<"AWS">, C<"Self">
=head2 _request_id => Str


=cut

