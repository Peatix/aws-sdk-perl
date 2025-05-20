
package Paws::AccessAnalyzer::CheckNoNewAccessResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::ReasonSummary]', traits => ['NameInRequest'], request_name => 'reasons');
  has Result => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'result');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckNoNewAccessResponse

=head1 ATTRIBUTES


=head2 Message => Str

The message indicating whether the updated policy allows new access.


=head2 Reasons => ArrayRef[L<Paws::AccessAnalyzer::ReasonSummary>]

A description of the reasoning of the result.


=head2 Result => Str

The result of the check for new access. If the result is C<PASS>, no
new access is allowed by the updated policy. If the result is C<FAIL>,
the updated policy might allow new access.

Valid values are: C<"PASS">, C<"FAIL">
=head2 _request_id => Str


=cut

