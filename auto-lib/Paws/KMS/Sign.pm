
package Paws::KMS::Sign;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str');
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Sign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::SignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Sign - Arguments for method Sign on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Sign on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Sign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Sign.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
 # To digitally sign a message with an asymmetric KMS key.
 # This operation uses the private key in an asymmetric elliptic curve (ECC) KMS
 # key to generate a digital signature for a given message.
    my $SignResponse = $kms->Sign(
      'KeyId'            => 'alias/ECC_signing_key',
      'Message'          => '<message to be signed>',
      'MessageType'      => 'RAW',
      'SigningAlgorithm' => 'ECDSA_SHA_384'
    );

    # Results:
    my $KeyId            = $SignResponse->KeyId;
    my $Signature        = $SignResponse->Signature;
    my $SigningAlgorithm = $SignResponse->SigningAlgorithm;

    # Returns a L<Paws::KMS::SignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Sign>

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> KeyId => Str

Identifies an asymmetric KMS key. KMS uses the private key in the
asymmetric KMS key to sign the message. The C<KeyUsage> type of the KMS
key must be C<SIGN_VERIFY>. To find the C<KeyUsage> of a KMS key, use
the DescribeKey operation.

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



=head2 B<REQUIRED> Message => Str

Specifies the message or message digest to sign. Messages can be 0-4096
bytes. To sign a larger message, provide a message digest.

If you provide a message digest, use the C<DIGEST> value of
C<MessageType> to prevent the digest from being hashed again while
signing.



=head2 MessageType => Str

Tells KMS whether the value of the C<Message> parameter should be
hashed as part of the signing algorithm. Use C<RAW> for unhashed
messages; use C<DIGEST> for message digests, which are already hashed.

When the value of C<MessageType> is C<RAW>, KMS uses the standard
signing algorithm, which begins with a hash function. When the value is
C<DIGEST>, KMS skips the hashing step in the signing algorithm.

Use the C<DIGEST> value only when the value of the C<Message> parameter
is a message digest. If you use the C<DIGEST> value with an unhashed
message, the security of the signing operation can be compromised.

When the value of C<MessageType>is C<DIGEST>, the length of the
C<Message> value must match the length of hashed messages for the
specified signing algorithm.

You can submit a message digest and omit the C<MessageType> or specify
C<RAW> so the digest is hashed again while signing. However, this can
cause verification failures when verifying with a system that assumes a
single hash.

The hashing algorithm in that C<Sign> uses is based on the
C<SigningAlgorithm> value.

=over

=item *

Signing algorithms that end in SHA_256 use the SHA_256 hashing
algorithm.

=item *

Signing algorithms that end in SHA_384 use the SHA_384 hashing
algorithm.

=item *

Signing algorithms that end in SHA_512 use the SHA_512 hashing
algorithm.

=item *

SM2DSA uses the SM3 hashing algorithm. For details, see Offline
verification with SM2 key pairs
(https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification).

=back


Valid values are: C<"RAW">, C<"DIGEST">

=head2 B<REQUIRED> SigningAlgorithm => Str

Specifies the signing algorithm to use when signing the message.

Choose an algorithm that is compatible with the type and size of the
specified asymmetric KMS key. When signing with RSA key pairs,
RSASSA-PSS algorithms are preferred. We include RSASSA-PKCS1-v1_5
algorithms for compatibility with existing applications.

Valid values are: C<"RSASSA_PSS_SHA_256">, C<"RSASSA_PSS_SHA_384">, C<"RSASSA_PSS_SHA_512">, C<"RSASSA_PKCS1_V1_5_SHA_256">, C<"RSASSA_PKCS1_V1_5_SHA_384">, C<"RSASSA_PKCS1_V1_5_SHA_512">, C<"ECDSA_SHA_256">, C<"ECDSA_SHA_384">, C<"ECDSA_SHA_512">, C<"SM2DSA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Sign in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

