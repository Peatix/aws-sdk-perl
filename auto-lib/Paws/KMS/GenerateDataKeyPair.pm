
package Paws::KMS::GenerateDataKeyPair;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeyPairSpec => (is => 'ro', isa => 'Str', required => 1);
  has Recipient => (is => 'ro', isa => 'Paws::KMS::RecipientInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyPairResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyPair - Arguments for method GenerateDataKeyPair on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKeyPair on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateDataKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKeyPair.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
# To generate an RSA key pair for encryption and decryption
# This example generates an RSA data key pair for encryption and decryption. The
# operation returns a plaintext public key and private key, and a copy of the
# private key that is encrypted under a symmetric encryption KMS key that you
# specify.
    my $GenerateDataKeyPairResponse = $kms->GenerateDataKeyPair(
      'KeyId' =>
'arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab',
      'KeyPairSpec' => 'RSA_3072'
    );

    # Results:
    my $KeyId       = $GenerateDataKeyPairResponse->KeyId;
    my $KeyPairSpec = $GenerateDataKeyPairResponse->KeyPairSpec;
    my $PrivateKeyCiphertextBlob =
      $GenerateDataKeyPairResponse->PrivateKeyCiphertextBlob;
    my $PrivateKeyPlaintext = $GenerateDataKeyPairResponse->PrivateKeyPlaintext;
    my $PublicKey           = $GenerateDataKeyPairResponse->PublicKey;

    # Returns a L<Paws::KMS::GenerateDataKeyPairResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateDataKeyPair>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
in the I<Key Management Service Developer Guide>.



=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context that will be used when encrypting the
private key in the data key pair.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

An I<encryption context> is a collection of non-secret key-value pairs
that represent additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is supported only on operations with symmetric
encryption KMS keys. On operations with symmetric encryption KMS keys,
an encryption context is optional, but it is strongly recommended.

For more information, see Encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token)
and Using a grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Specifies the symmetric encryption KMS key that encrypts the private
key in the data key pair. You cannot specify an asymmetric KMS key or a
KMS key in a custom key store. To get the type and origin of your KMS
key, use the DescribeKey operation.

To specify a KMS key, use its key ID, key ARN, alias name, or alias
ARN. When using an alias name, prefix it with C<"alias/">. To specify a
KMS key in a different Amazon Web Services account, you must use the
key ARN or alias ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey. To get the alias name and alias ARN, use ListAliases.



=head2 B<REQUIRED> KeyPairSpec => Str

Determines the type of data key pair that is generated.

The KMS rule that restricts the use of asymmetric RSA and SM2 KMS keys
to encrypt and decrypt or to sign and verify (but not both), and the
rule that permits you to use ECC KMS keys only to sign and verify, are
not effective on data key pairs, which are used outside of KMS. The SM2
key spec is only available in China Regions.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SM2">

=head2 Recipient => L<Paws::KMS::RecipientInfo>

A signed attestation document
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc)
from an Amazon Web Services Nitro enclave and the encryption algorithm
to use with the enclave's public key. The only valid encryption
algorithm is C<RSAES_OAEP_SHA_256>.

This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To call DeriveSharedSecret for an Amazon Web
Services Nitro Enclaves, use the Amazon Web Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
to generate the attestation document and then use the Recipient
parameter from any Amazon Web Services SDK to provide the attestation
document for the enclave.

When you use this parameter, instead of returning a plaintext copy of
the private data key, KMS encrypts the plaintext private data key under
the public key in the attestation document, and returns the resulting
ciphertext in the C<CiphertextForRecipient> field in the response. This
ciphertext can be decrypted only with the private key in the enclave.
The C<CiphertextBlob> field in the response contains a copy of the
private data key encrypted under the KMS key specified by the C<KeyId>
parameter. The C<PrivateKeyPlaintext> field in the response is null or
empty.

For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see How Amazon Web Services Nitro Enclaves
uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataKeyPair in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

