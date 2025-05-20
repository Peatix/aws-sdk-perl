
package Paws::KMS::GenerateRandomResponse;
  use Moose;
  has CiphertextForRecipient => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandomResponse

=head1 ATTRIBUTES


=head2 CiphertextForRecipient => Str

The plaintext random bytes encrypted with the public key from the Nitro
enclave. This ciphertext can be decrypted only by using a private key
in the Nitro enclave.

This field is included in the response only when the C<Recipient>
parameter in the request includes a valid attestation document from an
Amazon Web Services Nitro enclave. For information about the
interaction between KMS and Amazon Web Services Nitro Enclaves, see How
Amazon Web Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.


=head2 Plaintext => Str

The random byte string. When you use the HTTP API or the Amazon Web
Services CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded.

If the response includes the C<CiphertextForRecipient> field, the
C<Plaintext> field is null or empty.


=head2 _request_id => Str


=cut

1;