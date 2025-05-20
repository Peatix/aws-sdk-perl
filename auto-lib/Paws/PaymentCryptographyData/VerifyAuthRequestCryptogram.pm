
package Paws::PaymentCryptographyData::VerifyAuthRequestCryptogram;
  use Moose;
  has AuthRequestCryptogram => (is => 'ro', isa => 'Str', required => 1);
  has AuthResponseAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::CryptogramAuthResponse');
  has KeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has MajorKeyDerivationMode => (is => 'ro', isa => 'Str', required => 1);
  has SessionKeyDerivationAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyDerivation', required => 1);
  has TransactionData => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyAuthRequestCryptogram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cryptogram/verify');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::VerifyAuthRequestCryptogramOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::VerifyAuthRequestCryptogram - Arguments for method VerifyAuthRequestCryptogram on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyAuthRequestCryptogram on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method VerifyAuthRequestCryptogram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyAuthRequestCryptogram.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $VerifyAuthRequestCryptogramOutput =
      $dataplane . payment-cryptography->VerifyAuthRequestCryptogram(
      AuthRequestCryptogram          => 'MyAuthRequestCryptogramType',
      KeyIdentifier                  => 'MyKeyArnOrKeyAliasType',
      MajorKeyDerivationMode         => 'EMV_OPTION_A',
      SessionKeyDerivationAttributes => {
        Amex => {
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
        Emv2000 => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
        EmvCommon => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
        Mastercard => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19
          UnpredictableNumber => 'MyHexLengthBetween2And8',   # min: 2, max: 8

        },    # OPTIONAL
        Visa => {
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
      },
      TransactionData        => 'MyTransactionDataType',
      AuthResponseAttributes => {
        ArpcMethod1 => {
          AuthResponseCode => 'MyHexLengthEquals4',    # min: 4, max: 4

        },    # OPTIONAL
        ArpcMethod2 => {
          CardStatusUpdate => 'MyHexLengthEquals8',    # min: 8, max: 8
          ProprietaryAuthenticationData =>
            'MyProprietaryAuthenticationDataType',   # min: 1, max: 16; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AuthResponseValue =
      $VerifyAuthRequestCryptogramOutput->AuthResponseValue;
    my $KeyArn        = $VerifyAuthRequestCryptogramOutput->KeyArn;
    my $KeyCheckValue = $VerifyAuthRequestCryptogramOutput->KeyCheckValue;

# Returns a L<Paws::PaymentCryptographyData::VerifyAuthRequestCryptogramOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/VerifyAuthRequestCryptogram>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthRequestCryptogram => Str

The auth request cryptogram imported into Amazon Web Services Payment
Cryptography for ARQC verification using a major encryption key and
transaction data.



=head2 AuthResponseAttributes => L<Paws::PaymentCryptographyData::CryptogramAuthResponse>

The attributes and values for auth request cryptogram verification.
These parameters are required in case using ARPC Method 1 or Method 2
for ARQC verification.



=head2 B<REQUIRED> KeyIdentifier => Str

The C<keyARN> of the major encryption key that Amazon Web Services
Payment Cryptography uses for ARQC verification.



=head2 B<REQUIRED> MajorKeyDerivationMode => Str

The method to use when deriving the major encryption key for ARQC
verification within Amazon Web Services Payment Cryptography. The same
key derivation mode was used for ARQC generation outside of Amazon Web
Services Payment Cryptography.

Valid values are: C<"EMV_OPTION_A">, C<"EMV_OPTION_B">

=head2 B<REQUIRED> SessionKeyDerivationAttributes => L<Paws::PaymentCryptographyData::SessionKeyDerivation>

The attributes and values to use for deriving a session key for ARQC
verification within Amazon Web Services Payment Cryptography. The same
attributes were used for ARQC generation outside of Amazon Web Services
Payment Cryptography.



=head2 B<REQUIRED> TransactionData => Str

The transaction data that Amazon Web Services Payment Cryptography uses
for ARQC verification. The same transaction is used for ARQC generation
outside of Amazon Web Services Payment Cryptography.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyAuthRequestCryptogram in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

