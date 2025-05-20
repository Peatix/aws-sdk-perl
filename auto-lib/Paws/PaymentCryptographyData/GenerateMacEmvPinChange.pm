
package Paws::PaymentCryptographyData::GenerateMacEmvPinChange;
  use Moose;
  has DerivationMethodAttributes => (is => 'ro', isa => 'Paws::PaymentCryptographyData::DerivationMethodAttributes', required => 1);
  has MessageData => (is => 'ro', isa => 'Str', required => 1);
  has NewEncryptedPinBlock => (is => 'ro', isa => 'Str', required => 1);
  has NewPinPekIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PinBlockFormat => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingConfidentialityKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingIntegrityKeyIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateMacEmvPinChange');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/macemvpinchange/generate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptographyData::GenerateMacEmvPinChangeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::GenerateMacEmvPinChange - Arguments for method GenerateMacEmvPinChange on L<Paws::PaymentCryptographyData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateMacEmvPinChange on the
L<Payment Cryptography Data Plane|Paws::PaymentCryptographyData> service. Use the attributes of this class
as arguments to method GenerateMacEmvPinChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateMacEmvPinChange.

=head1 SYNOPSIS

    my $dataplane.payment-cryptography = Paws->service('PaymentCryptographyData');
    my $GenerateMacEmvPinChangeOutput =
      $dataplane . payment-cryptography->GenerateMacEmvPinChange(
      DerivationMethodAttributes => {
        Amex => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          AuthorizationRequestKeyIdentifier =>
            'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',              # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19
          CurrentPinAttributes => {
            CurrentEncryptedPinBlock =>
              'MyPinBlockLengthEquals16',                     # min: 16, max: 16
            CurrentPinPekIdentifier =>
              'MyKeyArnOrKeyAliasType',                       # min: 7, max: 322

          },    # OPTIONAL
        },    # OPTIONAL
        Emv2000 => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',          # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
        EmvCommon => {
          ApplicationCryptogram =>
            'MyApplicationCryptogramType',    # min: 16, max: 16
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',    # values: EMV_OPTION_A, EMV_OPTION_B
          Mode                   => 'ECB',                    # values: ECB, CBC
          PanSequenceNumber      => 'MyNumberLengthEquals2',  # min: 2, max: 2
          PinBlockLengthPosition => 'NONE',   # values: NONE, FRONT_OF_PIN_BLOCK
          PinBlockPaddingType    =>
            'NO_PADDING',    # values: NO_PADDING, ISO_IEC_7816_4
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',    # min: 12, max: 19

        },    # OPTIONAL
        Mastercard => {
          ApplicationCryptogram =>
            'MyApplicationCryptogramType',    # min: 16, max: 16
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',    # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19

        },    # OPTIONAL
        Visa => {
          ApplicationTransactionCounter =>
            'MyHexLengthEquals4',    # min: 4, max: 4
          AuthorizationRequestKeyIdentifier =>
            'MyKeyArnOrKeyAliasType',    # min: 7, max: 322
          MajorKeyDerivationMode =>
            'EMV_OPTION_A',              # values: EMV_OPTION_A, EMV_OPTION_B
          PanSequenceNumber    => 'MyNumberLengthEquals2',    # min: 2, max: 2
          PrimaryAccountNumber =>
            'MyPrimaryAccountNumberType',                     # min: 12, max: 19
          CurrentPinAttributes => {
            CurrentEncryptedPinBlock =>
              'MyPinBlockLengthEquals16',                     # min: 16, max: 16
            CurrentPinPekIdentifier =>
              'MyKeyArnOrKeyAliasType',                       # min: 7, max: 322

          },    # OPTIONAL
        },    # OPTIONAL
      },
      MessageData                                 => 'MyCommandMessageDataType',
      NewEncryptedPinBlock                        => 'MyPinBlockLengthEquals16',
      NewPinPekIdentifier                         => 'MyKeyArnOrKeyAliasType',
      PinBlockFormat                              => 'ISO_FORMAT_0',
      SecureMessagingConfidentialityKeyIdentifier => 'MyKeyArnOrKeyAliasType',
      SecureMessagingIntegrityKeyIdentifier       => 'MyKeyArnOrKeyAliasType',

      );

    # Results:
    my $EncryptedPinBlock = $GenerateMacEmvPinChangeOutput->EncryptedPinBlock;
    my $Mac               = $GenerateMacEmvPinChangeOutput->Mac;
    my $NewPinPekArn      = $GenerateMacEmvPinChangeOutput->NewPinPekArn;
    my $NewPinPekKeyCheckValue =
      $GenerateMacEmvPinChangeOutput->NewPinPekKeyCheckValue;
    my $SecureMessagingConfidentialityKeyArn =
      $GenerateMacEmvPinChangeOutput->SecureMessagingConfidentialityKeyArn;
    my $SecureMessagingConfidentialityKeyCheckValue =
      $GenerateMacEmvPinChangeOutput
      ->SecureMessagingConfidentialityKeyCheckValue;
    my $SecureMessagingIntegrityKeyArn =
      $GenerateMacEmvPinChangeOutput->SecureMessagingIntegrityKeyArn;
    my $SecureMessagingIntegrityKeyCheckValue =
      $GenerateMacEmvPinChangeOutput->SecureMessagingIntegrityKeyCheckValue;
    my $VisaAmexDerivationOutputs =
      $GenerateMacEmvPinChangeOutput->VisaAmexDerivationOutputs;

# Returns a L<Paws::PaymentCryptographyData::GenerateMacEmvPinChangeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataplane.payment-cryptography/GenerateMacEmvPinChange>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DerivationMethodAttributes => L<Paws::PaymentCryptographyData::DerivationMethodAttributes>

The attributes and data values to derive payment card specific
confidentiality and integrity keys.



=head2 B<REQUIRED> MessageData => Str

The message data is the APDU command from the card reader or terminal.
The target encrypted PIN block, after translation to ISO2 format, is
appended to this message data to generate an issuer script response.



=head2 B<REQUIRED> NewEncryptedPinBlock => Str

The incoming new encrypted PIN block data for offline pin change on an
EMV card.



=head2 B<REQUIRED> NewPinPekIdentifier => Str

The C<keyARN> of the PEK protecting the incoming new encrypted PIN
block.



=head2 B<REQUIRED> PinBlockFormat => Str

The PIN encoding format of the incoming new encrypted PIN block as
specified in ISO 9564.

Valid values are: C<"ISO_FORMAT_0">, C<"ISO_FORMAT_1">, C<"ISO_FORMAT_3">

=head2 B<REQUIRED> SecureMessagingConfidentialityKeyIdentifier => Str

The C<keyARN> of the issuer master key (IMK-SMC) used to protect the
PIN block data in the issuer script response.



=head2 B<REQUIRED> SecureMessagingIntegrityKeyIdentifier => Str

The C<keyARN> of the issuer master key (IMK-SMI) used to authenticate
the issuer script response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateMacEmvPinChange in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

