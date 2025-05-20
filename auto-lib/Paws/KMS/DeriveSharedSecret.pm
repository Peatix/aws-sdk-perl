
package Paws::KMS::DeriveSharedSecret;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyAgreementAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PublicKey => (is => 'ro', isa => 'Str', required => 1);
  has Recipient => (is => 'ro', isa => 'Paws::KMS::RecipientInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeriveSharedSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DeriveSharedSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DeriveSharedSecret - Arguments for method DeriveSharedSecret on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeriveSharedSecret on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DeriveSharedSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeriveSharedSecret.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $DeriveSharedSecretResponse = $kms->DeriveSharedSecret(
      KeyAgreementAlgorithm => 'ECDH',
      KeyId                 => 'MyKeyIdType',
      PublicKey             => 'BlobPublicKeyType',
      DryRun                => 1,                     # OPTIONAL
      GrantTokens           => [
        'MyGrantTokenType', ...                       # min: 1, max: 8192
      ],    # OPTIONAL
      Recipient => {
        AttestationDocument =>
          'BlobAttestationDocumentType',    # min: 1, max: 262144; OPTIONAL
        KeyEncryptionAlgorithm =>
          'RSAES_OAEP_SHA_256',    # values: RSAES_OAEP_SHA_256; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CiphertextForRecipient =
      $DeriveSharedSecretResponse->CiphertextForRecipient;
    my $KeyAgreementAlgorithm =
      $DeriveSharedSecretResponse->KeyAgreementAlgorithm;
    my $KeyId        = $DeriveSharedSecretResponse->KeyId;
    my $KeyOrigin    = $DeriveSharedSecretResponse->KeyOrigin;
    my $SharedSecret = $DeriveSharedSecretResponse->SharedSecret;

    # Returns a L<Paws::KMS::DeriveSharedSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DeriveSharedSecret>

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



=head2 B<REQUIRED> KeyAgreementAlgorithm => Str

Specifies the key agreement algorithm used to derive the shared secret.
The only valid value is C<ECDH>.

Valid values are: C<"ECDH">

=head2 B<REQUIRED> KeyId => Str

Identifies an asymmetric NIST-recommended ECC or SM2 (China Regions
only) KMS key. KMS uses the private key in the specified key pair to
derive the shared secret. The key usage of the KMS key must be
C<KEY_AGREEMENT>. To find the C<KeyUsage> of a KMS key, use the
DescribeKey operation.

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



=head2 B<REQUIRED> PublicKey => Str

Specifies the public key in your peer's NIST-recommended elliptic curve
(ECC) or SM2 (China Regions only) key pair.

The public key must be a DER-encoded X.509 public key, also known as
C<SubjectPublicKeyInfo> (SPKI), as defined in RFC 5280
(https://tools.ietf.org/html/rfc5280).

GetPublicKey returns the public key of an asymmetric KMS key pair in
the required DER-encoded format.

If you use Amazon Web Services CLI version 1
(https://docs.aws.amazon.com/cli/v1/userguide/cli-chap-welcome.html),
you must provide the DER-encoded X.509 public key in a file. Otherwise,
the Amazon Web Services CLI Base64-encodes the public key a second
time, resulting in a C<ValidationException>.

You can specify the public key as binary data in a file using fileb
(C<fileb://E<lt>path-to-fileE<gt>>) or in-line using a Base64 encoded
string.



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
the shared secret, KMS encrypts the plaintext shared secret under the
public key in the attestation document, and returns the resulting
ciphertext in the C<CiphertextForRecipient> field in the response. This
ciphertext can be decrypted only with the private key in the enclave.
The C<CiphertextBlob> field in the response contains the encrypted
shared secret derived from the KMS key specified by the C<KeyId>
parameter and public key specified by the C<PublicKey> parameter. The
C<SharedSecret> field in the response is null or empty.

For information about the interaction between KMS and Amazon Web
Services Nitro Enclaves, see How Amazon Web Services Nitro Enclaves
uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeriveSharedSecret in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

