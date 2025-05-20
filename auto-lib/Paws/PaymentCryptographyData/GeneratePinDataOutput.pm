
package Paws::PaymentCryptographyData::GeneratePinDataOutput;
  use Moose;
  has EncryptedPinBlock => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has GenerationKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has GenerationKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has PinData => (is => 'ro', isa => 'Paws::PaymentCryptographyData::PinData', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::GeneratePinDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptedPinBlock => Str

The PIN block encrypted under PEK from Amazon Web Services Payment
Cryptography. The encrypted PIN block is a composite of PAN (Primary
Account Number) and PIN (Personal Identification Number), generated in
accordance with ISO 9564 standard.


=head2 B<REQUIRED> EncryptionKeyArn => Str

The C<keyARN> of the PEK that Amazon Web Services Payment Cryptography
uses for encrypted pin block generation. For ECDH, it is the C<keyARN>
of the asymmetric ECC key.


=head2 B<REQUIRED> EncryptionKeyCheckValue => Str

The key check value (KCV) of the encryption key. The KCV is used to
check if all parties holding a given key have the same key or to detect
that a key has changed.

Amazon Web Services Payment Cryptography computes the KCV according to
the CMAC specification.


=head2 B<REQUIRED> GenerationKeyArn => Str

The C<keyARN> of the pin data generation key that Amazon Web Services
Payment Cryptography uses for PIN, PVV or PIN Offset generation.


=head2 B<REQUIRED> GenerationKeyCheckValue => Str

The key check value (KCV) of the encryption key. The KCV is used to
check if all parties holding a given key have the same key or to detect
that a key has changed.

Amazon Web Services Payment Cryptography computes the KCV according to
the CMAC specification.


=head2 B<REQUIRED> PinData => L<Paws::PaymentCryptographyData::PinData>

The attributes and values Amazon Web Services Payment Cryptography uses
for pin data generation.


=head2 _request_id => Str


=cut

