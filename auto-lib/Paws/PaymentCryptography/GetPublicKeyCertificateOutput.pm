
package Paws::PaymentCryptography::GetPublicKeyCertificateOutput;
  use Moose;
  has KeyCertificate => (is => 'ro', isa => 'Str', required => 1);
  has KeyCertificateChain => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetPublicKeyCertificateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyCertificate => Str

The public key component of the asymmetric key pair in a certificate
PEM format (base64 encoded). It is signed by the root certificate
authority (CA). The certificate expires in 90 days.


=head2 B<REQUIRED> KeyCertificateChain => Str

The root certificate authority (CA) that signed the public key
certificate in PEM format (base64 encoded) of the asymmetric key pair.


=head2 _request_id => Str


=cut

1;