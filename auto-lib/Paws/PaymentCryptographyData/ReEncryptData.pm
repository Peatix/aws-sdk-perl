
package Paws::PaymentCryptographyData::ReEncryptData;
  use Moose;
  has CipherText => (is => 'ro', isa => 'Str', required => 1);
  has IncomingEncryptionAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::ReEncryptionAttributes', required => 1);
  has IncomingKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IncomingKeyIdentifier', required => 1);
  has IncomingWrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');
  has OutgoingEncryptionAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::ReEncryptionAttributes', required => 1);
  has OutgoingKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has OutgoingWrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReEncryptData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/keys/{IncomingKeyIdentifier}/reencrypt');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::ReEncryptDataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::ReEncryptData - Arguments for method ReEncryptData on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReEncryptData on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method ReEncryptData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReEncryptData.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $ReEncryptDataOutput = $dataplane . payment-cryptography->ReEncryptData(
      CipherText                   => 'MyCipherTextType',
      IncomingEncryptionAttributes => {
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
        Symmetric => {
          Mode => 'ECB', # values: ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
          InitializationVector =>
            'MyInitializationVectorType',    # min: 16, max: 32; OPTIONAL
          PaddingType => 'PKCS1'
          ,    # values: PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512; OPTIONAL
        },    # OPTIONAL
      },
      IncomingKeyIdentifier        => 'MyKeyArnOrKeyAliasType',
      OutgoingEncryptionAttributes => {
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
        Symmetric => {
          Mode => 'ECB', # values: ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
          InitializationVector =>
            'MyInitializationVectorType',    # min: 16, max: 32; OPTIONAL
          PaddingType => 'PKCS1'
          ,    # values: PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512; OPTIONAL
        },    # OPTIONAL
      },
      OutgoingKeyIdentifier => 'MyKeyArnOrKeyAliasType',
      IncomingWrappedKey    => {
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
    my $CipherText    = $ReEncryptDataOutput->CipherText;
    my $KeyArn        = $ReEncryptDataOutput->KeyArn;
    my $KeyCheckValue = $ReEncryptDataOutput->KeyCheckValue;

    # Returns a L<Paws::PaymentCryptographyData::ReEncryptDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/ReEncryptData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CipherText => Str

Ciphertext to be encrypted. The minimum allowed length is 16 bytes and
maximum allowed length is 4096 bytes.



=head2 B<REQUIRED> IncomingEncryptionAttributes => L<Paws::PaymentCryptographyData::ReEncryptionAttributes>

The attributes and values for incoming ciphertext.



=head2 B<REQUIRED> IncomingKeyIdentifier => Str

The C<keyARN> of the encryption key of incoming ciphertext data.

When a WrappedKeyBlock is provided, this value will be the identifier
to the key wrapping key. Otherwise, it is the key identifier used to
perform the operation.



=head2 IncomingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>

The WrappedKeyBlock containing the encryption key of incoming
ciphertext data.



=head2 B<REQUIRED> OutgoingEncryptionAttributes => L<Paws::PaymentCryptographyData::ReEncryptionAttributes>

The attributes and values for outgoing ciphertext data after encryption
by Amazon Web Services Payment Cryptography.



=head2 B<REQUIRED> OutgoingKeyIdentifier => Str

The C<keyARN> of the encryption key of outgoing ciphertext data after
encryption by Amazon Web Services Payment Cryptography.



=head2 OutgoingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>

The WrappedKeyBlock containing the encryption key of outgoing
ciphertext data after encryption by Amazon Web Services Payment
Cryptography.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReEncryptData in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

