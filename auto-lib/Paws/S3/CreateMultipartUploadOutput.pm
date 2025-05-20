
package Paws::S3::CreateMultipartUploadOutput;
  use Moose;
  has AbortDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-abort-date', traits => ['ParamInHeader']);
  has AbortRuleId => (is => 'ro', isa => 'Str', header_name => 'x-amz-abort-rule-id', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str');
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-algorithm', traits => ['ParamInHeader']);
  has ChecksumType => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-type', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateMultipartUploadOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

If the bucket has a lifecycle rule configured with an action to abort
incomplete multipart uploads and the prefix in the lifecycle rule
matches the object name in the request, the response includes this
header. The header indicates when the initiated multipart upload
becomes eligible for an abort operation. For more information, see
Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle
Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config)
in the I<Amazon S3 User Guide>.

The response also includes the C<x-amz-abort-rule-id> header that
provides the ID of the lifecycle configuration rule that defines the
abort action.

This functionality is not supported for directory buckets.



=head2 AbortRuleId => Str

This header is returned along with the C<x-amz-abort-date> header. It
identifies the applicable lifecycle configuration rule that defines the
action to abort incomplete multipart uploads.

This functionality is not supported for directory buckets.



=head2 Bucket => Str

The name of the bucket to which the multipart upload was initiated.
Does not return the access point ARN or access point alias if used.

Access points are not supported by directory buckets.



=head2 BucketKeyEnabled => Bool

Indicates whether the multipart upload uses an S3 Bucket Key for
server-side encryption with Key Management Service (KMS) keys
(SSE-KMS).



=head2 ChecksumAlgorithm => Str

The algorithm that was used to create a checksum of the object.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ChecksumType => Str

Indicates the checksum type that you want Amazon S3 to use to calculate
the objectE<rsquo>s checksum value. For more information, see Checking
object integrity in the Amazon S3 User Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 Key => Str

Object key for which the multipart upload was initiated.



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



=head2 SSEKMSEncryptionContext => Str

If present, indicates the Amazon Web Services KMS Encryption Context to
use for object encryption. The value of this header is a Base64 encoded
string of a UTF-8 encoded JSON, which contains the encryption context
as key-value pairs.



=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.



=head2 UploadId => Str

ID for the initiated multipart upload.




=cut

