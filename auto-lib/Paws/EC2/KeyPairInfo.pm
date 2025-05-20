package Paws::EC2::KeyPairInfo;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest']);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest']);
  has KeyPairId => (is => 'ro', isa => 'Str', request_name => 'keyPairId', traits => ['NameInRequest']);
  has KeyType => (is => 'ro', isa => 'Str', request_name => 'keyType', traits => ['NameInRequest']);
  has PublicKey => (is => 'ro', isa => 'Str', request_name => 'publicKey', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::KeyPairInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::KeyPairInfo object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::KeyPairInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreateTime => Str

If you used Amazon EC2 to create the key pair, this is the date and
time when the key was created, in ISO 8601 date-time format
(https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC
time zone.

If you imported an existing key pair to Amazon EC2, this is the date
and time the key was imported, in ISO 8601 date-time format
(https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC
time zone.


=head2 KeyFingerprint => Str

If you used CreateKeyPair to create the key pair:

=over

=item *

For RSA key pairs, the key fingerprint is the SHA-1 digest of the DER
encoded private key.

=item *

For ED25519 key pairs, the key fingerprint is the base64-encoded
SHA-256 digest, which is the default for OpenSSH, starting with OpenSSH
6.8 (http://www.openssh.com/txt/release-6.8).

=back

If you used ImportKeyPair to provide Amazon Web Services the public
key:

=over

=item *

For RSA key pairs, the key fingerprint is the MD5 public key
fingerprint as specified in section 4 of RFC4716.

=item *

For ED25519 key pairs, the key fingerprint is the base64-encoded
SHA-256 digest, which is the default for OpenSSH, starting with OpenSSH
6.8 (http://www.openssh.com/txt/release-6.8).

=back



=head2 KeyName => Str

The name of the key pair.


=head2 KeyPairId => Str

The ID of the key pair.


=head2 KeyType => Str

The type of key pair.


=head2 PublicKey => Str

The public key material.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags applied to the key pair.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
