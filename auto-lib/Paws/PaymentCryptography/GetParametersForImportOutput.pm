
package Paws::PaymentCryptography::GetParametersForImportOutput;
  use Moose;
  has ImportToken => (is => 'ro', isa => 'Str', required => 1);
  has ParametersValidUntilTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeyAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeyCertificate => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeyCertificateChain => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetParametersForImportOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportToken => Str

The import token to initiate key import into Amazon Web Services
Payment Cryptography. The import token expires after 7 days. You can
use the same import token to import multiple keys to the same service
account.


=head2 B<REQUIRED> ParametersValidUntilTimestamp => Str

The validity period of the import token.


=head2 B<REQUIRED> WrappingKeyAlgorithm => Str

The algorithm of the wrapping key for use within TR-34 WrappedKeyBlock
or RSA WrappedKeyCryptogram.

Valid values are: C<"TDES_2KEY">, C<"TDES_3KEY">, C<"AES_128">, C<"AES_192">, C<"AES_256">, C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">
=head2 B<REQUIRED> WrappingKeyCertificate => Str

The wrapping key certificate in PEM format (base64 encoded) of the
wrapping key for use within the TR-34 key block. The certificate
expires in 7 days.


=head2 B<REQUIRED> WrappingKeyCertificateChain => Str

The Amazon Web Services Payment Cryptography root certificate authority
(CA) that signed the wrapping key certificate in PEM format (base64
encoded).


=head2 _request_id => Str


=cut

1;