
package Paws::PaymentCryptography::GetParametersForExportOutput;
  use Moose;
  has ExportToken => (is => 'ro', isa => 'Str', required => 1);
  has ParametersValidUntilTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has SigningKeyAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has SigningKeyCertificate => (is => 'ro', isa => 'Str', required => 1);
  has SigningKeyCertificateChain => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetParametersForExportOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportToken => Str

The export token to initiate key export from Amazon Web Services
Payment Cryptography. The export token expires after 7 days. You can
use the same export token to export multiple keys from the same service
account.


=head2 B<REQUIRED> ParametersValidUntilTimestamp => Str

The validity period of the export token.


=head2 B<REQUIRED> SigningKeyAlgorithm => Str

The algorithm of the signing key certificate for use in TR-34 key block
generation. C<RSA_2048> is the only signing key algorithm allowed.

Valid values are: C<"TDES_2KEY">, C<"TDES_3KEY">, C<"AES_128">, C<"AES_192">, C<"AES_256">, C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">
=head2 B<REQUIRED> SigningKeyCertificate => Str

The signing key certificate in PEM format (base64 encoded) of the
public key for signature within the TR-34 key block. The certificate
expires after 7 days.


=head2 B<REQUIRED> SigningKeyCertificateChain => Str

The root certificate authority (CA) that signed the signing key
certificate in PEM format (base64 encoded).


=head2 _request_id => Str


=cut

1;