
package Paws::Lambda::PutFunctionRecursionConfigResponse;
  use Moose;
  has RecursiveLoop => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutFunctionRecursionConfigResponse

=head1 ATTRIBUTES


=head2 RecursiveLoop => Str

The status of your function's recursive loop detection configuration.

When this value is set to C<Allow>and Lambda detects your function
being invoked as part of a recursive loop, it doesn't take any action.

When this value is set to C<Terminate> and Lambda detects your function
being invoked as part of a recursive loop, it stops your function being
invoked and notifies you.

Valid values are: C<"Allow">, C<"Terminate">
=head2 _request_id => Str


=cut

