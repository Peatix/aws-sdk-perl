
package Paws::S3::CompleteMultipartUploadOutput;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str');
  has ChecksumCRC32C => (is => 'ro', isa => 'Str');
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str');
  has ChecksumSHA1 => (is => 'ro', isa => 'Str');
  has ChecksumSHA256 => (is => 'ro', isa => 'Str');
  has ChecksumType => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CompleteMultipartUploadOutput

=head1 ATTRIBUTES


=head2 Bucket => Str

The name of the bucket that contains the newly created object. Does not
return the access point ARN or access point alias if used.

Access points are not supported by directory buckets.



=head2 BucketKeyEnabled => Bool

Indicates whether the multipart upload uses an S3 Bucket Key for
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

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 64-bit C<CRC64NVME> checksum of the
object. The C<CRC64NVME> checksum is always a full object checksum. For
more information, see Checking object integrity in the Amazon S3 User
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

The checksum type, which determines how part-level checksums are
combined to create an object-level checksum for multipart objects. You
can use this header as a data integrity check to verify that the
checksum type that is received is the same checksum type that was
specified during the C<CreateMultipartUpload> request. For more
information, see Checking object integrity in the Amazon S3 User Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 ETag => Str

Entity tag that identifies the newly created object's data. Objects
with different object data will have different entity tags. The entity
tag is an opaque string. The entity tag may or may not be an MD5 digest
of the object data. If the entity tag is not an MD5 digest of the
object data, it will contain one or more nonhexadecimal characters
and/or will consist of less than 32 or more than 32 hexadecimal digits.
For more information about how the entity tag is calculated, see
Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 Expiration => Str

If the object expiration is configured, this will contain the
expiration date (C<expiry-date>) and rule ID (C<rule-id>). The value of
C<rule-id> is URL-encoded.

This functionality is not supported for directory buckets.



=head2 Key => Str

The object key of the newly created object.



=head2 Location => Str

The URI that identifies the newly created object.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when storing this object in
Amazon S3 (for example, C<AES256>, C<aws:kms>).

Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.



=head2 VersionId => Str

Version ID of the newly created object, in case the bucket has
versioning turned on.

This functionality is not supported for directory buckets.




=cut

