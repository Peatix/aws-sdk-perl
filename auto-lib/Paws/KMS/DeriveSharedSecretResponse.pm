
package Paws::KMS::DeriveSharedSecretResponse;
  use Moose;
  has CiphertextForRecipient => (is => 'ro', isa => 'Str');
  has KeyAgreementAlgorithm => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyOrigin => (is => 'ro', isa => 'Str');
  has SharedSecret => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DeriveSharedSecretResponse

=head1 ATTRIBUTES


=head2 CiphertextForRecipient => Str

The plaintext shared secret encrypted with the public key in the
attestation document.

This field is included in the response only when the C<Recipient>
parameter in the request includes a valid attestation document from an
Amazon Web Services Nitro enclave. For information about the
interaction between KMS and Amazon Web Services Nitro Enclaves, see How
Amazon Web Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.


=head2 KeyAgreementAlgorithm => Str

Identifies the key agreement algorithm used to derive the shared
secret.

Valid values are: C<"ECDH">
=head2 KeyId => Str

Identifies the KMS key used to derive the shared secret.


=head2 KeyOrigin => Str

The source of the key material for the specified KMS key.

When this value is C<AWS_KMS>, KMS created the key material. When this
value is C<EXTERNAL>, the key material was imported or the KMS key
doesn't have any key material.

The only valid values for DeriveSharedSecret are C<AWS_KMS> and
C<EXTERNAL>. DeriveSharedSecret does not support KMS keys with a
C<KeyOrigin> value of C<AWS_CLOUDHSM> or C<EXTERNAL_KEY_STORE>.

Valid values are: C<"AWS_KMS">, C<"EXTERNAL">, C<"AWS_CLOUDHSM">, C<"EXTERNAL_KEY_STORE">
=head2 SharedSecret => Str

The raw secret derived from the specified key agreement algorithm,
private key in the asymmetric KMS key, and your peer's public key.

If the response includes the C<CiphertextForRecipient> field, the
C<SharedSecret> field is null or empty.


=head2 _request_id => Str


=cut

1;