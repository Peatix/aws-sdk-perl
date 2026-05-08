package Paws::KMS;
  use Moose;
  sub service { 'kms' }
  sub signing_name { 'kms' }
  sub version { '2014-11-01' }
  sub target_prefix { 'TrentService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelKeyDeletion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CancelKeyDeletion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConnectCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ConnectCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Decrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Decrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportedKeyMaterial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteImportedKeyMaterial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeriveSharedSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeriveSharedSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomKeyStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DescribeCustomKeyStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DescribeKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisableKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableKeyRotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisableKeyRotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisconnectCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::EnableKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableKeyRotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::EnableKeyRotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Encrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Encrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKeyPairWithoutPlaintext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyPairWithoutPlaintext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyWithoutPlaintext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateMac {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateMac', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateRandom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateRandom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetKeyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetKeyRotationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParametersForImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetParametersForImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyMaterial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ImportKeyMaterial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListKeyPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyRotations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListKeyRotations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListResourceTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetirableGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListRetirableGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutKeyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::PutKeyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReEncrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ReEncrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplicateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ReplicateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetireGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::RetireGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::RevokeGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateKeyOnDemand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::RotateKeyOnDemand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ScheduleKeyDeletion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ScheduleKeyDeletion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Sign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Sign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateKeyDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrimaryRegion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdatePrimaryRegion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Verify {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Verify', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyMac {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::VerifyMac', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCustomKeyStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCustomKeyStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->DescribeCustomKeyStores(@_, Marker => $next_result->NextMarker);
        push @{ $result->CustomKeyStores }, @{ $next_result->CustomKeyStores };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'CustomKeyStores') foreach (@{ $result->CustomKeyStores });
        $result = $self->DescribeCustomKeyStores(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'CustomKeyStores') foreach (@{ $result->CustomKeyStores });
    }

    return undef
  }
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListAliases(@_, Marker => $next_result->NextMarker);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListGrants(@_, Marker => $next_result->NextMarker);
        push @{ $result->Grants }, @{ $next_result->Grants };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Grants') foreach (@{ $result->Grants });
        $result = $self->ListGrants(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Grants') foreach (@{ $result->Grants });
    }

    return undef
  }
  sub ListAllKeyPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListKeyPolicies(@_, Marker => $next_result->NextMarker);
        push @{ $result->PolicyNames }, @{ $next_result->PolicyNames };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'PolicyNames') foreach (@{ $result->PolicyNames });
        $result = $self->ListKeyPolicies(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'PolicyNames') foreach (@{ $result->PolicyNames });
    }

    return undef
  }
  sub ListAllKeyRotations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyRotations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListKeyRotations(@_, Marker => $next_result->NextMarker);
        push @{ $result->Rotations }, @{ $next_result->Rotations };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Rotations') foreach (@{ $result->Rotations });
        $result = $self->ListKeyRotations(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Rotations') foreach (@{ $result->Rotations });
    }

    return undef
  }
  sub ListAllKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListKeys(@_, Marker => $next_result->NextMarker);
        push @{ $result->Keys }, @{ $next_result->Keys };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Keys') foreach (@{ $result->Keys });
        $result = $self->ListKeys(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Keys') foreach (@{ $result->Keys });
    }

    return undef
  }
  sub ListAllResourceTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListResourceTags(@_, Marker => $next_result->NextMarker);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListResourceTags(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllRetirableGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRetirableGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListRetirableGrants(@_, Marker => $next_result->NextMarker);
        push @{ $result->Grants }, @{ $next_result->Grants };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Grants') foreach (@{ $result->Grants });
        $result = $self->ListRetirableGrants(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Grants') foreach (@{ $result->Grants });
    }

    return undef
  }


  sub operations { qw/CancelKeyDeletion ConnectCustomKeyStore CreateAlias CreateCustomKeyStore CreateGrant CreateKey Decrypt DeleteAlias DeleteCustomKeyStore DeleteImportedKeyMaterial DeriveSharedSecret DescribeCustomKeyStores DescribeKey DisableKey DisableKeyRotation DisconnectCustomKeyStore EnableKey EnableKeyRotation Encrypt GenerateDataKey GenerateDataKeyPair GenerateDataKeyPairWithoutPlaintext GenerateDataKeyWithoutPlaintext GenerateMac GenerateRandom GetKeyPolicy GetKeyRotationStatus GetParametersForImport GetPublicKey ImportKeyMaterial ListAliases ListGrants ListKeyPolicies ListKeyRotations ListKeys ListResourceTags ListRetirableGrants PutKeyPolicy ReEncrypt ReplicateKey RetireGrant RevokeGrant RotateKeyOnDemand ScheduleKeyDeletion Sign TagResource UntagResource UpdateAlias UpdateCustomKeyStore UpdateKeyDescription UpdatePrimaryRegion Verify VerifyMac / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS - Perl Interface to AWS AWS Key Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KMS');
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

Key Management Service

Key Management Service (KMS) is an encryption and key management web
service. This guide describes the KMS operations that you can call
programmatically. For general information about KMS, see the I<Key
Management Service Developer Guide>
(https://docs.aws.amazon.com/kms/latest/developerguide/).

KMS has replaced the term I<customer master key (CMK)> with I<KMS key>
and I<KMS key>. The concept has not changed. To prevent breaking
changes, KMS is keeping some variations of this term.

Amazon Web Services provides SDKs that consist of libraries and sample
code for various programming languages and platforms (Java, Ruby, .Net,
macOS, Android, etc.). The SDKs provide a convenient way to create
programmatic access to KMS and other Amazon Web Services services. For
example, the SDKs take care of tasks such as signing requests (see
below), managing errors, and retrying requests automatically. For more
information about the Amazon Web Services SDKs, including how to
download and install them, see Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

We recommend that you use the Amazon Web Services SDKs to make
programmatic API calls to KMS.

If you need to use FIPS 140-2 validated cryptographic modules when
communicating with Amazon Web Services, use the FIPS endpoint in your
preferred Amazon Web Services Region. For more information about the
available FIPS endpoints, see Service endpoints
(https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region) in
the Key Management Service topic of the I<Amazon Web Services General
Reference>.

All KMS API calls must be signed and be transmitted using Transport
Layer Security (TLS). KMS recommends you always use the latest
supported TLS version. Clients must also support cipher suites with
Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or
Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems
such as Java 7 and later support these modes.

B<Signing Requests>

Requests must be signed using an access key ID and a secret access key.
We strongly recommend that you do not use your Amazon Web Services
account root access key ID and secret access key for everyday work. You
can use the access key ID and secret access key for an IAM user or you
can use the Security Token Service (STS) to generate temporary security
credentials and use those to sign requests.

All KMS requests must be signed with Signature Version 4
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

B<Logging API Requests>

KMS supports CloudTrail, a service that logs Amazon Web Services API
calls and related events for your Amazon Web Services account and
delivers them to an Amazon S3 bucket that you specify. By using the
information collected by CloudTrail, you can determine what requests
were made to KMS, who made the request, when it was made, and so on. To
learn more about CloudTrail, including how to turn it on and find your
log files, see the CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

B<Additional Resources>

For more information about credentials and request signing, see the
following:

=over

=item *

Amazon Web Services Security Credentials
(https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
- This topic provides general information about the types of
credentials used to access Amazon Web Services.

=item *

Temporary Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
- This section of the I<IAM User Guide> describes how to create and use
temporary security credentials.

=item *

Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
- This set of topics walks you through the process of signing a request
using an access key ID and a secret access key.

=back

B<Commonly Used API Operations>

Of the API operations discussed in this guide, the following will prove
the most useful for most applications. You will likely perform
operations other than these, such as creating keys and assigning
policies, by using the console.

=over

=item *

Encrypt

=item *

Decrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyWithoutPlaintext

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01>


=head1 METHODS

=head2 CancelKeyDeletion

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CancelKeyDeletion>

Returns: a L<Paws::KMS::CancelKeyDeletionResponse> instance

Cancels the deletion of a KMS key. When this operation succeeds, the
key state of the KMS key is C<Disabled>. To enable the KMS key, use
EnableKey.

For more information about scheduling and canceling deletion of a KMS
key, see Deleting KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:CancelKeyDeletion
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: ScheduleKeyDeletion

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ConnectCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::ConnectCustomKeyStore>

Returns: a L<Paws::KMS::ConnectCustomKeyStoreResponse> instance

Connects or reconnects a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
to its backing key store. For an CloudHSM key store,
C<ConnectCustomKeyStore> connects the key store to its associated
CloudHSM cluster. For an external key store, C<ConnectCustomKeyStore>
connects the key store to the external key store proxy that
communicates with your external key manager.

The custom key store must be connected before you can create KMS keys
in the key store or use the KMS keys it contains. You can disconnect
and reconnect a custom key store at any time.

The connection process for a custom key store can take an extended
amount of time to complete. This operation starts the connection
process, but it does not wait for it to complete. When it succeeds,
this operation quickly returns an HTTP 200 response and a JSON object
with no properties. However, this response does not indicate that the
custom key store is connected. To get the connection state of the
custom key store, use the DescribeCustomKeyStores operation.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

The C<ConnectCustomKeyStore> operation might fail for various reasons.
To find the reason, use the DescribeCustomKeyStores operation and see
the C<ConnectionErrorCode> in the response. For help interpreting the
C<ConnectionErrorCode>, see CustomKeyStoresListEntry.

To fix the failure, use the DisconnectCustomKeyStore operation to
disconnect the custom key store, correct the error, use the
UpdateCustomKeyStore operation if necessary, and then use
C<ConnectCustomKeyStore> again.

B<CloudHSM key store>

During the connection process for an CloudHSM key store, KMS finds the
CloudHSM cluster that is associated with the custom key store, creates
the connection infrastructure, connects to the cluster, logs into the
CloudHSM client as the C<kmsuser> CU, and rotates its password.

To connect an CloudHSM key store, its associated CloudHSM cluster must
have at least one active HSM. To get the number of active HSMs in a
cluster, use the DescribeClusters
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation. To add HSMs to the cluster, use the CreateHsm
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html)
operation. Also, the C<kmsuser> crypto user
(https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
(CU) must not be logged into the cluster. This prevents KMS from using
this account to log in.

If you are having trouble connecting or disconnecting a CloudHSM key
store, see Troubleshooting an CloudHSM key store
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<Key Management Service Developer Guide>.

B<External key store>

When you connect an external key store that uses public endpoint
connectivity, KMS tests its ability to communicate with your external
key manager by sending a request via the external key store proxy.

When you connect to an external key store that uses VPC endpoint
service connectivity, KMS establishes the networking elements that it
needs to communicate with your external key manager via the external
key store proxy. This includes creating an interface endpoint to the
VPC endpoint service and a private hosted zone for traffic between KMS
and the VPC endpoint service.

To connect an external key store, KMS must be able to connect to the
external key store proxy, the external key store proxy must be able to
communicate with your external key manager, and the external key
manager must be available for cryptographic operations.

If you are having trouble connecting or disconnecting an external key
store, see Troubleshooting an external key store
(https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:ConnectCustomKeyStore
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations>

=over

=item *

CreateCustomKeyStore

=item *

DeleteCustomKeyStore

=item *

DescribeCustomKeyStores

=item *

DisconnectCustomKeyStore

=item *

UpdateCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 CreateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CreateAlias>

Returns: nothing

Creates a friendly name for a KMS key.

Adding, deleting, or updating an alias can allow or deny permission to
the KMS key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

You can use an alias to identify a KMS key in the KMS console, in the
DescribeKey operation and in cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations),
such as Encrypt and GenerateDataKey. You can also change the KMS key
that's associated with the alias (UpdateAlias) or delete the alias
(DeleteAlias) at any time. These operations don't affect the underlying
KMS key.

You can associate the alias with any customer managed key in the same
Amazon Web Services Region. Each alias is associated with only one KMS
key at a time, but a KMS key can have multiple aliases. A valid KMS key
is required. You can't create an alias without a KMS key.

The alias must be unique in the account and Region, but you can have
aliases with the same name in different Regions. For detailed
information about aliases, see Using aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html)
in the I<Key Management Service Developer Guide>.

This operation does not return a response. To get the alias that you
created, use the ListAliases operation.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on an alias
in a different Amazon Web Services account.

B<Required permissions>

=over

=item *

kms:CreateAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the alias (IAM policy).

=item *

kms:CreateAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the KMS key (key policy).

=back

For details, see Controlling access to aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

DeleteAlias

=item *

ListAliases

=item *

UpdateAlias

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 CreateCustomKeyStore

=over

=item CustomKeyStoreName => Str

=item [CloudHsmClusterId => Str]

=item [CustomKeyStoreType => Str]

=item [KeyStorePassword => Str]

=item [TrustAnchorCertificate => Str]

=item [XksProxyAuthenticationCredential => L<Paws::KMS::XksProxyAuthenticationCredentialType>]

=item [XksProxyConnectivity => Str]

=item [XksProxyUriEndpoint => Str]

=item [XksProxyUriPath => Str]

=item [XksProxyVpcEndpointServiceName => Str]


=back

Each argument is described in detail in: L<Paws::KMS::CreateCustomKeyStore>

Returns: a L<Paws::KMS::CreateCustomKeyStoreResponse> instance

Creates a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
backed by a key store that you own and manage. When you use a KMS key
in a custom key store for a cryptographic operation, the cryptographic
operation is actually performed in your key store using your keys. KMS
supports CloudHSM key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html)
backed by an CloudHSM cluster
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
and external key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html)
backed by an external key store proxy and external key manager outside
of Amazon Web Services.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

Before you create the custom key store, the required elements must be
in place and operational. We recommend that you use the test tools that
KMS provides to verify the configuration your external key store proxy.
For details about the required elements and verification tests, see
Assemble the prerequisites (for CloudHSM key stores)
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
or Assemble the prerequisites (for external key stores)
(https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements)
in the I<Key Management Service Developer Guide>.

To create a custom key store, use the following parameters.

=over

=item *

To create an CloudHSM key store, specify the C<CustomKeyStoreName>,
C<CloudHsmClusterId>, C<KeyStorePassword>, and
C<TrustAnchorCertificate>. The C<CustomKeyStoreType> parameter is
optional for CloudHSM key stores. If you include it, set it to the
default value, C<AWS_CLOUDHSM>. For help with failures, see
Troubleshooting an CloudHSM key store
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<Key Management Service Developer Guide>.

=item *

To create an external key store, specify the C<CustomKeyStoreName> and
a C<CustomKeyStoreType> of C<EXTERNAL_KEY_STORE>. Also, specify values
for C<XksProxyConnectivity>, C<XksProxyAuthenticationCredential>,
C<XksProxyUriEndpoint>, and C<XksProxyUriPath>. If your
C<XksProxyConnectivity> value is C<VPC_ENDPOINT_SERVICE>, specify the
C<XksProxyVpcEndpointServiceName> parameter. For help with failures,
see Troubleshooting an external key store
(https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html)
in the I<Key Management Service Developer Guide>.

=back

For external key stores:

Some external key managers provide a simpler method for creating an
external key store. For details, see your external key manager
documentation.

When creating an external key store in the KMS console, you can upload
a JSON-based proxy configuration file with the desired values. You
cannot use a proxy configuration with the C<CreateCustomKeyStore>
operation. However, you can use the values in the file to help you
determine the correct values for the C<CreateCustomKeyStore>
parameters.

When the operation completes successfully, it returns the ID of the new
custom key store. Before you can use your new custom key store, you
need to use the ConnectCustomKeyStore operation to connect a new
CloudHSM key store to its CloudHSM cluster, or to connect a new
external key store to the external key store proxy for your external
key manager. Even if you are not going to use your custom key store
immediately, you might want to connect it to verify that all settings
are correct and then disconnect it until you are ready to use it.

For help with failures, see Troubleshooting a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:CreateCustomKeyStore
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy).

B<Related operations:>

=over

=item *

ConnectCustomKeyStore

=item *

DeleteCustomKeyStore

=item *

DescribeCustomKeyStores

=item *

DisconnectCustomKeyStore

=item *

UpdateCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 CreateGrant

=over

=item GranteePrincipal => Str

=item KeyId => Str

=item Operations => ArrayRef[Str|Undef]

=item [Constraints => L<Paws::KMS::GrantConstraints>]

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [RetiringPrincipal => Str]


=back

Each argument is described in detail in: L<Paws::KMS::CreateGrant>

Returns: a L<Paws::KMS::CreateGrantResponse> instance

Adds a grant to a KMS key.

A I<grant> is a policy instrument that allows Amazon Web Services
principals to use KMS keys in cryptographic operations. It also can
allow them to view a KMS key (DescribeKey) and create and manage
grants. When authorizing access to a KMS key, grants are considered
along with key policies and IAM policies. Grants are often used for
temporary permissions because you can create one, use its permissions,
and delete it without changing your key policies or IAM policies.

For detailed information about grants, including grant terminology, see
Grants in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<Key Management Service Developer Guide> >. For examples of
working with grants in several programming languages, see Programming
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

The C<CreateGrant> operation returns a C<GrantToken> and a C<GrantId>.

=over

=item *

When you create, retire, or revoke a grant, there might be a brief
delay, usually less than five minutes, until the grant is available
throughout KMS. This state is known as I<eventual consistency>. Once
the grant has achieved eventual consistency, the grantee principal can
use the permissions in the grant without identifying the grant.

However, to use the permissions in the grant immediately, use the
C<GrantToken> that C<CreateGrant> returns. For details, see Using a
grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
in the I< I<Key Management Service Developer Guide> >.

=item *

The C<CreateGrant> operation also returns a C<GrantId>. You can use the
C<GrantId> and a key identifier to identify the grant in the
RetireGrant and RevokeGrant operations. To find the grant ID, use the
ListGrants or ListRetirableGrants operations.

=back

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the C<KeyId> parameter.

B<Required permissions>: kms:CreateGrant
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

ListGrants

=item *

ListRetirableGrants

=item *

RetireGrant

=item *

RevokeGrant

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 CreateKey

=over

=item [BypassPolicyLockoutSafetyCheck => Bool]

=item [CustomerMasterKeySpec => Str]

=item [CustomKeyStoreId => Str]

=item [Description => Str]

=item [KeySpec => Str]

=item [KeyUsage => Str]

=item [MultiRegion => Bool]

=item [Origin => Str]

=item [Policy => Str]

=item [Tags => ArrayRef[L<Paws::KMS::Tag>]]

=item [XksKeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::CreateKey>

Returns: a L<Paws::KMS::CreateKeyResponse> instance

Creates a unique customer managed KMS key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys)
in your Amazon Web Services account and Region. You can use a KMS key
in cryptographic operations, such as encryption and signing. Some
Amazon Web Services services let you use KMS keys that you create and
manage to protect your service resources.

A KMS key is a logical representation of a cryptographic key. In
addition to the key material used in cryptographic operations, a KMS
key includes metadata, such as the key ID, key policy, creation date,
description, and key state. For details, see Managing keys
(https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html)
in the I<Key Management Service Developer Guide>

Use the parameters of C<CreateKey> to specify the type of KMS key, the
source of its key material, its key policy, description, tags, and
other properties.

KMS has replaced the term I<customer master key (CMK)> with I<KMS key>
and I<KMS key>. The concept has not changed. To prevent breaking
changes, KMS is keeping some variations of this term.

To create different types of KMS keys, use the following guidance:

=over

=item Symmetric encryption KMS key

By default, C<CreateKey> creates a symmetric encryption KMS key with
key material that KMS generates. This is the basic and most widely used
type of KMS key, and provides the best performance.

To create a symmetric encryption KMS key, you don't need to specify any
parameters. The default value for C<KeySpec>, C<SYMMETRIC_DEFAULT>, the
default value for C<KeyUsage>, C<ENCRYPT_DECRYPT>, and the default
value for C<Origin>, C<AWS_KMS>, create a symmetric encryption KMS key
with KMS key material.

If you need a key for basic encryption and decryption or you are
creating a KMS key to protect your resources in an Amazon Web Services
service, create a symmetric encryption KMS key. The key material in a
symmetric encryption key never leaves KMS unencrypted. You can use a
symmetric encryption KMS key to encrypt and decrypt data up to 4,096
bytes, but they are typically used to generate data keys and data keys
pairs. For details, see GenerateDataKey and GenerateDataKeyPair.

=item Asymmetric KMS keys

To create an asymmetric KMS key, use the C<KeySpec> parameter to
specify the type of key material in the KMS key. Then, use the
C<KeyUsage> parameter to determine whether the KMS key will be used to
encrypt and decrypt or sign and verify. You can't change these
properties after the KMS key is created.

Asymmetric KMS keys contain an RSA key pair, Elliptic Curve (ECC) key
pair, or an SM2 key pair (China Regions only). The private key in an
asymmetric KMS key never leaves KMS unencrypted. However, you can use
the GetPublicKey operation to download the public key so it can be used
outside of KMS. Each KMS key can have only one key usage. KMS keys with
RSA key pairs can be used to encrypt and decrypt data or sign and
verify messages (but not both). KMS keys with NIST-recommended ECC key
pairs can be used to sign and verify messages or derive shared secrets
(but not both). KMS keys with C<ECC_SECG_P256K1> can be used only to
sign and verify messages. KMS keys with SM2 key pairs (China Regions
only) can be used to either encrypt and decrypt data, sign and verify
messages, or derive shared secrets (you must choose one key usage
type). For information about asymmetric KMS keys, see Asymmetric KMS
keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

=item HMAC KMS key

To create an HMAC KMS key, set the C<KeySpec> parameter to a key spec
value for HMAC KMS keys. Then set the C<KeyUsage> parameter to
C<GENERATE_VERIFY_MAC>. You must set the key usage even though
C<GENERATE_VERIFY_MAC> is the only valid key usage value for HMAC KMS
keys. You can't change these properties after the KMS key is created.

HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You
can use HMAC keys to generate (GenerateMac) and verify (VerifyMac) HMAC
codes for messages up to 4096 bytes.

=item Multi-Region primary keys

=item Imported key material

To create a multi-Region I<primary key> in the local Amazon Web
Services Region, use the C<MultiRegion> parameter with a value of
C<True>. To create a multi-Region I<replica key>, that is, a KMS key
with the same key ID and key material as a primary key, but in a
different Amazon Web Services Region, use the ReplicateKey operation.
To change a replica key to a primary key, and its primary key to a
replica key, use the UpdatePrimaryRegion operation.

You can create multi-Region KMS keys for all supported KMS key types:
symmetric encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS
keys, and asymmetric signing KMS keys. You can also create multi-Region
keys with imported key material. However, you can't create multi-Region
keys in a custom key store.

This operation supports I<multi-Region keys>, an KMS feature that lets
you create multiple interoperable KMS keys in different Amazon Web
Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see Multi-Region keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

To import your own key material into a KMS key, begin by creating a KMS
key with no key material. To do this, use the C<Origin> parameter of
C<CreateKey> with a value of C<EXTERNAL>. Next, use
GetParametersForImport operation to get a public key and import token.
Use the wrapping public key to encrypt your key material. Then, use
ImportKeyMaterial with your import token to import the key material.
For step-by-step instructions, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I< I<Key Management Service Developer Guide> >.

You can import key material into KMS keys of all supported KMS key
types: symmetric encryption KMS keys, HMAC KMS keys, asymmetric
encryption KMS keys, and asymmetric signing KMS keys. You can also
create multi-Region keys with imported key material. However, you can't
import key material into a KMS key in a custom key store.

To create a multi-Region primary key with imported key material, use
the C<Origin> parameter of C<CreateKey> with a value of C<EXTERNAL> and
the C<MultiRegion> parameter with a value of C<True>. To create
replicas of the multi-Region primary key, use the ReplicateKey
operation. For instructions, see Importing key material into
multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html
). For more information about multi-Region keys, see Multi-Region keys
in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

=item Custom key store

A custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
lets you protect your Amazon Web Services resources using keys in a
backing key store that you own and manage. When you request a
cryptographic operation with a KMS key in a custom key store, the
operation is performed in the backing key store using its cryptographic
keys.

KMS supports CloudHSM key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html)
backed by an CloudHSM cluster and external key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html)
backed by an external key manager outside of Amazon Web Services. When
you create a KMS key in an CloudHSM key store, KMS generates an
encryption key in the CloudHSM cluster and associates it with the KMS
key. When you create a KMS key in an external key store, you specify an
existing encryption key in the external key manager.

Some external key managers provide a simpler method for creating a KMS
key in an external key store. For details, see your external key
manager documentation.

Before you create a KMS key in a custom key store, the
C<ConnectionState> of the key store must be C<CONNECTED>. To connect
the custom key store, use the ConnectCustomKeyStore operation. To find
the C<ConnectionState>, use the DescribeCustomKeyStores operation.

To create a KMS key in a custom key store, use the C<CustomKeyStoreId>.
Use the default C<KeySpec> value, C<SYMMETRIC_DEFAULT>, and the default
C<KeyUsage> value, C<ENCRYPT_DECRYPT> to create a symmetric encryption
key. No other key type is supported in a custom key store.

To create a KMS key in an CloudHSM key store
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html),
use the C<Origin> parameter with a value of C<AWS_CLOUDHSM>. The
CloudHSM cluster that is associated with the custom key store must have
at least two active HSMs in different Availability Zones in the Amazon
Web Services Region.

To create a KMS key in an external key store
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html),
use the C<Origin> parameter with a value of C<EXTERNAL_KEY_STORE> and
an C<XksKeyId> parameter that identifies an existing external key.

Some external key managers provide a simpler method for creating a KMS
key in an external key store. For details, see your external key
manager documentation.

=back

B<Cross-account use>: No. You cannot use this operation to create a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:CreateKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy). To use the C<Tags> parameter, kms:TagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy). For examples and information about related permissions,
see Allow a user to create KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

DescribeKey

=item *

ListKeys

=item *

ScheduleKeyDeletion

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 Decrypt

=over

=item CiphertextBlob => Str

=item [DryRun => Bool]

=item [EncryptionAlgorithm => Str]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeyId => Str]

=item [Recipient => L<Paws::KMS::RecipientInfo>]


=back

Each argument is described in detail in: L<Paws::KMS::Decrypt>

Returns: a L<Paws::KMS::DecryptResponse> instance

Decrypts ciphertext that was encrypted by a KMS key using any of the
following operations:

=over

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=item *

GenerateDataKeyWithoutPlaintext

=item *

GenerateDataKeyPairWithoutPlaintext

=back

You can use this operation to decrypt ciphertext that was encrypted
under a symmetric encryption KMS key or an asymmetric encryption KMS
key. When the KMS key is asymmetric, you must specify the KMS key and
the encryption algorithm that was used to encrypt the ciphertext. For
information about asymmetric KMS keys, see Asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

The C<Decrypt> operation also decrypts ciphertext that was encrypted
outside of KMS by the public key in an KMS asymmetric KMS key. However,
it cannot decrypt symmetric ciphertext produced by other libraries,
such as the Amazon Web Services Encryption SDK
(https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
Amazon S3 client-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
KMS.

If the ciphertext was encrypted under a symmetric encryption KMS key,
the C<KeyId> parameter is optional. KMS can get this information from
metadata that it adds to the symmetric ciphertext blob. This feature
adds durability to your implementation by ensuring that authorized
users can decrypt ciphertext decades after it was encrypted, even if
they've lost track of the key ID. However, specifying the KMS key is
always recommended as a best practice. When you use the C<KeyId>
parameter to specify a KMS key, KMS only uses the KMS key you specify.
If the ciphertext was encrypted under a different KMS key, the
C<Decrypt> operation fails. This practice ensures that you use the KMS
key that you intend.

Whenever possible, use key policies to give users permission to call
the C<Decrypt> operation on a particular KMS key, instead of using
&IAM; policies. Otherwise, you might create an &IAM; policy that gives
the user C<Decrypt> permission on all KMS keys. This user could decrypt
ciphertext that was encrypted by KMS keys in other accounts if the key
policy for the cross-account KMS key permits it. If you must use an IAM
policy for C<Decrypt> permissions, limit the user to particular KMS
keys or particular trusted accounts. For details, see Best practices
for IAM policies
(https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices)
in the I<Key Management Service Developer Guide>.

C<Decrypt> also supports Amazon Web Services Nitro Enclaves
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
C<Decrypt> for a Nitro enclave, use the Amazon Web Services Nitro
Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the C<Recipient> parameter to
provide the attestation document for the enclave. Instead of the
plaintext data, the response includes the plaintext data encrypted with
the public key from the attestation document
(C<CiphertextForRecipient>). For information about the interaction
between KMS and Amazon Web Services Nitro Enclaves, see How Amazon Web
Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. If you use the C<KeyId> parameter to
identify a KMS key in a different Amazon Web Services account, specify
the key ARN or the alias ARN of the KMS key.

B<Required permissions>: kms:Decrypt
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=item *

ReEncrypt

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DeleteAlias

=over

=item AliasName => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteAlias>

Returns: nothing

Deletes the specified alias.

Adding, deleting, or updating an alias can allow or deny permission to
the KMS key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

Because an alias is not a property of a KMS key, you can delete and
change the aliases of a KMS key without affecting the KMS key. Also,
aliases do not appear in the response from the DescribeKey operation.
To get the aliases of all KMS keys, use the ListAliases operation.

Each KMS key can have multiple aliases. To change the alias of a KMS
key, use DeleteAlias to delete the current alias and CreateAlias to
create a new alias. To associate an existing alias with a different KMS
key, call UpdateAlias.

B<Cross-account use>: No. You cannot perform this operation on an alias
in a different Amazon Web Services account.

B<Required permissions>

=over

=item *

kms:DeleteAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the alias (IAM policy).

=item *

kms:DeleteAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the KMS key (key policy).

=back

For details, see Controlling access to aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

CreateAlias

=item *

ListAliases

=item *

UpdateAlias

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DeleteCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteCustomKeyStore>

Returns: a L<Paws::KMS::DeleteCustomKeyStoreResponse> instance

Deletes a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
This operation does not affect any backing elements of the custom key
store. It does not delete the CloudHSM cluster that is associated with
an CloudHSM key store, or affect any users or keys in the cluster. For
an external key store, it does not affect the external key store proxy,
external key manager, or any external keys.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

The custom key store that you delete cannot contain any KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys).
Before deleting the key store, verify that you will never need to use
any of the KMS keys in the key store for any cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
Then, use ScheduleKeyDeletion to delete the KMS keys from the key
store. After the required waiting period expires and all KMS keys are
deleted from the custom key store, use DisconnectCustomKeyStore to
disconnect the key store from KMS. Then, you can delete the custom key
store.

For keys in an CloudHSM key store, the C<ScheduleKeyDeletion> operation
makes a best effort to delete the key material from the associated
cluster. However, you might need to manually delete the orphaned key
material
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups. KMS never creates, manages, or
deletes cryptographic keys in the external key manager associated with
an external key store. You must manage them using your external key
manager tools.

Instead of deleting the custom key store, consider using the
DisconnectCustomKeyStore operation to disconnect the custom key store
from its backing key store. While the key store is disconnected, you
cannot create or use the KMS keys in the key store. But, you do not
need to delete KMS keys and you can reconnect a disconnected custom key
store at any time.

If the operation succeeds, it returns a JSON object with no properties.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:DeleteCustomKeyStore
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations:>

=over

=item *

ConnectCustomKeyStore

=item *

CreateCustomKeyStore

=item *

DescribeCustomKeyStores

=item *

DisconnectCustomKeyStore

=item *

UpdateCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DeleteImportedKeyMaterial

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteImportedKeyMaterial>

Returns: nothing

Deletes key material that was previously imported. This operation makes
the specified KMS key temporarily unusable. To restore the usability of
the KMS key, reimport the same key material. For more information about
importing key material into KMS, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<Key Management Service Developer Guide>.

When the specified KMS key is in the C<PendingDeletion> state, this
operation does not change the KMS key's state. Otherwise, it changes
the KMS key's state to C<PendingImport>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:DeleteImportedKeyMaterial
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

GetParametersForImport

=item *

ImportKeyMaterial

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DeriveSharedSecret

=over

=item KeyAgreementAlgorithm => Str

=item KeyId => Str

=item PublicKey => Str

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [Recipient => L<Paws::KMS::RecipientInfo>]


=back

Each argument is described in detail in: L<Paws::KMS::DeriveSharedSecret>

Returns: a L<Paws::KMS::DeriveSharedSecretResponse> instance

Derives a shared secret using a key agreement algorithm.

You must use an asymmetric NIST-recommended elliptic curve (ECC) or SM2
(China Regions only) KMS key pair with a C<KeyUsage> value of
C<KEY_AGREEMENT> to call DeriveSharedSecret.

DeriveSharedSecret uses the Elliptic Curve Cryptography Cofactor
Diffie-Hellman Primitive
(https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Ar3.pdf#page=60)
(ECDH) to establish a key agreement between two peers by deriving a
shared secret from their elliptic curve public-private key pairs. You
can use the raw shared secret that DeriveSharedSecret returns to derive
a symmetric key that can encrypt and decrypt data that is sent between
the two peers, or that can generate and verify HMACs. KMS recommends
that you follow NIST recommendations for key derivation
(https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Cr2.pdf)
when using the raw shared secret to derive a symmetric key.

The following workflow demonstrates how to establish key agreement over
an insecure communication channel using DeriveSharedSecret.

=over

=item 1.

B<Alice> calls CreateKey to create an asymmetric KMS key pair with a
C<KeyUsage> value of C<KEY_AGREEMENT>.

The asymmetric KMS key must use a NIST-recommended elliptic curve (ECC)
or SM2 (China Regions only) key spec.

=item 2.

B<Bob> creates an elliptic curve key pair.

Bob can call CreateKey to create an asymmetric KMS key pair or generate
a key pair outside of KMS. Bob's key pair must use the same
NIST-recommended elliptic curve (ECC) or SM2 (China Regions ony) curve
as Alice.

=item 3.

Alice and Bob B<exchange their public keys> through an insecure
communication channel (like the internet).

Use GetPublicKey to download the public key of your asymmetric KMS key
pair.

KMS strongly recommends verifying that the public key you receive came
from the expected party before using it to derive a shared secret.

=item 4.

B<Alice> calls DeriveSharedSecret.

KMS uses the private key from the KMS key pair generated in B<Step 1>,
Bob's public key, and the Elliptic Curve Cryptography Cofactor
Diffie-Hellman Primitive to derive the shared secret. The private key
in your KMS key pair never leaves KMS unencrypted. DeriveSharedSecret
returns the raw shared secret.

=item 5.

B<Bob> uses the Elliptic Curve Cryptography Cofactor Diffie-Hellman
Primitive to calculate the same raw secret using his private key and
Alice's public key.

=back

To derive a shared secret you must provide a key agreement algorithm,
the private key of the caller's asymmetric NIST-recommended elliptic
curve or SM2 (China Regions only) KMS key pair, and the public key from
your peer's NIST-recommended elliptic curve or SM2 (China Regions only)
key pair. The public key can be from another asymmetric KMS key pair or
from a key pair generated outside of KMS, but both key pairs must be on
the same elliptic curve.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:DeriveSharedSecret
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

CreateKey

=item *

GetPublicKey

=item *

DescribeKey

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DescribeCustomKeyStores

=over

=item [CustomKeyStoreId => Str]

=item [CustomKeyStoreName => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::DescribeCustomKeyStores>

Returns: a L<Paws::KMS::DescribeCustomKeyStoresResponse> instance

Gets information about custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
in the account and Region.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

By default, this operation returns information about all custom key
stores in the account and Region. To get only information about a
particular custom key store, use either the C<CustomKeyStoreName> or
C<CustomKeyStoreId> parameter (but not both).

To determine whether the custom key store is connected to its CloudHSM
cluster or external key store proxy, use the C<ConnectionState> element
in the response. If an attempt to connect the custom key store failed,
the C<ConnectionState> value is C<FAILED> and the
C<ConnectionErrorCode> element in the response indicates the cause of
the failure. For help interpreting the C<ConnectionErrorCode>, see
CustomKeyStoresListEntry.

Custom key stores have a C<DISCONNECTED> connection state if the key
store has never been connected or you used the DisconnectCustomKeyStore
operation to disconnect it. Otherwise, the connection state is
CONNECTED. If your custom key store connection state is C<CONNECTED>
but you are having trouble using it, verify that the backing store is
active and available. For an CloudHSM key store, verify that the
associated CloudHSM cluster is active and contains the minimum number
of HSMs required for the operation, if any. For an external key store,
verify that the external key store proxy and its associated external
key manager are reachable and enabled.

For help repairing your CloudHSM key store, see the Troubleshooting
CloudHSM key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html).
For help repairing your external key store, see the Troubleshooting
external key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html).
Both topics are in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:DescribeCustomKeyStores
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations:>

=over

=item *

ConnectCustomKeyStore

=item *

CreateCustomKeyStore

=item *

DeleteCustomKeyStore

=item *

DisconnectCustomKeyStore

=item *

UpdateCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DescribeKey

=over

=item KeyId => Str

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::DescribeKey>

Returns: a L<Paws::KMS::DescribeKeyResponse> instance

Provides detailed information about a KMS key. You can run
C<DescribeKey> on a customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
or an Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).

This detailed information includes the key ARN, creation date (and
deletion date, if applicable), the key state, and the origin and
expiration date (if any) of the key material. It includes fields, like
C<KeySpec>, that help you distinguish different types of KMS keys. It
also displays the key usage (encryption, signing, or generating and
verifying MACs) and the algorithms that the KMS key supports.

For multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html),
C<DescribeKey> displays the primary key and all related replica keys.
For KMS keys in CloudHSM key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html),
it includes information about the key store, such as the key store ID
and the CloudHSM cluster ID. For KMS keys in external key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html),
it includes the custom key store ID and the ID of the external key.

C<DescribeKey> does not return the following information:

=over

=item *

Aliases associated with the KMS key. To get this information, use
ListAliases.

=item *

Whether automatic key rotation is enabled on the KMS key. To get this
information, use GetKeyRotationStatus. Also, some key states prevent a
KMS key from being automatically rotated. For details, see How
Automatic Key Rotation Works
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works)
in the I<Key Management Service Developer Guide>.

=item *

Tags on the KMS key. To get this information, use ListResourceTags.

=item *

Key policies and grants on the KMS key. To get this information, use
GetKeyPolicy and ListGrants.

=back

In general, C<DescribeKey> is a non-mutating operation. It returns data
about KMS keys, but doesn't change them. However, Amazon Web Services
services use C<DescribeKey> to create Amazon Web Services managed keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
from a I<predefined Amazon Web Services alias> with no key ID.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:DescribeKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

GetKeyPolicy

=item *

GetKeyRotationStatus

=item *

ListAliases

=item *

ListGrants

=item *

ListKeys

=item *

ListResourceTags

=item *

ListRetirableGrants

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DisableKey

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisableKey>

Returns: nothing

Sets the state of a KMS key to disabled. This change temporarily
prevents use of the KMS key for cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

For more information about how key state affects the use of a KMS key,
see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I< I<Key Management Service Developer Guide> >.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:DisableKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: EnableKey

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DisableKeyRotation

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisableKeyRotation>

Returns: nothing

Disables automatic rotation of the key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
of the specified symmetric encryption KMS key.

Automatic key rotation is supported only on symmetric encryption KMS
keys. You cannot enable automatic rotation of asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
HMAC KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
keys with imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
To enable or disable automatic rotation of a set of related
multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
set the property on the primary key.

You can enable (EnableKeyRotation) and disable automatic rotation of
the key material in customer managed KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
Key material rotation of Amazon Web Services managed KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
is not configurable. KMS always rotates the key material for every
year. Rotation of Amazon Web Services owned KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
varies.

In May 2022, KMS changed the rotation schedule for Amazon Web Services
managed keys from every three years to every year. For details, see
EnableKeyRotation.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:DisableKeyRotation
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

EnableKeyRotation

=item *

GetKeyRotationStatus

=item *

ListKeyRotations

=item *

RotateKeyOnDemand

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 DisconnectCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisconnectCustomKeyStore>

Returns: a L<Paws::KMS::DisconnectCustomKeyStoreResponse> instance

Disconnects the custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
from its backing key store. This operation disconnects an CloudHSM key
store from its associated CloudHSM cluster or disconnects an external
key store from the external key store proxy that communicates with your
external key manager.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

While a custom key store is disconnected, you can manage the custom key
store and its KMS keys, but you cannot create or use its KMS keys. You
can reconnect the custom key store at any time.

While a custom key store is disconnected, all attempts to create KMS
keys in the custom key store or to use existing KMS keys in
cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
will fail. This action can prevent users from storing and accessing
sensitive data.

When you disconnect a custom key store, its C<ConnectionState> changes
to C<Disconnected>. To find the connection state of a custom key store,
use the DescribeCustomKeyStores operation. To reconnect a custom key
store, use the ConnectCustomKeyStore operation.

If the operation succeeds, it returns a JSON object with no properties.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:DisconnectCustomKeyStore
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations:>

=over

=item *

ConnectCustomKeyStore

=item *

CreateCustomKeyStore

=item *

DeleteCustomKeyStore

=item *

DescribeCustomKeyStores

=item *

UpdateCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 EnableKey

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::EnableKey>

Returns: nothing

Sets the key state of a KMS key to enabled. This allows you to use the
KMS key for cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:EnableKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: DisableKey

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 EnableKeyRotation

=over

=item KeyId => Str

=item [RotationPeriodInDays => Int]


=back

Each argument is described in detail in: L<Paws::KMS::EnableKeyRotation>

Returns: nothing

Enables automatic rotation of the key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-enable-disable)
of the specified symmetric encryption KMS key.

By default, when you enable automatic rotation of a customer managed
KMS key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
KMS rotates the key material of the KMS key one year (approximately 365
days) from the enable date and every year thereafter. You can use the
optional C<RotationPeriodInDays> parameter to specify a custom rotation
period when you enable key rotation, or you can use
C<RotationPeriodInDays> to modify the rotation period of a key that you
previously enabled automatic key rotation on.

You can monitor rotation of the key material for your KMS keys in
CloudTrail and Amazon CloudWatch. To disable rotation of the key
material in a customer managed KMS key, use the DisableKeyRotation
operation. You can use the GetKeyRotationStatus operation to identify
any in progress rotations. You can use the ListKeyRotations operation
to view the details of completed rotations.

Automatic key rotation is supported only on symmetric encryption KMS
keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
You cannot enable automatic rotation of asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
HMAC KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
keys with imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
To enable or disable automatic rotation of a set of related
multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
set the property on the primary key.

You cannot enable or disable automatic rotation of Amazon Web Services
managed KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
KMS always rotates the key material of Amazon Web Services managed keys
every year. Rotation of Amazon Web Services owned KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
is managed by the Amazon Web Services service that owns the key.

In May 2022, KMS changed the rotation schedule for Amazon Web Services
managed keys from every three years (approximately 1,095 days) to every
year (approximately 365 days).

New Amazon Web Services managed keys are automatically rotated one year
after they are created, and approximately every year thereafter.

Existing Amazon Web Services managed keys are automatically rotated one
year after their most recent rotation, and every year thereafter.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:EnableKeyRotation
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

DisableKeyRotation

=item *

GetKeyRotationStatus

=item *

ListKeyRotations

=item *

RotateKeyOnDemand

You can perform on-demand (RotateKeyOnDemand) rotation of the key
material in customer managed KMS keys, regardless of whether or not
automatic key rotation is enabled.

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 Encrypt

=over

=item KeyId => Str

=item Plaintext => Str

=item [DryRun => Bool]

=item [EncryptionAlgorithm => Str]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::Encrypt>

Returns: a L<Paws::KMS::EncryptResponse> instance

Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a
symmetric or asymmetric KMS key with a C<KeyUsage> of
C<ENCRYPT_DECRYPT>.

You can use this operation to encrypt small amounts of arbitrary data,
such as a personal identifier or database password, or other sensitive
information. You don't need to use the C<Encrypt> operation to encrypt
a data key. The GenerateDataKey and GenerateDataKeyPair operations
return a plaintext data key and an encrypted copy of that data key.

If you use a symmetric encryption KMS key, you can use an encryption
context to add additional security to your encryption operation. If you
specify an C<EncryptionContext> when encrypting data, you must specify
the same encryption context (a case-sensitive exact match) when
decrypting the data. Otherwise, the request to decrypt fails with an
C<InvalidCiphertextException>. For more information, see Encryption
Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.

If you specify an asymmetric KMS key, you must also specify the
encryption algorithm. The algorithm must be compatible with the KMS key
spec.

When you use an asymmetric KMS key to encrypt or reencrypt data, be
sure to record the KMS key and encryption algorithm that you choose.
You will be required to provide the same KMS key and encryption
algorithm when you decrypt the data. If the KMS key and algorithm do
not match the values used to encrypt the data, the decrypt operation
fails.

You are not required to supply the key ID and encryption algorithm when
you decrypt with symmetric encryption KMS keys because KMS stores this
information in the ciphertext blob. KMS cannot store metadata in
ciphertext generated with asymmetric keys. The standard format for
asymmetric key ciphertext does not include configurable fields.

The maximum size of the data that you can encrypt varies with the type
of KMS key and the encryption algorithm that you choose.

=over

=item *

Symmetric encryption KMS keys

=over

=item *

C<SYMMETRIC_DEFAULT>: 4096 bytes

=back

=item *

C<RSA_2048>

=over

=item *

C<RSAES_OAEP_SHA_1>: 214 bytes

=item *

C<RSAES_OAEP_SHA_256>: 190 bytes

=back

=item *

C<RSA_3072>

=over

=item *

C<RSAES_OAEP_SHA_1>: 342 bytes

=item *

C<RSAES_OAEP_SHA_256>: 318 bytes

=back

=item *

C<RSA_4096>

=over

=item *

C<RSAES_OAEP_SHA_1>: 470 bytes

=item *

C<RSAES_OAEP_SHA_256>: 446 bytes

=back

=item *

C<SM2PKE>: 1024 bytes (China Regions only)

=back

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:Encrypt
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Decrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateDataKey

=over

=item KeyId => Str

=item [DryRun => Bool]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeySpec => Str]

=item [NumberOfBytes => Int]

=item [Recipient => L<Paws::KMS::RecipientInfo>]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKey>

Returns: a L<Paws::KMS::GenerateDataKeyResponse> instance

Returns a unique symmetric data key for use outside of KMS. This
operation returns a plaintext copy of the data key and a copy that is
encrypted under a symmetric encryption KMS key that you specify. The
bytes in the plaintext key are random; they are not related to the
caller or the KMS key. You can use the plaintext key to encrypt your
data outside of KMS and store the encrypted data key with the encrypted
data.

To generate a data key, specify the symmetric encryption KMS key that
will be used to encrypt the data key. You cannot use an asymmetric KMS
key to encrypt data keys. To get the type of your KMS key, use the
DescribeKey operation.

You must also specify the length of the data key. Use either the
C<KeySpec> or C<NumberOfBytes> parameters (but not both). For 128-bit
and 256-bit data keys, use the C<KeySpec> parameter.

To generate a 128-bit SM4 data key (China Regions only), specify a
C<KeySpec> value of C<AES_128> or a C<NumberOfBytes> value of C<16>.
The symmetric encryption key used in China Regions to encrypt your data
key is an SM4 encryption key.

To get only an encrypted copy of the data key, use
GenerateDataKeyWithoutPlaintext. To generate an asymmetric data key
pair, use the GenerateDataKeyPair or
GenerateDataKeyPairWithoutPlaintext operation. To get a
cryptographically secure random byte string, use GenerateRandom.

You can use an optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an C<InvalidCiphertextException>. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.

C<GenerateDataKey> also supports Amazon Web Services Nitro Enclaves
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
C<GenerateDataKey> for an Amazon Web Services Nitro enclave, use the
Amazon Web Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the C<Recipient> parameter to
provide the attestation document for the enclave. C<GenerateDataKey>
returns a copy of the data key encrypted under the specified KMS key,
as usual. But instead of a plaintext copy of the data key, the response
includes a copy of the data key encrypted under the public key from the
attestation document (C<CiphertextForRecipient>). For information about
the interaction between KMS and Amazon Web Services Nitro Enclaves, see
How Amazon Web Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>..

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<How to use your data key>

We recommend that you use the following pattern to encrypt data locally
in your application. You can write your own code or use a client-side
encryption library, such as the Amazon Web Services Encryption SDK
(https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/),
the Amazon DynamoDB Encryption Client
(https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/),
or Amazon S3 client-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html)
to do these tasks for you.

To encrypt data outside of KMS:

=over

=item 1.

Use the C<GenerateDataKey> operation to get a data key.

=item 2.

Use the plaintext data key (in the C<Plaintext> field of the response)
to encrypt your data outside of KMS. Then erase the plaintext data key
from memory.

=item 3.

Store the encrypted data key (in the C<CiphertextBlob> field of the
response) with the encrypted data.

=back

To decrypt data outside of KMS:

=over

=item 1.

Use the Decrypt operation to decrypt the encrypted data key. The
operation returns a plaintext copy of the data key.

=item 2.

Use the plaintext data key to decrypt data outside of KMS, then erase
the plaintext data key from memory.

=back

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GenerateDataKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Decrypt

=item *

Encrypt

=item *

GenerateDataKeyPair

=item *

GenerateDataKeyPairWithoutPlaintext

=item *

GenerateDataKeyWithoutPlaintext

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateDataKeyPair

=over

=item KeyId => Str

=item KeyPairSpec => Str

=item [DryRun => Bool]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [Recipient => L<Paws::KMS::RecipientInfo>]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyPair>

Returns: a L<Paws::KMS::GenerateDataKeyPairResponse> instance

Returns a unique asymmetric data key pair for use outside of KMS. This
operation returns a plaintext public key, a plaintext private key, and
a copy of the private key that is encrypted under the symmetric
encryption KMS key you specify. You can use the data key pair to
perform asymmetric cryptography and implement digital signatures
outside of KMS. The bytes in the keys are random; they are not related
to the caller or to the KMS key that is used to encrypt the private
key.

You can use the public key that C<GenerateDataKeyPair> returns to
encrypt data or verify a signature outside of KMS. Then, store the
encrypted private key with the data. When you are ready to decrypt data
or sign a message, you can use the Decrypt operation to decrypt the
encrypted private key.

To generate a data key pair, you must specify a symmetric encryption
KMS key to encrypt the private key in a data key pair. You cannot use
an asymmetric KMS key or a KMS key in a custom key store. To get the
type and origin of your KMS key, use the DescribeKey operation.

Use the C<KeyPairSpec> parameter to choose an RSA or Elliptic Curve
(ECC) data key pair. In China Regions, you can also choose an SM2 data
key pair. KMS recommends that you use ECC key pairs for signing, and
use RSA and SM2 key pairs for either encryption or signing, but not
both. However, KMS cannot enforce any restrictions on the use of data
key pairs outside of KMS.

If you are using the data key pair to encrypt data, or for any
operation where you don't immediately need a private key, consider
using the GenerateDataKeyPairWithoutPlaintext operation.
C<GenerateDataKeyPairWithoutPlaintext> returns a plaintext public key
and an encrypted private key, but omits the plaintext private key that
you need only to decrypt ciphertext or sign a message. Later, when you
need to decrypt the data or sign a message, use the Decrypt operation
to decrypt the encrypted private key in the data key pair.

C<GenerateDataKeyPair> returns a unique data key pair for each request.
The bytes in the keys are random; they are not related to the caller or
the KMS key that is used to encrypt the private key. The public key is
a DER-encoded X.509 SubjectPublicKeyInfo, as specified in RFC 5280
(https://tools.ietf.org/html/rfc5280). The private key is a DER-encoded
PKCS8 PrivateKeyInfo, as specified in RFC 5958
(https://tools.ietf.org/html/rfc5958).

C<GenerateDataKeyPair> also supports Amazon Web Services Nitro Enclaves
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
C<GenerateDataKeyPair> for an Amazon Web Services Nitro enclave, use
the Amazon Web Services Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the C<Recipient> parameter to
provide the attestation document for the enclave.
C<GenerateDataKeyPair> returns the public data key and a copy of the
private data key encrypted under the specified KMS key, as usual. But
instead of a plaintext copy of the private data key
(C<PrivateKeyPlaintext>), the response includes a copy of the private
data key encrypted under the public key from the attestation document
(C<CiphertextForRecipient>). For information about the interaction
between KMS and Amazon Web Services Nitro Enclaves, see How Amazon Web
Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>..

You can use an optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an C<InvalidCiphertextException>. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GenerateDataKeyPair
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Decrypt

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPairWithoutPlaintext

=item *

GenerateDataKeyWithoutPlaintext

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateDataKeyPairWithoutPlaintext

=over

=item KeyId => Str

=item KeyPairSpec => Str

=item [DryRun => Bool]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyPairWithoutPlaintext>

Returns: a L<Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse> instance

Returns a unique asymmetric data key pair for use outside of KMS. This
operation returns a plaintext public key and a copy of the private key
that is encrypted under the symmetric encryption KMS key you specify.
Unlike GenerateDataKeyPair, this operation does not return a plaintext
private key. The bytes in the keys are random; they are not related to
the caller or to the KMS key that is used to encrypt the private key.

You can use the public key that C<GenerateDataKeyPairWithoutPlaintext>
returns to encrypt data or verify a signature outside of KMS. Then,
store the encrypted private key with the data. When you are ready to
decrypt data or sign a message, you can use the Decrypt operation to
decrypt the encrypted private key.

To generate a data key pair, you must specify a symmetric encryption
KMS key to encrypt the private key in a data key pair. You cannot use
an asymmetric KMS key or a KMS key in a custom key store. To get the
type and origin of your KMS key, use the DescribeKey operation.

Use the C<KeyPairSpec> parameter to choose an RSA or Elliptic Curve
(ECC) data key pair. In China Regions, you can also choose an SM2 data
key pair. KMS recommends that you use ECC key pairs for signing, and
use RSA and SM2 key pairs for either encryption or signing, but not
both. However, KMS cannot enforce any restrictions on the use of data
key pairs outside of KMS.

C<GenerateDataKeyPairWithoutPlaintext> returns a unique data key pair
for each request. The bytes in the key are not related to the caller or
KMS key that is used to encrypt the private key. The public key is a
DER-encoded X.509 SubjectPublicKeyInfo, as specified in RFC 5280
(https://tools.ietf.org/html/rfc5280).

You can use an optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an C<InvalidCiphertextException>. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GenerateDataKeyPairWithoutPlaintext
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Decrypt

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=item *

GenerateDataKeyWithoutPlaintext

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateDataKeyWithoutPlaintext

=over

=item KeyId => Str

=item [DryRun => Bool]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeySpec => Str]

=item [NumberOfBytes => Int]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyWithoutPlaintext>

Returns: a L<Paws::KMS::GenerateDataKeyWithoutPlaintextResponse> instance

Returns a unique symmetric data key for use outside of KMS. This
operation returns a data key that is encrypted under a symmetric
encryption KMS key that you specify. The bytes in the key are random;
they are not related to the caller or to the KMS key.

C<GenerateDataKeyWithoutPlaintext> is identical to the GenerateDataKey
operation except that it does not return a plaintext copy of the data
key.

This operation is useful for systems that need to encrypt data at some
point, but not immediately. When you need to encrypt the data, you call
the Decrypt operation on the encrypted copy of the key.

It's also useful in distributed systems with different levels of trust.
For example, you might store encrypted data in containers. One
component of your system creates new containers and stores an encrypted
data key with each container. Then, a different component puts the data
into the containers. That component first decrypts the data key, uses
the plaintext data key to encrypt data, puts the encrypted data into
the container, and then destroys the plaintext data key. In this
system, the component that creates the containers never sees the
plaintext data key.

To request an asymmetric data key pair, use the GenerateDataKeyPair or
GenerateDataKeyPairWithoutPlaintext operations.

To generate a data key, you must specify the symmetric encryption KMS
key that is used to encrypt the data key. You cannot use an asymmetric
KMS key or a key in a custom key store to generate a data key. To get
the type of your KMS key, use the DescribeKey operation.

You must also specify the length of the data key. Use either the
C<KeySpec> or C<NumberOfBytes> parameters (but not both). For 128-bit
and 256-bit data keys, use the C<KeySpec> parameter.

To generate an SM4 data key (China Regions only), specify a C<KeySpec>
value of C<AES_128> or C<NumberOfBytes> value of C<16>. The symmetric
encryption key used in China Regions to encrypt your data key is an SM4
encryption key.

If the operation succeeds, you will find the encrypted copy of the data
key in the C<CiphertextBlob> field.

You can use an optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an C<InvalidCiphertextException>. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GenerateDataKeyWithoutPlaintext
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

Decrypt

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=item *

GenerateDataKeyPairWithoutPlaintext

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateMac

=over

=item KeyId => Str

=item MacAlgorithm => Str

=item Message => Str

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateMac>

Returns: a L<Paws::KMS::GenerateMacResponse> instance

Generates a hash-based message authentication code (HMAC) for a message
using an HMAC KMS key and a MAC algorithm that the key supports. HMAC
KMS keys and the HMAC algorithms that KMS uses conform to industry
standards defined in RFC 2104
(https://datatracker.ietf.org/doc/html/rfc2104).

You can use value that GenerateMac returns in the VerifyMac operation
to demonstrate that the original message has not changed. Also, because
a secret key is used to create the hash, you can verify that the party
that generated the hash has the required secret key. You can also use
the raw result to implement HMAC-based algorithms such as key
derivation functions. This operation is part of KMS support for HMAC
KMS keys. For details, see HMAC keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the I< I<Key Management Service Developer Guide> >.

Best practices recommend that you limit the time during which any
signing mechanism, including an HMAC, is effective. This deters an
attack where the actor uses a signed message to establish validity
repeatedly or long after the message is superseded. HMAC tags do not
include a timestamp, but you can include a timestamp in the token or
message to help you detect when its time to refresh the HMAC.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GenerateMac
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: VerifyMac

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GenerateRandom

=over

=item [CustomKeyStoreId => Str]

=item [NumberOfBytes => Int]

=item [Recipient => L<Paws::KMS::RecipientInfo>]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateRandom>

Returns: a L<Paws::KMS::GenerateRandomResponse> instance

Returns a random byte string that is cryptographically secure.

You must use the C<NumberOfBytes> parameter to specify the length of
the random byte string. There is no default value for string length.

By default, the random byte string is generated in KMS. To generate the
byte string in the CloudHSM cluster associated with an CloudHSM key
store, use the C<CustomKeyStoreId> parameter.

C<GenerateRandom> also supports Amazon Web Services Nitro Enclaves
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html),
which provide an isolated compute environment in Amazon EC2. To call
C<GenerateRandom> for a Nitro enclave, use the Amazon Web Services
Nitro Enclaves SDK
(https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk)
or any Amazon Web Services SDK. Use the C<Recipient> parameter to
provide the attestation document for the enclave. Instead of plaintext
bytes, the response includes the plaintext bytes encrypted under the
public key from the attestation document
(C<CiphertextForRecipient>).For information about the interaction
between KMS and Amazon Web Services Nitro Enclaves, see How Amazon Web
Services Nitro Enclaves uses KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
in the I<Key Management Service Developer Guide>.

For more information about entropy and random number generation, see
Key Management Service Cryptographic Details
(https://docs.aws.amazon.com/kms/latest/cryptographic-details/).

B<Cross-account use>: Not applicable. C<GenerateRandom> does not use
any account-specific resources, such as KMS keys.

B<Required permissions>: kms:GenerateRandom
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GetKeyPolicy

=over

=item KeyId => Str

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::KMS::GetKeyPolicy>

Returns: a L<Paws::KMS::GetKeyPolicyResponse> instance

Gets a key policy attached to the specified KMS key.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:GetKeyPolicy
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: PutKeyPolicy
(https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html)

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GetKeyRotationStatus

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetKeyRotationStatus>

Returns: a L<Paws::KMS::GetKeyRotationStatusResponse> instance

Provides detailed information about the rotation status for a KMS key,
including whether automatic rotation of the key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
is enabled for the specified KMS key, the rotation period
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotation-period),
and the next scheduled rotation date.

Automatic key rotation is supported only on symmetric encryption KMS
keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
You cannot enable automatic rotation of asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
HMAC KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
keys with imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
To enable or disable automatic rotation of a set of related
multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
set the property on the primary key..

You can enable (EnableKeyRotation) and disable automatic rotation
(DisableKeyRotation) of the key material in customer managed KMS keys.
Key material rotation of Amazon Web Services managed KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
is not configurable. KMS always rotates the key material in Amazon Web
Services managed KMS keys every year. The key rotation status for
Amazon Web Services managed KMS keys is always C<true>.

You can perform on-demand (RotateKeyOnDemand) rotation of the key
material in customer managed KMS keys, regardless of whether or not
automatic key rotation is enabled. You can use GetKeyRotationStatus to
identify the date and time that an in progress on-demand rotation was
initiated. You can use ListKeyRotations to view the details of
completed rotations.

In May 2022, KMS changed the rotation schedule for Amazon Web Services
managed keys from every three years to every year. For details, see
EnableKeyRotation.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

=over

=item *

Disabled: The key rotation status does not change when you disable a
KMS key. However, while the KMS key is disabled, KMS does not rotate
the key material. When you re-enable the KMS key, rotation resumes. If
the key material in the re-enabled KMS key hasn't been rotated in one
year, KMS rotates it immediately, and every year thereafter. If it's
been less than a year since the key material in the re-enabled KMS key
was rotated, the KMS key resumes its prior rotation schedule.

=item *

Pending deletion: While a KMS key is pending deletion, its key rotation
status is C<false> and KMS does not rotate the key material. If you
cancel the deletion, the original key rotation status returns to
C<true>.

=back

B<Cross-account use>: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the C<KeyId> parameter.

B<Required permissions>: kms:GetKeyRotationStatus
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

DisableKeyRotation

=item *

EnableKeyRotation

=item *

ListKeyRotations

=item *

RotateKeyOnDemand

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GetParametersForImport

=over

=item KeyId => Str

=item WrappingAlgorithm => Str

=item WrappingKeySpec => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetParametersForImport>

Returns: a L<Paws::KMS::GetParametersForImportResponse> instance

Returns the public key and an import token you need to import or
reimport key material for a KMS key.

By default, KMS keys are created with key material that KMS generates.
This operation supports Importing key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
an advanced feature that lets you generate and import the cryptographic
key material for a KMS key. For more information about importing key
material into KMS, see Importing key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<Key Management Service Developer Guide>.

Before calling C<GetParametersForImport>, use the CreateKey operation
with an C<Origin> value of C<EXTERNAL> to create a KMS key with no key
material. You can import key material for a symmetric encryption KMS
key, HMAC KMS key, asymmetric encryption KMS key, or asymmetric signing
KMS key. You can also import key material into a multi-Region key
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
of any supported type. However, you can't import key material into a
KMS key in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
You can also use C<GetParametersForImport> to get a public key and
import token to reimport the original key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
into a KMS key whose key material expired or was deleted.

C<GetParametersForImport> returns the items that you need to import
your key material.

=over

=item *

The public key (or "wrapping key") of an RSA key pair that KMS
generates.

You will use this public key to encrypt ("wrap") your key material
while it's in transit to KMS.

=item *

A import token that ensures that KMS can decrypt your key material and
associate it with the correct KMS key.

=back

The public key and its import token are permanently linked and must be
used together. Each public key and import token set is valid for 24
hours. The expiration date and time appear in the C<ParametersValidTo>
field in the C<GetParametersForImport> response. You cannot use an
expired public key or import token in an ImportKeyMaterial request. If
your key and token expire, send another C<GetParametersForImport>
request.

C<GetParametersForImport> requires the following information:

=over

=item *

The key ID of the KMS key for which you are importing the key material.

=item *

The key spec of the public key ("wrapping key") that you will use to
encrypt your key material during import.

=item *

The wrapping algorithm that you will use with the public key to encrypt
your key material.

=back

You can use the same or a different public key spec and wrapping
algorithm each time you import or reimport the same key material.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:GetParametersForImport
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

ImportKeyMaterial

=item *

DeleteImportedKeyMaterial

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 GetPublicKey

=over

=item KeyId => Str

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GetPublicKey>

Returns: a L<Paws::KMS::GetPublicKeyResponse> instance

Returns the public key of an asymmetric KMS key. Unlike the private key
of a asymmetric KMS key, which never leaves KMS unencrypted, callers
with C<kms:GetPublicKey> permission can download the public key of an
asymmetric KMS key. You can share the public key to allow others to
encrypt messages and verify signatures outside of KMS. For information
about asymmetric KMS keys, see Asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

You do not need to download the public key. Instead, you can use the
public key within KMS by calling the Encrypt, ReEncrypt, or Verify
operations with the identifier of an asymmetric KMS key. When you use
the public key within KMS, you benefit from the authentication,
authorization, and logging that are part of every KMS operation. You
also reduce of risk of encrypting data that cannot be decrypted. These
features are not effective outside of KMS.

To help you use the public key safely outside of KMS, C<GetPublicKey>
returns important information about the public key in the response,
including:

=over

=item *

KeySpec
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec):
The type of key material in the public key, such as C<RSA_4096> or
C<ECC_NIST_P521>.

=item *

KeyUsage
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage):
Whether the key is used for encryption, signing, or deriving a shared
secret.

=item *

EncryptionAlgorithms
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms)
or SigningAlgorithms
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms):
A list of the encryption algorithms or the signing algorithms for the
key.

=back

Although KMS cannot enforce these restrictions on external operations,
it is crucial that you use this information to prevent the public key
from being used improperly. For example, you can prevent a public
signing key from being used encrypt data, or prevent a public key from
being used with an encryption algorithm that is not supported by KMS.
You can also avoid errors, such as using the wrong signing algorithm in
a verification operation.

To verify a signature outside of KMS with an SM2 public key (China
Regions only), you must specify the distinguishing ID. By default, KMS
uses C<1234567812345678> as the distinguishing ID. For more
information, see Offline verification with SM2 key pairs
(https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification).

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:GetPublicKey
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: CreateKey

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ImportKeyMaterial

=over

=item EncryptedKeyMaterial => Str

=item ImportToken => Str

=item KeyId => Str

=item [ExpirationModel => Str]

=item [ValidTo => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ImportKeyMaterial>

Returns: a L<Paws::KMS::ImportKeyMaterialResponse> instance

Imports or reimports key material into an existing KMS key that was
created without key material. C<ImportKeyMaterial> also sets the
expiration model and expiration date of the imported key material.

By default, KMS keys are created with key material that KMS generates.
This operation supports Importing key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
an advanced feature that lets you generate and import the cryptographic
key material for a KMS key. For more information about importing key
material into KMS, see Importing key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<Key Management Service Developer Guide>.

After you successfully import key material into a KMS key, you can
reimport the same key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
into that KMS key, but you cannot import different key material. You
might reimport key material to replace key material that expired or key
material that you deleted. You might also reimport key material to
change the expiration model or expiration date of the key material.

Each time you import key material into KMS, you can determine whether
(C<ExpirationModel>) and when (C<ValidTo>) the key material expires. To
change the expiration of your key material, you must import it again,
either by calling C<ImportKeyMaterial> or using the import features of
the KMS console.

Before calling C<ImportKeyMaterial>:

=over

=item *

Create or identify a KMS key with no key material. The KMS key must
have an C<Origin> value of C<EXTERNAL>, which indicates that the KMS
key is designed for imported key material.

To create an new KMS key for imported key material, call the CreateKey
operation with an C<Origin> value of C<EXTERNAL>. You can create a
symmetric encryption KMS key, HMAC KMS key, asymmetric encryption KMS
key, or asymmetric signing KMS key. You can also import key material
into a multi-Region key of any supported type. However, you can't
import key material into a KMS key in a custom key store.

=item *

Use the DescribeKey operation to verify that the C<KeyState> of the KMS
key is C<PendingImport>, which indicates that the KMS key has no key
material.

If you are reimporting the same key material into an existing KMS key,
you might need to call the DeleteImportedKeyMaterial to delete its
existing key material.

=item *

Call the GetParametersForImport operation to get a public key and
import token set for importing key material.

=item *

Use the public key in the GetParametersForImport response to encrypt
your key material.

=back

Then, in an C<ImportKeyMaterial> request, you submit your encrypted key
material and import token. When calling this operation, you must
specify the following values:

=over

=item *

The key ID or key ARN of the KMS key to associate with the imported key
material. Its C<Origin> must be C<EXTERNAL> and its C<KeyState> must be
C<PendingImport>. You cannot perform this operation on a KMS key in a
custom key store, or on a KMS key in a different Amazon Web Services
account. To get the C<Origin> and C<KeyState> of a KMS key, call
DescribeKey.

=item *

The encrypted key material.

=item *

The import token that GetParametersForImport returned. You must use a
public key and token from the same C<GetParametersForImport> response.

=item *

Whether the key material expires (C<ExpirationModel>) and, if so, when
(C<ValidTo>). For help with this choice, see Setting an expiration time
(https://docs.aws.amazon.com/en_us/kms/latest/developerguide/importing-keys.html#importing-keys-expiration)
in the I<Key Management Service Developer Guide>.

If you set an expiration date, KMS deletes the key material from the
KMS key on the specified date, making the KMS key unusable. To use the
KMS key in cryptographic operations again, you must reimport the same
key material. However, you can delete and reimport the key material at
any time, including before the key material expires. Each time you
reimport, you can eliminate or reset the expiration time.

=back

When this operation is successful, the key state of the KMS key changes
from C<PendingImport> to C<Enabled>, and you can use the KMS key in
cryptographic operations.

If this operation fails, use the exception to help determine the
problem. If the error is related to the key material, the import token,
or wrapping key, use GetParametersForImport to get a new public key and
import token for the KMS key and repeat the import procedure. For help,
see How To Import Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ImportKeyMaterial
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

DeleteImportedKeyMaterial

=item *

GetParametersForImport

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListAliases

=over

=item [KeyId => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListAliases>

Returns: a L<Paws::KMS::ListAliasesResponse> instance

Gets a list of aliases in the caller's Amazon Web Services account and
region. For more information about aliases, see CreateAlias.

By default, the C<ListAliases> operation returns all aliases in the
account and region. To get only the aliases associated with a
particular KMS key, use the C<KeyId> parameter.

The C<ListAliases> response can include aliases that you created and
associated with your customer managed keys, and aliases that Amazon Web
Services created and associated with Amazon Web Services managed keys
in your account. You can recognize Amazon Web Services aliases because
their names have the format C<aws/E<lt>service-nameE<gt>>, such as
C<aws/dynamodb>.

The response might also include aliases that have no C<TargetKeyId>
field. These are predefined aliases that Amazon Web Services has
created but has not yet associated with a KMS key. Aliases that Amazon
Web Services creates in your account, including predefined aliases, do
not count against your KMS aliases quota
(https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).

B<Cross-account use>: No. C<ListAliases> does not return aliases in
other Amazon Web Services accounts.

B<Required permissions>: kms:ListAliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

For details, see Controlling access to aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

CreateAlias

=item *

DeleteAlias

=item *

UpdateAlias

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListGrants

=over

=item KeyId => Str

=item [GranteePrincipal => Str]

=item [GrantId => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListGrants>

Returns: a L<Paws::KMS::ListGrantsResponse> instance

Gets a list of all grants for the specified KMS key.

You must specify the KMS key in all requests. You can filter the grant
list by grant ID or grantee principal.

For detailed information about grants, including grant terminology, see
Grants in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<Key Management Service Developer Guide> >. For examples of
working with grants in several programming languages, see Programming
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

The C<GranteePrincipal> field in the C<ListGrants> response usually
contains the user or role designated as the grantee principal in the
grant. However, when the grantee principal in the grant is an Amazon
Web Services service, the C<GranteePrincipal> field contains the
service principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services),
which might represent several different grantee principals.

B<Cross-account use>: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the C<KeyId> parameter.

B<Required permissions>: kms:ListGrants
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

CreateGrant

=item *

ListRetirableGrants

=item *

RetireGrant

=item *

RevokeGrant

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListKeyPolicies

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListKeyPolicies>

Returns: a L<Paws::KMS::ListKeyPoliciesResponse> instance

Gets the names of the key policies that are attached to a KMS key. This
operation is designed to get policy names that you can use in a
GetKeyPolicy operation. However, the only valid policy name is
C<default>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ListKeyPolicies
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

GetKeyPolicy

=item *

PutKeyPolicy
(https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html)

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListKeyRotations

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListKeyRotations>

Returns: a L<Paws::KMS::ListKeyRotationsResponse> instance

Returns information about all completed key material rotations for the
specified KMS key.

You must specify the KMS key in all requests. You can refine the key
rotations list by limiting the number of rotations returned.

For detailed information about automatic and on-demand key rotations,
see Rotating KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ListKeyRotations
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

EnableKeyRotation

=item *

DisableKeyRotation

=item *

GetKeyRotationStatus

=item *

RotateKeyOnDemand

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListKeys

=over

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListKeys>

Returns: a L<Paws::KMS::ListKeysResponse> instance

Gets a list of all KMS keys in the caller's Amazon Web Services account
and Region.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ListKeys
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations:>

=over

=item *

CreateKey

=item *

DescribeKey

=item *

ListAliases

=item *

ListResourceTags

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListResourceTags

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListResourceTags>

Returns: a L<Paws::KMS::ListResourceTagsResponse> instance

Returns all tags on the specified KMS key.

For general information about tags, including the format and syntax,
see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>. For information about using
tags in KMS, see Tagging keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ListResourceTags
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

CreateKey

=item *

ReplicateKey

=item *

TagResource

=item *

UntagResource

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ListRetirableGrants

=over

=item RetiringPrincipal => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListRetirableGrants>

Returns: a L<Paws::KMS::ListGrantsResponse> instance

Returns information about all grants in the Amazon Web Services account
and Region that have the specified retiring principal.

You can specify any principal in your Amazon Web Services account. The
grants that are returned include grants for KMS keys in your Amazon Web
Services account and other Amazon Web Services accounts. You might use
this operation to determine which grants you may retire. To retire a
grant, use the RetireGrant operation.

For detailed information about grants, including grant terminology, see
Grants in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<Key Management Service Developer Guide> >. For examples of
working with grants in several programming languages, see Programming
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

B<Cross-account use>: You must specify a principal in your Amazon Web
Services account. This operation returns a list of grants where the
retiring principal specified in the C<ListRetirableGrants> request is
the same retiring principal on the grant. This can include grants on
KMS keys owned by other Amazon Web Services accounts, but you do not
need C<kms:ListRetirableGrants> permission (or any other additional
permission) in any Amazon Web Services account other than your own.

B<Required permissions>: kms:ListRetirableGrants
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy) in your Amazon Web Services account.

KMS authorizes C<ListRetirableGrants> requests by evaluating the caller
account's kms:ListRetirableGrants permissions. The authorized resource
in C<ListRetirableGrants> calls is the retiring principal specified in
the request. KMS does not evaluate the caller's permissions to verify
their access to any KMS keys or grants that might be returned by the
C<ListRetirableGrants> call.

B<Related operations:>

=over

=item *

CreateGrant

=item *

ListGrants

=item *

RetireGrant

=item *

RevokeGrant

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 PutKeyPolicy

=over

=item KeyId => Str

=item Policy => Str

=item [BypassPolicyLockoutSafetyCheck => Bool]

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::KMS::PutKeyPolicy>

Returns: nothing

Attaches a key policy to the specified KMS key.

For more information about key policies, see Key Policies
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<Key Management Service Developer Guide>. For help writing and
formatting a JSON policy document, see the IAM JSON Policy Reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the I< I<Identity and Access Management User Guide> >. For examples
of adding a key policy in multiple programming languages, see Setting a
key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:PutKeyPolicy
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: GetKeyPolicy

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ReEncrypt

=over

=item CiphertextBlob => Str

=item DestinationKeyId => Str

=item [DestinationEncryptionAlgorithm => Str]

=item [DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [SourceEncryptionAlgorithm => Str]

=item [SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [SourceKeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ReEncrypt>

Returns: a L<Paws::KMS::ReEncryptResponse> instance

Decrypts ciphertext and then reencrypts it entirely within KMS. You can
use this operation to change the KMS key under which data is encrypted,
such as when you manually rotate
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually)
a KMS key or change the KMS key that protects a ciphertext. You can
also use it to reencrypt ciphertext under the same KMS key, such as to
change the encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
of a ciphertext.

The C<ReEncrypt> operation can decrypt ciphertext that was encrypted by
using a KMS key in an KMS operation, such as Encrypt or
GenerateDataKey. It can also decrypt ciphertext that was encrypted by
using the public key of an asymmetric KMS key
(https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks)
outside of KMS. However, it cannot decrypt ciphertext produced by other
libraries, such as the Amazon Web Services Encryption SDK
(https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
Amazon S3 client-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
KMS.

When you use the C<ReEncrypt> operation, you need to provide
information for the decrypt operation and the subsequent encrypt
operation.

=over

=item *

If your ciphertext was encrypted under an asymmetric KMS key, you must
use the C<SourceKeyId> parameter to identify the KMS key that encrypted
the ciphertext. You must also supply the encryption algorithm that was
used. This information is required to decrypt the data.

=item *

If your ciphertext was encrypted under a symmetric encryption KMS key,
the C<SourceKeyId> parameter is optional. KMS can get this information
from metadata that it adds to the symmetric ciphertext blob. This
feature adds durability to your implementation by ensuring that
authorized users can decrypt ciphertext decades after it was encrypted,
even if they've lost track of the key ID. However, specifying the
source KMS key is always recommended as a best practice. When you use
the C<SourceKeyId> parameter to specify a KMS key, KMS uses only the
KMS key you specify. If the ciphertext was encrypted under a different
KMS key, the C<ReEncrypt> operation fails. This practice ensures that
you use the KMS key that you intend.

=item *

To reencrypt the data, you must use the C<DestinationKeyId> parameter
to specify the KMS key that re-encrypts the data after it is decrypted.
If the destination KMS key is an asymmetric KMS key, you must also
provide the encryption algorithm. The algorithm that you choose must be
compatible with the KMS key.

When you use an asymmetric KMS key to encrypt or reencrypt data, be
sure to record the KMS key and encryption algorithm that you choose.
You will be required to provide the same KMS key and encryption
algorithm when you decrypt the data. If the KMS key and algorithm do
not match the values used to encrypt the data, the decrypt operation
fails.

You are not required to supply the key ID and encryption algorithm when
you decrypt with symmetric encryption KMS keys because KMS stores this
information in the ciphertext blob. KMS cannot store metadata in
ciphertext generated with asymmetric keys. The standard format for
asymmetric key ciphertext does not include configurable fields.

=back

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. The source KMS key and destination KMS key
can be in different Amazon Web Services accounts. Either or both KMS
keys can be in a different account than the caller. To specify a KMS
key in a different account, you must use its key ARN or alias ARN.

B<Required permissions>:

=over

=item *

kms:ReEncryptFrom
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
permission on the source KMS key (key policy)

=item *

kms:ReEncryptTo
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
permission on the destination KMS key (key policy)

=back

To permit reencryption from or to a KMS key, include the
C<"kms:ReEncrypt*"> permission in your key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html).
This permission is automatically included in the key policy when you
use the console to create a KMS key. But you must include it manually
when you create a KMS key programmatically or when you use the
PutKeyPolicy operation to set a key policy.

B<Related operations:>

=over

=item *

Decrypt

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ReplicateKey

=over

=item KeyId => Str

=item ReplicaRegion => Str

=item [BypassPolicyLockoutSafetyCheck => Bool]

=item [Description => Str]

=item [Policy => Str]

=item [Tags => ArrayRef[L<Paws::KMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::KMS::ReplicateKey>

Returns: a L<Paws::KMS::ReplicateKeyResponse> instance

Replicates a multi-Region key into the specified Region. This operation
creates a multi-Region replica key based on a multi-Region primary key
in a different Region of the same Amazon Web Services partition. You
can create multiple replicas of a primary key, but each must be in a
different Region. To create a multi-Region primary key, use the
CreateKey operation.

This operation supports I<multi-Region keys>, an KMS feature that lets
you create multiple interoperable KMS keys in different Amazon Web
Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see Multi-Region keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

A I<replica key> is a fully-functional KMS key that can be used
independently of its primary and peer replica keys. A primary key and
its replica keys share properties that make them interoperable. They
have the same key ID
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id)
and key material. They also have the same key spec
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
key usage
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
key material origin
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
and automatic key rotation status
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
KMS automatically synchronizes these shared properties among related
multi-Region keys. All other properties of a replica key can differ,
including its key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html),
tags
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html),
aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html),
and Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html).
KMS pricing and quotas for KMS keys apply to each primary key and
replica key.

When this operation completes, the new replica key has a transient key
state of C<Creating>. This key state changes to C<Enabled> (or
C<PendingImport>) after a few seconds when the process of creating the
new replica key is complete. While the key state is C<Creating>, you
can manage key, but you cannot yet use it in cryptographic operations.
If you are creating and using the replica key programmatically, retry
on C<KMSInvalidStateException> or call C<DescribeKey> to check its
C<KeyState> value before using it. For details about the C<Creating>
key state, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

You cannot create more than one replica of a primary key in any Region.
If the Region already includes a replica of the key you're trying to
replicate, C<ReplicateKey> returns an C<AlreadyExistsException> error.
If the key state of the existing replica is C<PendingDeletion>, you can
cancel the scheduled key deletion (CancelKeyDeletion) or wait for the
key to be deleted. The new replica key you create will have the same
shared properties
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-sync-properties)
as the original replica key.

The CloudTrail log of a C<ReplicateKey> operation records a
C<ReplicateKey> operation in the primary key's Region and a CreateKey
operation in the replica key's Region.

If you replicate a multi-Region primary key with imported key material,
the replica key is created with no key material. You must import the
same key material that you imported into the primary key. For details,
see Importing key material into multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html)
in the I<Key Management Service Developer Guide>.

To convert a replica key to a primary key, use the UpdatePrimaryRegion
operation.

C<ReplicateKey> uses different default values for the C<KeyPolicy> and
C<Tags> parameters than those used in the KMS console. For details, see
the parameter descriptions.

B<Cross-account use>: No. You cannot use this operation to create a
replica key in a different Amazon Web Services account.

B<Required permissions>:

=over

=item *

C<kms:ReplicateKey> on the primary key (in the primary key's Region).
Include this permission in the primary key's key policy.

=item *

C<kms:CreateKey> in an IAM policy in the replica Region.

=item *

To use the C<Tags> parameter, C<kms:TagResource> in an IAM policy in
the replica Region.

=back

B<Related operations>

=over

=item *

CreateKey

=item *

UpdatePrimaryRegion

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 RetireGrant

=over

=item [DryRun => Bool]

=item [GrantId => Str]

=item [GrantToken => Str]

=item [KeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::RetireGrant>

Returns: nothing

Deletes a grant. Typically, you retire a grant when you no longer need
its permissions. To identify the grant to retire, use a grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token),
or both the grant ID and a key identifier (key ID or key ARN) of the
KMS key. The CreateGrant operation returns both values.

This operation can be called by the I<retiring principal> for a grant,
by the I<grantee principal> if the grant allows the C<RetireGrant>
operation, and by the Amazon Web Services account in which the grant is
created. It can also be called by principals to whom permission for
retiring a grant is delegated. For details, see Retiring and revoking
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
in the I<Key Management Service Developer Guide>.

For detailed information about grants, including grant terminology, see
Grants in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<Key Management Service Developer Guide> >. For examples of
working with grants in several programming languages, see Programming
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

B<Cross-account use>: Yes. You can retire a grant on a KMS key in a
different Amazon Web Services account.

B<Required permissions>: Permission to retire a grant is determined
primarily by the grant. For details, see Retiring and revoking grants
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

CreateGrant

=item *

ListGrants

=item *

ListRetirableGrants

=item *

RevokeGrant

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 RevokeGrant

=over

=item GrantId => Str

=item KeyId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::KMS::RevokeGrant>

Returns: nothing

Deletes the specified grant. You revoke a grant to terminate the
permissions that the grant allows. For more information, see Retiring
and revoking grants
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
in the I< I<Key Management Service Developer Guide> >.

When you create, retire, or revoke a grant, there might be a brief
delay, usually less than five minutes, until the grant is available
throughout KMS. This state is known as I<eventual consistency>. For
details, see Eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency)
in the I< I<Key Management Service Developer Guide> >.

For detailed information about grants, including grant terminology, see
Grants in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<Key Management Service Developer Guide> >. For examples of
working with grants in several programming languages, see Programming
grants
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

B<Cross-account use>: Yes. To perform this operation on a KMS key in a
different Amazon Web Services account, specify the key ARN in the value
of the C<KeyId> parameter.

B<Required permissions>: kms:RevokeGrant
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy).

B<Related operations:>

=over

=item *

CreateGrant

=item *

ListGrants

=item *

ListRetirableGrants

=item *

RetireGrant

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 RotateKeyOnDemand

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::RotateKeyOnDemand>

Returns: a L<Paws::KMS::RotateKeyOnDemandResponse> instance

Immediately initiates rotation of the key material of the specified
symmetric encryption KMS key.

You can perform on-demand rotation
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-on-demand)
of the key material in customer managed KMS keys, regardless of whether
or not automatic key rotation
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-enable-disable)
is enabled. On-demand rotations do not change existing automatic
rotation schedules. For example, consider a KMS key that has automatic
key rotation enabled with a rotation period of 730 days. If the key is
scheduled to automatically rotate on April 14, 2024, and you perform an
on-demand rotation on April 10, 2024, the key will automatically
rotate, as scheduled, on April 14, 2024 and every 730 days thereafter.

You can perform on-demand key rotation a B<maximum of 10 times> per KMS
key. You can use the KMS console to view the number of remaining
on-demand rotations available for a KMS key.

You can use GetKeyRotationStatus to identify any in progress on-demand
rotations. You can use ListKeyRotations to identify the date that
completed on-demand rotations were performed. You can monitor rotation
of the key material for your KMS keys in CloudTrail and Amazon
CloudWatch.

On-demand key rotation is supported only on symmetric encryption KMS
keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
You cannot perform on-demand rotation of asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
HMAC KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
keys with imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
To perform on-demand rotation of a set of related multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
invoke the on-demand rotation on the primary key.

You cannot initiate on-demand rotation of Amazon Web Services managed
KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
KMS always rotates the key material of Amazon Web Services managed keys
every year. Rotation of Amazon Web Services owned KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
is managed by the Amazon Web Services service that owns the key.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:RotateKeyOnDemand
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations:>

=over

=item *

EnableKeyRotation

=item *

DisableKeyRotation

=item *

GetKeyRotationStatus

=item *

ListKeyRotations

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 ScheduleKeyDeletion

=over

=item KeyId => Str

=item [PendingWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::KMS::ScheduleKeyDeletion>

Returns: a L<Paws::KMS::ScheduleKeyDeletionResponse> instance

Schedules the deletion of a KMS key. By default, KMS applies a waiting
period of 30 days, but you can specify a waiting period of 7-30 days.
When this operation is successful, the key state of the KMS key changes
to C<PendingDeletion> and the key can't be used in any cryptographic
operations. It remains in this state for the duration of the waiting
period. Before the waiting period ends, you can use CancelKeyDeletion
to cancel the deletion of the KMS key. After the waiting period ends,
KMS deletes the KMS key, its key material, and all KMS data associated
with it, including all aliases that refer to it.

Deleting a KMS key is a destructive and potentially dangerous
operation. When a KMS key is deleted, all data that was encrypted under
the KMS key is unrecoverable. (The only exception is a multi-Region
replica key
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html),
or an asymmetric or HMAC KMS key with imported key material.) To
prevent the use of a KMS key without deleting it, use DisableKey.

You can schedule the deletion of a multi-Region primary key and its
replica keys at any time. However, KMS will not delete a multi-Region
primary key with existing replica keys. If you schedule the deletion of
a primary key with replicas, its key state changes to
C<PendingReplicaDeletion> and it cannot be replicated or used in
cryptographic operations. This status can continue indefinitely. When
the last of its replicas keys is deleted (not just scheduled), the key
state of the primary key changes to C<PendingDeletion> and its waiting
period (C<PendingWindowInDays>) begins. For details, see Deleting
multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html)
in the I<Key Management Service Developer Guide>.

When KMS deletes a KMS key from an CloudHSM key store
(https://docs.aws.amazon.com/kms/latest/developerguide/delete-cmk-keystore.html),
it makes a best effort to delete the associated key material from the
associated CloudHSM cluster. However, you might need to manually delete
the orphaned key material
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups. Deleting a KMS key from an external
key store
(https://docs.aws.amazon.com/kms/latest/developerguide/delete-xks-key.html)
has no effect on the associated external key. However, for both types
of custom key stores, deleting a KMS key is destructive and
irreversible. You cannot decrypt ciphertext encrypted under the KMS key
by using only its associated external key or CloudHSM key. Also, you
cannot recreate a KMS key in an external key store by creating a new
KMS key with the same key material.

For more information about scheduling a KMS key for deletion, see
Deleting KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:ScheduleKeyDeletion (key policy)

B<Related operations>

=over

=item *

CancelKeyDeletion

=item *

DisableKey

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 Sign

=over

=item KeyId => Str

=item Message => Str

=item SigningAlgorithm => Str

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [MessageType => Str]


=back

Each argument is described in detail in: L<Paws::KMS::Sign>

Returns: a L<Paws::KMS::SignResponse> instance

Creates a digital signature
(https://en.wikipedia.org/wiki/Digital_signature) for a message or
message digest by using the private key in an asymmetric signing KMS
key. To verify the signature, use the Verify operation, or use the
public key in the same asymmetric KMS key outside of KMS. For
information about asymmetric KMS keys, see Asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

Digital signatures are generated and verified by using asymmetric key
pair, such as an RSA or ECC pair that is represented by an asymmetric
KMS key. The key owner (or an authorized user) uses their private key
to sign a message. Anyone with the public key can verify that the
message was signed with that particular private key and that the
message hasn't changed since it was signed.

To use the C<Sign> operation, provide the following information:

=over

=item *

Use the C<KeyId> parameter to identify an asymmetric KMS key with a
C<KeyUsage> value of C<SIGN_VERIFY>. To get the C<KeyUsage> value of a
KMS key, use the DescribeKey operation. The caller must have
C<kms:Sign> permission on the KMS key.

=item *

Use the C<Message> parameter to specify the message or message digest
to sign. You can submit messages of up to 4096 bytes. To sign a larger
message, generate a hash digest of the message, and then provide the
hash digest in the C<Message> parameter. To indicate whether the
message is a full message or a digest, use the C<MessageType>
parameter.

=item *

Choose a signing algorithm that is compatible with the KMS key.

=back

When signing a message, be sure to record the KMS key and the signing
algorithm. This information is required to verify the signature.

Best practices recommend that you limit the time during which any
signature is effective. This deters an attack where the actor uses a
signed message to establish validity repeatedly or long after the
message is superseded. Signatures do not include a timestamp, but you
can include a timestamp in the signed message to help you detect when
its time to refresh the signature.

To verify the signature that this operation generates, use the Verify
operation. Or use the GetPublicKey operation to download the public key
and then use the public key to verify the signature outside of KMS.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:Sign
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: Verify

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 TagResource

=over

=item KeyId => Str

=item Tags => ArrayRef[L<Paws::KMS::Tag>]


=back

Each argument is described in detail in: L<Paws::KMS::TagResource>

Returns: nothing

Adds or edits tags on a customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

Each tag consists of a tag key and a tag value, both of which are
case-sensitive strings. The tag value can be an empty (null) string. To
add a tag, specify a new tag key and a tag value. To edit a tag,
specify an existing tag key and a new tag value.

You can use this operation to tag a customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
but you cannot tag an Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk),
an Amazon Web Services owned key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk),
a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#keystore-concept),
or an alias
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#alias-concept).

You can also add tags to a KMS key while creating it (CreateKey) or
replicating it (ReplicateKey).

For information about using tags in KMS, see Tagging keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
For general information about tags, including the format and syntax,
see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:TagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>

=over

=item *

CreateKey

=item *

ListResourceTags

=item *

ReplicateKey

=item *

UntagResource

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 UntagResource

=over

=item KeyId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::KMS::UntagResource>

Returns: nothing

Deletes tags from a customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
To delete a tag, specify the tag key and the KMS key.

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

When it succeeds, the C<UntagResource> operation doesn't return any
output. Also, if the specified tag key isn't found on the KMS key, it
doesn't throw an exception or return a response. To confirm that the
operation worked, use the ListResourceTags operation.

For information about using tags in KMS, see Tagging keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
For general information about tags, including the format and syntax,
see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:UntagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>

=over

=item *

CreateKey

=item *

ListResourceTags

=item *

ReplicateKey

=item *

TagResource

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 UpdateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateAlias>

Returns: nothing

Associates an existing KMS alias with a different KMS key. Each alias
is associated with only one KMS key at a time, although a KMS key can
have multiple aliases. The alias and the KMS key must be in the same
Amazon Web Services account and Region.

Adding, deleting, or updating an alias can allow or deny permission to
the KMS key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.

The current and new KMS key must be the same type (both symmetric or
both asymmetric or both HMAC), and they must have the same key usage.
This restriction prevents errors in code that uses aliases. If you must
assign an alias to a different type of KMS key, use DeleteAlias to
delete the old alias and CreateAlias to create a new alias.

You cannot use C<UpdateAlias> to change an alias name. To change an
alias name, use DeleteAlias to delete the old alias and CreateAlias to
create a new alias.

Because an alias is not a property of a KMS key, you can create,
update, and delete the aliases of a KMS key without affecting the KMS
key. Also, aliases do not appear in the response from the DescribeKey
operation. To get the aliases of all KMS keys in the account, use the
ListAliases operation.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>

=over

=item *

kms:UpdateAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the alias (IAM policy).

=item *

kms:UpdateAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the current KMS key (key policy).

=item *

kms:UpdateAlias
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
on the new KMS key (key policy).

=back

For details, see Controlling access to aliases
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the I<Key Management Service Developer Guide>.

B<Related operations:>

=over

=item *

CreateAlias

=item *

DeleteAlias

=item *

ListAliases

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 UpdateCustomKeyStore

=over

=item CustomKeyStoreId => Str

=item [CloudHsmClusterId => Str]

=item [KeyStorePassword => Str]

=item [NewCustomKeyStoreName => Str]

=item [XksProxyAuthenticationCredential => L<Paws::KMS::XksProxyAuthenticationCredentialType>]

=item [XksProxyConnectivity => Str]

=item [XksProxyUriEndpoint => Str]

=item [XksProxyUriPath => Str]

=item [XksProxyVpcEndpointServiceName => Str]


=back

Each argument is described in detail in: L<Paws::KMS::UpdateCustomKeyStore>

Returns: a L<Paws::KMS::UpdateCustomKeyStoreResponse> instance

Changes the properties of a custom key store. You can use this
operation to change the properties of an CloudHSM key store or an
external key store.

Use the required C<CustomKeyStoreId> parameter to identify the custom
key store. Use the remaining optional parameters to change its
properties. This operation does not return any property values. To
verify the updated property values, use the DescribeCustomKeyStores
operation.

This operation is part of the custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in KMS, which combines the convenience and extensive
integration of KMS with the isolation and control of a key store that
you own and manage.

When updating the properties of an external key store, verify that the
updated settings connect your key store, via the external key store
proxy, to the same external key manager as the previous settings, or to
a backup or snapshot of the external key manager with the same
cryptographic keys. If the updated connection settings fail, you can
fix them and retry, although an extended delay might disrupt Amazon Web
Services services. However, if KMS permanently loses its access to
cryptographic keys, ciphertext encrypted under those keys is
unrecoverable.

For external key stores:

Some external key managers provide a simpler method for updating an
external key store. For details, see your external key manager
documentation.

When updating an external key store in the KMS console, you can upload
a JSON-based proxy configuration file with the desired values. You
cannot upload the proxy configuration file to the
C<UpdateCustomKeyStore> operation. However, you can use the file to
help you determine the correct values for the C<UpdateCustomKeyStore>
parameters.

For an CloudHSM key store, you can use this operation to change the
custom key store friendly name (C<NewCustomKeyStoreName>), to tell KMS
about a change to the C<kmsuser> crypto user password
(C<KeyStorePassword>), or to associate the custom key store with a
different, but related, CloudHSM cluster (C<CloudHsmClusterId>). To
update any property of an CloudHSM key store, the C<ConnectionState> of
the CloudHSM key store must be C<DISCONNECTED>.

For an external key store, you can use this operation to change the
custom key store friendly name (C<NewCustomKeyStoreName>), or to tell
KMS about a change to the external key store proxy authentication
credentials (C<XksProxyAuthenticationCredential>), connection method
(C<XksProxyConnectivity>), external proxy endpoint
(C<XksProxyUriEndpoint>) and path (C<XksProxyUriPath>). For external
key stores with an C<XksProxyConnectivity> of C<VPC_ENDPOINT_SERVICE>,
you can also update the Amazon VPC endpoint service name
(C<XksProxyVpcEndpointServiceName>). To update most properties of an
external key store, the C<ConnectionState> of the external key store
must be C<DISCONNECTED>. However, you can update the
C<CustomKeyStoreName>, C<XksProxyAuthenticationCredential>, and
C<XksProxyUriPath> of an external key store when it is in the CONNECTED
or DISCONNECTED state.

If your update requires a C<DISCONNECTED> state, before using
C<UpdateCustomKeyStore>, use the DisconnectCustomKeyStore operation to
disconnect the custom key store. After the C<UpdateCustomKeyStore>
operation completes, use the ConnectCustomKeyStore to reconnect the
custom key store. To find the C<ConnectionState> of the custom key
store, use the DescribeCustomKeyStores operation.

Before updating the custom key store, verify that the new values allow
KMS to connect the custom key store to its backing key store. For
example, before you change the C<XksProxyUriPath> value, verify that
the external key store proxy is reachable at the new path.

If the operation succeeds, it returns a JSON object with no properties.

B<Cross-account use>: No. You cannot perform this operation on a custom
key store in a different Amazon Web Services account.

B<Required permissions>: kms:UpdateCustomKeyStore
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

B<Related operations:>

=over

=item *

ConnectCustomKeyStore

=item *

CreateCustomKeyStore

=item *

DeleteCustomKeyStore

=item *

DescribeCustomKeyStores

=item *

DisconnectCustomKeyStore

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 UpdateKeyDescription

=over

=item Description => Str

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateKeyDescription>

Returns: nothing

Updates the description of a KMS key. To see the description of a KMS
key, use DescribeKey.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

B<Required permissions>: kms:UpdateKeyDescription
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>

=over

=item *

CreateKey

=item *

DescribeKey

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 UpdatePrimaryRegion

=over

=item KeyId => Str

=item PrimaryRegion => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdatePrimaryRegion>

Returns: nothing

Changes the primary key of a multi-Region key.

This operation changes the replica key in the specified Region to a
primary key and changes the former primary key to a replica key. For
example, suppose you have a primary key in C<us-east-1> and a replica
key in C<eu-west-2>. If you run C<UpdatePrimaryRegion> with a
C<PrimaryRegion> value of C<eu-west-2>, the primary key is now the key
in C<eu-west-2>, and the key in C<us-east-1> becomes a replica key. For
details, see Updating the primary Region
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update)
in the I<Key Management Service Developer Guide>.

This operation supports I<multi-Region keys>, an KMS feature that lets
you create multiple interoperable KMS keys in different Amazon Web
Services Regions. Because these KMS keys have the same key ID, key
material, and other metadata, you can use them interchangeably to
encrypt data in one Amazon Web Services Region and decrypt it in a
different Amazon Web Services Region without re-encrypting the data or
making a cross-Region call. For more information about multi-Region
keys, see Multi-Region keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

The I<primary key> of a multi-Region key is the source for properties
that are always shared by primary and replica keys, including the key
material, key ID
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id),
key spec
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
key usage
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
key material origin
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
and automatic key rotation
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
It's the only key that can be replicated. You cannot delete the primary
key
(https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html)
until all replica keys are deleted.

The key ID and primary Region that you specify uniquely identify the
replica key that will become the primary key. The primary Region must
already have a replica key. This operation does not create a KMS key in
the specified Region. To find the replica keys, use the DescribeKey
operation on the primary key or any replica key. To create a replica
key, use the ReplicateKey operation.

You can run this operation while using the affected multi-Region keys
in cryptographic operations. This operation should not delay,
interrupt, or cause failures in cryptographic operations.

Even after this operation completes, the process of updating the
primary Region might still be in progress for a few more seconds.
Operations such as C<DescribeKey> might display both the old and new
primary keys as replicas. The old and new primary keys have a transient
key state of C<Updating>. The original key state is restored when the
update is complete. While the key state is C<Updating>, you can use the
keys in cryptographic operations, but you cannot replicate the new
primary key or perform certain management operations, such as enabling
or disabling these keys. For details about the C<Updating> key state,
see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

This operation does not return any output. To verify that primary key
is changed, use the DescribeKey operation.

B<Cross-account use>: No. You cannot use this operation in a different
Amazon Web Services account.

B<Required permissions>:

=over

=item *

C<kms:UpdatePrimaryRegion> on the current primary key (in the primary
key's Region). Include this permission primary key's key policy.

=item *

C<kms:UpdatePrimaryRegion> on the current replica key (in the replica
key's Region). Include this permission in the replica key's key policy.

=back

B<Related operations>

=over

=item *

CreateKey

=item *

ReplicateKey

=back

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 Verify

=over

=item KeyId => Str

=item Message => Str

=item Signature => Str

=item SigningAlgorithm => Str

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [MessageType => Str]


=back

Each argument is described in detail in: L<Paws::KMS::Verify>

Returns: a L<Paws::KMS::VerifyResponse> instance

Verifies a digital signature that was generated by the Sign operation.

Verification confirms that an authorized user signed the message with
the specified KMS key and signing algorithm, and the message hasn't
changed since it was signed. If the signature is verified, the value of
the C<SignatureValid> field in the response is C<True>. If the
signature verification fails, the C<Verify> operation fails with an
C<KMSInvalidSignatureException> exception.

A digital signature is generated by using the private key in an
asymmetric KMS key. The signature is verified by using the public key
in the same asymmetric KMS key. For information about asymmetric KMS
keys, see Asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<Key Management Service Developer Guide>.

To use the C<Verify> operation, specify the same asymmetric KMS key,
message, and signing algorithm that were used to produce the signature.
The message type does not need to be the same as the one used for
signing, but it must indicate whether the value of the C<Message>
parameter should be hashed as part of the verification process.

You can also verify the digital signature by using the public key of
the KMS key outside of KMS. Use the GetPublicKey operation to download
the public key in the asymmetric KMS key and then use the public key to
verify the signature outside of KMS. The advantage of using the
C<Verify> operation is that it is performed within KMS. As a result,
it's easy to call, the operation is performed within the FIPS boundary,
it is logged in CloudTrail, and you can use key policy and IAM policy
to determine who is authorized to use the KMS key to verify signatures.

To verify a signature outside of KMS with an SM2 public key (China
Regions only), you must specify the distinguishing ID. By default, KMS
uses C<1234567812345678> as the distinguishing ID. For more
information, see Offline verification with SM2 key pairs
(https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification).

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:Verify
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: Sign

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).


=head2 VerifyMac

=over

=item KeyId => Str

=item Mac => Str

=item MacAlgorithm => Str

=item Message => Str

=item [DryRun => Bool]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::VerifyMac>

Returns: a L<Paws::KMS::VerifyMacResponse> instance

Verifies the hash-based message authentication code (HMAC) for a
specified message, HMAC KMS key, and MAC algorithm. To verify the HMAC,
C<VerifyMac> computes an HMAC using the message, HMAC KMS key, and MAC
algorithm that you specify, and compares the computed HMAC to the HMAC
that you specify. If the HMACs are identical, the verification
succeeds; otherwise, it fails. Verification indicates that the message
hasn't changed since the HMAC was calculated, and the specified key was
used to generate and verify the HMAC.

HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry
standards defined in RFC 2104
(https://datatracker.ietf.org/doc/html/rfc2104).

This operation is part of KMS support for HMAC KMS keys. For details,
see HMAC keys in KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
the I<Key Management Service Developer Guide>.

The KMS key that you use for this operation must be in a compatible key
state. For details, see Key states of KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<Key Management Service Developer Guide>.

B<Cross-account use>: Yes. To perform this operation with a KMS key in
a different Amazon Web Services account, specify the key ARN or alias
ARN in the value of the C<KeyId> parameter.

B<Required permissions>: kms:VerifyMac
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

B<Related operations>: GenerateMac

B<Eventual consistency>: The KMS API follows an eventual consistency
model. For more information, see KMS eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCustomKeyStores(sub { },[CustomKeyStoreId => Str, CustomKeyStoreName => Str, Limit => Int, Marker => Str])

=head2 DescribeAllCustomKeyStores([CustomKeyStoreId => Str, CustomKeyStoreName => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomKeyStores, passing the object as the first parameter, and the string 'CustomKeyStores' as the second parameter 

If not, it will return a a L<Paws::KMS::DescribeCustomKeyStoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAliases(sub { },[KeyId => Str, Limit => Int, Marker => Str])

=head2 ListAllAliases([KeyId => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::KMS::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGrants(sub { },KeyId => Str, [GranteePrincipal => Str, GrantId => Str, Limit => Int, Marker => Str])

=head2 ListAllGrants(KeyId => Str, [GranteePrincipal => Str, GrantId => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Grants, passing the object as the first parameter, and the string 'Grants' as the second parameter 

If not, it will return a a L<Paws::KMS::ListGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyPolicies(sub { },KeyId => Str, [Limit => Int, Marker => Str])

=head2 ListAllKeyPolicies(KeyId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyNames, passing the object as the first parameter, and the string 'PolicyNames' as the second parameter 

If not, it will return a a L<Paws::KMS::ListKeyPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyRotations(sub { },KeyId => Str, [Limit => Int, Marker => Str])

=head2 ListAllKeyRotations(KeyId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rotations, passing the object as the first parameter, and the string 'Rotations' as the second parameter 

If not, it will return a a L<Paws::KMS::ListKeyRotationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeys(sub { },[Limit => Int, Marker => Str])

=head2 ListAllKeys([Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Keys, passing the object as the first parameter, and the string 'Keys' as the second parameter 

If not, it will return a a L<Paws::KMS::ListKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceTags(sub { },KeyId => Str, [Limit => Int, Marker => Str])

=head2 ListAllResourceTags(KeyId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::KMS::ListResourceTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRetirableGrants(sub { },RetiringPrincipal => Str, [Limit => Int, Marker => Str])

=head2 ListAllRetirableGrants(RetiringPrincipal => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Grants, passing the object as the first parameter, and the string 'Grants' as the second parameter 

If not, it will return a a L<Paws::KMS::ListGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

