
package Paws::PaymentCryptographyData::GenerateMacEmvPinChangeOutput;
  use Moose;
  has EncryptedPinBlock => (is => 'ro', isa => 'Str', required => 1);
  has Mac => (is => 'ro', isa => 'Str', required => 1);
  has NewPinPekArn => (is => 'ro', isa => 'Str', required => 1);
  has NewPinPekKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingConfidentialityKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingConfidentialityKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingIntegrityKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has SecureMessagingIntegrityKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has VisaAmexDerivationOutputs => (is => 'ro', isa => 'Paws::PaymentCryptographyData::VisaAmexDerivationOutputs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::GenerateMacEmvPinChangeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptedPinBlock => Str

Returns the incoming new encrpted PIN block.


=head2 B<REQUIRED> Mac => Str

Returns the mac of the issuer script containing message data and
appended target encrypted pin block in ISO2 format.


=head2 B<REQUIRED> NewPinPekArn => Str

Returns the C<keyArn> of the PEK protecting the incoming new encrypted
PIN block.


=head2 B<REQUIRED> NewPinPekKeyCheckValue => Str

The key check value (KCV) of the PEK uprotecting the incoming new
encrypted PIN block.


=head2 B<REQUIRED> SecureMessagingConfidentialityKeyArn => Str

Returns the C<keyArn> of the IMK-SMC used by the operation.


=head2 B<REQUIRED> SecureMessagingConfidentialityKeyCheckValue => Str

The key check value (KCV) of the SMC issuer master key used by the
operation.


=head2 B<REQUIRED> SecureMessagingIntegrityKeyArn => Str

Returns the C<keyArn> of the IMK-SMI used by the operation.


=head2 B<REQUIRED> SecureMessagingIntegrityKeyCheckValue => Str

The key check value (KCV) of the SMI issuer master key used by the
operation.


=head2 VisaAmexDerivationOutputs => L<Paws::PaymentCryptographyData::VisaAmexDerivationOutputs>

The attribute values used for Amex and Visa derivation methods.


=head2 _request_id => Str


=cut

