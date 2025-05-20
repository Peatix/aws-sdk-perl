
package Paws::RAM::ReplacePermissionAssociationsResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ReplacePermissionAssociationsWork => (is => 'ro', isa => 'Paws::RAM::ReplacePermissionAssociationsWork', traits => ['NameInRequest'], request_name => 'replacePermissionAssociationsWork');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ReplacePermissionAssociationsResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency identifier associated with this request. If you want to
repeat the same operation in an idempotent manner then you must include
this value in the C<clientToken> request parameter of that later call.
All other parameters must also have the same values that you used in
the first call.


=head2 ReplacePermissionAssociationsWork => L<Paws::RAM::ReplacePermissionAssociationsWork>

Specifies a data structure that you can use to track the asynchronous
tasks that RAM performs to complete this operation. You can use the
ListReplacePermissionAssociationsWork operation and pass the C<id>
value returned in this structure.


=head2 _request_id => Str


=cut

