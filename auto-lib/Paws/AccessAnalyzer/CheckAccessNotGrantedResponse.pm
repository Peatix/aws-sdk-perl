
package Paws::AccessAnalyzer::CheckAccessNotGrantedResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::ReasonSummary]', traits => ['NameInRequest'], request_name => 'reasons');
  has Result => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'result');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckAccessNotGrantedResponse

=head1 ATTRIBUTES


=head2 Message => Str

The message indicating whether the specified access is allowed.


=head2 Reasons => ArrayRef[L<Paws::AccessAnalyzer::ReasonSummary>]

A description of the reasoning of the result.


=head2 Result => Str

The result of the check for whether the access is allowed. If the
result is C<PASS>, the specified policy doesn't allow any of the
specified permissions in the access object. If the result is C<FAIL>,
the specified policy might allow some or all of the permissions in the
access object.

Valid values are: C<"PASS">, C<"FAIL">
=head2 _request_id => Str


=cut

