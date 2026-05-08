package Paws::PaymentCryptography;
  use Moose;
  sub service { 'controlplane.payment-cryptography' }
  sub signing_name { 'payment-cryptography' }
  sub version { '2021-09-14' }
  sub target_prefix { 'PaymentCryptographyControlPlane' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::CreateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::DeleteKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::ExportKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::GetAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::GetKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParametersForExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::GetParametersForExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParametersForImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::GetParametersForImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKeyCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::GetPublicKeyCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::ImportKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::ListKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::RestoreKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartKeyUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::StartKeyUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopKeyUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::StopKeyUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PaymentCryptography::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->Keys }, @{ $next_result->Keys };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Keys') foreach (@{ $result->Keys });
        $result = $self->ListKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Keys') foreach (@{ $result->Keys });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/CreateAlias CreateKey DeleteAlias DeleteKey ExportKey GetAlias GetKey GetParametersForExport GetParametersForImport GetPublicKeyCertificate ImportKey ListAliases ListKeys ListTagsForResource RestoreKey StartKeyUsage StopKeyUsage TagResource UntagResource UpdateAlias / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography - Perl Interface to AWS Payment Cryptography Control Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PaymentCryptography');
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

Amazon Web Services Payment Cryptography Control Plane APIs manage
encryption keys for use during payment-related cryptographic
operations. You can create, import, export, share, manage, and delete
keys. You can also manage Identity and Access Management (IAM) policies
for keys. For more information, see Identity and access management
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security-iam.html)
in the I<Amazon Web Services Payment Cryptography User Guide.>

To use encryption keys for payment-related transaction processing and
associated cryptographic operations, you use the Amazon Web Services
Payment Cryptography Data Plane
(https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/Welcome.html).
You can perform actions like encrypt, decrypt, generate, and verify
payment-related data.

All Amazon Web Services Payment Cryptography API calls must be signed
and transmitted using Transport Layer Security (TLS). We recommend you
always use the latest supported TLS version for logging API requests.

Amazon Web Services Payment Cryptography supports CloudTrail for
control plane operations, a service that logs Amazon Web Services API
calls and related events for your Amazon Web Services account and
delivers them to an Amazon S3 bucket you specify. By using the
information collected by CloudTrail, you can determine what requests
were made to Amazon Web Services Payment Cryptography, who made the
request, when it was made, and so on. If you don't congure a trail, you
can still view the most recent events in the CloudTrail console. For
more information, see the CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography-2021-09-14>


=head1 METHODS

=head2 CreateAlias

=over

=item AliasName => Str

=item [KeyArn => Str]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::CreateAlias>

Returns: a L<Paws::PaymentCryptography::CreateAliasOutput> instance

Creates an I<alias>, or a friendly name, for an Amazon Web Services
Payment Cryptography key. You can use an alias to identify a key in the
console and when you call cryptographic operations such as EncryptData
(https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_EncryptData.html)
or DecryptData
(https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_DecryptData.html).

You can associate the alias with any key in the same Amazon Web
Services Region. Each alias is associated with only one key at a time,
but a key can have multiple aliases. You can't create an alias without
a key. The alias must be unique in the account and Amazon Web Services
Region, but you can create another alias with the same name in a
different Amazon Web Services Region.

To change the key that's associated with the alias, call UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html).
To delete the alias, call DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html).
These operations don't affect the underlying key. To get the alias that
you created, call ListAliases
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html).

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html)

=item *

GetAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html)

=item *

ListAliases
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html)

=item *

UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html)

=back



=head2 CreateKey

=over

=item Exportable => Bool

=item KeyAttributes => L<Paws::PaymentCryptography::KeyAttributes>

=item [DeriveKeyUsage => Str]

=item [Enabled => Bool]

=item [KeyCheckValueAlgorithm => Str]

=item [Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::CreateKey>

Returns: a L<Paws::PaymentCryptography::CreateKeyOutput> instance

Creates an Amazon Web Services Payment Cryptography key, a logical
representation of a cryptographic key, that is unique in your account
and Amazon Web Services Region. You use keys for cryptographic
functions such as encryption and decryption.

In addition to the key material used in cryptographic operations, an
Amazon Web Services Payment Cryptography key includes metadata such as
the key ARN, key usage, key origin, creation date, description, and key
state.

When you create a key, you specify both immutable and mutable data
about the key. The immutable data contains key attributes that define
the scope and cryptographic operations that you can perform using the
key, for example key class (example: C<SYMMETRIC_KEY>), key algorithm
(example: C<TDES_2KEY>), key usage (example:
C<TR31_P0_PIN_ENCRYPTION_KEY>) and key modes of use (example:
C<Encrypt>). For information about valid combinations of key
attributes, see Understanding key attributes
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
in the I<Amazon Web Services Payment Cryptography User Guide>. The
mutable data contained within a key includes usage timestamp and key
deletion timestamp and can be modified after creation.

Amazon Web Services Payment Cryptography binds key attributes to keys
using key blocks when you store or export them. Amazon Web Services
Payment Cryptography stores the key contents wrapped and never stores
or transmits them in the clear.

B<Cross-account use>: This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)

=item *

GetKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html)

=item *

ListKeys
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html)

=back



=head2 DeleteAlias

=over

=item AliasName => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::DeleteAlias>

Returns: a L<Paws::PaymentCryptography::DeleteAliasOutput> instance

Deletes the alias, but doesn't affect the underlying key.

Each key can have multiple aliases. To get the aliases of all keys, use
the UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html)
operation. To change the alias of a key, first use DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html)
to delete the current alias and then use CreateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html)
to create a new alias. To associate an existing alias with a different
key, call UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html).

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html)

=item *

GetAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html)

=item *

ListAliases
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html)

=item *

UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html)

=back



=head2 DeleteKey

=over

=item KeyIdentifier => Str

=item [DeleteKeyInDays => Int]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::DeleteKey>

Returns: a L<Paws::PaymentCryptography::DeleteKeyOutput> instance

Deletes the key material and metadata associated with Amazon Web
Services Payment Cryptography key.

Key deletion is irreversible. After a key is deleted, you can't perform
cryptographic operations using the key. For example, you can't decrypt
data that was encrypted by a deleted Amazon Web Services Payment
Cryptography key, and the data may become unrecoverable. Because key
deletion is destructive, Amazon Web Services Payment Cryptography has a
safety mechanism to prevent accidental deletion of a key. When you call
this operation, Amazon Web Services Payment Cryptography disables the
specified key but doesn't delete it until after a waiting period set
using C<DeleteKeyInDays>. The default waiting period is 7 days. During
the waiting period, the C<KeyState> is C<DELETE_PENDING>. After the key
is deleted, the C<KeyState> is C<DELETE_COMPLETE>.

You should delete a key only when you are sure that you don't need to
use it anymore and no other parties are utilizing this key. If you
aren't sure, consider deactivating it instead by calling StopKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html).

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

RestoreKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_RestoreKey.html)

=item *

StartKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html)

=item *

StopKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html)

=back



=head2 ExportKey

=over

=item ExportKeyIdentifier => Str

=item KeyMaterial => L<Paws::PaymentCryptography::ExportKeyMaterial>

=item [ExportAttributes => L<Paws::PaymentCryptography::ExportAttributes>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::ExportKey>

Returns: a L<Paws::PaymentCryptography::ExportKeyOutput> instance

Exports a key from Amazon Web Services Payment Cryptography.

Amazon Web Services Payment Cryptography simplifies key exchange by
replacing the existing paper-based approach with a modern electronic
approach. With C<ExportKey> you can export symmetric keys using either
symmetric and asymmetric key exchange mechanisms. Using this operation,
you can share your Amazon Web Services Payment Cryptography generated
keys with other service partners to perform cryptographic operations
outside of Amazon Web Services Payment Cryptography

For symmetric key exchange, Amazon Web Services Payment Cryptography
uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And
for asymmetric key exchange, Amazon Web Services Payment Cryptography
supports ANSI X9 TR-34 norm and RSA wrap and unwrap key exchange
mechanism. Asymmetric key exchange methods are typically used to
establish bi-directional trust between the two parties exhanging keys
and are used for initial key exchange such as Key Encryption Key (KEK).
After which you can export working keys using symmetric method to
perform various cryptographic operations within Amazon Web Services
Payment Cryptography.

The TR-34 norm is intended for exchanging 3DES keys only and keys are
imported in a WrappedKeyBlock format. Key attributes (such as KeyUsage,
KeyAlgorithm, KeyModesOfUse, Exportability) are contained within the
key block. With RSA wrap and unwrap, you can exchange both 3DES and
AES-128 keys. The keys are imported in a WrappedKeyCryptogram format
and you will need to specify the key attributes during import.

You can also use C<ExportKey> functionality to generate and export an
IPEK (Initial Pin Encryption Key) from Amazon Web Services Payment
Cryptography using either TR-31 or TR-34 export key exchange. IPEK is
generated from BDK (Base Derivation Key) and C<ExportDukptInitialKey>
attribute KSN (C<KeySerialNumber>). The generated IPEK does not persist
within Amazon Web Services Payment Cryptography and has to be
re-generated each time during export.

For key exchange using TR-31 or TR-34 key blocks, you can also export
optional blocks within the key block header which contain additional
attribute information about the key. The C<KeyVersion> within
C<KeyBlockHeaders> indicates the version of the key within the key
block. Furthermore, C<KeyExportability> within C<KeyBlockHeaders> can
be used to further restrict exportability of the key after export from
Amazon Web Services Payment Cryptography.

The C<OptionalBlocks> contain the additional data related to the key.
For information on data type that can be included within optional
blocks, refer to ASC X9.143-2022
(https://webstore.ansi.org/standards/ascx9/ansix91432022).

Data included in key block headers is signed but transmitted in clear
text. Sensitive or confidential information should not be included in
optional blocks. Refer to ASC X9.143-2022 standard for information on
allowed data type.

B<To export initial keys (KEK) or IPEK using TR-34>

Using this operation, you can export initial key using TR-34 asymmetric
key exchange. You can only export KEK generated within Amazon Web
Services Payment Cryptography. In TR-34 terminology, the sending party
of the key is called Key Distribution Host (KDH) and the receiving
party of the key is called Key Receiving Device (KRD). During key
export process, KDH is Amazon Web Services Payment Cryptography which
initiates key export and KRD is the user receiving the key.

To initiate TR-34 key export, the KRD must obtain an export token by
calling GetParametersForExport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html).
This operation also generates a key pair for the purpose of key export,
signs the key and returns back the signing public key certificate (also
known as KDH signing certificate) and root certificate chain. The KDH
uses the private key to sign the the export payload and the signing
public key certificate is provided to KRD to verify the signature. The
KRD can import the root certificate into its Hardware Security Module
(HSM), as required. The export token and the associated KDH signing
certificate expires after 7 days.

Next the KRD generates a key pair for the the purpose of encrypting the
KDH key and provides the public key cerificate (also known as KRD
wrapping certificate) back to KDH. The KRD will also import the root
cerificate chain into Amazon Web Services Payment Cryptography by
calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
for C<RootCertificatePublicKey>. The KDH, Amazon Web Services Payment
Cryptography, will use the KRD wrapping cerificate to encrypt (wrap)
the key under export and signs it with signing private key to generate
a TR-34 WrappedKeyBlock. For more information on TR-34 key export, see
section Exporting symmetric keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-export.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

Set the following parameters:

=over

=item *

C<ExportAttributes>: Specify export attributes in case of IPEK export.
This parameter is optional for KEK export.

=item *

C<ExportKeyIdentifier>: The C<KeyARN> of the KEK or BDK (in case of
IPEK) under export.

=item *

C<KeyMaterial>: Use C<Tr34KeyBlock> parameters.

=item *

C<CertificateAuthorityPublicKeyIdentifier>: The C<KeyARN> of the
certificate chain that signed the KRD wrapping key certificate.

=item *

C<ExportToken>: Obtained from KDH by calling GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html).

=item *

C<WrappingKeyCertificate>: The public key certificate in PEM format
(base64 encoded) of the KRD wrapping key Amazon Web Services Payment
Cryptography uses for encryption of the TR-34 export payload. This
certificate must be signed by the root certificate
(CertificateAuthorityPublicKeyIdentifier) imported into Amazon Web
Services Payment Cryptography.

=back

When this operation is successful, Amazon Web Services Payment
Cryptography returns the KEK or IPEK as a TR-34 WrappedKeyBlock.

B<To export initial keys (KEK) or IPEK using RSA Wrap and Unwrap>

Using this operation, you can export initial key using asymmetric RSA
wrap and unwrap key exchange method. To initiate export, generate an
asymmetric key pair on the receiving HSM and obtain the public key
certificate in PEM format (base64 encoded) for the purpose of wrapping
and the root certifiate chain. Import the root certificate into Amazon
Web Services Payment Cryptography by calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
for C<RootCertificatePublicKey>.

Next call C<ExportKey> and set the following parameters:

=over

=item *

C<CertificateAuthorityPublicKeyIdentifier>: The C<KeyARN> of the
certificate chain that signed wrapping key certificate.

=item *

C<KeyMaterial>: Set to C<KeyCryptogram>.

=item *

C<WrappingKeyCertificate>: The public key certificate in PEM format
(base64 encoded) obtained by the receiving HSM and signed by the root
certificate (CertificateAuthorityPublicKeyIdentifier) imported into
Amazon Web Services Payment Cryptography. The receiving HSM uses its
private key component to unwrap the WrappedKeyCryptogram.

=back

When this operation is successful, Amazon Web Services Payment
Cryptography returns the WrappedKeyCryptogram.

B<To export working keys or IPEK using TR-31>

Using this operation, you can export working keys or IPEK using TR-31
symmetric key exchange. In TR-31, you must use an initial key such as
KEK to encrypt or wrap the key under export. To establish a KEK, you
can use CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)
or ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).

Set the following parameters:

=over

=item *

C<ExportAttributes>: Specify export attributes in case of IPEK export.
This parameter is optional for KEK export.

=item *

C<ExportKeyIdentifier>: The C<KeyARN> of the KEK or BDK (in case of
IPEK) under export.

=item *

C<KeyMaterial>: Use C<Tr31KeyBlock> parameters.

=back

When this operation is successful, Amazon Web Services Payment
Cryptography returns the working key or IPEK as a TR-31
WrappedKeyBlock.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GetParametersForExport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html)

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=back



=head2 GetAlias

=over

=item AliasName => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::GetAlias>

Returns: a L<Paws::PaymentCryptography::GetAliasOutput> instance

Gets the Amazon Web Services Payment Cryptography key associated with
the alias.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html)

=item *

DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html)

=item *

ListAliases
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html)

=item *

UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html)

=back



=head2 GetKey

=over

=item KeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::GetKey>

Returns: a L<Paws::PaymentCryptography::GetKeyOutput> instance

Gets the key material for an Amazon Web Services Payment Cryptography
key, including the immutable and mutable data specified when the key
was created.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)

=item *

DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)

=item *

ListKeys
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html)

=back



=head2 GetParametersForExport

=over

=item KeyMaterialType => Str

=item SigningKeyAlgorithm => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::GetParametersForExport>

Returns: a L<Paws::PaymentCryptography::GetParametersForExportOutput> instance

Gets the export token and the signing key certificate to initiate a
TR-34 key export from Amazon Web Services Payment Cryptography.

The signing key certificate signs the wrapped key under export within
the TR-34 key payload. The export token and signing key certificate
must be in place and operational before calling ExportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html).
The export token expires in 7 days. You can use the same export token
to export multiple keys from your service account.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

ExportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html)

=item *

GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html)

=back



=head2 GetParametersForImport

=over

=item KeyMaterialType => Str

=item WrappingKeyAlgorithm => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::GetParametersForImport>

Returns: a L<Paws::PaymentCryptography::GetParametersForImportOutput> instance

Gets the import token and the wrapping key certificate in PEM format
(base64 encoded) to initiate a TR-34 WrappedKeyBlock or a RSA
WrappedKeyCryptogram import into Amazon Web Services Payment
Cryptography.

The wrapping key certificate wraps the key under import. The import
token and wrapping key certificate must be in place and operational
before calling ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
The import token expires in 7 days. You can use the same import token
to import multiple keys into your service account.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

GetParametersForExport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html)

=item *

ImportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

=back



=head2 GetPublicKeyCertificate

=over

=item KeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::GetPublicKeyCertificate>

Returns: a L<Paws::PaymentCryptography::GetPublicKeyCertificateOutput> instance

Gets the public key certificate of the asymmetric key pair that exists
within Amazon Web Services Payment Cryptography.

Unlike the private key of an asymmetric key, which never leaves Amazon
Web Services Payment Cryptography unencrypted, callers with
C<GetPublicKeyCertificate> permission can download the public key
certificate of the asymmetric key. You can share the public key
certificate to allow others to encrypt messages and verify signatures
outside of Amazon Web Services Payment Cryptography

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.


=head2 ImportKey

=over

=item KeyMaterial => L<Paws::PaymentCryptography::ImportKeyMaterial>

=item [Enabled => Bool]

=item [KeyCheckValueAlgorithm => Str]

=item [Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::ImportKey>

Returns: a L<Paws::PaymentCryptography::ImportKeyOutput> instance

Imports symmetric keys and public key certificates in PEM format
(base64 encoded) into Amazon Web Services Payment Cryptography.

Amazon Web Services Payment Cryptography simplifies key exchange by
replacing the existing paper-based approach with a modern electronic
approach. With C<ImportKey> you can import symmetric keys using either
symmetric and asymmetric key exchange mechanisms.

For symmetric key exchange, Amazon Web Services Payment Cryptography
uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And
for asymmetric key exchange, Amazon Web Services Payment Cryptography
supports ANSI X9 TR-34 norm and RSA wrap and unwrap key exchange
mechanisms. Asymmetric key exchange methods are typically used to
establish bi-directional trust between the two parties exhanging keys
and are used for initial key exchange such as Key Encryption Key (KEK)
or Zone Master Key (ZMK). After which you can import working keys using
symmetric method to perform various cryptographic operations within
Amazon Web Services Payment Cryptography.

The TR-34 norm is intended for exchanging 3DES keys only and keys are
imported in a WrappedKeyBlock format. Key attributes (such as KeyUsage,
KeyAlgorithm, KeyModesOfUse, Exportability) are contained within the
key block. With RSA wrap and unwrap, you can exchange both 3DES and
AES-128 keys. The keys are imported in a WrappedKeyCryptogram format
and you will need to specify the key attributes during import.

You can also import a I<root public key certificate>, used to sign
other public key certificates, or a I<trusted public key certificate>
under an already established root public key certificate.

B<To import a public root key certificate>

Using this operation, you can import the public component (in PEM
cerificate format) of your private root key. You can use the imported
public root key certificate for digital signatures, for example signing
wrapping key or signing key in TR-34, within your Amazon Web Services
Payment Cryptography account.

Set the following parameters:

=over

=item *

C<KeyMaterial>: C<RootCertificatePublicKey>

=item *

C<KeyClass>: C<PUBLIC_KEY>

=item *

C<KeyModesOfUse>: C<Verify>

=item *

C<KeyUsage>: C<TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE>

=item *

C<PublicKeyCertificate>: The public key certificate in PEM format
(base64 encoded) of the private root key under import.

=back

B<To import a trusted public key certificate>

The root public key certificate must be in place and operational before
you import a trusted public key certificate. Set the following
parameters:

=over

=item *

C<KeyMaterial>: C<TrustedCertificatePublicKey>

=item *

C<CertificateAuthorityPublicKeyIdentifier>: C<KeyArn> of the
C<RootCertificatePublicKey>.

=item *

C<KeyModesOfUse> and C<KeyUsage>: Corresponding to the cryptographic
operations such as wrap, sign, or encrypt that you will allow the
trusted public key certificate to perform.

=item *

C<PublicKeyCertificate>: The trusted public key certificate in PEM
format (base64 encoded) under import.

=back

B<To import initial keys (KEK or ZMK or similar) using TR-34>

Using this operation, you can import initial key using TR-34 asymmetric
key exchange. In TR-34 terminology, the sending party of the key is
called Key Distribution Host (KDH) and the receiving party of the key
is called Key Receiving Device (KRD). During the key import process,
KDH is the user who initiates the key import and KRD is Amazon Web
Services Payment Cryptography who receives the key.

To initiate TR-34 key import, the KDH must obtain an import token by
calling GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html).
This operation generates an encryption keypair for the purpose of key
import, signs the key and returns back the wrapping key certificate
(also known as KRD wrapping certificate) and the root certificate
chain. The KDH must trust and install the KRD wrapping certificate on
its HSM and use it to encrypt (wrap) the KDH key during TR-34
WrappedKeyBlock generation. The import token and associated KRD
wrapping certificate expires after 7 days.

Next the KDH generates a key pair for the purpose of signing the
encrypted KDH key and provides the public certificate of the signing
key to Amazon Web Services Payment Cryptography. The KDH will also need
to import the root certificate chain of the KDH signing certificate by
calling C<ImportKey> for C<RootCertificatePublicKey>. For more
information on TR-34 key import, see section Importing symmetric keys
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-import.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

Set the following parameters:

=over

=item *

C<KeyMaterial>: Use C<Tr34KeyBlock> parameters.

=item *

C<CertificateAuthorityPublicKeyIdentifier>: The C<KeyARN> of the
certificate chain that signed the KDH signing key certificate.

=item *

C<ImportToken>: Obtained from KRD by calling GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html).

=item *

C<WrappedKeyBlock>: The TR-34 wrapped key material from KDH. It
contains the KDH key under import, wrapped with KRD wrapping
certificate and signed by KDH signing private key. This TR-34 key block
is typically generated by the KDH Hardware Security Module (HSM)
outside of Amazon Web Services Payment Cryptography.

=item *

C<SigningKeyCertificate>: The public key certificate in PEM format
(base64 encoded) of the KDH signing key generated under the root
certificate (CertificateAuthorityPublicKeyIdentifier) imported in
Amazon Web Services Payment Cryptography.

=back

B<To import initial keys (KEK or ZMK or similar) using RSA Wrap and
Unwrap>

Using this operation, you can import initial key using asymmetric RSA
wrap and unwrap key exchange method. To initiate import, call
GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html)
with C<KeyMaterial> set to C<KEY_CRYPTOGRAM> to generate an import
token. This operation also generates an encryption keypair for the
purpose of key import, signs the key and returns back the wrapping key
certificate in PEM format (base64 encoded) and its root certificate
chain. The import token and associated KRD wrapping certificate expires
after 7 days.

You must trust and install the wrapping certificate and its certificate
chain on the sending HSM and use it to wrap the key under export for
WrappedKeyCryptogram generation. Next call C<ImportKey> with
C<KeyMaterial> set to C<KEY_CRYPTOGRAM> and provide the C<ImportToken>
and C<KeyAttributes> for the key under import.

B<To import working keys using TR-31>

Amazon Web Services Payment Cryptography uses TR-31 symmetric key
exchange norm to import working keys. A KEK must be established within
Amazon Web Services Payment Cryptography by using TR-34 key import or
by using CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).
To initiate a TR-31 key import, set the following parameters:

=over

=item *

C<KeyMaterial>: Use C<Tr31KeyBlock> parameters.

=item *

C<WrappedKeyBlock>: The TR-31 wrapped key material. It contains the key
under import, encrypted using KEK. The TR-31 key block is typically
generated by a HSM outside of Amazon Web Services Payment Cryptography.

=item *

C<WrappingKeyIdentifier>: The C<KeyArn> of the KEK that Amazon Web
Services Payment Cryptography uses to decrypt or unwrap the key under
import.

=back

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

ExportKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html)

=item *

GetParametersForImport
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html)

=back



=head2 ListAliases

=over

=item [KeyArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::ListAliases>

Returns: a L<Paws::PaymentCryptography::ListAliasesOutput> instance

Lists the aliases for all keys in the caller's Amazon Web Services
account and Amazon Web Services Region. You can filter the aliases by
C<keyARN>. For more information, see Using aliases
(https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-managealias.html)
in the I<Amazon Web Services Payment Cryptography User Guide>.

This is a paginated operation, which means that each response might
contain only a subset of all the aliases. When the response contains
only a subset of aliases, it includes a C<NextToken> value. Use this
value in a subsequent C<ListAliases> request to get more aliases. When
you receive a response with no NextToken (or an empty or null value),
that means there are no more aliases to get.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html)

=item *

DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html)

=item *

GetAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html)

=item *

UpdateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html)

=back



=head2 ListKeys

=over

=item [KeyState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::ListKeys>

Returns: a L<Paws::PaymentCryptography::ListKeysOutput> instance

Lists the keys in the caller's Amazon Web Services account and Amazon
Web Services Region. You can filter the list of keys.

This is a paginated operation, which means that each response might
contain only a subset of all the keys. When the response contains only
a subset of keys, it includes a C<NextToken> value. Use this value in a
subsequent C<ListKeys> request to get more keys. When you receive a
response with no NextToken (or an empty or null value), that means
there are no more keys to get.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)

=item *

DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)

=item *

GetKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html)

=back



=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::ListTagsForResource>

Returns: a L<Paws::PaymentCryptography::ListTagsForResourceOutput> instance

Lists the tags for an Amazon Web Services resource.

This is a paginated operation, which means that each response might
contain only a subset of all the tags. When the response contains only
a subset of tags, it includes a C<NextToken> value. Use this value in a
subsequent C<ListTagsForResource> request to get more tags. When you
receive a response with no NextToken (or an empty or null value), that
means there are no more tags to get.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

TagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html)

=item *

UntagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html)

=back



=head2 RestoreKey

=over

=item KeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::RestoreKey>

Returns: a L<Paws::PaymentCryptography::RestoreKeyOutput> instance

Cancels a scheduled key deletion during the waiting period. Use this
operation to restore a C<Key> that is scheduled for deletion.

During the waiting period, the C<KeyState> is C<DELETE_PENDING> and
C<deletePendingTimestamp> contains the date and time after which the
C<Key> will be deleted. After C<Key> is restored, the C<KeyState> is
C<CREATE_COMPLETE>, and the value for C<deletePendingTimestamp> is
removed.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)

=item *

StartKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html)

=item *

StopKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html)

=back



=head2 StartKeyUsage

=over

=item KeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::StartKeyUsage>

Returns: a L<Paws::PaymentCryptography::StartKeyUsageOutput> instance

Enables an Amazon Web Services Payment Cryptography key, which makes it
active for cryptographic operations within Amazon Web Services Payment
Cryptography

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

StopKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html)

=back



=head2 StopKeyUsage

=over

=item KeyIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::StopKeyUsage>

Returns: a L<Paws::PaymentCryptography::StopKeyUsageOutput> instance

Disables an Amazon Web Services Payment Cryptography key, which makes
it inactive within Amazon Web Services Payment Cryptography.

You can use this operation instead of DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)
to deactivate a key. You can enable the key in the future by calling
StartKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html).

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

DeleteKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html)

=item *

StartKeyUsage
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html)

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::TagResource>

Returns: a L<Paws::PaymentCryptography::TagResourceOutput> instance

Adds or edits tags on an Amazon Web Services Payment Cryptography key.

Tagging or untagging an Amazon Web Services Payment Cryptography key
can allow or deny permission to the key.

Each tag consists of a tag key and a tag value, both of which are
case-sensitive strings. The tag value can be an empty (null) string. To
add a tag, specify a new tag key and a tag value. To edit a tag,
specify an existing tag key and a new tag value. You can also add tags
to an Amazon Web Services Payment Cryptography key when you create it
with CreateKey
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

ListTagsForResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html)

=item *

UntagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html)

=back



=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::UntagResource>

Returns: a L<Paws::PaymentCryptography::UntagResourceOutput> instance

Deletes a tag from an Amazon Web Services Payment Cryptography key.

Tagging or untagging an Amazon Web Services Payment Cryptography key
can allow or deny permission to the key.

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

ListTagsForResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html)

=item *

TagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html)

=back



=head2 UpdateAlias

=over

=item AliasName => Str

=item [KeyArn => Str]


=back

Each argument is described in detail in: L<Paws::PaymentCryptography::UpdateAlias>

Returns: a L<Paws::PaymentCryptography::UpdateAliasOutput> instance

Associates an existing Amazon Web Services Payment Cryptography alias
with a different key. Each alias is associated with only one Amazon Web
Services Payment Cryptography key at a time, although a key can have
multiple aliases. The alias and the Amazon Web Services Payment
Cryptography key must be in the same Amazon Web Services account and
Amazon Web Services Region

B<Cross-account use:> This operation can't be used across different
Amazon Web Services accounts.

B<Related operations:>

=over

=item *

CreateAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html)

=item *

DeleteAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html)

=item *

GetAlias
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html)

=item *

ListAliases
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },[KeyArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAliases([KeyArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::PaymentCryptography::ListAliasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeys(sub { },[KeyState => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllKeys([KeyState => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Keys, passing the object as the first parameter, and the string 'Keys' as the second parameter 

If not, it will return a a L<Paws::PaymentCryptography::ListKeysOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::PaymentCryptography::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

