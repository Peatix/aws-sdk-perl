
package Paws::KMS::GetParametersForImport;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has WrappingAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeySpec => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersForImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetParametersForImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetParametersForImport - Arguments for method GetParametersForImport on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersForImport on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GetParametersForImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersForImport.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To retrieve the public key and import token for a KMS key
    # The following example retrieves the public key and import token for the
    # specified KMS key.
    my $GetParametersForImportResponse = $kms->GetParametersForImport(
      'KeyId'             => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'WrappingAlgorithm' => 'RSAES_OAEP_SHA_1',
      'WrappingKeySpec'   => 'RSA_2048'
    );

    # Results:
    my $ImportToken       = $GetParametersForImportResponse->ImportToken;
    my $KeyId             = $GetParametersForImportResponse->KeyId;
    my $ParametersValidTo = $GetParametersForImportResponse->ParametersValidTo;
    my $PublicKey         = $GetParametersForImportResponse->PublicKey;

    # Returns a L<Paws::KMS::GetParametersForImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GetParametersForImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The identifier of the KMS key that will be associated with the imported
key material. The C<Origin> of the KMS key must be C<EXTERNAL>.

All KMS key types are supported, including multi-Region keys. However,
you cannot import key material into a KMS key in a custom key store.

Specify the key ID or key ARN of the KMS key.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.



=head2 B<REQUIRED> WrappingAlgorithm => Str

The algorithm you will use with the RSA public key (C<PublicKey>) in
the response to protect your key material during import. For more
information, see Select a wrapping algorithm in the I<Key Management
Service Developer Guide>.

For RSA_AES wrapping algorithms, you encrypt your key material with an
AES key that you generate, then encrypt your AES key with the RSA
public key from KMS. For RSAES wrapping algorithms, you encrypt your
key material directly with the RSA public key from KMS.

The wrapping algorithms that you can use depend on the type of key
material that you are importing. To import an RSA private key, you must
use an RSA_AES wrapping algorithm.

=over

=item *

B<RSA_AES_KEY_WRAP_SHA_256> E<mdash> Supported for wrapping RSA and ECC
key material.

=item *

B<RSA_AES_KEY_WRAP_SHA_1> E<mdash> Supported for wrapping RSA and ECC
key material.

=item *

B<RSAES_OAEP_SHA_256> E<mdash> Supported for all types of key material,
except RSA key material (private key).

You cannot use the RSAES_OAEP_SHA_256 wrapping algorithm with the
RSA_2048 wrapping key spec to wrap ECC_NIST_P521 key material.

=item *

B<RSAES_OAEP_SHA_1> E<mdash> Supported for all types of key material,
except RSA key material (private key).

You cannot use the RSAES_OAEP_SHA_1 wrapping algorithm with the
RSA_2048 wrapping key spec to wrap ECC_NIST_P521 key material.

=item *

B<RSAES_PKCS1_V1_5> (Deprecated) E<mdash> As of October 10, 2023, KMS
does not support the RSAES_PKCS1_V1_5 wrapping algorithm.

=back


Valid values are: C<"RSAES_PKCS1_V1_5">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">, C<"RSA_AES_KEY_WRAP_SHA_1">, C<"RSA_AES_KEY_WRAP_SHA_256">, C<"SM2PKE">

=head2 B<REQUIRED> WrappingKeySpec => Str

The type of RSA public key to return in the response. You will use this
wrapping key with the specified wrapping algorithm to protect your key
material during import.

Use the longest RSA wrapping key that is practical.

You cannot use an RSA_2048 public key to directly wrap an ECC_NIST_P521
private key. Instead, use an RSA_AES wrapping algorithm or choose a
longer RSA public key.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"SM2">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersForImport in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

