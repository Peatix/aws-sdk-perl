
package Paws::KMS::ReEncrypt;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has DestinationEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has DestinationEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has DestinationKeyId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has SourceEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has SourceKeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReEncrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReEncryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncrypt - Arguments for method ReEncrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReEncrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ReEncrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReEncrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To reencrypt data
    # The following example reencrypts data with the specified KMS key.
    my $ReEncryptResponse = $kms->ReEncrypt(
      'CiphertextBlob'   => '<binary data>',
      'DestinationKeyId' => '0987dcba-09fe-87dc-65ba-ab0987654321'
    );

    # Results:
    my $CiphertextBlob = $ReEncryptResponse->CiphertextBlob;
    my $KeyId          = $ReEncryptResponse->KeyId;
    my $SourceKeyId    = $ReEncryptResponse->SourceKeyId;

    # Returns a L<Paws::KMS::ReEncryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ReEncrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext of the data to reencrypt.



=head2 DestinationEncryptionAlgorithm => Str

Specifies the encryption algorithm that KMS will use to reecrypt the
data after it has decrypted it. The default value,
C<SYMMETRIC_DEFAULT>, represents the encryption algorithm used for
symmetric encryption KMS keys.

This parameter is required only when the destination KMS key is an
asymmetric KMS key.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">, C<"SM2PKE">

=head2 DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies that encryption context to use when the reencrypting the
data.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

A destination encryption context is valid only when the destination KMS
key is a symmetric encryption KMS key. The standard ciphertext format
for asymmetric KMS keys does not include fields for metadata.

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



=head2 B<REQUIRED> DestinationKeyId => Str

A unique identifier for the KMS key that is used to reencrypt the data.
Specify a symmetric encryption KMS key or an asymmetric KMS key with a
C<KeyUsage> value of C<ENCRYPT_DECRYPT>. To find the C<KeyUsage> value
of a KMS key, use the DescribeKey operation.

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



=head2 DryRun => Bool

Checks if your request will succeed. C<DryRun> is an optional
parameter.

To learn more about how to use this parameter, see Testing your KMS API
calls
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html)
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



=head2 SourceEncryptionAlgorithm => Str

Specifies the encryption algorithm that KMS will use to decrypt the
ciphertext before it is reencrypted. The default value,
C<SYMMETRIC_DEFAULT>, represents the algorithm used for symmetric
encryption KMS keys.

Specify the same algorithm that was used to encrypt the ciphertext. If
you specify a different algorithm, the decrypt attempt fails.

This parameter is required only when the ciphertext was encrypted under
an asymmetric KMS key.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">, C<"SM2PKE">

=head2 SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context to use to decrypt the ciphertext.
Enter the same encryption context that was used to encrypt the
ciphertext.

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



=head2 SourceKeyId => Str

Specifies the KMS key that KMS will use to decrypt the ciphertext
before it is re-encrypted.

Enter a key ID of the KMS key that was used to encrypt the ciphertext.
If you identify a different KMS key, the C<ReEncrypt> operation throws
an C<IncorrectKeyException>.

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReEncrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

