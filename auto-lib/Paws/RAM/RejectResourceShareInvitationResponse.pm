
package Paws::RAM::RejectResourceShareInvitationResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShareInvitation => (is => 'ro', isa => 'Paws::RAM::ResourceShareInvitation', traits => ['NameInRequest'], request_name => 'resourceShareInvitation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::RejectResourceShareInvitationResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency identifier associated with this request. If you want to
repeat the same operation in an idempotent manner then you must include
this value in the C<clientToken> request parameter of that later call.
All other parameters must also have the same values that you used in
the first call.


=head2 ResourceShareInvitation => L<Paws::RAM::ResourceShareInvitation>

An object that contains the details about the rejected invitation.


=head2 _request_id => Str


=cut

