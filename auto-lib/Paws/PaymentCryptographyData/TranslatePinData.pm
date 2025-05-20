
package Paws::PaymentCryptographyData::TranslatePinData;
  use Moose;
  has EncryptedPinBlock => (is => 'ro', isa => 'Str', required => 1);
  has IncomingDukptAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::DukptDerivationAttributes');
  has IncomingKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IncomingTranslationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::TranslationIsoFormats', required => 1);
  has IncomingWrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');
  has OutgoingDukptAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::DukptDerivationAttributes');
  has OutgoingKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has OutgoingTranslationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::TranslationIsoFormats', required => 1);
  has OutgoingWrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TranslatePinData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pindata/translate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::TranslatePinDataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::TranslatePinData - Arguments for method TranslatePinData on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TranslatePinData on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method TranslatePinData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TranslatePinData.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $TranslatePinDataOutput =
      $dataplane . payment-cryptography->TranslatePinData(
      EncryptedPinBlock             => 'MyHexEvenLengthBetween16And32',
      IncomingKeyIdentifier         => 'MyKeyArnOrKeyAliasType',
      IncomingTranslationAttributes => {
        IsoFormat0 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
        IsoFormat1 => {

        },    # OPTIONAL
        IsoFormat3 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
        IsoFormat4 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
      },
      OutgoingKeyIdentifier         => 'MyKeyArnOrKeyAliasType',
      OutgoingTranslationAttributes => {
        IsoFormat0 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
        IsoFormat1 => {

        },    # OPTIONAL
        IsoFormat3 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
        IsoFormat4 => {
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
      },
      IncomingDukptAttributes => {
        KeySerialNumber => 'MyHexLengthBetween10And24',    # min: 10, max: 24
        DukptKeyDerivationType => 'TDES_2KEY'
        ,    # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
        DukptKeyVariant =>
          'BIDIRECTIONAL',  # values: BIDIRECTIONAL, REQUEST, RESPONSE; OPTIONAL
      },    # OPTIONAL
      IncomingWrappedKey => {
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
      OutgoingDukptAttributes => {
        KeySerialNumber => 'MyHexLengthBetween10And24',    # min: 10, max: 24
        DukptKeyDerivationType => 'TDES_2KEY'
        ,    # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
        DukptKeyVariant =>
          'BIDIRECTIONAL',  # values: BIDIRECTIONAL, REQUEST, RESPONSE; OPTIONAL
      },    # OPTIONAL
      OutgoingWrappedKey => {
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
      );

    # Results:
    my $KeyArn        = $TranslatePinDataOutput->KeyArn;
    my $KeyCheckValue = $TranslatePinDataOutput->KeyCheckValue;
    my $PinBlock      = $TranslatePinDataOutput->PinBlock;

    # Returns a L<Paws::PaymentCryptographyData::TranslatePinDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/TranslatePinData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptedPinBlock => Str

The encrypted PIN block data that Amazon Web Services Payment
Cryptography translates.



=head2 IncomingDukptAttributes => L<Paws::PaymentCryptographyData::DukptDerivationAttributes>

The attributes and values to use for incoming DUKPT encryption key for
PIN block translation.



=head2 B<REQUIRED> IncomingKeyIdentifier => Str

The C<keyARN> of the encryption key under which incoming PIN block data
is encrypted. This key type can be PEK or BDK.

For dynamic keys, it is the C<keyARN> of KEK of the TR-31 wrapped PEK.
For ECDH, it is the C<keyARN> of the asymmetric ECC key.



=head2 B<REQUIRED> IncomingTranslationAttributes => L<Paws::PaymentCryptographyData::TranslationIsoFormats>

The format of the incoming PIN block data for translation within Amazon
Web Services Payment Cryptography.



=head2 IncomingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>

The WrappedKeyBlock containing the encryption key under which incoming
PIN block data is encrypted.



=head2 OutgoingDukptAttributes => L<Paws::PaymentCryptographyData::DukptDerivationAttributes>

The attributes and values to use for outgoing DUKPT encryption key
after PIN block translation.



=head2 B<REQUIRED> OutgoingKeyIdentifier => Str

The C<keyARN> of the encryption key for encrypting outgoing PIN block
data. This key type can be PEK or BDK.

For ECDH, it is the C<keyARN> of the asymmetric ECC key.



=head2 B<REQUIRED> OutgoingTranslationAttributes => L<Paws::PaymentCryptographyData::TranslationIsoFormats>

The format of the outgoing PIN block data after translation by Amazon
Web Services Payment Cryptography.



=head2 OutgoingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>

The WrappedKeyBlock containing the encryption key for encrypting
outgoing PIN block data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TranslatePinData in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

