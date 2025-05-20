
package Paws::EC2::KeyPair;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest',]);
  has KeyMaterial => (is => 'ro', isa => 'Str', request_name => 'keyMaterial', traits => ['NameInRequest',]);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest',]);
  has KeyPairId => (is => 'ro', isa => 'Str', request_name => 'keyPairId', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::KeyPair

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

=over

=item *

For RSA key pairs, the key fingerprint is the SHA-1 digest of the DER
encoded private key.

=item *

For ED25519 key pairs, the key fingerprint is the base64-encoded
SHA-256 digest, which is the default for OpenSSH, starting with OpenSSH
6.8.

=back



=head2 KeyMaterial => Str

An unencrypted PEM encoded RSA or ED25519 private key.


=head2 KeyName => Str

The name of the key pair.


=head2 KeyPairId => Str

The ID of the key pair.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags applied to the key pair.


=head2 _request_id => Str


=cut

