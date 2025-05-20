
package Paws::KMS::CreateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has CustomerMasterKeySpec => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeySpec => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has MultiRegion => (is => 'ro', isa => 'Bool');
  has Origin => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');
  has XksKeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateKey - Arguments for method CreateKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To create a KMS key
    # The following example creates a symmetric KMS key for encryption and
    # decryption. No parameters are required for this operation.
    my $CreateKeyResponse = $kms->CreateKey();

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

  # Returns a L<Paws::KMS::CreateKeyResponse> object.
  # To create an asymmetric RSA KMS key for encryption and decryption
  # This example creates a KMS key that contains an asymmetric RSA key pair for
  # encryption and decryption. The key spec and key usage can't be changed after
  # the key is created.
    my $CreateKeyResponse = $kms->CreateKey(
      'KeySpec'  => 'RSA_4096',
      'KeyUsage' => 'ENCRYPT_DECRYPT'
    );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

   # Returns a L<Paws::KMS::CreateKeyResponse> object.
   # To create an asymmetric elliptic curve KMS key for signing and verification
   # This example creates a KMS key that contains an asymmetric elliptic curve
   # (ECC) key pair for signing and verification. The key usage is required even
   # though "SIGN_VERIFY" is the only valid value for ECC KMS keys. The key spec
   # and key usage can't be changed after the key is created.
    my $CreateKeyResponse = $kms->CreateKey(
      'KeySpec'  => 'ECC_NIST_P521',
      'KeyUsage' => 'SIGN_VERIFY'
    );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

 # Returns a L<Paws::KMS::CreateKeyResponse> object.
 # To create a multi-Region primary KMS key
 # This example creates a multi-Region primary symmetric encryption key. Because
 # the default values for all parameters create a symmetric encryption key, only
 # the MultiRegion parameter is required for this KMS key.
    my $CreateKeyResponse = $kms->CreateKey( 'MultiRegion' => 1 );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::CreateKeyResponse> object.
    # To create a KMS key for imported key material
    # This example creates a KMS key with no key material. When the operation is
    # complete, you can import your own key material into the KMS key. To create
    # this KMS key, set the Origin parameter to EXTERNAL.
    my $CreateKeyResponse = $kms->CreateKey( 'Origin' => 'EXTERNAL' );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

# Returns a L<Paws::KMS::CreateKeyResponse> object.
# To create a KMS key in a custom key store
# This example creates a KMS key in the specified custom key store. The
# operation creates the KMS key and its metadata in AWS KMS and the key material
# in the AWS CloudHSM cluster associated with the custom key store. This example
# requires the Origin and CustomKeyStoreId parameters.
    my $CreateKeyResponse = $kms->CreateKey(
      'CustomKeyStoreId' => 'cks-1234567890abcdef0',
      'Origin'           => 'AWS_CLOUDHSM'
    );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

# Returns a L<Paws::KMS::CreateKeyResponse> object.
# To create an HMAC KMS key
# This example creates a 384-bit symmetric HMAC KMS key. The GENERATE_VERIFY_MAC
# key usage value is required even though it's the only valid value for HMAC KMS
# keys. The key spec and key usage can't be changed after the key is created.
    my $CreateKeyResponse = $kms->CreateKey(
      'KeySpec'  => 'HMAC_384',
      'KeyUsage' => 'GENERATE_VERIFY_MAC'
    );

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::CreateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateKey>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

Skips ("bypasses") the key policy lockout safety check. The default
value is false.

Setting this value to true increases the risk that the KMS key becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, see Default key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key)
in the I<Key Management Service Developer Guide>.

Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent PutKeyPolicy
(https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html)
request on the KMS key.



=head2 CustomerMasterKeySpec => Str

Instead, use the C<KeySpec> parameter.

The C<KeySpec> and C<CustomerMasterKeySpec> parameters work the same
way. Only the names differ. We recommend that you use C<KeySpec>
parameter in your code. However, to avoid breaking changes, KMS
supports both parameters.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">, C<"HMAC_224">, C<"HMAC_256">, C<"HMAC_384">, C<"HMAC_512">, C<"SM2">

=head2 CustomKeyStoreId => Str

Creates the KMS key in the specified custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
The C<ConnectionState> of the custom key store must be C<CONNECTED>. To
find the CustomKeyStoreID and ConnectionState use the
DescribeCustomKeyStores operation.

This parameter is valid only for symmetric encryption KMS keys in a
single Region. You cannot create any other type of KMS key in a custom
key store.

When you create a KMS key in an CloudHSM key store, KMS generates a
non-exportable 256-bit symmetric key in its associated CloudHSM cluster
and associates it with the KMS key. When you create a KMS key in an
external key store, you must use the C<XksKeyId> parameter to specify
an external key that serves as key material for the KMS key.



=head2 Description => Str

A description of the KMS key. Use a description that helps you decide
whether the KMS key is appropriate for a task. The default value is an
empty string (no description).

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

To set or change the description after the key is created, use
UpdateKeyDescription.



=head2 KeySpec => Str

Specifies the type of KMS key to create. The default value,
C<SYMMETRIC_DEFAULT>, creates a KMS key with a 256-bit AES-GCM key that
is used for encryption and decryption, except in China Regions, where
it creates a 128-bit symmetric key that uses SM4 encryption. For help
choosing a key spec for your KMS key, see Choosing a KMS key type
(https://docs.aws.amazon.com/kms/latest/developerguide/key-types.html#symm-asymm-choose)
in the I< I<Key Management Service Developer Guide> >.

The C<KeySpec> determines whether the KMS key contains a symmetric key
or an asymmetric key pair. It also determines the algorithms that the
KMS key supports. You can't change the C<KeySpec> after the KMS key is
created. To further restrict the algorithms that can be used with the
KMS key, use a condition key in its key policy or IAM policy. For more
information, see kms:EncryptionAlgorithm
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm),
kms:MacAlgorithm
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-mac-algorithm)
or kms:Signing Algorithm
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm)
in the I< I<Key Management Service Developer Guide> >.

Amazon Web Services services that are integrated with KMS
(http://aws.amazon.com/kms/features/#AWS_Service_Integration) use
symmetric encryption KMS keys to protect your data. These services do
not support asymmetric KMS keys or HMAC KMS keys.

KMS supports the following key specs for KMS keys:

=over

=item *

Symmetric encryption key (default)

=over

=item *

C<SYMMETRIC_DEFAULT>

=back

=item *

HMAC keys (symmetric)

=over

=item *

C<HMAC_224>

=item *

C<HMAC_256>

=item *

C<HMAC_384>

=item *

C<HMAC_512>

=back

=item *

Asymmetric RSA key pairs (encryption and decryption -or- signing and
verification)

=over

=item *

C<RSA_2048>

=item *

C<RSA_3072>

=item *

C<RSA_4096>

=back

=item *

Asymmetric NIST-recommended elliptic curve key pairs (signing and
verification -or- deriving shared secrets)

=over

=item *

C<ECC_NIST_P256> (secp256r1)

=item *

C<ECC_NIST_P384> (secp384r1)

=item *

C<ECC_NIST_P521> (secp521r1)

=back

=item *

Other asymmetric elliptic curve key pairs (signing and verification)

=over

=item *

C<ECC_SECG_P256K1> (secp256k1), commonly used for cryptocurrencies.

=back

=item *

SM2 key pairs (encryption and decryption -or- signing and verification
-or- deriving shared secrets)

=over

=item *

C<SM2> (China Regions only)

=back

=back


Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">, C<"HMAC_224">, C<"HMAC_256">, C<"HMAC_384">, C<"HMAC_512">, C<"SM2">

=head2 KeyUsage => Str

Determines the cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
for which you can use the KMS key. The default value is
C<ENCRYPT_DECRYPT>. This parameter is optional when you are creating a
symmetric encryption KMS key; otherwise, it is required. You can't
change the C<KeyUsage> value after the KMS key is created.

Select only one valid value.

=over

=item *

For symmetric encryption KMS keys, omit the parameter or specify
C<ENCRYPT_DECRYPT>.

=item *

For HMAC KMS keys (symmetric), specify C<GENERATE_VERIFY_MAC>.

=item *

For asymmetric KMS keys with RSA key pairs, specify C<ENCRYPT_DECRYPT>
or C<SIGN_VERIFY>.

=item *

For asymmetric KMS keys with NIST-recommended elliptic curve key pairs,
specify C<SIGN_VERIFY> or C<KEY_AGREEMENT>.

=item *

For asymmetric KMS keys with C<ECC_SECG_P256K1> key pairs specify
C<SIGN_VERIFY>.

=item *

For asymmetric KMS keys with SM2 key pairs (China Regions only),
specify C<ENCRYPT_DECRYPT>, C<SIGN_VERIFY>, or C<KEY_AGREEMENT>.

=back


Valid values are: C<"SIGN_VERIFY">, C<"ENCRYPT_DECRYPT">, C<"GENERATE_VERIFY_MAC">, C<"KEY_AGREEMENT">

=head2 MultiRegion => Bool

Creates a multi-Region primary key that you can replicate into other
Amazon Web Services Regions. You cannot change this value after you
create the KMS key.

For a multi-Region key, set this parameter to C<True>. For a
single-Region KMS key, omit this parameter or set it to C<False>. The
default value is C<False>.

This operation supports I<multi-Region keys>, an KMS feature that lets
you create multiple interoperable KMS keys in different Amazon Web
Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see Multi-Region keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

This value creates a I<primary key>, not a replica. To create a
I<replica key>, use the ReplicateKey operation.

You can create a symmetric or asymmetric multi-Region key, and you can
create a multi-Region key with imported key material. However, you
cannot create a multi-Region key in a custom key store.



=head2 Origin => Str

The source of the key material for the KMS key. You cannot change the
origin after you create the KMS key. The default is C<AWS_KMS>, which
means that KMS creates the key material.

To create a KMS key with no key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-create-cmk.html)
(for imported key material), set this value to C<EXTERNAL>. For more
information about importing key material into KMS, see Importing Key
Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<Key Management Service Developer Guide>. The C<EXTERNAL>
origin value is valid only for symmetric KMS keys.

To create a KMS key in an CloudHSM key store
(https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html)
and create its key material in the associated CloudHSM cluster, set
this value to C<AWS_CLOUDHSM>. You must also use the
C<CustomKeyStoreId> parameter to identify the CloudHSM key store. The
C<KeySpec> value must be C<SYMMETRIC_DEFAULT>.

To create a KMS key in an external key store
(https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html),
set this value to C<EXTERNAL_KEY_STORE>. You must also use the
C<CustomKeyStoreId> parameter to identify the external key store and
the C<XksKeyId> parameter to identify the associated external key. The
C<KeySpec> value must be C<SYMMETRIC_DEFAULT>.

Valid values are: C<"AWS_KMS">, C<"EXTERNAL">, C<"AWS_CLOUDHSM">, C<"EXTERNAL_KEY_STORE">

=head2 Policy => Str

The key policy to attach to the KMS key.

If you provide a key policy, it must meet the following criteria:

=over

=item *

The key policy must allow the calling principal to make a subsequent
C<PutKeyPolicy> request on the KMS key. This reduces the risk that the
KMS key becomes unmanageable. For more information, see Default key
policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key)
in the I<Key Management Service Developer Guide>. (To omit this
condition, set C<BypassPolicyLockoutSafetyCheck> to true.)

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to KMS. When
you create a new Amazon Web Services principal, you might need to
enforce a delay before including the new principal in a key policy
because the new principal might not be immediately visible to KMS. For
more information, see Changes that I make are not always immediately
visible
(https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<Amazon Web Services Identity and Access Management User
Guide>.

=back

If you do not provide a key policy, KMS attaches a default key policy
to the KMS key. For more information, see Default key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default)
in the I<Key Management Service Developer Guide>.

The key policy size quota is 32 kilobytes (32768 bytes).

For help writing and formatting a JSON policy document, see the IAM
JSON Policy Reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the I< I<Identity and Access Management User Guide> >.



=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

Assigns one or more tags to the KMS key. Use this parameter to tag the
KMS key when it is created. To tag an existing KMS key, use the
TagResource operation.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

To use this parameter, you must have kms:TagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
permission in an IAM policy.

Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required, but the tag value can be an empty (null)
string. You cannot have more than one tag on a KMS key with the same
tag key. If you specify an existing tag key with a different tag value,
KMS replaces the current tag value with the specified one.

When you add tags to an Amazon Web Services resource, Amazon Web
Services generates a cost allocation report with usage and costs
aggregated by tags. Tags can also be used to control access to a KMS
key. For details, see Tagging Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).



=head2 XksKeyId => Str

Identifies the external key
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key)
that serves as key material for the KMS key in an external key store
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html).
Specify the ID that the external key store proxy
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-xks-proxy)
uses to refer to the external key. For help, see the documentation for
your external key store proxy.

This parameter is required for a KMS key with an C<Origin> value of
C<EXTERNAL_KEY_STORE>. It is not valid for KMS keys with any other
C<Origin> value.

The external key must be an existing 256-bit AES symmetric encryption
key hosted outside of Amazon Web Services in an external key manager
associated with the external key store specified by the
C<CustomKeyStoreId> parameter. This key must be enabled and configured
to perform encryption and decryption. Each KMS key in an external key
store must use a different external key. For details, see Requirements
for a KMS key in an external key store
(https://docs.aws.amazon.com/create-xks-keys.html#xks-key-requirements)
in the I<Key Management Service Developer Guide>.

Each KMS key in an external key store is associated two backing keys.
One is key material that KMS generates. The other is the external key
specified by this parameter. When you use the KMS key in an external
key store to encrypt data, the encryption operation is performed first
by KMS using the KMS key material, and then by the external key manager
using the specified external key, a process known as I<double
encryption>. For details, see Double encryption
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-double-encryption)
in the I<Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

