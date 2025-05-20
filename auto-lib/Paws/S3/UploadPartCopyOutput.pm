
package Paws::S3::UploadPartCopyOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CopyPartResult => (is => 'ro', isa => 'Paws::S3::CopyPartResult', traits => ['ParamInBody']);
  has CopySourceVersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-version-id', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPartCopyOutput

=head1 ATTRIBUTES


=head2 BucketKeyEnabled => Bool

Indicates whether the multipart upload uses an S3 Bucket Key for
server-side encryption with Key Management Service (KMS) keys
(SSE-KMS).



=head2 CopyPartResult => L<Paws::S3::CopyPartResult>

Container for all response elements.



=head2 CopySourceVersionId => Str

The version of the source object that was copied, if you have enabled
versioning on the source bucket.

This functionality is not supported when the source object is in a
directory bucket.



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

