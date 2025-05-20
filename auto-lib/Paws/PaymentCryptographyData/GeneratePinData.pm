
package Paws::PaymentCryptographyData::GeneratePinData;
  use Moose;
  has EncryptionKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionWrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');
  has GenerationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::PinGenerationAttributes', required => 1);
  has GenerationKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PinBlockFormat => (is => 'ro', isa => 'Str', required => 1);
  has PinDataLength => (is => 'ro', isa => 'Int');
  has PrimaryAccountNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GeneratePinData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pindata/generate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::GeneratePinDataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::GeneratePinData - Arguments for method GeneratePinData on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GeneratePinData on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method GeneratePinData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GeneratePinData.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $GeneratePinDataOutput =
      $dataplane . payment-cryptography->GeneratePinData(
      EncryptionKeyIdentifier => 'MyKeyArnOrKeyAliasType',
      GenerationAttributes    => {
        Ibm3624NaturalPin => {
          DecimalizationTable => 'MyDecimalizationTableType', # min: 16, max: 16
          PinValidationData   => 'MyPinValidationDataType',   # min: 4, max: 16
          PinValidationDataPadCharacter =>
            'MyHexLengthEquals1',                             # min: 1, max: 1

        },    # OPTIONAL
        Ibm3624PinFromOffset => {
          DecimalizationTable => 'MyDecimalizationTableType', # min: 16, max: 16
          PinOffset           => 'MyPinOffsetType',           # min: 4, max: 12
          PinValidationData   => 'MyPinValidationDataType',   # min: 4, max: 16
          PinValidationDataPadCharacter =>
            'MyHexLengthEquals1',                             # min: 1, max: 1

        },    # OPTIONAL
        Ibm3624PinOffset => {
          DecimalizationTable => 'MyDecimalizationTableType', # min: 16, max: 16
          EncryptedPinBlock   => 'MyEncryptedPinBlockType',   # min: 16, max: 32
          PinValidationData   => 'MyPinValidationDataType',   # min: 4, max: 16
          PinValidationDataPadCharacter =>
            'MyHexLengthEquals1',                             # min: 1, max: 1

        },    # OPTIONAL
        Ibm3624RandomPin => {
          DecimalizationTable => 'MyDecimalizationTableType', # min: 16, max: 16
          PinValidationData   => 'MyPinValidationDataType',   # min: 4, max: 16
          PinValidationDataPadCharacter =>
            'MyHexLengthEquals1',                             # min: 1, max: 1

        },    # OPTIONAL
        VisaPin => {
          PinVerificationKeyIndex => 1,    # max: 6

        },    # OPTIONAL
        VisaPinVerificationValue => {
          EncryptedPinBlock => 'MyEncryptedPinBlockType',    # min: 16, max: 32
          PinVerificationKeyIndex => 1,                      # max: 6

        },    # OPTIONAL
      },
      GenerationKeyIdentifier => 'MyKeyArnOrKeyAliasType',
      PinBlockFormat          => 'ISO_FORMAT_0',
      PrimaryAccountNumber    => 'MyPrimaryAccountNumberType',
      EncryptionWrappedKey    => {
        WrappedKeyMaterial => {
          DiffieHellmanSymmetricKey => {
            CertificateAuthorityPublicKeyIdentifier =>
              'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
            KeyAlgorithm => 'TDES_2KEY'
            ,    # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
            KeyDerivationFunction =>
              'NIST_SP800',    # values: NIST_SP800, ANSI_X963
            KeyDerivationHashAlgorithm =>
              'SHA_256',       # values: SHA_256, SHA_384, SHA_512
            PublicKeyCertificate => 'MyCertificateType',    # min: 1, max: 32768
            SharedInformation    => 'MySharedInformation',  # min: 2, max: 2048

          },    # OPTIONAL
          Tr31KeyBlock =>
            'MyTr31WrappedKeyBlock',    # min: 56, max: 9984; OPTIONAL
        },
        KeyCheckValueAlgorithm => 'CMAC',   # values: CMAC, ANSI_X9_24; OPTIONAL
      },    # OPTIONAL
      PinDataLength => 1,    # OPTIONAL
      );

    # Results:
    my $EncryptedPinBlock = $GeneratePinDataOutput->EncryptedPinBlock;
    my $EncryptionKeyArn  = $GeneratePinDataOutput->EncryptionKeyArn;
    my $EncryptionKeyCheckValue =
      $GeneratePinDataOutput->EncryptionKeyCheckValue;
    my $GenerationKeyArn = $GeneratePinDataOutput->GenerationKeyArn;
    my $GenerationKeyCheckValue =
      $GeneratePinDataOutput->GenerationKeyCheckValue;
    my $PinData = $GeneratePinDataOutput->PinData;

    # Returns a L<Paws::PaymentCryptographyData::GeneratePinDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/GeneratePinData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionKeyIdentifier => Str

The C<keyARN> of the PEK that Amazon Web Services Payment Cryptography
uses to encrypt the PIN Block. For ECDH, it is the C<keyARN> of the
asymmetric ECC key.



=head2 EncryptionWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>





=head2 B<REQUIRED> GenerationAttributes => L<Paws::PaymentCryptographyData::PinGenerationAttributes>

The attributes and values to use for PIN, PVV, or PIN Offset
generation.



=head2 B<REQUIRED> GenerationKeyIdentifier => Str

The C<keyARN> of the PEK that Amazon Web Services Payment Cryptography
uses for pin data generation.



=head2 B<REQUIRED> PinBlockFormat => Str

The PIN encoding format for pin data generation as specified in ISO
9564. Amazon Web Services Payment Cryptography supports C<ISO_Format_0>
and C<ISO_Format_3>.

The C<ISO_Format_0> PIN block format is equivalent to the ANSI X9.8,
VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN
block format. It supports a PIN from 4 to 12 digits in length.

The C<ISO_Format_3> PIN block format is the same as C<ISO_Format_0>
except that the fill digits are random values from 10 to 15.

Valid values are: C<"ISO_FORMAT_0">, C<"ISO_FORMAT_3">, C<"ISO_FORMAT_4">

=head2 PinDataLength => Int

The length of PIN under generation.



=head2 B<REQUIRED> PrimaryAccountNumber => Str

The Primary Account Number (PAN), a unique identifier for a payment
credit or debit card that associates the card with a specific account
holder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GeneratePinData in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

