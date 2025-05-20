
package Paws::S3::GetObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-mode', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Modified-Since', traits => ['ParamInHeader']);
  has IfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'If-None-Match', traits => ['ParamInHeader']);
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Unmodified-Since', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery']);
  has Range => (is => 'ro', isa => 'Str', header_name => 'Range', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has ResponseCacheControl => (is => 'ro', isa => 'Str', query_name => 'response-cache-control', traits => ['ParamInQuery']);
  has ResponseContentDisposition => (is => 'ro', isa => 'Str', query_name => 'response-content-disposition', traits => ['ParamInQuery']);
  has ResponseContentEncoding => (is => 'ro', isa => 'Str', query_name => 'response-content-encoding', traits => ['ParamInQuery']);
  has ResponseContentLanguage => (is => 'ro', isa => 'Str', query_name => 'response-content-language', traits => ['ParamInQuery']);
  has ResponseContentType => (is => 'ro', isa => 'Str', query_name => 'response-content-type', traits => ['ParamInQuery']);
  has ResponseExpires => (is => 'ro', isa => 'Str', query_name => 'response-expires', traits => ['ParamInQuery']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObject - Arguments for method GetObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To retrieve an object
    # The following example retrieves an object for an S3 bucket.
    my $GetObjectOutput = $s3->GetObject(
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );

    # Results:
    my $AcceptRanges  = $GetObjectOutput->AcceptRanges;
    my $ContentLength = $GetObjectOutput->ContentLength;
    my $ContentType   = $GetObjectOutput->ContentType;
    my $ETag          = $GetObjectOutput->ETag;
    my $LastModified  = $GetObjectOutput->LastModified;
    my $Metadata      = $GetObjectOutput->Metadata;
    my $TagCount      = $GetObjectOutput->TagCount;
    my $VersionId     = $GetObjectOutput->VersionId;

    # Returns a L<Paws::S3::GetObjectOutput> object.
    # To retrieve a byte range of an object
    # The following example retrieves an object for an S3 bucket. The request
    # specifies the range header to retrieve a specific byte range.
    my $GetObjectOutput = $s3->GetObject(
      'Bucket' => 'examplebucket',
      'Key'    => 'SampleFile.txt',
      'Range'  => 'bytes=0-9'
    );

    # Results:
    my $AcceptRanges  = $GetObjectOutput->AcceptRanges;
    my $ContentLength = $GetObjectOutput->ContentLength;
    my $ContentRange  = $GetObjectOutput->ContentRange;
    my $ContentType   = $GetObjectOutput->ContentType;
    my $ETag          = $GetObjectOutput->ETag;
    my $LastModified  = $GetObjectOutput->LastModified;
    my $Metadata      = $GetObjectOutput->Metadata;
    my $VersionId     = $GetObjectOutput->VersionId;

    # Returns a L<Paws::S3::GetObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name containing the object.

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

B<Object Lambda access points> - When you use this action with an
Object Lambda access point, you must direct requests to the Object
Lambda access point hostname. The Object Lambda access point hostname
takes the form
I<AccessPointName>-I<AccountId>.s3-object-lambda.I<Region>.amazonaws.com.

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



=head2 ChecksumMode => Str

To retrieve the checksum, this mode must be enabled.

Valid values are: C<"ENABLED">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 IfMatch => Str

Return the object only if its entity tag (ETag) is the same as the one
specified in this header; otherwise, return a C<412 Precondition
Failed> error.

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows: C<If-Match> condition evaluates to
C<true>, and; C<If-Unmodified-Since> condition evaluates to C<false>;
then, S3 returns C<200 OK> and the data requested.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfModifiedSince => Str

Return the object only if it has been modified since the specified
time; otherwise, return a C<304 Not Modified> error.

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows:C< If-None-Match> condition evaluates
to C<false>, and; C<If-Modified-Since> condition evaluates to C<true>;
then, S3 returns C<304 Not Modified> status code.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfNoneMatch => Str

Return the object only if its entity tag (ETag) is different from the
one specified in this header; otherwise, return a C<304 Not Modified>
error.

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows:C< If-None-Match> condition evaluates
to C<false>, and; C<If-Modified-Since> condition evaluates to C<true>;
then, S3 returns C<304 Not Modified> HTTP status code.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfUnmodifiedSince => Str

Return the object only if it has not been modified since the specified
time; otherwise, return a C<412 Precondition Failed> error.

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows: C<If-Match> condition evaluates to
C<true>, and; C<If-Unmodified-Since> condition evaluates to C<false>;
then, S3 returns C<200 OK> and the data requested.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 B<REQUIRED> Key => Str

Key of the object to get.



=head2 PartNumber => Int

Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' GET request for
the part specified. Useful for downloading just a part of an object.



=head2 Range => Str

Downloads the specified byte range of an object. For more information
about the HTTP Range header, see
https://www.rfc-editor.org/rfc/rfc9110.html#name-range
(https://www.rfc-editor.org/rfc/rfc9110.html#name-range).

Amazon S3 doesn't support retrieving multiple ranges of data per C<GET>
request.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ResponseCacheControl => Str

Sets the C<Cache-Control> header of the response.



=head2 ResponseContentDisposition => Str

Sets the C<Content-Disposition> header of the response.



=head2 ResponseContentEncoding => Str

Sets the C<Content-Encoding> header of the response.



=head2 ResponseContentLanguage => Str

Sets the C<Content-Language> header of the response.



=head2 ResponseContentType => Str

Sets the C<Content-Type> header of the response.



=head2 ResponseExpires => Str

Sets the C<Expires> header of the response.



=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the object (for example,
C<AES256>).

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key that you originally
provided for Amazon S3 to encrypt the data before storing it. This
value is used to decrypt the object when recovering it and must match
the one used when storing the data. The key must be appropriate for use
with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the customer-provided encryption
key according to RFC 1321. Amazon S3 uses this header for a message
integrity check to ensure that the encryption key was transmitted
without error.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 VersionId => Str

Version ID used to reference a specific version of the object.

By default, the C<GetObject> operation returns the current version of
an object. To return a different version, use the C<versionId>
subresource.

=over

=item *

If you include a C<versionId> in your request header, you must have the
C<s3:GetObjectVersion> permission to access a specific version of an
object. The C<s3:GetObject> permission is not required in this
scenario.

=item *

If you request the current version of an object without a specific
C<versionId> in the request header, only the C<s3:GetObject> permission
is required. The C<s3:GetObjectVersion> permission is not required in
this scenario.

=item *

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets. For this API operation, only the C<null> value of
the version ID is supported by directory buckets. You can only specify
C<null> to the C<versionId> query parameter in the request.

=back

For more information about versioning, see PutBucketVersioning
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

