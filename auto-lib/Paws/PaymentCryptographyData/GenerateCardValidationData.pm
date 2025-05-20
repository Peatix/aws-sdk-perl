
package Paws::PaymentCryptographyData::GenerateCardValidationData;
  use Moose;
  has GenerationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::CardGenerationAttributes', required => 1);
  has KeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryAccountNumber => (is => 'ro', isa => 'Str', required => 1);
  has ValidationDataLength => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateCardValidationData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cardvalidationdata/generate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::GenerateCardValidationDataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::GenerateCardValidationData - Arguments for method GenerateCardValidationData on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateCardValidationData on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method GenerateCardValidationData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateCardValidationData.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $GenerateCardValidationDataOutput =
      $dataplane . payment-cryptography->GenerateCardValidationData(
      GenerationAttributes => {
        AmexCardSecurityCodeVersion1 => {
          CardExpiryDate => 'MyCardExpiryDateType',    # min: 4, max: 4

        },    # OPTIONAL
        AmexCardSecurityCodeVersion2 => {
          CardExpiryDate => 'MyCardExpiryDateType',    # min: 4, max: 4
          ServiceCode    => 'MyServiceCodeType',       # min: 3, max: 3

        },    # OPTIONAL
        CardHolderVerificationValue => {
          ApplicationTransactionCounter =>
            'MyHexLengthBetween2And4',    # min: 2, max: 4
          PanSequenceNumber   => 'MyNumberLengthEquals2',      # min: 2, max: 2
          UnpredictableNumber => 'MyHexLengthBetween2And8',    # min: 2, max: 8

        },    # OPTIONAL
        CardVerificationValue1 => {
          CardExpiryDate => 'MyCardExpiryDateType',    # min: 4, max: 4
          ServiceCode    => 'MyServiceCodeType',       # min: 3, max: 3

        },    # OPTIONAL
        CardVerificationValue2 => {
          CardExpiryDate => 'MyCardExpiryDateType',    # min: 4, max: 4

        },    # OPTIONAL
        DynamicCardVerificationCode => {
          ApplicationTransactionCounter =>
            'MyHexLengthBetween2And4',    # min: 2, max: 4
          PanSequenceNumber   => 'MyNumberLengthEquals2',     # min: 2, max: 2
          TrackData           => 'MyTrackDataType',           # min: 2, max: 160
          UnpredictableNumber => 'MyHexLengthBetween2And8',   # min: 2, max: 8

        },    # OPTIONAL
        DynamicCardVerificationValue => {
          ApplicationTransactionCounter =>
            'MyHexLengthBetween2And4',    # min: 2, max: 4
          CardExpiryDate    => 'MyCardExpiryDateType',     # min: 4, max: 4
          PanSequenceNumber => 'MyNumberLengthEquals2',    # min: 2, max: 2
          ServiceCode       => 'MyServiceCodeType',        # min: 3, max: 3

        },    # OPTIONAL
      },
      KeyIdentifier        => 'MyKeyArnOrKeyAliasType',
      PrimaryAccountNumber => 'MyPrimaryAccountNumberType',
      ValidationDataLength => 1,                              # OPTIONAL
      );

    # Results:
    my $KeyArn         = $GenerateCardValidationDataOutput->KeyArn;
    my $KeyCheckValue  = $GenerateCardValidationDataOutput->KeyCheckValue;
    my $ValidationData = $GenerateCardValidationDataOutput->ValidationData;

# Returns a L<Paws::PaymentCryptographyData::GenerateCardValidationDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/GenerateCardValidationData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GenerationAttributes => L<Paws::PaymentCryptographyData::CardGenerationAttributes>

The algorithm for generating CVV or CSC values for the card within
Amazon Web Services Payment Cryptography.



=head2 B<REQUIRED> KeyIdentifier => Str

The C<keyARN> of the CVK encryption key that Amazon Web Services
Payment Cryptography uses to generate card data.



=head2 B<REQUIRED> PrimaryAccountNumber => Str

The Primary Account Number (PAN), a unique identifier for a payment
credit or debit card that associates the card with a specific account
holder.



=head2 ValidationDataLength => Int

The length of the CVV or CSC to be generated. The default value is 3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateCardValidationData in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

