
package Paws::PaymentCryptography::CreateKey;
  use Moose;
  has DeriveKeyUsage => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Exportable => (is => 'ro', isa => 'Bool', required => 1);
  has KeyAttributes => (is => 'ro', isa => 'Paws::PaymentCryptography::KeyAttributes', required => 1);
  has KeyCheckValueAlgorithm => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PaymentCryptography::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::CreateKeyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::CreateKey - Arguments for method CreateKey on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $CreateKeyOutput = $controlplane . payment-cryptography->CreateKey(
      Exportable    => 1,
      KeyAttributes => {
        KeyAlgorithm => 'TDES_2KEY'
        , # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
        KeyClass => 'SYMMETRIC_KEY'
        ,  # values: SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
        KeyModesOfUse => {
          Decrypt        => 1,    # OPTIONAL
          DeriveKey      => 1,    # OPTIONAL
          Encrypt        => 1,    # OPTIONAL
          Generate       => 1,    # OPTIONAL
          NoRestrictions => 1,    # OPTIONAL
          Sign           => 1,    # OPTIONAL
          Unwrap         => 1,    # OPTIONAL
          Verify         => 1,    # OPTIONAL
          Wrap           => 1,    # OPTIONAL
        },
        KeyUsage => 'TR31_B0_BASE_DERIVATION_KEY'
        , # values: TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY

      },
      DeriveKeyUsage         => 'TR31_B0_BASE_DERIVATION_KEY',    # OPTIONAL
      Enabled                => 1,                                # OPTIONAL
      KeyCheckValueAlgorithm => 'CMAC',                           # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Key = $CreateKeyOutput->Key;

    # Returns a L<Paws::PaymentCryptography::CreateKeyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/CreateKey>

=head1 ATTRIBUTES


=head2 DeriveKeyUsage => Str

The cryptographic usage of an ECDH derived key as dened in section
A.5.2 of the TR-31 spec.

Valid values are: C<"TR31_B0_BASE_DERIVATION_KEY">, C<"TR31_C0_CARD_VERIFICATION_KEY">, C<"TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY">, C<"TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS">, C<"TR31_E1_EMV_MKEY_CONFIDENTIALITY">, C<"TR31_E2_EMV_MKEY_INTEGRITY">, C<"TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS">, C<"TR31_E5_EMV_MKEY_CARD_PERSONALIZATION">, C<"TR31_E6_EMV_MKEY_OTHER">, C<"TR31_K0_KEY_ENCRYPTION_KEY">, C<"TR31_K1_KEY_BLOCK_PROTECTION_KEY">, C<"TR31_M3_ISO_9797_3_MAC_KEY">, C<"TR31_M1_ISO_9797_1_MAC_KEY">, C<"TR31_M6_ISO_9797_5_CMAC_KEY">, C<"TR31_M7_HMAC_KEY">, C<"TR31_P0_PIN_ENCRYPTION_KEY">, C<"TR31_P1_PIN_GENERATION_KEY">, C<"TR31_V1_IBM3624_PIN_VERIFICATION_KEY">, C<"TR31_V2_VISA_PIN_VERIFICATION_KEY">

=head2 Enabled => Bool

Specifies whether to enable the key. If the key is enabled, it is
activated for use within the service. If the key is not enabled, then
it is created but not activated. The default value is enabled.



=head2 B<REQUIRED> Exportable => Bool

Specifies whether the key is exportable from the service.



=head2 B<REQUIRED> KeyAttributes => L<Paws::PaymentCryptography::KeyAttributes>

The role of the key, the algorithm it supports, and the cryptographic
operations allowed with the key. This data is immutable after the key
is created.



=head2 KeyCheckValueAlgorithm => Str

The algorithm that Amazon Web Services Payment Cryptography uses to
calculate the key check value (KCV). It is used to validate the key
integrity.

For TDES keys, the KCV is computed by encrypting 8 bytes, each with
value of zero, with the key to be checked and retaining the 3 highest
order bytes of the encrypted result. For AES keys, the KCV is computed
using a CMAC algorithm where the input data is 16 bytes of zero and
retaining the 3 highest order bytes of the encrypted result.

Valid values are: C<"CMAC">, C<"ANSI_X9_24">

=head2 Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]

Assigns one or more tags to the Amazon Web Services Payment
Cryptography key. Use this parameter to tag a key when it is created.
To tag an existing Amazon Web Services Payment Cryptography key, use
the TagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html)
operation.

Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required, but the tag value can be an empty (null)
string. You can't have more than one tag on an Amazon Web Services
Payment Cryptography key with the same tag key.

Don't include personal, confidential or sensitive information in this
field. This field may be displayed in plaintext in CloudTrail logs and
other output.

Tagging or untagging an Amazon Web Services Payment Cryptography key
can allow or deny permission to the key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

