
package Paws::S3::CopyObject;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has CopySource => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source', traits => ['ParamInHeader'], required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-match', traits => ['ParamInHeader']);
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-modified-since', traits => ['ParamInHeader']);
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-none-match', traits => ['ParamInHeader']);
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-unmodified-since', traits => ['ParamInHeader']);
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has ExpectedSourceBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-source-expected-bucket-owner', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MetadataDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-metadata-directive', traits => ['ParamInHeader']);
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
  has TaggingDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging-directive', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CopyObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObject - Arguments for method CopyObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CopyObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To copy an object
    # The following example copies an object from one bucket to another.
    my $CopyObjectOutput = $s3->CopyObject(
      'Bucket'     => 'destinationbucket',
      'CopySource' => '/sourcebucket/HappyFacejpg',
      'Key'        => 'HappyFaceCopyjpg'
    );

    # Results:
    my $CopyObjectResult = $CopyObjectOutput->CopyObjectResult;

    # Returns a L<Paws::S3::CopyObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CopyObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned access control list (ACL) to apply to the object.

When you copy an object, the ACL metadata is not preserved and is set
to C<private> by default. Only the owner has full access control. To
override the default ACL setting, specify a new ACL when you generate a
copy request. For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).

If the destination bucket that you're copying objects to uses the
bucket owner enforced setting for S3 Object Ownership, ACLs are
disabled and no longer affect permissions. Buckets that use this
setting only accept C<PUT> requests that don't specify an ACL or C<PUT>
requests that specify bucket owner full control ACLs, such as the
C<bucket-owner-full-control> canned ACL or an equivalent form of this
ACL expressed in the XML format. For more information, see Controlling
ownership of objects and disabling ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

=over

=item *

If your destination bucket uses the bucket owner enforced setting for
Object Ownership, all objects written to the bucket by any account will
be owned by the bucket owner.

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back


Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str

The name of the destination bucket.

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

Copying objects across different Amazon Web Services Regions isn't
supported when the source or destination bucket is in Amazon Web
Services Local Zones. The source and destination buckets must have the
same parent Amazon Web Services Region. Otherwise, you get an HTTP
C<400 Bad Request> error with the error code C<InvalidRequest>.

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
must use the Outpost bucket access point ARN or the access point alias
for the destination bucket. You can only copy objects within the same
Outpost bucket. It's not supported to copy objects across different
Amazon Web Services Outposts, between buckets on the same Outposts, or
between Outposts buckets and any other bucket types. For more
information about S3 on Outposts, see What is S3 on Outposts?
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<S3 on Outposts guide>. When you use this action with S3 on
Outposts through the REST API, you must direct requests to the S3 on
Outposts hostname, in the format C<
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com>.
The hostname isn't required when you use the Amazon Web Services CLI or
SDKs.



=head2 BucketKeyEnabled => Bool

Specifies whether Amazon S3 should use an S3 Bucket Key for object
encryption with server-side encryption using Key Management Service
(KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can enable
an S3 Bucket Key for the object.

Setting this header to C<true> causes Amazon S3 to use an S3 Bucket Key
for object encryption with SSE-KMS. Specifying this header with a COPY
action doesnE<rsquo>t affect bucket-level settings for S3 Bucket Key.

For more information, see Amazon S3 Bucket Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in
the I<Amazon S3 User Guide>.

B<Directory buckets> - S3 Bucket Keys aren't supported, when you copy
SSE-KMS encrypted objects from general purpose buckets to directory
buckets, from directory buckets to general purpose buckets, or between
directory buckets, through CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html).
In this case, Amazon S3 makes a call to KMS every time a copy request
is made for a KMS-encrypted object.



=head2 CacheControl => Str

Specifies the caching behavior along the request/reply chain.



=head2 ChecksumAlgorithm => Str

Indicates the algorithm that you want Amazon S3 to use to create the
checksum for the object. For more information, see Checking object
integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

When you copy an object, if the source object has a checksum, that
checksum value will be copied to the new object by default. If the
C<CopyObject> request does not include this C<x-amz-checksum-algorithm>
header, the checksum algorithm will be copied from the source object to
the destination object (if it's present on the source object). You can
optionally specify a different checksum algorithm to use with the
C<x-amz-checksum-algorithm> header. Unrecognized or unsupported values
will respond with the HTTP status code C<400 Bad Request>.

For directory buckets, when you use Amazon Web Services SDKs, C<CRC32>
is the default checksum algorithm that's used for performance.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ContentDisposition => Str

Specifies presentational information for the object. Indicates whether
an object should be displayed in a web browser or downloaded as a file.
It allows specifying the desired filename for the downloaded file.



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.

For directory buckets, only the C<aws-chunked> value is supported in
this header field.



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentType => Str

A standard MIME type that describes the format of the object data.



=head2 B<REQUIRED> CopySource => Str

Specifies the source object for the copy operation. The source object
can be up to 5 GB. If the source object is an object that was uploaded
by using a multipart upload, the object copy will be a single part
object after the source object is copied to the destination bucket.

You specify the value of the copy source in one of two formats,
depending on whether you want to access the source object through an
access point
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):

=over

=item *

For objects not accessed through an access point, specify the name of
the source bucket and the key of the source object, separated by a
slash (/). For example, to copy the object C<reports/january.pdf> from
the general purpose bucket C<awsexamplebucket>, use
C<awsexamplebucket/reports/january.pdf>. The value must be URL-encoded.
To copy the object C<reports/january.pdf> from the directory bucket
C<awsexamplebucket--use1-az5--x-s3>, use
C<awsexamplebucket--use1-az5--x-s3/reports/january.pdf>. The value must
be URL-encoded.

=item *

For objects accessed through access points, specify the Amazon Resource
Name (ARN) of the object as accessed through the access point, in the
format
C<arn:aws:s3:E<lt>RegionE<gt>:E<lt>account-idE<gt>:accesspoint/E<lt>access-point-nameE<gt>/object/E<lt>keyE<gt>>.
For example, to copy the object C<reports/january.pdf> through access
point C<my-access-point> owned by account C<123456789012> in Region
C<us-west-2>, use the URL encoding of
C<arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf>.
The value must be URL encoded.

=over

=item *

Amazon S3 supports copy operations using Access points only when the
source and destination buckets are in the same Amazon Web Services
Region.

=item *

Access points are not supported by directory buckets.

=back

Alternatively, for objects accessed through Amazon S3 on Outposts,
specify the ARN of the object as accessed in the format
C<arn:aws:s3-outposts:E<lt>RegionE<gt>:E<lt>account-idE<gt>:outpost/E<lt>outpost-idE<gt>/object/E<lt>keyE<gt>>.
For example, to copy the object C<reports/january.pdf> through outpost
C<my-outpost> owned by account C<123456789012> in Region C<us-west-2>,
use the URL encoding of
C<arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf>.
The value must be URL-encoded.

=back

If your source bucket versioning is enabled, the C<x-amz-copy-source>
header by default identifies the current version of an object to copy.
If the current version is a delete marker, Amazon S3 behaves as if the
object was deleted. To copy a different version, use the C<versionId>
query parameter. Specifically, append
C<?versionId=E<lt>version-idE<gt>> to the value (for example,
C<awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893>).
If you don't specify a version ID, Amazon S3 copies the latest version
of the source object.

If you enable versioning on the destination bucket, Amazon S3 generates
a unique version ID for the copied object. This version ID is different
from the version ID of the source object. Amazon S3 returns the version
ID of the copied object in the C<x-amz-version-id> response header in
the response.

If you do not enable versioning or suspend it on the destination
bucket, the version ID that Amazon S3 generates in the
C<x-amz-version-id> response header is always null.

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets.



=head2 CopySourceIfMatch => Str

Copies the object if its entity tag (ETag) matches the specified tag.

If both the C<x-amz-copy-source-if-match> and
C<x-amz-copy-source-if-unmodified-since> headers are present in the
request and evaluate as follows, Amazon S3 returns C<200 OK> and copies
the data:

=over

=item *

C<x-amz-copy-source-if-match> condition evaluates to true

=item *

C<x-amz-copy-source-if-unmodified-since> condition evaluates to false

=back




=head2 CopySourceIfModifiedSince => Str

Copies the object if it has been modified since the specified time.

If both the C<x-amz-copy-source-if-none-match> and
C<x-amz-copy-source-if-modified-since> headers are present in the
request and evaluate as follows, Amazon S3 returns the C<412
Precondition Failed> response code:

=over

=item *

C<x-amz-copy-source-if-none-match> condition evaluates to false

=item *

C<x-amz-copy-source-if-modified-since> condition evaluates to true

=back




=head2 CopySourceIfNoneMatch => Str

Copies the object if its entity tag (ETag) is different than the
specified ETag.

If both the C<x-amz-copy-source-if-none-match> and
C<x-amz-copy-source-if-modified-since> headers are present in the
request and evaluate as follows, Amazon S3 returns the C<412
Precondition Failed> response code:

=over

=item *

C<x-amz-copy-source-if-none-match> condition evaluates to false

=item *

C<x-amz-copy-source-if-modified-since> condition evaluates to true

=back




=head2 CopySourceIfUnmodifiedSince => Str

Copies the object if it hasn't been modified since the specified time.

If both the C<x-amz-copy-source-if-match> and
C<x-amz-copy-source-if-unmodified-since> headers are present in the
request and evaluate as follows, Amazon S3 returns C<200 OK> and copies
the data:

=over

=item *

C<x-amz-copy-source-if-match> condition evaluates to true

=item *

C<x-amz-copy-source-if-unmodified-since> condition evaluates to false

=back




=head2 CopySourceSSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the source object (for
example, C<AES256>).

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request
so that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.



=head2 CopySourceSSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be the same one that was used when the source object was created.

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request
so that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.



=head2 CopySourceSSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

If the source object for the copy is stored in Amazon S3 using SSE-C,
you must provide the necessary encryption information in your request
so that Amazon S3 can decrypt the object for copying.

This functionality is not supported when the source object is in a
directory bucket.



=head2 ExpectedBucketOwner => Str

The account ID of the expected destination bucket owner. If the account
ID that you provide does not match the actual owner of the destination
bucket, the request fails with the HTTP status code C<403 Forbidden>
(access denied).



=head2 ExpectedSourceBucketOwner => Str

The account ID of the expected source bucket owner. If the account ID
that you provide does not match the actual owner of the source bucket,
the request fails with the HTTP status code C<403 Forbidden> (access
denied).



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



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




=head2 B<REQUIRED> Key => Str

The key of the destination object.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MetadataDirective => Str

Specifies whether the metadata is copied from the source object or
replaced with metadata that's provided in the request. When copying an
object, you can preserve all metadata (the default) or specify new
metadata. If this header isnE<rsquo>t specified, C<COPY> is the default
behavior.

B<General purpose bucket> - For general purpose buckets, when you grant
permissions, you can use the C<s3:x-amz-metadata-directive> condition
key to enforce certain metadata behavior when objects are uploaded. For
more information, see Amazon S3 condition key examples
(https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html)
in the I<Amazon S3 User Guide>.

C<x-amz-website-redirect-location> is unique to each object and is not
copied when using the C<x-amz-metadata-directive> header. To copy the
value, you must specify C<x-amz-website-redirect-location> in the
request header.

Valid values are: C<"COPY">, C<"REPLACE">

=head2 ObjectLockLegalHoldStatus => Str

Specifies whether you want to apply a legal hold to the object copy.

This functionality is not supported for directory buckets.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode that you want to apply to the object copy.

This functionality is not supported for directory buckets.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want the Object Lock of the object copy to
expire.

This functionality is not supported for directory buckets.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when storing this object in
Amazon S3. Unrecognized or unsupported values wonE<rsquo>t write a
destination object and will receive a C<400 Bad Request> response.

Amazon S3 automatically encrypts all new objects that are copied to an
S3 bucket. When copying an object, if you don't specify encryption
information in your copy request, the encryption setting of the target
object is set to the default encryption configuration of the
destination bucket. By default, all buckets have a base level of
encryption configuration that uses server-side encryption with Amazon
S3 managed keys (SSE-S3). If the destination bucket has a different
default encryption configuration, Amazon S3 uses the corresponding
encryption key to encrypt the target object copy.

With server-side encryption, Amazon S3 encrypts your data as it writes
your data to disks in its data centers and decrypts the data when you
access it. For more information about server-side encryption, see Using
Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

B<General purpose buckets>

=over

=item *

For general purpose buckets, there are the following supported options
for server-side encryption: server-side encryption with Key Management
Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with
Amazon Web Services KMS keys (DSSE-KMS), and server-side encryption
with customer-provided encryption keys (SSE-C). Amazon S3 uses the
corresponding KMS key, or a customer-provided key to encrypt the target
object copy.

=item *

When you perform a C<CopyObject> operation, if you want to use a
different type of encryption setting for the target object, you can
specify appropriate encryption-related headers to encrypt the target
object with an Amazon S3 managed key, a KMS key, or a customer-provided
key. If the encryption setting in your request is different from the
default encryption configuration of the destination bucket, the
encryption setting in your request takes precedence.

=back

B<Directory buckets>

=over

=item *

For directory buckets, there are only two supported options for
server-side encryption: server-side encryption with Amazon S3 managed
keys (SSE-S3) (C<AES256>) and server-side encryption with KMS keys
(SSE-KMS) (C<aws:kms>). We recommend that the bucket's default
encryption uses the desired encryption configuration and you don't
override the bucket default encryption in your C<CreateSession>
requests or C<PUT> object requests. Then, new objects are automatically
encrypted with the desired encryption settings. For more information,
see Protecting data with server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>. For more information about the
encryption overriding behaviors in directory buckets, see Specifying
server-side encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

=item *

To encrypt new object copies to a directory bucket with SSE-KMS, we
recommend you specify SSE-KMS as the directory bucket's default
encryption configuration with a KMS key (specifically, a customer
managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)).
The Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
(C<aws/s3>) isn't supported. Your SSE-KMS configuration can only
support 1 customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
per directory bucket for the lifetime of the bucket. After you specify
a customer managed key for SSE-KMS, you can't override the customer
managed key for the bucket's SSE-KMS configuration. Then, when you
perform a C<CopyObject> operation and want to specify server-side
encryption settings for new object copies with SSE-KMS in the
encryption-related request headers, you must ensure the encryption key
is the same customer managed key that you specified for the directory
bucket's default encryption configuration.

=back


Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use when encrypting the object (for example,
C<AES256>).

When you perform a C<CopyObject> operation, if you want to use a
different type of encryption setting for the target object, you can
specify appropriate encryption-related headers to encrypt the target
object with an Amazon S3 managed key, a KMS key, or a customer-provided
key. If the encryption setting in your request is different from the
default encryption configuration of the destination bucket, the
encryption setting in your request takes precedence.

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded. Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header.

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 SSEKMSEncryptionContext => Str

Specifies the Amazon Web Services KMS Encryption Context as an
additional encryption context to use for the destination object
encryption. The value of this header is a base64-encoded UTF-8 string
holding JSON with the encryption context key-value pairs.

B<General purpose buckets> - This value must be explicitly added to
specify encryption context for C<CopyObject> requests if you want an
additional encryption context for your destination object. The
additional encryption context of the source object won't be copied to
the destination object. For more information, see Encryption context
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - You can optionally provide an explicit
encryption context value. The value must match the default encryption
context - the bucket Amazon Resource Name (ARN). An additional
encryption context value is not supported.



=head2 SSEKMSKeyId => Str

Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for
object encryption. All GET and PUT requests for an object protected by
KMS will fail if they're not made via SSL or using SigV4. For
information about configuring any of the officially supported Amazon
Web Services SDKs and Amazon Web Services CLI, see Specifying the
Signature Version in Request Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version)
in the I<Amazon S3 User Guide>.

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

If the C<x-amz-storage-class> header is not used, the copied object
will be stored in the C<STANDARD> Storage Class by default. The
C<STANDARD> storage class provides high durability and high
availability. Depending on performance needs, you can specify a
different Storage Class.

=over

=item *

B<Directory buckets > - Directory buckets only support
C<EXPRESS_ONEZONE> (the S3 Express One Zone storage class) in
Availability Zones and C<ONEZONE_IA> (the S3 One Zone-Infrequent Access
storage class) in Dedicated Local Zones. Unsupported storage class
values won't write a destination object and will respond with the HTTP
status code C<400 Bad Request>.

=item *

B<Amazon S3 on Outposts > - S3 on Outposts only uses the C<OUTPOSTS>
Storage Class.

=back

You can use the C<CopyObject> action to change the storage class of an
object that is already stored in Amazon S3 by using the
C<x-amz-storage-class> header. For more information, see Storage
Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
in the I<Amazon S3 User Guide>.

Before using an object as a source object for the copy operation, you
must restore a copy of it if it meets any of the following conditions:

=over

=item *

The storage class of the source object is C<GLACIER> or
C<DEEP_ARCHIVE>.

=item *

The storage class of the source object is C<INTELLIGENT_TIERING> and
it's S3 Intelligent-Tiering access tier
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition)
is C<Archive Access> or C<Deep Archive Access>.

=back

For more information, see RestoreObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html)
and Copying Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html)
in the I<Amazon S3 User Guide>.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_IR">, C<"SNOW">, C<"EXPRESS_ONEZONE">

=head2 Tagging => Str

The tag-set for the object copy in the destination bucket. This value
must be used in conjunction with the C<x-amz-tagging-directive> if you
choose C<REPLACE> for the C<x-amz-tagging-directive>. If you choose
C<COPY> for the C<x-amz-tagging-directive>, you don't need to set the
C<x-amz-tagging> header, because the tag-set will be copied from the
source object directly. The tag-set must be encoded as URL Query
parameters.

The default value is the empty value.

B<Directory buckets> - For directory buckets in a C<CopyObject>
operation, only the empty tag-set is supported. Any requests that
attempt to write non-empty tags into directory buckets will receive a
C<501 Not Implemented> status code. When the destination bucket is a
directory bucket, you will receive a C<501 Not Implemented> response in
any of the following situations:

=over

=item *

When you attempt to C<COPY> the tag-set from an S3 source object that
has non-empty tags.

=item *

When you attempt to C<REPLACE> the tag-set of a source object and set a
non-empty value to C<x-amz-tagging>.

=item *

When you don't set the C<x-amz-tagging-directive> header and the source
object has non-empty tags. This is because the default value of
C<x-amz-tagging-directive> is C<COPY>.

=back

Because only the empty tag-set is supported for directory buckets in a
C<CopyObject> operation, the following situations are allowed:

=over

=item *

When you attempt to C<COPY> the tag-set from a directory bucket source
object that has no tags to a general purpose bucket. It copies an empty
tag-set to the destination object.

=item *

When you attempt to C<REPLACE> the tag-set of a directory bucket source
object and set the C<x-amz-tagging> value of the directory bucket
destination object to empty.

=item *

When you attempt to C<REPLACE> the tag-set of a general purpose bucket
source object that has non-empty tags and set the C<x-amz-tagging>
value of the directory bucket destination object to empty.

=item *

When you attempt to C<REPLACE> the tag-set of a directory bucket source
object and don't set the C<x-amz-tagging> value of the directory bucket
destination object. This is because the default value of
C<x-amz-tagging> is the empty value.

=back




=head2 TaggingDirective => Str

Specifies whether the object tag-set is copied from the source object
or replaced with the tag-set that's provided in the request.

The default value is C<COPY>.

B<Directory buckets> - For directory buckets in a C<CopyObject>
operation, only the empty tag-set is supported. Any requests that
attempt to write non-empty tags into directory buckets will receive a
C<501 Not Implemented> status code. When the destination bucket is a
directory bucket, you will receive a C<501 Not Implemented> response in
any of the following situations:

=over

=item *

When you attempt to C<COPY> the tag-set from an S3 source object that
has non-empty tags.

=item *

When you attempt to C<REPLACE> the tag-set of a source object and set a
non-empty value to C<x-amz-tagging>.

=item *

When you don't set the C<x-amz-tagging-directive> header and the source
object has non-empty tags. This is because the default value of
C<x-amz-tagging-directive> is C<COPY>.

=back

Because only the empty tag-set is supported for directory buckets in a
C<CopyObject> operation, the following situations are allowed:

=over

=item *

When you attempt to C<COPY> the tag-set from a directory bucket source
object that has no tags to a general purpose bucket. It copies an empty
tag-set to the destination object.

=item *

When you attempt to C<REPLACE> the tag-set of a directory bucket source
object and set the C<x-amz-tagging> value of the directory bucket
destination object to empty.

=item *

When you attempt to C<REPLACE> the tag-set of a general purpose bucket
source object that has non-empty tags and set the C<x-amz-tagging>
value of the directory bucket destination object to empty.

=item *

When you attempt to C<REPLACE> the tag-set of a directory bucket source
object and don't set the C<x-amz-tagging> value of the directory bucket
destination object. This is because the default value of
C<x-amz-tagging> is the empty value.

=back


Valid values are: C<"COPY">, C<"REPLACE">

=head2 WebsiteRedirectLocation => Str

If the destination bucket is configured as a website, redirects
requests for this object copy to another object in the same bucket or
to an external URL. Amazon S3 stores the value of this header in the
object metadata. This value is unique to each object and is not copied
when using the C<x-amz-metadata-directive> header. Instead, you may opt
to provide this header in combination with the
C<x-amz-metadata-directive> header.

This functionality is not supported for directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

