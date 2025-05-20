
package Paws::S3::UploadPartOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32', traits => ['ParamInHeader']);
  has ChecksumCRC32C => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32c', traits => ['ParamInHeader']);
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc64nvme', traits => ['ParamInHeader']);
  has ChecksumSHA1 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha1', traits => ['ParamInHeader']);
  has ChecksumSHA256 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha256', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPartOutput

=head1 ATTRIBUTES


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
specifies the Base64 encoded, 64-bit C<CRC64NVME> checksum of the part.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



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



=head2 ETag => Str

Entity tag for the uploaded object.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when you store this object in
Amazon S3 (for example, C<AES256>, C<aws:kms>).

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



=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.




=cut

