
package Paws::RAM::CreatePermissionVersionResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Permission => (is => 'ro', isa => 'Paws::RAM::ResourceSharePermissionDetail', traits => ['NameInRequest'], request_name => 'permission');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreatePermissionVersionResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency identifier associated with this request. If you want to
repeat the same operation in an idempotent manner then you must include
this value in the C<clientToken> request parameter of that later call.
All other parameters must also have the same values that you used in
the first call.


=head2 Permission => L<Paws::RAM::ResourceSharePermissionDetail>




=head2 _request_id => Str


=cut

