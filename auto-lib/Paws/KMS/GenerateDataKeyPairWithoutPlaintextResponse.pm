
package Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyPairSpec => (is => 'ro', isa => 'Str');
  has PrivateKeyCiphertextBlob => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse

=head1 ATTRIBUTES


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


=head2 PublicKey => Str

The public key (in plaintext). When you use the HTTP API or the Amazon
Web Services CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded.


=head2 _request_id => Str


=cut

1;