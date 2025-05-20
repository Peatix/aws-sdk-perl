
package Paws::S3::CopyObjectOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CopyObjectResult => (is => 'ro', isa => 'Paws::S3::CopyObjectResult', traits => ['ParamInBody']);
  has CopySourceVersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-version-id', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObjectOutput

=head1 ATTRIBUTES


=head2 BucketKeyEnabled => Bool

Indicates whether the copied object uses an S3 Bucket Key for
server-side encryption with Key Management Service (KMS) keys
(SSE-KMS).



=head2 CopyObjectResult => L<Paws::S3::CopyObjectResult>

Container for all response elements.



=head2 CopySourceVersionId => Str

Version ID of the source object that was copied.

This functionality is not supported when the source object is in a
directory bucket.



=head2 Expiration => Str

If the object expiration is configured, the response includes this
header.

Object expiration information is not returned in directory buckets and
this header returns the value "C<NotImplemented>" in all responses for
directory buckets.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when you store this object in
Amazon S3 (for example, C<AES256>, C<aws:kms>, C<aws:kms:dsse>).

Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to confirm the
encryption algorithm that's used.

This functionality is not supported for directory buckets.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide the
round-trip message integrity verification of the customer-provided
encryption key.

This functionality is not supported for directory buckets.



=head2 SSEKMSEncryptionContext => Str

If present, indicates the Amazon Web Services KMS Encryption Context to
use for object encryption. The value of this header is a Base64 encoded
UTF-8 string holding JSON with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.



=head2 VersionId => Str

Version ID of the newly created copy.

This functionality is not supported for directory buckets.




=cut

