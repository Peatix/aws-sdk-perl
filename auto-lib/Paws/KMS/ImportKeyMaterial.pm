
package Paws::KMS::ImportKeyMaterial;
  use Moose;
  has EncryptedKeyMaterial => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationModel => (is => 'ro', isa => 'Str');
  has ImportToken => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has ValidTo => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyMaterial');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ImportKeyMaterialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ImportKeyMaterial - Arguments for method ImportKeyMaterial on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportKeyMaterial on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ImportKeyMaterial.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportKeyMaterial.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To import key material into a KMS key
    # The following example imports key material into the specified KMS key.
    my $ImportKeyMaterialResponse = $kms->ImportKeyMaterial(
      'EncryptedKeyMaterial' => '<binary data>',
      'ExpirationModel'      => 'KEY_MATERIAL_DOES_NOT_EXPIRE',
      'ImportToken'          => '<binary data>',
      'KeyId'                => '1234abcd-12ab-34cd-56ef-1234567890ab'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ImportKeyMaterial>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptedKeyMaterial => Str

The encrypted key material to import. The key material must be
encrypted under the public wrapping key that GetParametersForImport
returned, using the wrapping algorithm that you specified in the same
C<GetParametersForImport> request.



=head2 ExpirationModel => Str

Specifies whether the key material expires. The default is
C<KEY_MATERIAL_EXPIRES>. For help with this choice, see Setting an
expiration time
(https://docs.aws.amazon.com/en_us/kms/latest/developerguide/importing-keys.html#importing-keys-expiration)
in the I<Key Management Service Developer Guide>.

When the value of C<ExpirationModel> is C<KEY_MATERIAL_EXPIRES>, you
must specify a value for the C<ValidTo> parameter. When value is
C<KEY_MATERIAL_DOES_NOT_EXPIRE>, you must omit the C<ValidTo>
parameter.

You cannot change the C<ExpirationModel> or C<ValidTo> values for the
current import after the request completes. To change either value, you
must reimport the key material.

Valid values are: C<"KEY_MATERIAL_EXPIRES">, C<"KEY_MATERIAL_DOES_NOT_EXPIRE">

=head2 B<REQUIRED> ImportToken => Str

The import token that you received in the response to a previous
GetParametersForImport request. It must be from the same response that
contained the public key that you used to encrypt the key material.



=head2 B<REQUIRED> KeyId => Str

The identifier of the KMS key that will be associated with the imported
key material. This must be the same KMS key specified in the C<KeyID>
parameter of the corresponding GetParametersForImport request. The
C<Origin> of the KMS key must be C<EXTERNAL> and its C<KeyState> must
be C<PendingImport>.

The KMS key can be a symmetric encryption KMS key, HMAC KMS key,
asymmetric encryption KMS key, or asymmetric signing KMS key, including
a multi-Region key of any supported type. You cannot perform this
operation on a KMS key in a custom key store, or on a KMS key in a
different Amazon Web Services account.

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



=head2 ValidTo => Str

The date and time when the imported key material expires. This
parameter is required when the value of the C<ExpirationModel>
parameter is C<KEY_MATERIAL_EXPIRES>. Otherwise it is not valid.

The value of this parameter must be a future date and time. The maximum
value is 365 days from the request date.

When the key material expires, KMS deletes the key material from the
KMS key. Without its key material, the KMS key is unusable. To use the
KMS key in cryptographic operations, you must reimport the same key
material.

You cannot change the C<ExpirationModel> or C<ValidTo> values for the
current import after the request completes. To change either value, you
must delete (DeleteImportedKeyMaterial) and reimport the key material.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportKeyMaterial in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

