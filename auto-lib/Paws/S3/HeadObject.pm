
package Paws::S3::HeadObject;
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

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'HeadObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'HEAD');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::HeadObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObject - Arguments for method HeadObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method HeadObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method HeadObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to HeadObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To retrieve metadata of an object without returning the object itself
    # The following example retrieves an object metadata.
    my $HeadObjectOutput = $s3->HeadObject(
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );

    # Results:
    my $AcceptRanges  = $HeadObjectOutput->AcceptRanges;
    my $ContentLength = $HeadObjectOutput->ContentLength;
    my $ContentType   = $HeadObjectOutput->ContentType;
    my $ETag          = $HeadObjectOutput->ETag;
    my $LastModified  = $HeadObjectOutput->LastModified;
    my $Metadata      = $HeadObjectOutput->Metadata;
    my $VersionId     = $HeadObjectOutput->VersionId;

    # Returns a L<Paws::S3::HeadObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/HeadObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket that contains the object.

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



=head2 ChecksumMode => Str

To retrieve the checksum, this parameter must be enabled.

B<General purpose buckets> - If you enable checksum mode and the object
is uploaded with a checksum
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_Checksum.html) and
encrypted with an Key Management Service (KMS) key, you must have
permission to use the C<kms:Decrypt> action to retrieve the checksum.

B<Directory buckets> - If you enable C<ChecksumMode> and the object is
encrypted with Amazon Web Services Key Management Service (Amazon Web
Services KMS), you must also have the C<kms:GenerateDataKey> and
C<kms:Decrypt> permissions in IAM identity-based policies and KMS key
policies for the KMS key to retrieve the checksum of the object.

Valid values are: C<"ENABLED">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 IfMatch => Str

Return the object only if its entity tag (ETag) is the same as the one
specified; otherwise, return a 412 (precondition failed) error.

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows:

=over

=item *

C<If-Match> condition evaluates to C<true>, and;

=item *

C<If-Unmodified-Since> condition evaluates to C<false>;

=back

Then Amazon S3 returns C<200 OK> and the data requested.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfModifiedSince => Str

Return the object only if it has been modified since the specified
time; otherwise, return a 304 (not modified) error.

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows:

=over

=item *

C<If-None-Match> condition evaluates to C<false>, and;

=item *

C<If-Modified-Since> condition evaluates to C<true>;

=back

Then Amazon S3 returns the C<304 Not Modified> response code.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfNoneMatch => Str

Return the object only if its entity tag (ETag) is different from the
one specified; otherwise, return a 304 (not modified) error.

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows:

=over

=item *

C<If-None-Match> condition evaluates to C<false>, and;

=item *

C<If-Modified-Since> condition evaluates to C<true>;

=back

Then Amazon S3 returns the C<304 Not Modified> response code.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 IfUnmodifiedSince => Str

Return the object only if it has not been modified since the specified
time; otherwise, return a 412 (precondition failed) error.

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows:

=over

=item *

C<If-Match> condition evaluates to C<true>, and;

=item *

C<If-Unmodified-Since> condition evaluates to C<false>;

=back

Then Amazon S3 returns C<200 OK> and the data requested.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).



=head2 B<REQUIRED> Key => Str

The object key.



=head2 PartNumber => Int

Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' HEAD request for
the part specified. Useful querying about the size of the part and the
number of parts in this object.



=head2 Range => Str

HeadObject returns only the metadata for an object. If the Range is
satisfiable, only the C<ContentLength> is affected in the response. If
the Range is not satisfiable, S3 returns a C<416 - Requested Range Not
Satisfiable> error.



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

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

This functionality is not supported for directory buckets.



=head2 VersionId => Str

Version ID used to reference a specific version of the object.

For directory buckets in this API operation, only the C<null> value of
the version ID is supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method HeadObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

