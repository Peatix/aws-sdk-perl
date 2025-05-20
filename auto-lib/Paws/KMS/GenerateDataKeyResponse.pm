
package Paws::KMS::GenerateDataKeyResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has CiphertextForRecipient => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The encrypted copy of the data key. When you use the HTTP API or the
Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
not Base64-encoded.


=head2 CiphertextForRecipient => Str

The plaintext data key encrypted with the public key from the Nitro
enclave. This ciphertext can be decrypted only by using a private key
in the Nitro enclave.

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
of the KMS key that encrypted the data key.


=head2 Plaintext => Str

The plaintext data key. When you use the HTTP API or the Amazon Web
Services CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded. Use this data key to encrypt your data outside of KMS.
Then, remove it from memory as soon as possible.

If the response includes the C<CiphertextForRecipient> field, the
C<Plaintext> field is null or empty.


=head2 _request_id => Str


=cut

1;