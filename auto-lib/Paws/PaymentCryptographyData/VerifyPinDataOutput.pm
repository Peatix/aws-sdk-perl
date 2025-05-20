
package Paws::PaymentCryptographyData::VerifyPinDataOutput;
  use Moose;
  has EncryptionKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);
  has VerificationKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has VerificationKeyCheckValue => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::VerifyPinDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionKeyArn => Str

The C<keyARN> of the PEK that Amazon Web Services Payment Cryptography
uses for encrypted pin block generation.


=head2 B<REQUIRED> EncryptionKeyCheckValue => Str

The key check value (KCV) of the encryption key. The KCV is used to
check if all parties holding a given key have the same key or to detect
that a key has changed.

Amazon Web Services Payment Cryptography computes the KCV according to
the CMAC specification.


=head2 B<REQUIRED> VerificationKeyArn => Str

The C<keyARN> of the PIN encryption key that Amazon Web Services
Payment Cryptography uses for PIN or PIN Offset verification.


=head2 B<REQUIRED> VerificationKeyCheckValue => Str

The key check value (KCV) of the encryption key. The KCV is used to
check if all parties holding a given key have the same key or to detect
that a key has changed.

Amazon Web Services Payment Cryptography computes the KCV according to
the CMAC specification.


=head2 _request_id => Str


=cut

