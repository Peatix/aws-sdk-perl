
package Paws::PaymentCryptographyData::EncryptData;
  use Moose;
  has EncryptionAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::EncryptionDecryptionAttributes', required => 1);
  has KeyIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KeyIdentifier', required => 1);
  has PlainText => (is => 'ro', isa => 'Str', required => 1);
  has WrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EncryptData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/keys/{KeyIdentifier}/encrypt');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::EncryptDataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::EncryptData - Arguments for method EncryptData on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EncryptData on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method EncryptData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EncryptData.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $EncryptDataOutput = $dataplane . payment-cryptography->EncryptData(
      EncryptionAttributes => {
        Asymmetric => {
          PaddingType => 'PKCS1'
          ,    # values: PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512; OPTIONAL
        },    # OPTIONAL
        Dukpt => {
          KeySerialNumber => 'MyHexLengthBetween10And24',    # min: 10, max: 24
          DukptKeyDerivationType => 'TDES_2KEY'
          ,  # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
          DukptKeyVariant => 'BIDIRECTIONAL'
          ,    # values: BIDIRECTIONAL, REQUEST, RESPONSE; OPTIONAL
          InitializationVector =>
            'MyInitializationVectorType',    # min: 16, max: 32; OPTIONAL
          Mode => 'ECB',                     # values: ECB, CBC; OPTIONAL
        },    # OPTIONAL
        Emv => {
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',    # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19
          SessionDerivationData =>
            'MySessionDerivationDataType',                    # min: 16, max: 16
          InitializationVector =>
            'MyInitializationVectorType',    # min: 16, max: 32; OPTIONAL
          Mode => 'ECB',                     # values: ECB, CBC; OPTIONAL
        },    # OPTIONAL
        Symmetric => {
          Mode => 'ECB', # values: ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
          InitializationVector =>
            'MyInitializationVectorType',    # min: 16, max: 32; OPTIONAL
          PaddingType => 'PKCS1'
          ,    # values: PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512; OPTIONAL
        },    # OPTIONAL
      },
      KeyIdentifier => 'MyKeyArnOrKeyAliasType',
      PlainText     => 'MyPlainTextType',
      WrappedKey    => {
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
    my $CipherText    = $EncryptDataOutput->CipherText;
    my $KeyArn        = $EncryptDataOutput->KeyArn;
    my $KeyCheckValue = $EncryptDataOutput->KeyCheckValue;

    # Returns a L<Paws::PaymentCryptographyData::EncryptDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/EncryptData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionAttributes => L<Paws::PaymentCryptographyData::EncryptionDecryptionAttributes>

The encryption key type and attributes for plaintext encryption.



=head2 B<REQUIRED> KeyIdentifier => Str

The C<keyARN> of the encryption key that Amazon Web Services Payment
Cryptography uses for plaintext encryption.

When a WrappedKeyBlock is provided, this value will be the identifier
to the key wrapping key. Otherwise, it is the key identifier used to
perform the operation.



=head2 B<REQUIRED> PlainText => Str

The plaintext to be encrypted.

For encryption using asymmetric keys, plaintext data length is
constrained by encryption key strength that you define in
C<KeyAlgorithm> and padding type that you define in
C<AsymmetricEncryptionAttributes>. For more information, see Encrypt
data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.



=head2 WrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>

The WrappedKeyBlock containing the encryption key for plaintext
encryption.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EncryptData in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

