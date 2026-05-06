package Paws::PaymentCryptographyData;
  use Moose;
  sub service { 'dataplane.payment-cryptography' }
  sub signing_name { 'payment-cryptography' }
  sub version { '2022-02-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DecryptData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::DecryptData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EncryptData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::EncryptData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateCardValidationData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::GenerateCardValidationData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateMac {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::GenerateMac', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateMacEmvPinChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::GenerateMacEmvPinChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GeneratePinData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::GeneratePinData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReEncryptData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::ReEncryptData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TranslatePinData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::TranslatePinData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyAuthRequestCryptogram {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::VerifyAuthRequestCryptogram', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyCardValidationData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::VerifyCardValidationData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyMac {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::VerifyMac', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyPinData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptographyData::VerifyPinData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DecryptData EncryptData GenerateCardValidationData GenerateMac GenerateMacEmvPinChange GeneratePinData ReEncryptData TranslatePinData VerifyAuthRequestCryptogram VerifyCardValidationData VerifyMac VerifyPinData / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData - Perl Interface to AWS Payment Cryptography Data Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PaymentCryptographyData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

You use the Amazon Web Services Payment Cryptography Data Plane to
manage how encryption keys are used for payment-related transaction
processing and associated cryptographic operations. You can encrypt,
decrypt, generate, verify, and translate payment-related cryptographic
operations in Amazon Web Services Payment Cryptography. For more
information, see Data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

To manage your encryption keys, you use the Amazon Web Services Payment
Cryptography Control Plane
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/Welcome.html).
You can create, import, export, share, manage, and delete keys. You can
also manage Identity and Access Management (IAM) policies for keys.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 DecryptData

=over

=item CipherText => Str

=item DecryptionAttributes => L<Paws::PaymentCryptographyData::EncryptionDecryptionAttributes>

=item KeyIdentifier => Str

=item [WrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::DecryptData>

Returns: a L<Paws::PaymentCryptographyData::DecryptDataOutput> instance

Decrypts ciphertext data to plaintext using a symmetric (TDES, AES),
asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For
more information, see Decrypt data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

You can use an decryption key generated within Amazon Web Services
Payment Cryptography, or you can import your own decryption key by
calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
For this operation, the key must have C<KeyModesOfUse> set to
C<Decrypt>. In asymmetric decryption, Amazon Web Services Payment
Cryptography decrypts the ciphertext using the private component of the
asymmetric encryption key pair. For data encryption outside of Amazon
Web Services Payment Cryptography, you can export the public component
of the asymmetric key pair by calling GetPublicCertificate
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html).

This operation also supports dynamic keys, allowing you to pass a
dynamic decryption key as a TR-31 WrappedKeyBlock. This can be used
when key material is frequently rotated, such as during every card
transaction, and there is need to avoid importing short-lived keys into
Amazon Web Services Payment Cryptography. To decrypt using dynamic
keys, the C<keyARN> is the Key Encryption Key (KEK) of the TR-31
wrapped decryption key material. The incoming wrapped key shall have a
key purpose of D0 with a mode of use of B or D. For more information,
see Using Dynamic Keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

For symmetric and DUKPT decryption, Amazon Web Services Payment
Cryptography supports C<TDES> and C<AES> algorithms. For EMV
decryption, Amazon Web Services Payment Cryptography supports C<TDES>
algorithms. For asymmetric decryption, Amazon Web Services Payment
Cryptography supports C<RSA>.

When you use TDES or TDES DUKPT, the ciphertext data length must be a
multiple of 8 bytes. For AES or AES DUKPT, the ciphertext data length
must be a multiple of 16 bytes. For RSA, it sould be equal to the key
size unless padding is enabled.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

EncryptData

=item *

GetPublicCertificate
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=back



=head2 EncryptData

=over

=item EncryptionAttributes => L<Paws::PaymentCryptographyData::EncryptionDecryptionAttributes>

=item KeyIdentifier => Str

=item PlainText => Str

=item [WrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::EncryptData>

Returns: a L<Paws::PaymentCryptographyData::EncryptDataOutput> instance

Encrypts plaintext data to ciphertext using a symmetric (TDES, AES),
asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For
more information, see Encrypt data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

You can generate an encryption key within Amazon Web Services Payment
Cryptography by calling CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).
You can import your own encryption key by calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).

For this operation, the key must have C<KeyModesOfUse> set to
C<Encrypt>. In asymmetric encryption, plaintext is encrypted using
public component. You can import the public component of an asymmetric
key pair created outside Amazon Web Services Payment Cryptography by
calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).

This operation also supports dynamic keys, allowing you to pass a
dynamic encryption key as a TR-31 WrappedKeyBlock. This can be used
when key material is frequently rotated, such as during every card
transaction, and there is need to avoid importing short-lived keys into
Amazon Web Services Payment Cryptography. To encrypt using dynamic
keys, the C<keyARN> is the Key Encryption Key (KEK) of the TR-31
wrapped encryption key material. The incoming wrapped key shall have a
key purpose of D0 with a mode of use of B or D. For more information,
see Using Dynamic Keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

For symmetric and DUKPT encryption, Amazon Web Services Payment
Cryptography supports C<TDES> and C<AES> algorithms. For EMV
encryption, Amazon Web Services Payment Cryptography supports C<TDES>
algorithms.For asymmetric encryption, Amazon Web Services Payment
Cryptography supports C<RSA>.

When you use TDES or TDES DUKPT, the plaintext data length must be a
multiple of 8 bytes. For AES or AES DUKPT, the plaintext data length
must be a multiple of 16 bytes. For RSA, it sould be equal to the key
size unless padding is enabled.

To encrypt using DUKPT, you must already have a BDK (Base Derivation
Key) key in your account with C<KeyModesOfUse> set to C<DeriveKey>, or
you can generate a new DUKPT key by calling CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).
To encrypt using EMV, you must already have an IMK (Issuer Master Key)
key in your account with C<KeyModesOfUse> set to C<DeriveKey>.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DecryptData

=item *

GetPublicCertificate
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=item *

ReEncryptData

=back



=head2 GenerateCardValidationData

=over

=item GenerationAttributes => L<Paws::PaymentCryptographyData::CardGenerationAttributes>

=item KeyIdentifier => Str

=item PrimaryAccountNumber => Str

=item [ValidationDataLength => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::GenerateCardValidationData>

Returns: a L<Paws::PaymentCryptographyData::GenerateCardValidationDataOutput> instance

Generates card-related validation data using algorithms such as Card
Verification Values (CVV/CVV2), Dynamic Card Verification Values
(dCVV/dCVV2), or Card Security Codes (CSC). For more information, see
Generate card data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

This operation generates a CVV or CSC value that is printed on a
payment credit or debit card during card production. The CVV or CSC,
PAN (Primary Account Number) and expiration date of the card are
required to check its validity during transaction processing. To begin
this operation, a CVK (Card Verification Key) encryption key is
required. You can use CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)
or ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
to establish a CVK within Amazon Web Services Payment Cryptography. The
C<KeyModesOfUse> should be set to C<Generate> and C<Verify> for a CVK
encryption key.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=item *

VerifyCardValidationData

=back



=head2 GenerateMac

=over

=item GenerationAttributes => L<Paws::PaymentCryptographyData::MacAttributes>

=item KeyIdentifier => Str

=item MessageData => Str

=item [MacLength => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::GenerateMac>

Returns: a L<Paws::PaymentCryptographyData::GenerateMacOutput> instance

Generates a Message Authentication Code (MAC) cryptogram within Amazon
Web Services Payment Cryptography.

You can use this operation to authenticate card-related data by using
known data values to generate MAC for data validation between the
sending and receiving parties. This operation uses message data, a
secret encryption key and MAC algorithm to generate a unique MAC value
for transmission. The receiving party of the MAC must use the same
message data, secret encryption key and MAC algorithm to reproduce
another MAC value for comparision.

You can use this operation to generate a DUPKT, CMAC, HMAC or EMV MAC
by setting generation attributes and algorithm to the associated
values. The MAC generation encryption key must have valid values for
C<KeyUsage> such as C<TR31_M7_HMAC_KEY> for HMAC generation, and they
key must have C<KeyModesOfUse> set to C<Generate> and C<Verify>.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

VerifyMac

=back



=head2 GenerateMacEmvPinChange

=over

=item DerivationMethodAttributes => L<Paws::PaymentCryptographyData::DerivationMethodAttributes>

=item MessageData => Str

=item NewEncryptedPinBlock => Str

=item NewPinPekIdentifier => Str

=item PinBlockFormat => Str

=item SecureMessagingConfidentialityKeyIdentifier => Str

=item SecureMessagingIntegrityKeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::GenerateMacEmvPinChange>

Returns: a L<Paws::PaymentCryptographyData::GenerateMacEmvPinChangeOutput> instance

Generates an issuer script mac for EMV payment cards that use offline
PINs as the cardholder verification method (CVM).

This operation generates an authenticated issuer script response by
appending the incoming message data (APDU command) with the target
encrypted PIN block in ISO2 format. The command structure and method to
send the issuer script update to the card is not defined by this
operation and is typically determined by the applicable payment card
scheme.

The primary inputs to this operation include the incoming new encrypted
pinblock, PIN encryption key (PEK), issuer master key (IMK), primary
account number (PAN), and the payment card derivation method.

The operation uses two issuer master keys - secure messaging for
confidentiality (IMK-SMC) and secure messaging for integrity (IMK-SMI).
The SMC key is used to internally derive a key to secure the pin, while
SMI key is used to internally derive a key to authenticate the script
reponse as per the EMV 4.4 - Book 2 - Security and Key Management
(https://www.emvco.com/specifications/) specification.

This operation supports Amex, EMV2000, EMVCommon, Mastercard and Visa
derivation methods, each requiring specific input parameters. Users
must follow the specific derivation method and input parameters defined
by the respective payment card scheme.

Use GenerateMac operation when sending a script update to an EMV card
that does not involve PIN change. When assigning IAM permissions, it is
important to understand that EncryptData using EMV keys and GenerateMac
perform similar functions to this command.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

EncryptData

=item *

GenerateMac

=back



=head2 GeneratePinData

=over

=item EncryptionKeyIdentifier => Str

=item GenerationAttributes => L<Paws::PaymentCryptographyData::PinGenerationAttributes>

=item GenerationKeyIdentifier => Str

=item PinBlockFormat => Str

=item PrimaryAccountNumber => Str

=item [EncryptionWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]

=item [PinDataLength => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::GeneratePinData>

Returns: a L<Paws::PaymentCryptographyData::GeneratePinDataOutput> instance

Generates pin-related data such as PIN, PIN Verification Value (PVV),
PIN Block, and PIN Offset during new card issuance or reissuance. For
more information, see Generate PIN data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

PIN data is never transmitted in clear to or from Amazon Web Services
Payment Cryptography. This operation generates PIN, PVV, or PIN Offset
and then encrypts it using Pin Encryption Key (PEK) to create an
C<EncryptedPinBlock> for transmission from Amazon Web Services Payment
Cryptography. This operation uses a separate Pin Verification Key (PVK)
for VISA PVV generation.

Using ECDH key exchange, you can receive cardholder selectable PINs
into Amazon Web Services Payment Cryptography. The ECDH derived key
protects the incoming PIN block. You can also use it for reveal PIN,
wherein the generated PIN block is protected by the ECDH derived key
before transmission from Amazon Web Services Payment Cryptography. For
more information on establishing ECDH derived keys, see the Generating
keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GenerateCardValidationData

=item *

TranslatePinData

=item *

VerifyPinData

=back



=head2 ReEncryptData

=over

=item CipherText => Str

=item IncomingEncryptionAttributes => L<Paws::PaymentCryptographyData::ReEncryptionAttributes>

=item IncomingKeyIdentifier => Str

=item OutgoingEncryptionAttributes => L<Paws::PaymentCryptographyData::ReEncryptionAttributes>

=item OutgoingKeyIdentifier => Str

=item [IncomingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]

=item [OutgoingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::ReEncryptData>

Returns: a L<Paws::PaymentCryptographyData::ReEncryptDataOutput> instance

Re-encrypt ciphertext using DUKPT or Symmetric data encryption keys.

You can either generate an encryption key within Amazon Web Services
Payment Cryptography by calling CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)
or import your own encryption key by calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
The C<KeyArn> for use with this operation must be in a compatible key
state with C<KeyModesOfUse> set to C<Encrypt>.

This operation also supports dynamic keys, allowing you to pass a
dynamic encryption key as a TR-31 WrappedKeyBlock. This can be used
when key material is frequently rotated, such as during every card
transaction, and there is need to avoid importing short-lived keys into
Amazon Web Services Payment Cryptography. To re-encrypt using dynamic
keys, the C<keyARN> is the Key Encryption Key (KEK) of the TR-31
wrapped encryption key material. The incoming wrapped key shall have a
key purpose of D0 with a mode of use of B or D. For more information,
see Using Dynamic Keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

For symmetric and DUKPT encryption, Amazon Web Services Payment
Cryptography supports C<TDES> and C<AES> algorithms. To encrypt using
DUKPT, a DUKPT key must already exist within your account with
C<KeyModesOfUse> set to C<DeriveKey> or a new DUKPT can be generated by
calling CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DecryptData

=item *

EncryptData

=item *

GetPublicCertificate
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=back



=head2 TranslatePinData

=over

=item EncryptedPinBlock => Str

=item IncomingKeyIdentifier => Str

=item IncomingTranslationAttributes => L<Paws::PaymentCryptographyData::TranslationIsoFormats>

=item OutgoingKeyIdentifier => Str

=item OutgoingTranslationAttributes => L<Paws::PaymentCryptographyData::TranslationIsoFormats>

=item [IncomingDukptAttributes => L<Paws::PaymentCryptographyData::DukptDerivationAttributes>]

=item [IncomingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]

=item [OutgoingDukptAttributes => L<Paws::PaymentCryptographyData::DukptDerivationAttributes>]

=item [OutgoingWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::TranslatePinData>

Returns: a L<Paws::PaymentCryptographyData::TranslatePinDataOutput> instance

Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4.
For more information, see Translate PIN data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

PIN block translation involves changing a PIN block from one encryption
key to another and optionally change its format. PIN block translation
occurs entirely within the HSM boundary and PIN data never enters or
leaves Amazon Web Services Payment Cryptography in clear text. The
encryption key transformation can be from PEK (Pin Encryption Key) to
BDK (Base Derivation Key) for DUKPT or from BDK for DUKPT to PEK.

Amazon Web Services Payment Cryptography also supports use of dynamic
keys and ECDH (Elliptic Curve Diffie-Hellman) based key exchange for
this operation.

Dynamic keys allow you to pass a PEK as a TR-31 WrappedKeyBlock. They
can be used when key material is frequently rotated, such as during
every card transaction, and there is need to avoid importing
short-lived keys into Amazon Web Services Payment Cryptography. To
translate PIN block using dynamic keys, the C<keyARN> is the Key
Encryption Key (KEK) of the TR-31 wrapped PEK. The incoming wrapped key
shall have a key purpose of P0 with a mode of use of B or D. For more
information, see Using Dynamic Keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

Using ECDH key exchange, you can receive cardholder selectable PINs
into Amazon Web Services Payment Cryptography. The ECDH derived key
protects the incoming PIN block, which is translated to a PEK encrypted
PIN block for use within the service. You can also use ECDH for reveal
PIN, wherein the service translates the PIN block from PEK to a ECDH
derived encryption key. For more information on establishing ECDH
derived keys, see the Generating keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

The allowed combinations of PIN block format translations are guided by
PCI. It is important to note that not all encrypted PIN block formats
(example, format 1) require PAN (Primary Account Number) as input. And
as such, PIN block format that requires PAN (example, formats 0,3,4)
cannot be translated to a format (format 1) that does not require a PAN
for generation.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

Amazon Web Services Payment Cryptography currently supports ISO PIN
block 4 translation for PIN block built using legacy PAN length. That
is, PAN is the right most 12 digits excluding the check digits.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GeneratePinData

=item *

VerifyPinData

=back



=head2 VerifyAuthRequestCryptogram

=over

=item AuthRequestCryptogram => Str

=item KeyIdentifier => Str

=item MajorKeyDerivationMode => Str

=item SessionKeyDerivationAttributes => L<Paws::PaymentCryptographyData::SessionKeyDerivation>

=item TransactionData => Str

=item [AuthResponseAttributes => L<Paws::PaymentCryptographyData::CryptogramAuthResponse>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::VerifyAuthRequestCryptogram>

Returns: a L<Paws::PaymentCryptographyData::VerifyAuthRequestCryptogramOutput> instance

Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment
card authorization. For more information, see Verify auth request
cryptogram
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

ARQC generation is done outside of Amazon Web Services Payment
Cryptography and is typically generated on a point of sale terminal for
an EMV chip card to obtain payment authorization during transaction
time. For ARQC verification, you must first import the ARQC generated
outside of Amazon Web Services Payment Cryptography by calling
ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
This operation uses the imported ARQC and an major encryption key
(DUKPT) created by calling CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)
to either provide a boolean ARQC verification result or provide an APRC
(Authorization Response Cryptogram) response using Method 1 or Method
2. The C<ARPC_METHOD_1> uses C<AuthResponseCode> to generate ARPC and
C<ARPC_METHOD_2> uses C<CardStatusUpdate> to generate ARPC.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

VerifyCardValidationData

=item *

VerifyPinData

=back



=head2 VerifyCardValidationData

=over

=item KeyIdentifier => Str

=item PrimaryAccountNumber => Str

=item ValidationData => Str

=item VerificationAttributes => L<Paws::PaymentCryptographyData::CardVerificationAttributes>


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::VerifyCardValidationData>

Returns: a L<Paws::PaymentCryptographyData::VerifyCardValidationDataOutput> instance

Verifies card-related validation data using algorithms such as Card
Verification Values (CVV/CVV2), Dynamic Card Verification Values
(dCVV/dCVV2) and Card Security Codes (CSC). For more information, see
Verify card data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

This operation validates the CVV or CSC codes that is printed on a
payment credit or debit card during card payment transaction. The input
values are typically provided as part of an inbound transaction to an
issuer or supporting platform partner. Amazon Web Services Payment
Cryptography uses CVV or CSC, PAN (Primary Account Number) and
expiration date of the card to check its validity during transaction
processing. In this operation, the CVK (Card Verification Key)
encryption key for use with card data verification is same as the one
in used for GenerateCardValidationData.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GenerateCardValidationData

=item *

VerifyAuthRequestCryptogram

=item *

VerifyPinData

=back



=head2 VerifyMac

=over

=item KeyIdentifier => Str

=item Mac => Str

=item MessageData => Str

=item VerificationAttributes => L<Paws::PaymentCryptographyData::MacAttributes>

=item [MacLength => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::VerifyMac>

Returns: a L<Paws::PaymentCryptographyData::VerifyMacOutput> instance

Verifies a Message Authentication Code (MAC).

You can use this operation to verify MAC for message data
authentication such as . In this operation, you must use the same
message data, secret encryption key and MAC algorithm that was used to
generate MAC. You can use this operation to verify a DUPKT, CMAC, HMAC
or EMV MAC by setting generation attributes and algorithm to the
associated values.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GenerateMac

=back



=head2 VerifyPinData

=over

=item EncryptedPinBlock => Str

=item EncryptionKeyIdentifier => Str

=item PinBlockFormat => Str

=item PrimaryAccountNumber => Str

=item VerificationAttributes => L<Paws::PaymentCryptographyData::PinVerificationAttributes>

=item VerificationKeyIdentifier => Str

=item [DukptAttributes => L<Paws::PaymentCryptographyData::DukptAttributes>]

=item [EncryptionWrappedKey => L<Paws::PaymentCryptographyData::WrappedKey>]

=item [PinDataLength => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptographyData::VerifyPinData>

Returns: a L<Paws::PaymentCryptographyData::VerifyPinDataOutput> instance

Verifies pin-related data such as PIN and PIN Offset using algorithms
including VISA PVV and IBM3624. For more information, see Verify PIN
data
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

This operation verifies PIN data for user payment card. A card holder
PIN data is never transmitted in clear to or from Amazon Web Services
Payment Cryptography. This operation uses PIN Verification Key (PVK)
for PIN or PIN Offset generation and then encrypts it using PIN
Encryption Key (PEK) to create an C<EncryptedPinBlock> for transmission
from Amazon Web Services Payment Cryptography.

For information about valid keys for this operation, see Understanding
key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
and Key types for specific data operations
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GeneratePinData

=item *

TranslatePinData

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

