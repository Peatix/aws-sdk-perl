
package Paws::AccessAnalyzer::CheckNoPublicAccessResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::ReasonSummary]', traits => ['NameInRequest'], request_name => 'reasons');
  has Result => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'result');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckNoPublicAccessResponse

=head1 ATTRIBUTES


=head2 Message => Str

The message indicating whether the specified policy allows public
access to resources.


=head2 Reasons => ArrayRef[L<Paws::AccessAnalyzer::ReasonSummary>]

A list of reasons why the specified resource policy grants public
access for the resource type.


=head2 Result => Str

The result of the check for public access to the specified resource
type. If the result is C<PASS>, the policy doesn't allow public access
to the specified resource type. If the result is C<FAIL>, the policy
might allow public access to the specified resource type.

Valid values are: C<"PASS">, C<"FAIL">
=head2 _request_id => Str


=cut

