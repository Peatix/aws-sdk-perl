
package Paws::PaymentCryptographyData::EncryptDataOutput;
  use Moose;
  has CipherText => (is => 'ro', isa => 'Str', required => 1);
  has KeyArn => (is => 'ro', isa => 'Str', required => 1);
  has KeyCheckValue => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::EncryptDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CipherText => Str

The encrypted ciphertext.


=head2 B<REQUIRED> KeyArn => Str

The C<keyARN> of the encryption key that Amazon Web Services Payment
Cryptography uses for plaintext encryption.


=head2 KeyCheckValue => Str

The key check value (KCV) of the encryption key. The KCV is used to
check if all parties holding a given key have the same key or to detect
that a key has changed.

Amazon Web Services Payment Cryptography computes the KCV according to
the CMAC specification.


=head2 _request_id => Str


=cut

