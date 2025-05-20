
package Paws::KMS::GetPublicKeyResponse;
  use Moose;
  has CustomerMasterKeySpec => (is => 'ro', isa => 'Str');
  has EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyAgreementAlgorithms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeySpec => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');
  has SigningAlgorithms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetPublicKeyResponse

=head1 ATTRIBUTES


=head2 CustomerMasterKeySpec => Str

Instead, use the C<KeySpec> field in the C<GetPublicKey> response.

The C<KeySpec> and C<CustomerMasterKeySpec> fields have the same value.
We recommend that you use the C<KeySpec> field in your code. However,
to avoid breaking changes, KMS supports both fields.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">, C<"HMAC_224">, C<"HMAC_256">, C<"HMAC_384">, C<"HMAC_512">, C<"SM2">
=head2 EncryptionAlgorithms => ArrayRef[Str|Undef]

The encryption algorithms that KMS supports for this key.

This information is critical. If a public key encrypts data outside of
KMS by using an unsupported encryption algorithm, the ciphertext cannot
be decrypted.

This field appears in the response only when the C<KeyUsage> of the
public key is C<ENCRYPT_DECRYPT>.


=head2 KeyAgreementAlgorithms => ArrayRef[Str|Undef]

The key agreement algorithm used to derive a shared secret. This field
is present only when the KMS key has a C<KeyUsage> value of
C<KEY_AGREEMENT>.


=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the asymmetric KMS key from which the public key was downloaded.


=head2 KeySpec => Str

The type of the of the public key that was downloaded.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">, C<"HMAC_224">, C<"HMAC_256">, C<"HMAC_384">, C<"HMAC_512">, C<"SM2">
=head2 KeyUsage => Str

The permitted use of the public key. Valid values for asymmetric key
pairs are C<ENCRYPT_DECRYPT>, C<SIGN_VERIFY>, and C<KEY_AGREEMENT>.

This information is critical. For example, if a public key with
C<SIGN_VERIFY> key usage encrypts data outside of KMS, the ciphertext
cannot be decrypted.

Valid values are: C<"SIGN_VERIFY">, C<"ENCRYPT_DECRYPT">, C<"GENERATE_VERIFY_MAC">, C<"KEY_AGREEMENT">
=head2 PublicKey => Str

The exported public key.

The value is a DER-encoded X.509 public key, also known as
C<SubjectPublicKeyInfo> (SPKI), as defined in RFC 5280
(https://tools.ietf.org/html/rfc5280). When you use the HTTP API or the
Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
not Base64-encoded.


=head2 SigningAlgorithms => ArrayRef[Str|Undef]

The signing algorithms that KMS supports for this key.

This field appears in the response only when the C<KeyUsage> of the
public key is C<SIGN_VERIFY>.


=head2 _request_id => Str


=cut

1;