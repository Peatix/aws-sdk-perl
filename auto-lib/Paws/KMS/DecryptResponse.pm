
package Paws::KMS::DecryptResponse;
  use Moose;
  has CiphertextForRecipient => (is => 'ro', isa => 'Str');
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DecryptResponse

=head1 ATTRIBUTES


=head2 CiphertextForRecipient => Str

The plaintext data encrypted with the public key in the attestation
document.

This field is included in the response only when the C<Recipient>
parameter in the request includes a valid attestation document from an
Amazon Web Services Nitro enclave. For information about the
interaction between KMS and Amazon Web Services Nitro Enclaves, see How
Amazon Web Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.


=head2 EncryptionAlgorithm => Str

The encryption algorithm that was used to decrypt the ciphertext.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">, C<"SM2PKE">
=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the KMS key that was used to decrypt the ciphertext.


=head2 Plaintext => Str

Decrypted plaintext data. When you use the HTTP API or the Amazon Web
Services CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded.

If the response includes the C<CiphertextForRecipient> field, the
C<Plaintext> field is null or empty.


=head2 _request_id => Str


=cut

1;