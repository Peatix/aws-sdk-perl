
package Paws::SSM::GetAccessTokenResponse;
  use Moose;
  has AccessRequestStatus => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Paws::SSM::Credentials');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetAccessTokenResponse

=head1 ATTRIBUTES


=head2 AccessRequestStatus => Str

The status of the access request.

Valid values are: C<"Approved">, C<"Rejected">, C<"Revoked">, C<"Expired">, C<"Pending">
=head2 Credentials => L<Paws::SSM::Credentials>

The temporary security credentials which can be used to start
just-in-time node access sessions.


=head2 _request_id => Str


=cut

1;