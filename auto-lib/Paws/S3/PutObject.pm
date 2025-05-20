
package Paws::S3::PutObject;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32', traits => ['ParamInHeader']);
  has ChecksumCRC32C => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32c', traits => ['ParamInHeader']);
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc64nvme', traits => ['ParamInHeader']);
  has ChecksumSHA1 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha1', traits => ['ParamInHeader']);
  has ChecksumSHA256 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha256', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'If-None-Match', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-storage-class', traits => ['ParamInHeader']);
  has Tagging => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);
  has WriteOffsetBytes => (is => 'ro', isa => 'Int', header_name => 'x-amz-write-offset-bytes', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObject - Arguments for method PutObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
 # To create an object.
 # The following example creates an object. If the bucket is versioning enabled,
 # S3 returns version ID in response.
    my $PutObjectOutput = $s3->PutObject(
      'Body'   => 'filetoupload',
      'Bucket' => 'examplebucket',
      'Key'    => 'objectkey'
    );

    # Results:
    my $ETag      = $PutObjectOutput->ETag;
    my $VersionId = $PutObjectOutput->VersionId;

    # Returns a L<Paws::S3::PutObjectOutput> object.
    # To upload an object (specify optional headers)
    # The following example uploads an object. The request specifies optional
    # request headers to directs S3 to use specific storage class and use
    # server-side encryption.
    my $PutObjectOutput = $s3->PutObject(
      'Body'                 => 'HappyFace.jpg',
      'Bucket'               => 'examplebucket',
      'Key'                  => 'HappyFace.jpg',
      'ServerSideEncryption' => 'AES256',
      'StorageClass'         => 'STANDARD_IA'
    );

    # Results:
    my $ETag                 = $PutObjectOutput->ETag;
    my $ServerSideEncryption = $PutObjectOutput->ServerSideEncryption;
    my $VersionId            = $PutObjectOutput->VersionId;

# Returns a L<Paws::S3::PutObjectOutput> object.
# To upload an object and specify canned ACL.
# The following example uploads and object. The request specifies optional
# canned ACL (access control list) to all READ access to authenticated users. If
# the bucket is versioning enabled, S3 returns version ID in response.
    my $PutObjectOutput = $s3->PutObject(
      'ACL'    => 'authenticated-read',
      'Body'   => 'filetoupload',
      'Bucket' => 'examplebucket',
      'Key'    => 'exampleobject'
    );

    # Results:
    my $ETag      = $PutObjectOutput->ETag;
    my $VersionId = $PutObjectOutput->VersionId;

   # Returns a L<Paws::S3::PutObjectOutput> object.
   # To upload an object
   # The following example uploads an object to a versioning-enabled bucket. The
   # source file is specified using Windows file syntax. S3 returns VersionId of
   # the newly created object.
    my $PutObjectOutput = $s3->PutObject(
      'Body'   => 'HappyFace.jpg',
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );

    # Results:
    my $ETag      = $PutObjectOutput->ETag;
    my $VersionId = $PutObjectOutput->VersionId;

  # Returns a L<Paws::S3::PutObjectOutput> object.
  # To upload object and specify user-defined metadata
  # The following example creates an object. The request also specifies optional
  # metadata. If the bucket is versioning enabled, S3 returns version ID in
  # response.
    my $PutObjectOutput = $s3->PutObject(
      'Body'     => 'filetoupload',
      'Bucket'   => 'examplebucket',
      'Key'      => 'exampleobject',
      'Metadata' => {
        'Metadata1' => 'value1',
        'Metadata2' => 'value2'
      }
    );

    # Results:
    my $ETag      = $PutObjectOutput->ETag;
    my $VersionId = $PutObjectOutput->VersionId;

# Returns a L<Paws::S3::PutObjectOutput> object.
# To upload an object and specify optional tags
# The following example uploads an object. The request specifies optional object
# tags. The bucket is versioned, therefore S3 returns version ID of the newly
# created object.
    my $PutObjectOutput = $s3->PutObject(
      'Body'    => 'c:\HappyFace.jpg',
      'Bucket'  => 'examplebucket',
      'Key'     => 'HappyFace.jpg',
      'Tagging' => 'key1=value1&key2=value2'
    );

    # Results:
    my $ETag      = $PutObjectOutput->ETag;
    my $VersionId = $PutObjectOutput->VersionId;

 # Returns a L<Paws::S3::PutObjectOutput> object.
 # To upload an object and specify server-side encryption and object tags
 # The following example uploads and object. The request specifies the optional
 # server-side encryption option. The request also specifies optional object
 # tags. If the bucket is versioning enabled, S3 returns version ID in response.
    my $PutObjectOutput = $s3->PutObject(
      'Body'                 => 'filetoupload',
      'Bucket'               => 'examplebucket',
      'Key'                  => 'exampleobject',
      'ServerSideEncryption' => 'AES256',
      'Tagging'              => 'key1=value1&key2=value2'
    );

    # Results:
    my $ETag                 = $PutObjectOutput->ETag;
    my $ServerSideEncryption = $PutObjectOutput->ServerSideEncryption;
    my $VersionId            = $PutObjectOutput->VersionId;

    # Returns a L<Paws::S3::PutObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object. For more information, see Canned
ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL)
in the I<Amazon S3 User Guide>.

When adding a new object, you can use headers to grant ACL-based
permissions to individual Amazon Web Services accounts or to predefined
groups defined by Amazon S3. These permissions are then added to the
ACL on the object. By default, all objects are private. Only the owner
has full access control. For more information, see Access Control List
(ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and
Managing ACLs Using the REST API
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html)
in the I<Amazon S3 User Guide>.

If the bucket that you're uploading objects to uses the bucket owner
enforced setting for S3 Object Ownership, ACLs are disabled and no
longer affect permissions. Buckets that use this setting only accept
PUT requests that don't specify an ACL or PUT requests that specify
bucket owner full control ACLs, such as the
C<bucket-owner-full-control> canned ACL or an equivalent form of this
ACL expressed in the XML format. PUT requests that contain other ACLs
(for example, custom grants to certain Amazon Web Services accounts)
fail and return a C<400> error with the error code
C<AccessControlListNotSupported>. For more information, see Controlling
ownership of objects and disabling ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back


Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 Body => Str

Object data.



=head2 B<REQUIRED> Bucket => Str

The bucket name to which the PUT action was initiated.

B<Directory buckets> - When you use this operation with a directory
bucket, you must use virtual-hosted-style requests in the format C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.
Path-style requests are not supported. Directory bucket names must be
unique in the chosen Zone (Availability Zone or Local Zone). Bucket
names must follow the format C< I<bucket-base-name>--I<zone-id>--x-s3>
(for example, C< I<amzn-s3-demo-bucket>--I<usw2-az1>--x-s3>). For
information about bucket naming restrictions, see Directory bucket
naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html)
in the I<Amazon S3 User Guide>.

B<Access points> - When you use this action with an access point for
general purpose buckets, you must provide the alias of the access point
in place of the bucket name or specify the access point ARN. When you
use this action with an access point for directory buckets, you must
provide the access point name in place of the bucket name. When using
the access point ARN, you must direct requests to the access point
hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see Using access
points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.

Object Lambda access points are not supported by directory buckets.

B<S3 on Outposts> - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form C<
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com>.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see What is S3 on Outposts?
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 BucketKeyEnabled => Bool

Specifies whether Amazon S3 should use an S3 Bucket Key for object
encryption with server-side encryption using Key Management Service
(KMS) keys (SSE-KMS).

B<General purpose buckets> - Setting this header to C<true> causes
Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
Also, specifying this header with a PUT action doesn't affect
bucket-level settings for S3 Bucket Key.

B<Directory buckets> - S3 Bucket Keys are always enabled for C<GET> and
C<PUT> operations in a directory bucket and canE<rsquo>t be disabled.
S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted
objects from general purpose buckets to directory buckets, from
directory buckets to general purpose buckets, or between directory
buckets, through CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html),
UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html),
the Copy operation in Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops),
or the import jobs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job).
In this case, Amazon S3 makes a call to KMS every time a copy request
is made for a KMS-encrypted object.



=head2 CacheControl => Str

Can be used to specify caching behavior along the request/reply chain.
For more information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).



=head2 ChecksumAlgorithm => Str

Indicates the algorithm used to create the checksum for the object when
you use the SDK. This header will not provide any additional
functionality if you don't use the SDK. When you send this header,
there must be a corresponding C<x-amz-checksum-I<algorithm> > or
C<x-amz-trailer> header sent. Otherwise, Amazon S3 fails the request
with the HTTP status code C<400 Bad Request>.

For the C<x-amz-checksum-I<algorithm> > header, replace C< I<algorithm>
> with the supported algorithm from the following list:

=over

=item *

C<CRC32>

=item *

C<CRC32C>

=item *

C<CRC64NVME>

=item *

C<SHA1>

=item *

C<SHA256>

=back

For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

If the individual checksum value you provide through
C<x-amz-checksum-I<algorithm> > doesn't match the checksum algorithm
you set through C<x-amz-sdk-checksum-algorithm>, Amazon S3 fails the
request with a C<BadDigest> error.

The C<Content-MD5> or C<x-amz-sdk-checksum-algorithm> header is
required for any request to upload an object with a retention period
configured using Amazon S3 Object Lock. For more information, see
Uploading objects to an Object Lock enabled bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-put-object)
in the I<Amazon S3 User Guide>.

For directory buckets, when you use Amazon Web Services SDKs, C<CRC32>
is the default checksum algorithm that's used for performance.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ChecksumCRC32 => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit C<CRC32> checksum of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC32C => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit C<CRC32C> checksum of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
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

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 160-bit C<SHA1> digest of the object. For
more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumSHA256 => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 256-bit C<SHA256> digest of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ContentDisposition => Str

Specifies presentational information for the object. For more
information, see https://www.rfc-editor.org/rfc/rfc6266#section-4
(https://www.rfc-editor.org/rfc/rfc6266#section-4).



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field. For more information, see
https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding
(https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding).



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentLength => Int

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically. For more information, see
https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length
(https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length).



=head2 ContentMD5 => Str

The Base64 encoded 128-bit C<MD5> digest of the message (without the
headers) according to RFC 1864. This header can be used as a message
integrity check to verify that the data is the same data that was
originally sent. Although it is optional, we recommend using the
Content-MD5 mechanism as an end-to-end integrity check. For more
information about REST request authentication, see REST Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).

The C<Content-MD5> or C<x-amz-sdk-checksum-algorithm> header is
required for any request to upload an object with a retention period
configured using Amazon S3 Object Lock. For more information, see
Uploading objects to an Object Lock enabled bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-put-object)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 ContentType => Str

A standard MIME type describing the format of the contents. For more
information, see
https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type
(https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type).



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 Expires => Str

The date and time at which the object is no longer cacheable. For more
information, see https://www.rfc-editor.org/rfc/rfc7234#section-5.3
(https://www.rfc-editor.org/rfc/rfc7234#section-5.3).



=head2 GrantFullControl => Str

Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantRead => Str

Allows grantee to read the object data and its metadata.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantReadACP => Str

Allows grantee to read the object ACL.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable object.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 IfMatch => Str

Uploads the object only if the ETag (entity tag) value provided during
the WRITE operation matches the ETag of the object in S3. If the ETag
values do not match, the operation returns a C<412 Precondition Failed>
error.

If a conflicting operation occurs during the upload S3 returns a C<409
ConditionalRequestConflict> response. On a 409 failure you should fetch
the object's ETag and retry the upload.

Expects the ETag value as a string.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232), or Conditional requests
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html)
in the I<Amazon S3 User Guide>.



=head2 IfNoneMatch => Str

Uploads the object only if the object key name does not already exist
in the bucket specified. Otherwise, Amazon S3 returns a C<412
Precondition Failed> error.

If a conflicting operation occurs during the upload S3 returns a C<409
ConditionalRequestConflict> response. On a 409 failure you should retry
the upload.

Expects the '*' (asterisk) character.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232), or Conditional requests
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html)
in the I<Amazon S3 User Guide>.



=head2 B<REQUIRED> Key => Str

Object key for which the PUT action was initiated.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 ObjectLockLegalHoldStatus => Str

Specifies whether a legal hold will be applied to this object. For more
information about S3 Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html) in
the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode that you want to apply to this object.

This functionality is not supported for directory buckets.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want this object's Object Lock to expire.
Must be formatted as a timestamp parameter.

This functionality is not supported for directory buckets.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm that was used when you store this
object in Amazon S3 (for example, C<AES256>, C<aws:kms>,
C<aws:kms:dsse>).

=over

=item *

B<General purpose buckets > - You have four mutually exclusive options
to protect data using server-side encryption in Amazon S3, depending on
how you choose to manage the encryption keys. Specifically, the
encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web
Services KMS keys (SSE-KMS or DSSE-KMS), and customer-provided keys
(SSE-C). Amazon S3 encrypts data with server-side encryption by using
Amazon S3 managed keys (SSE-S3) by default. You can optionally tell
Amazon S3 to encrypt data at rest by using server-side encryption with
other key options. For more information, see Using Server-Side
Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory buckets > - For directory buckets, there are only two
supported options for server-side encryption: server-side encryption
with Amazon S3 managed keys (SSE-S3) (C<AES256>) and server-side
encryption with KMS keys (SSE-KMS) (C<aws:kms>). We recommend that the
bucket's default encryption uses the desired encryption configuration
and you don't override the bucket default encryption in your
C<CreateSession> requests or C<PUT> object requests. Then, new objects
are automatically encrypted with the desired encryption settings. For
more information, see Protecting data with server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>. For more information about the
encryption overriding behaviors in directory buckets, see Specifying
server-side encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

In the Zonal endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html))
using the REST API, the encryption request headers must match the
encryption settings that are specified in the C<CreateSession> request.
You can't override the values of the encryption settings
(C<x-amz-server-side-encryption>,
C<x-amz-server-side-encryption-aws-kms-key-id>,
C<x-amz-server-side-encryption-context>, and
C<x-amz-server-side-encryption-bucket-key-enabled>) that are specified
in the C<CreateSession> request. You don't need to explicitly specify
these encryption settings values in Zonal endpoint API calls, and
Amazon S3 will use the encryption settings values from the
C<CreateSession> request to protect new objects in the directory
bucket.

When you use the CLI or the Amazon Web Services SDKs, for
C<CreateSession>, the session token refreshes automatically to avoid
service interruptions when a session expires. The CLI or the Amazon Web
Services SDKs use the bucket's default encryption configuration for the
C<CreateSession> request. It's not supported to override the encryption
settings values in the C<CreateSession> request. So in the Zonal
endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)),
the encryption request headers must match the default encryption
configuration of the directory bucket.

=back


Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use when encrypting the object (for example,
C<AES256>).

This functionality is not supported for directory buckets.



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header.

This functionality is not supported for directory buckets.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

This functionality is not supported for directory buckets.



=head2 SSEKMSEncryptionContext => Str

Specifies the Amazon Web Services KMS Encryption Context as an
additional encryption context to use for object encryption. The value
of this header is a Base64 encoded string of a UTF-8 encoded JSON,
which contains the encryption context as key-value pairs. This value is
stored as object metadata and automatically gets passed on to Amazon
Web Services KMS for future C<GetObject> operations on this object.

B<General purpose buckets> - This value must be explicitly added during
C<CopyObject> operations if you want an additional encryption context
for your object. For more information, see Encryption context
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - You can optionally provide an explicit
encryption context value. The value must match the default encryption
context - the bucket Amazon Resource Name (ARN). An additional
encryption context value is not supported.



=head2 SSEKMSKeyId => Str

Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for
object encryption. If the KMS key doesn't exist in the same account
that's issuing the command, you must use the full Key ARN not the Key
ID.

B<General purpose buckets> - If you specify
C<x-amz-server-side-encryption> with C<aws:kms> or C<aws:kms:dsse>,
this header specifies the ID (Key ID, Key ARN, or Key Alias) of the KMS
key to use. If you specify C<x-amz-server-side-encryption:aws:kms> or
C<x-amz-server-side-encryption:aws:kms:dsse>, but do not provide
C<x-amz-server-side-encryption-aws-kms-key-id>, Amazon S3 uses the
Amazon Web Services managed key (C<aws/s3>) to protect the data.

B<Directory buckets> - To encrypt data using SSE-KMS, it's recommended
to specify the C<x-amz-server-side-encryption> header to C<aws:kms>.
Then, the C<x-amz-server-side-encryption-aws-kms-key-id> header
implicitly uses the bucket's default KMS customer managed key ID. If
you want to explicitly set the C<
x-amz-server-side-encryption-aws-kms-key-id> header, it must match the
bucket's default customer managed key (using key ID or ARN, not alias).
Your SSE-KMS configuration can only support 1 customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
per directory bucket's lifetime. The Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
(C<aws/s3>) isn't supported. Incorrect key specification results in an
HTTP C<400 Bad Request> error.



=head2 StorageClass => Str

By default, Amazon S3 uses the STANDARD Storage Class to store newly
created objects. The STANDARD storage class provides high durability
and high availability. Depending on performance needs, you can specify
a different Storage Class. For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
in the I<Amazon S3 User Guide>.

=over

=item *

Directory buckets only support C<EXPRESS_ONEZONE> (the S3 Express One
Zone storage class) in Availability Zones and C<ONEZONE_IA> (the S3 One
Zone-Infrequent Access storage class) in Dedicated Local Zones.

=item *

Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.

=back


Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_IR">, C<"SNOW">, C<"EXPRESS_ONEZONE">

=head2 Tagging => Str

The tag-set for the object. The tag-set must be encoded as URL Query
parameters. (For example, "Key1=Value1")

This functionality is not supported for directory buckets.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata. For
information about object metadata, see Object Key and Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html) in
the I<Amazon S3 User Guide>.

In the following example, the request header sets the redirect to an
object (anotherPage.html) in the same bucket:

C<x-amz-website-redirect-location: /anotherPage.html>

In the following example, the request header sets the object redirect
to another website:

C<x-amz-website-redirect-location: http://www.example.com/>

For more information about website hosting in Amazon S3, see Hosting
Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html)
and How to Configure Website Page Redirects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 WriteOffsetBytes => Int

Specifies the offset for appending data to existing objects in bytes.
The offset must be equal to the size of the existing object being
appended to. If no object exists, setting this header to 0 will create
a new object.

This functionality is only supported for objects in the Amazon S3
Express One Zone storage class in directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

