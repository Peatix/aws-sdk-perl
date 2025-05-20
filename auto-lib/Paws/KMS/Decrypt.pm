
package Paws::KMS::Decrypt;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str');
  has Recipient => (is => 'ro', isa => 'Paws::KMS::RecipientInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Decrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DecryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Decrypt - Arguments for method Decrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Decrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Decrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Decrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To decrypt data
    # The following example decrypts data that was encrypted with a KMS key.
    my $DecryptResponse = $kms->Decrypt(
      'CiphertextBlob' => '<binary data>',
      'KeyId'          =>
'arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab'
    );

    # Results:
    my $KeyId     = $DecryptResponse->KeyId;
    my $Plaintext = $DecryptResponse->Plaintext;

    # Returns a L<Paws::KMS::DecryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Decrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext to be decrypted. The blob includes metadata.



=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
in the I<Key Management Service Developer Guide>.



=head2 EncryptionAlgorithm => Str

Specifies the encryption algorithm that will be used to decrypt the
ciphertext. Specify the same algorithm that was used to encrypt the
data. If you specify a different algorithm, the C<Decrypt> operation
fails.

This parameter is required only when the ciphertext was encrypted under
an asymmetric KMS key. The default value, C<SYMMETRIC_DEFAULT>,
represents the only supported algorithm that is valid for symmetric
encryption KMS keys.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">, C<"SM2PKE">

=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context to use when decrypting the data. An
encryption context is valid only for cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
with a symmetric encryption KMS key. The standard asymmetric encryption
algorithms and HMAC algorithms that KMS uses do not support an
encryption context.

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



=head2 KeyId => Str

Specifies the KMS key that KMS uses to decrypt the ciphertext.

Enter a key ID of the KMS key that was used to encrypt the ciphertext.
If you identify a different KMS key, the C<Decrypt> operation throws an
C<IncorrectKeyException>.

This parameter is required only when the ciphertext was encrypted under
an asymmetric KMS key. If you used a symmetric encryption KMS key, KMS
can get the KMS key from metadata that it adds to the symmetric
ciphertext blob. However, it is always recommended as a best practice.
This practice ensures that you use the KMS key that you intend.

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



=head2 Recipient => L<Paws::KMS::RecipientInfo>

A signed attestation document
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-concepts.html#term-attestdoc)
from an Amazon Web Services Nitro enclave and the encryption algorithm
to use with the enclave's public key. The only valid encryption
algorithm is C<RSAES_OAEP_SHA_256>.

This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the Amazon Web
Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK.

When you use this parameter, instead of returning the plaintext data,
KMS encrypts the plaintext data with the public key in the attestation
document, and returns the resulting ciphertext in the
C<CiphertextForRecipient> field in the response. This ciphertext can be
decrypted only with the private key in the enclave. The C<Plaintext>
field in the response is null or empty.

For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see How Amazon Web Services Nitro Enclaves
uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Decrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

