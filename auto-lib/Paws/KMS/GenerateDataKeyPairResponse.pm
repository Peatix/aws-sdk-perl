
package Paws::KMS::GenerateDataKeyPairResponse;
  use Moose;
  has CiphertextForRecipient => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyPairSpec => (is => 'ro', isa => 'Str');
  has PrivateKeyCiphertextBlob => (is => 'ro', isa => 'Str');
  has PrivateKeyPlaintext => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyPairResponse

=head1 ATTRIBUTES


=head2 CiphertextForRecipient => Str

The plaintext private data key encrypted with the public key from the
Nitro enclave. This ciphertext can be decrypted only by using a private
key in the Nitro enclave.

This field is included in the response only when the C<Recipient>
parameter in the request includes a valid attestation document from an
Amazon Web Services Nitro enclave. For information about the
interaction between KMS and Amazon Web Services Nitro Enclaves, see How
Amazon Web Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.


=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the KMS key that encrypted the private key.


=head2 KeyPairSpec => Str

The type of data key pair that was generated.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SM2">
=head2 PrivateKeyCiphertextBlob => Str

The encrypted copy of the private key. When you use the HTTP API or the
Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
not Base64-encoded.


=head2 PrivateKeyPlaintext => Str

The plaintext copy of the private key. When you use the HTTP API or the
Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
not Base64-encoded.

If the response includes the C<CiphertextForRecipient> field, the
C<PrivateKeyPlaintext> field is null or empty.


=head2 PublicKey => Str

The public key (in plaintext). When you use the HTTP API or the Amazon
Web Services CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded.


=head2 _request_id => Str


=cut

1;