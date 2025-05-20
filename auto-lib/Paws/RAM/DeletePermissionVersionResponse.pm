
package Paws::RAM::DeletePermissionVersionResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionStatus');
  has ReturnValue => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'returnValue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DeletePermissionVersionResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency identifier associated with this request. If you want to
repeat the same operation in an idempotent manner then you must include
this value in the C<clientToken> request parameter of that later call.
All other parameters must also have the same values that you used in
the first call.


=head2 PermissionStatus => Str

This operation is performed asynchronously, and this response parameter
indicates the current status.

Valid values are: C<"ATTACHABLE">, C<"UNATTACHABLE">, C<"DELETING">, C<"DELETED">
=head2 ReturnValue => Bool

A boolean value that indicates whether the operation is successful.


=head2 _request_id => Str


=cut

