
package Paws::KMS::GenerateDataKeyWithoutPlaintext;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeySpec => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKeyWithoutPlaintext');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyWithoutPlaintextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyWithoutPlaintext - Arguments for method GenerateDataKeyWithoutPlaintext on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKeyWithoutPlaintext on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateDataKeyWithoutPlaintext.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKeyWithoutPlaintext.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
 # To generate an encrypted data key
 # The following example generates an encrypted copy of a 256-bit symmetric data
 # encryption key (data key). The data key is encrypted with the specified KMS
 # key.
    my $GenerateDataKeyWithoutPlaintextResponse =
      $kms->GenerateDataKeyWithoutPlaintext(
      'KeyId'   => 'alias/ExampleAlias',
      'KeySpec' => 'AES_256'
      );

    # Results:
    my $CiphertextBlob =
      $GenerateDataKeyWithoutPlaintextResponse->CiphertextBlob;
    my $KeyId = $GenerateDataKeyWithoutPlaintextResponse->KeyId;

    # Returns a L<Paws::KMS::GenerateDataKeyWithoutPlaintextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateDataKeyWithoutPlaintext>

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

The length of the data key. Use C<AES_128> to generate a 128-bit
symmetric key, or C<AES_256> to generate a 256-bit symmetric key.

Valid values are: C<"AES_256">, C<"AES_128">

=head2 NumberOfBytes => Int

The length of the data key in bytes. For example, use the value 64 to
generate a 512-bit data key (64 bytes is 512 bits). For common key
lengths (128-bit and 256-bit symmetric keys), we recommend that you use
the C<KeySpec> field instead of this one.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataKeyWithoutPlaintext in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

