
package Paws::S3::CreateMultipartUpload;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-algorithm', traits => ['ParamInHeader']);
  has ChecksumType => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-type', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
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


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultipartUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CreateMultipartUploadOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateMultipartUpload - Arguments for method CreateMultipartUpload on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMultipartUpload on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateMultipartUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMultipartUpload.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To initiate a multipart upload
    # The following example initiates a multipart upload.
    my $CreateMultipartUploadOutput = $s3->CreateMultipartUpload(
      'Bucket' => 'examplebucket',
      'Key'    => 'largeobject'
    );

    # Results:
    my $Bucket   = $CreateMultipartUploadOutput->Bucket;
    my $Key      = $CreateMultipartUploadOutput->Key;
    my $UploadId = $CreateMultipartUploadOutput->UploadId;

    # Returns a L<Paws::S3::CreateMultipartUploadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateMultipartUpload>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object. Amazon S3 supports a set of
predefined ACLs, known as I<canned ACLs>. Each canned ACL has a
predefined set of grantees and permissions. For more information, see
Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL)
in the I<Amazon S3 User Guide>.

By default, all objects are private. Only the owner has full access
control. When uploading an object, you can grant access permissions to
individual Amazon Web Services accounts or to predefined groups defined
by Amazon S3. These permissions are then added to the access control
list (ACL) on the new object. For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
One way to grant the permissions using the request headers is to
specify a canned ACL with the C<x-amz-acl> request header.

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back


Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str

The name of the bucket where the multipart upload is initiated and
where the object is uploaded.

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

Specifies caching behavior along the request/reply chain.



=head2 ChecksumAlgorithm => Str

Indicates the algorithm that you want Amazon S3 to use to create the
checksum for the object. For more information, see Checking object
integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ChecksumType => Str

Indicates the checksum type that you want Amazon S3 to use to calculate
the objectE<rsquo>s checksum value. For more information, see Checking
object integrity in the Amazon S3 User Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 ContentDisposition => Str

Specifies presentational information for the object.



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.

For directory buckets, only the C<aws-chunked> value is supported in
this header field.



=head2 ContentLanguage => Str

The language that the content is in.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 GrantFullControl => Str

Specify access permissions explicitly to give the grantee READ,
READ_ACP, and WRITE_ACP permissions on the object.

By default, all objects are private. Only the owner has full access
control. When uploading an object, you can use this header to
explicitly grant access permissions to specific Amazon Web Services
accounts or groups. This header maps to specific permissions that
Amazon S3 supports in an ACL. For more information, see Access Control
List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
the I<Amazon S3 User Guide>.

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-read> header grants the Amazon
Web Services accounts identified by account IDs permissions to read
object data and its metadata:

C<x-amz-grant-read: id="11112222333", id="444455556666">

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantRead => Str

Specify access permissions explicitly to allow grantee to read the
object data and its metadata.

By default, all objects are private. Only the owner has full access
control. When uploading an object, you can use this header to
explicitly grant access permissions to specific Amazon Web Services
accounts or groups. This header maps to specific permissions that
Amazon S3 supports in an ACL. For more information, see Access Control
List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
the I<Amazon S3 User Guide>.

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-read> header grants the Amazon
Web Services accounts identified by account IDs permissions to read
object data and its metadata:

C<x-amz-grant-read: id="11112222333", id="444455556666">

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantReadACP => Str

Specify access permissions explicitly to allows grantee to read the
object ACL.

By default, all objects are private. Only the owner has full access
control. When uploading an object, you can use this header to
explicitly grant access permissions to specific Amazon Web Services
accounts or groups. This header maps to specific permissions that
Amazon S3 supports in an ACL. For more information, see Access Control
List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
the I<Amazon S3 User Guide>.

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-read> header grants the Amazon
Web Services accounts identified by account IDs permissions to read
object data and its metadata:

C<x-amz-grant-read: id="11112222333", id="444455556666">

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 GrantWriteACP => Str

Specify access permissions explicitly to allows grantee to allow
grantee to write the ACL for the applicable object.

By default, all objects are private. Only the owner has full access
control. When uploading an object, you can use this header to
explicitly grant access permissions to specific Amazon Web Services
accounts or groups. This header maps to specific permissions that
Amazon S3 supports in an ACL. For more information, see Access Control
List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
the I<Amazon S3 User Guide>.

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-read> header grants the Amazon
Web Services accounts identified by account IDs permissions to read
object data and its metadata:

C<x-amz-grant-read: id="11112222333", id="444455556666">

=over

=item *

This functionality is not supported for directory buckets.

=item *

This functionality is not supported for Amazon S3 on Outposts.

=back




=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload is to be initiated.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 ObjectLockLegalHoldStatus => Str

Specifies whether you want to apply a legal hold to the uploaded
object.

This functionality is not supported for directory buckets.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

Specifies the Object Lock mode that you want to apply to the uploaded
object.

This functionality is not supported for directory buckets.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

Specifies the date and time when you want the Object Lock to expire.

This functionality is not supported for directory buckets.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when you store this object in
Amazon S3 (for example, C<AES256>, C<aws:kms>).

=over

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
AES256).

This functionality is not supported for directory buckets.



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header.

This functionality is not supported for directory buckets.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the customer-provided encryption
key according to RFC 1321. Amazon S3 uses this header for a message
integrity check to ensure that the encryption key was transmitted
without error.

This functionality is not supported for directory buckets.



=head2 SSEKMSEncryptionContext => Str

Specifies the Amazon Web Services KMS Encryption Context to use for
object encryption. The value of this header is a Base64 encoded string
of a UTF-8 encoded JSON, which contains the encryption context as
key-value pairs.

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
parameters.

This functionality is not supported for directory buckets.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.

This functionality is not supported for directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMultipartUpload in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

