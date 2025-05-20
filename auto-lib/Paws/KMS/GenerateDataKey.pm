
package Paws::KMS::GenerateDataKey;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeySpec => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');
  has Recipient => (is => 'ro', isa => 'Paws::KMS::RecipientInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKey - Arguments for method GenerateDataKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateDataKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
# To generate a data key
# The following example generates a 256-bit symmetric data encryption key (data
# key) in two formats. One is the unencrypted (plainext) data key, and the other
# is the data key encrypted with the specified KMS key.
    my $GenerateDataKeyResponse = $kms->GenerateDataKey(
      'KeyId'   => 'alias/ExampleAlias',
      'KeySpec' => 'AES_256'
    );

    # Results:
    my $CiphertextBlob = $GenerateDataKeyResponse->CiphertextBlob;
    my $KeyId          = $GenerateDataKeyResponse->KeyId;
    my $Plaintext      = $GenerateDataKeyResponse->Plaintext;

    # Returns a L<Paws::KMS::GenerateDataKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateDataKey>

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
data key.

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

Specifies the symmetric encryption KMS key that encrypts the data key.
You cannot specify an asymmetric KMS key or a KMS key in a custom key
store. To get the type and origin of your KMS key, use the DescribeKey
operation.

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



=head2 KeySpec => Str

Specifies the length of the data key. Use C<AES_128> to generate a
128-bit symmetric key, or C<AES_256> to generate a 256-bit symmetric
key.

You must specify either the C<KeySpec> or the C<NumberOfBytes>
parameter (but not both) in every C<GenerateDataKey> request.

Valid values are: C<"AES_256">, C<"AES_128">

=head2 NumberOfBytes => Int

Specifies the length of the data key in bytes. For example, use the
value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
128-bit (16-byte) and 256-bit (32-byte) data keys, use the C<KeySpec>
parameter.

You must specify either the C<KeySpec> or the C<NumberOfBytes>
parameter (but not both) in every C<GenerateDataKey> request.



=head2 Recipient => L<Paws::KMS::RecipientInfo>

A signed attestation document
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc)
from an Amazon Web Services Nitro enclave and the encryption algorithm
to use with the enclave's public key. The only valid encryption
algorithm is C<RSAES_OAEP_SHA_256>.

This parameter only supports attestation documents for Amazon Web
Services Nitro Enclaves. To include this parameter, use the Amazon Web
Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK.

When you use this parameter, instead of returning the plaintext data
key, KMS encrypts the plaintext data key under the public key in the
attestation document, and returns the resulting ciphertext in the
C<CiphertextForRecipient> field in the response. This ciphertext can be
decrypted only with the private key in the enclave. The
C<CiphertextBlob> field in the response contains a copy of the data key
encrypted under the KMS key specified by the C<KeyId> parameter. The
C<Plaintext> field in the response is null or empty.

For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see How Amazon Web Services Nitro Enclaves
uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

