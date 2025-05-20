
package Paws::EC2::ImportKeyPairResult;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest',]);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest',]);
  has KeyPairId => (is => 'ro', isa => 'Str', request_name => 'keyPairId', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportKeyPairResult

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

=over

=item *

For RSA key pairs, the key fingerprint is the MD5 public key
fingerprint as specified in section 4 of RFC 4716.

=item *

For ED25519 key pairs, the key fingerprint is the base64-encoded
SHA-256 digest, which is the default for OpenSSH, starting with OpenSSH
6.8 (http://www.openssh.com/txt/release-6.8).

=back



=head2 KeyName => Str

The key pair name that you provided.


=head2 KeyPairId => Str

The ID of the resulting key pair.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags applied to the imported key pair.


=head2 _request_id => Str


=cut

