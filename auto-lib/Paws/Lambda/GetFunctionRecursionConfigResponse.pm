
package Paws::Lambda::GetFunctionRecursionConfigResponse;
  use Moose;
  has RecursiveLoop => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionRecursionConfigResponse

=head1 ATTRIBUTES


=head2 RecursiveLoop => Str

If your function's recursive loop detection configuration is C<Allow>,
Lambda doesn't take any action when it detects your function being
invoked as part of a recursive loop.

If your function's recursive loop detection configuration is
C<Terminate>, Lambda stops your function being invoked and notifies you
when it detects your function being invoked as part of a recursive
loop.

By default, Lambda sets your function's configuration to C<Terminate>.
You can update this configuration using the PutFunctionRecursionConfig
action.

Valid values are: C<"Allow">, C<"Terminate">
=head2 _request_id => Str


=cut

