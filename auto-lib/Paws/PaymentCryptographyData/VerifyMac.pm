
package Paws::PaymentCryptographyData::VerifyMac;
  use Moose;
  has KeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Mac => (is => 'ro', isa => 'Str', required => 1);
  has MacLength => (is => 'ro', isa => 'Int');
  has MessageData => (is => 'ro', isa => 'Str', required => 1);
  has VerificationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::MacAttributes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyMac');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/mac/verify');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::VerifyMacOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::VerifyMac - Arguments for method VerifyMac on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyMac on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method VerifyMac.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyMac.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $VerifyMacOutput = $dataplane . payment-cryptography->VerifyMac(
      KeyIdentifier          => 'MyKeyArnOrKeyAliasType',
      Mac                    => 'MyMacType',
      MessageData            => 'MyMessageDataType',
      VerificationAttributes => {
        Algorithm => 'ISO9797_ALGORITHM1'
        , # values: ISO9797_ALGORITHM1, ISO9797_ALGORITHM3, CMAC, HMAC_SHA224, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512; OPTIONAL
        DukptCmac => {
          DukptKeyVariant =>
            'BIDIRECTIONAL',    # values: BIDIRECTIONAL, REQUEST, RESPONSE
          KeySerialNumber     => 'MyHexLengthBetween10And24', # min: 10, max: 24
          DukptDerivationType => 'TDES_2KEY'
          ,  # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
        },    # OPTIONAL
        DukptIso9797Algorithm1 => {
          DukptKeyVariant =>
            'BIDIRECTIONAL',    # values: BIDIRECTIONAL, REQUEST, RESPONSE
          KeySerialNumber     => 'MyHexLengthBetween10And24', # min: 10, max: 24
          DukptDerivationType => 'TDES_2KEY'
          ,  # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
        },    # OPTIONAL
        DukptIso9797Algorithm3 => {
          DukptKeyVariant =>
            'BIDIRECTIONAL',    # values: BIDIRECTIONAL, REQUEST, RESPONSE
          KeySerialNumber     => 'MyHexLengthBetween10And24', # min: 10, max: 24
          DukptDerivationType => 'TDES_2KEY'
          ,  # values: TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256; OPTIONAL
        },    # OPTIONAL
        EmvMac => {
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',    # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19
          SessionKeyDerivationMode => 'EMV_COMMON_SESSION_KEY'
          , # values: EMV_COMMON_SESSION_KEY, EMV2000, AMEX, MASTERCARD_SESSION_KEY, VISA
          SessionKeyDerivationValue => {
            ApplicationCryptogram =>
              'MyApplicationCryptogramType',    # min: 16, max: 16; OPTIONAL
            ApplicationTransactionCounter =>
              'MyHexLengthEquals4',             # min: 4, max: 4; OPTIONAL
          },

        },    # OPTIONAL
      },
      MacLength => 1,    # OPTIONAL
    );

    # Results:
    my $KeyArn        = $VerifyMacOutput->KeyArn;
    my $KeyCheckValue = $VerifyMacOutput->KeyCheckValue;

    # Returns a L<Paws::PaymentCryptographyData::VerifyMacOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/VerifyMac>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyIdentifier => Str

The C<keyARN> of the encryption key that Amazon Web Services Payment
Cryptography uses to verify MAC data.



=head2 B<REQUIRED> Mac => Str

The MAC being verified.



=head2 MacLength => Int

The length of the MAC.



=head2 B<REQUIRED> MessageData => Str

The data on for which MAC is under verification. This value must be
hexBinary.



=head2 B<REQUIRED> VerificationAttributes => L<Paws::PaymentCryptographyData::MacAttributes>

The attributes and data values to use for MAC verification within
Amazon Web Services Payment Cryptography.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyMac in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

