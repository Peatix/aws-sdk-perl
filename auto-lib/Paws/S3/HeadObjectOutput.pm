
package Paws::S3::HeadObjectOutput;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', header_name => 'accept-ranges', traits => ['ParamInHeader']);
  has ArchiveStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-archive-status', traits => ['ParamInHeader']);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32', traits => ['ParamInHeader']);
  has ChecksumCRC32C => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32c', traits => ['ParamInHeader']);
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc64nvme', traits => ['ParamInHeader']);
  has ChecksumSHA1 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha1', traits => ['ParamInHeader']);
  has ChecksumSHA256 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha256', traits => ['ParamInHeader']);
  has ChecksumType => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-type', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentRange => (is => 'ro', isa => 'Str', header_name => 'Content-Range', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-delete-marker', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has LastModified => (is => 'ro', isa => 'Str', header_name => 'Last-Modified', traits => ['ParamInHeader']);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MissingMeta => (is => 'ro', isa => 'Int', header_name => 'x-amz-missing-meta', traits => ['ParamInHeader']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has PartsCount => (is => 'ro', isa => 'Int', header_name => 'x-amz-mp-parts-count', traits => ['ParamInHeader']);
  has ReplicationStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-replication-status', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has Restore => (is => 'ro', isa => 'Str', header_name => 'x-amz-restore', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-storage-class', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObjectOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates that a range of bytes was specified.



=head2 ArchiveStatus => Str

The archive state of the head object.

This functionality is not supported for directory buckets.

Valid values are: C<"ARCHIVE_ACCESS">, C<"DEEP_ARCHIVE_ACCESS">

=head2 BucketKeyEnabled => Bool

Indicates whether the object uses an S3 Bucket Key for server-side
encryption with Key Management Service (KMS) keys (SSE-KMS).



=head2 CacheControl => Str

Specifies caching behavior along the request/reply chain.



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

The Base64 encoded, 64-bit C<CRC64NVME> checksum of the object. For
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
can use this header response to verify that the checksum type that is
received is the same checksum type that was specified in
C<CreateMultipartUpload> request. For more information, see Checking
object integrity in the Amazon S3 User Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 ContentDisposition => Str

Specifies presentational information for the object.



=head2 ContentEncoding => Str

Indicates what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentRange => Str

The portion of the object returned in the response for a C<GET>
request.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 DeleteMarker => Bool

Specifies whether the object retrieved was (true) or was not (false) a
Delete Marker. If false, this response header does not appear in the
response.

This functionality is not supported for directory buckets.



=head2 ETag => Str

An entity tag (ETag) is an opaque identifier assigned by a web server
to a specific version of a resource found at a URL.



=head2 Expiration => Str

If the object expiration is configured (see
C<PutBucketLifecycleConfiguration>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)),
the response includes this header. It includes the C<expiry-date> and
C<rule-id> key-value pairs providing object expiration information. The
value of the C<rule-id> is URL-encoded.

Object expiration information is not returned in directory buckets and
this header returns the value "C<NotImplemented>" in all responses for
directory buckets.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 LastModified => Str

Date and time when the object was last modified.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MissingMeta => Int

This is set to the number of metadata entries not returned in
C<x-amz-meta> headers. This can happen if you create metadata using an
API like SOAP that supports more flexible metadata than the REST API.
For example, using SOAP, you can create metadata whose values are not
legal HTTP headers.

This functionality is not supported for directory buckets.



=head2 ObjectLockLegalHoldStatus => Str

Specifies whether a legal hold is in effect for this object. This
header is only returned if the requester has the
C<s3:GetObjectLegalHold> permission. This header is not returned if the
specified version of this object has never had a legal hold applied.
For more information about S3 Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

This functionality is not supported for directory buckets.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode, if any, that's in effect for this object. This
header is only returned if the requester has the
C<s3:GetObjectRetention> permission. For more information about S3
Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

This functionality is not supported for directory buckets.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when the Object Lock retention period expires. This
header is only returned if the requester has the
C<s3:GetObjectRetention> permission.

This functionality is not supported for directory buckets.



=head2 PartsCount => Int

The count of parts this object has. This value is only returned if you
specify C<partNumber> in your request and the object was uploaded as a
multipart upload.



=head2 ReplicationStatus => Str

Amazon S3 can return this header if your request involves a bucket that
is either a source or a destination in a replication rule.

In replication, you have a source bucket on which you configure
replication and destination bucket or buckets where Amazon S3 stores
object replicas. When you request an object (C<GetObject>) or object
metadata (C<HeadObject>) from these buckets, Amazon S3 will return the
C<x-amz-replication-status> header in the response as follows:

=over

=item *

B<If requesting an object from the source bucket>, Amazon S3 will
return the C<x-amz-replication-status> header if the object in your
request is eligible for replication.

For example, suppose that in your replication configuration, you
specify object prefix C<TaxDocs> requesting Amazon S3 to replicate
objects with key prefix C<TaxDocs>. Any objects you upload with this
key name prefix, for example C<TaxDocs/document1.pdf>, are eligible for
replication. For any object request with this key name prefix, Amazon
S3 will return the C<x-amz-replication-status> header with value
PENDING, COMPLETED or FAILED indicating object replication status.

=item *

B<If requesting an object from a destination bucket>, Amazon S3 will
return the C<x-amz-replication-status> header with value REPLICA if the
object in your request is a replica that Amazon S3 created and there is
no replica modification replication in progress.

=item *

B<When replicating objects to multiple destination buckets>, the
C<x-amz-replication-status> header acts differently. The header of the
source object will only return a value of COMPLETED when replication is
successful to all destinations. The header will remain at value PENDING
until replication has completed for all destinations. If one or more
destinations fails replication the header will return FAILED.

=back

For more information, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

This functionality is not supported for directory buckets.

Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">, C<"COMPLETED">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 Restore => Str

If the object is an archived object (an object whose storage class is
GLACIER), the response includes this header if either the archive
restoration is in progress (see RestoreObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html)
or an archive copy is already restored.

If an archive copy is already restored, the header value indicates when
Amazon S3 is scheduled to delete the object copy. For example:

C<x-amz-restore: ongoing-request="false", expiry-date="Fri, 21 Dec 2012
00:00:00 GMT">

If the object restoration is in progress, the header returns the value
C<ongoing-request="true">.

For more information about archiving objects, see Transitioning
Objects: General Considerations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations).

This functionality is not supported for directory buckets. Directory
buckets only support C<EXPRESS_ONEZONE> (the S3 Express One Zone
storage class) in Availability Zones and C<ONEZONE_IA> (the S3 One
Zone-Infrequent Access storage class) in Dedicated Local Zones.



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



=head2 SSEKMSKeyId => Str

If present, indicates the ID of the KMS key that was used for object
encryption.



=head2 StorageClass => Str

Provides storage class information of the object. Amazon S3 returns
this header for all objects except for S3 Standard storage class
objects.

For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).

B<Directory buckets > - Directory buckets only support
C<EXPRESS_ONEZONE> (the S3 Express One Zone storage class) in
Availability Zones and C<ONEZONE_IA> (the S3 One Zone-Infrequent Access
storage class) in Dedicated Local Zones.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_IR">, C<"SNOW">, C<"EXPRESS_ONEZONE">

=head2 VersionId => Str

Version ID of the object.

This functionality is not supported for directory buckets.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.

This functionality is not supported for directory buckets.




=cut

