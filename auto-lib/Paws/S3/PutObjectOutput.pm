
package Paws::S3::PutObjectOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32', traits => ['ParamInHeader']);
  has ChecksumCRC32C => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32c', traits => ['ParamInHeader']);
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc64nvme', traits => ['ParamInHeader']);
  has ChecksumSHA1 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha1', traits => ['ParamInHeader']);
  has ChecksumSHA256 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha256', traits => ['ParamInHeader']);
  has ChecksumType => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-type', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has Size => (is => 'ro', isa => 'Int', header_name => 'x-amz-object-size', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectOutput

=head1 ATTRIBUTES


=head2 BucketKeyEnabled => Bool

Indicates whether the uploaded object uses an S3 Bucket Key for
server-side encryption with Key Management Service (KMS) keys
(SSE-KMS).



=head2 ChecksumCRC32 => Str

The Base64 encoded, 32-bit C<CRC32 checksum> of the object. This
checksum is only be present if the checksum was uploaded with the
object. When you use an API operation on an object that was uploaded
using multipart uploads, this value may not be a direct checksum value
of the full object. Instead, it's a calculation based on the checksum
values of each individual part. For more information about how
checksums are calculated with multipart uploads, see Checking object
integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC32C => Str

The Base64 encoded, 32-bit C<CRC32C> checksum of the object. This
checksum is only present if the checksum was uploaded with the object.
When you use an API operation on an object that was uploaded using
multipart uploads, this value may not be a direct checksum value of the
full object. Instead, it's a calculation based on the checksum values
of each individual part. For more information about how checksums are
calculated with multipart uploads, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC64NVME => Str

The Base64 encoded, 64-bit C<CRC64NVME> checksum of the object. This
header is present if the object was uploaded with the C<CRC64NVME>
checksum algorithm, or if it was uploaded without a checksum (and
Amazon S3 added the default checksum, C<CRC64NVME>, to the uploaded
object). For more information about how checksums are calculated with
multipart uploads, see Checking object integrity in the Amazon S3 User
Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).



=head2 ChecksumSHA1 => Str

The Base64 encoded, 160-bit C<SHA1> digest of the object. This will
only be present if the object was uploaded with the object. When you
use the API operation on an object that was uploaded using multipart
uploads, this value may not be a direct checksum value of the full
object. Instead, it's a calculation based on the checksum values of
each individual part. For more information about how checksums are
calculated with multipart uploads, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums)
in the I<Amazon S3 User Guide>.



=head2 ChecksumSHA256 => Str

The Base64 encoded, 256-bit C<SHA256> digest of the object. This will
only be present if the object was uploaded with the object. When you
use an API operation on an object that was uploaded using multipart
uploads, this value may not be a direct checksum value of the full
object. Instead, it's a calculation based on the checksum values of
each individual part. For more information about how checksums are
calculated with multipart uploads, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums)
in the I<Amazon S3 User Guide>.



=head2 ChecksumType => Str

This header specifies the checksum type of the object, which determines
how part-level checksums are combined to create an object-level
checksum for multipart objects. For C<PutObject> uploads, the checksum
type is always C<FULL_OBJECT>. You can use this header as a data
integrity check to verify that the checksum type that is received is
the same checksum that was specified. For more information, see
Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 ETag => Str

Entity tag for the uploaded object.

B<General purpose buckets > - To ensure that data is not corrupted
traversing the network, for objects where the ETag is the MD5 digest of
the object, you can calculate the MD5 while putting an object to Amazon
S3 and compare the returned ETag to the calculated MD5 value.

B<Directory buckets > - The ETag for the object in a directory bucket
isn't the MD5 digest of the object.



=head2 Expiration => Str

If the expiration is configured for the object (see
PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html))
in the I<Amazon S3 User Guide>, the response includes this header. It
includes the C<expiry-date> and C<rule-id> key-value pairs that provide
information about object expiration. The value of the C<rule-id> is
URL-encoded.

Object expiration information is not returned in directory buckets and
this header returns the value "C<NotImplemented>" in all responses for
directory buckets.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when you store this object in
Amazon S3.

Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 Size => Int

The size of the object in bytes. This value is only be present if you
append to an object.

This functionality is only supported for objects in the Amazon S3
Express One Zone storage class in directory buckets.



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
string of a UTF-8 encoded JSON, which contains the encryption context
as key-value pairs. This value is stored as object metadata and
automatically gets passed on to Amazon Web Services KMS for future
C<GetObject> operations on this object.



=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.



=head2 VersionId => Str

Version ID of the object.

If you enable versioning for a bucket, Amazon S3 automatically
generates a unique version ID for the object being stored. Amazon S3
returns this ID in the response. When you enable versioning for a
bucket, if Amazon S3 receives multiple write requests for the same
object simultaneously, it stores all of the objects. For more
information about versioning, see Adding Objects to Versioning-Enabled
Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html)
in the I<Amazon S3 User Guide>. For information about returning the
versioning state of a bucket, see GetBucketVersioning
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).

This functionality is not supported for directory buckets.




=cut

