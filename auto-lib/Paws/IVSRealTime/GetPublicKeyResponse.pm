
package Paws::IVSRealTime::GetPublicKeyResponse;
  use Moose;
  has PublicKey => (is => 'ro', isa => 'Paws::IVSRealTime::PublicKey', traits => ['NameInRequest'], request_name => 'publicKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetPublicKeyResponse

=head1 ATTRIBUTES


=head2 PublicKey => L<Paws::IVSRealTime::PublicKey>

The public key that is returned.


=head2 _request_id => Str


=cut

