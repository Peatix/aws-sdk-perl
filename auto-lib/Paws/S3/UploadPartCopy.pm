
package Paws::S3::UploadPartCopy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has CopySource => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source', traits => ['ParamInHeader'], required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-match', traits => ['ParamInHeader']);
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-modified-since', traits => ['ParamInHeader']);
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-none-match', traits => ['ParamInHeader']);
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-unmodified-since', traits => ['ParamInHeader']);
  has CopySourceRange => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-range', traits => ['ParamInHeader']);
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has ExpectedSourceBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-source-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPartCopy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::UploadPartCopyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPartCopy - Arguments for method UploadPartCopy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadPartCopy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method UploadPartCopy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadPartCopy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To upload a part by copying data from an existing object as data source
    # The following example uploads a part of a multipart upload by copying data
    # from an existing object as data source.
    my $UploadPartCopyOutput = $s3->UploadPartCopy(
      'Bucket'     => 'examplebucket',
      'CopySource' => '/bucketname/sourceobjectkey',
      'Key'        => 'examplelargeobject',
      'PartNumber' => 1,
      'UploadId'   =>
'exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP91We7Nrw--'
    );

    # Results:
    my $CopyPartResult = $UploadPartCopyOutput->CopyPartResult;

 # Returns a L<Paws::S3::UploadPartCopyOutput> object.
 # To upload a part by copying byte range from an existing object as data source
 # The following example uploads a part of a multipart upload by copying a
 # specified byte range from an existing object as data source.
    my $UploadPartCopyOutput = $s3->UploadPartCopy(
      'Bucket'          => 'examplebucket',
      'CopySource'      => '/bucketname/sourceobjectkey',
      'CopySourceRange' => 'bytes=1-100000',
      'Key'             => 'examplelargeobject',
      'PartNumber'      => 2,
      'UploadId'        =>
'exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP91We7Nrw--'
    );

    # Results:
    my $CopyPartResult = $UploadPartCopyOutput->CopyPartResult;

    # Returns a L<Paws::S3::UploadPartCopyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/UploadPartCopy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.

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
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form C<
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com>.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see What is S3 on Outposts?
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 B<REQUIRED> CopySource => Str

Specifies the source object for the copy operation. You specify the
value in one of two formats, depending on whether you want to access
the source object through an access point
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):

=over

=item *

For objects not accessed through an access point, specify the name of
the source bucket and key of the source object, separated by a slash
(/). For example, to copy the object C<reports/january.pdf> from the
bucket C<awsexamplebucket>, use
C<awsexamplebucket/reports/january.pdf>. The value must be URL-encoded.

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

If your bucket has versioning enabled, you could have multiple versions
of the same object. By default, C<x-amz-copy-source> identifies the
current version of the source object to copy. To copy a specific
version of the source object to copy, append
C<?versionId=E<lt>version-idE<gt>> to the C<x-amz-copy-source> request
header (for example, C<x-amz-copy-source:
/awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893>).

If the current version is a delete marker and you don't specify a
versionId in the C<x-amz-copy-source> request header, Amazon S3 returns
a C<404 Not Found> error, because the object does not exist. If you
specify versionId in the C<x-amz-copy-source> and the versionId is a
delete marker, Amazon S3 returns an HTTP C<400 Bad Request> error,
because you are not allowed to specify a delete marker as a version for
the C<x-amz-copy-source>.

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets.



=head2 CopySourceIfMatch => Str

Copies the object if its entity tag (ETag) matches the specified tag.

If both of the C<x-amz-copy-source-if-match> and
C<x-amz-copy-source-if-unmodified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-match> condition evaluates to C<true>, and;

C<x-amz-copy-source-if-unmodified-since> condition evaluates to
C<false>;

Amazon S3 returns C<200 OK> and copies the data.



=head2 CopySourceIfModifiedSince => Str

Copies the object if it has been modified since the specified time.

If both of the C<x-amz-copy-source-if-none-match> and
C<x-amz-copy-source-if-modified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-none-match> condition evaluates to C<false>,
and;

C<x-amz-copy-source-if-modified-since> condition evaluates to C<true>;

Amazon S3 returns C<412 Precondition Failed> response code.



=head2 CopySourceIfNoneMatch => Str

Copies the object if its entity tag (ETag) is different than the
specified ETag.

If both of the C<x-amz-copy-source-if-none-match> and
C<x-amz-copy-source-if-modified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-none-match> condition evaluates to C<false>,
and;

C<x-amz-copy-source-if-modified-since> condition evaluates to C<true>;

Amazon S3 returns C<412 Precondition Failed> response code.



=head2 CopySourceIfUnmodifiedSince => Str

Copies the object if it hasn't been modified since the specified time.

If both of the C<x-amz-copy-source-if-match> and
C<x-amz-copy-source-if-unmodified-since> headers are present in the
request as follows:

C<x-amz-copy-source-if-match> condition evaluates to C<true>, and;

C<x-amz-copy-source-if-unmodified-since> condition evaluates to
C<false>;

Amazon S3 returns C<200 OK> and copies the data.



=head2 CopySourceRange => Str

The range of bytes to copy from the source object. The range value must
use the form bytes=first-last, where the first and last are the
zero-based byte offsets to copy. For example, bytes=0-9 indicates that
you want to copy the first 10 bytes of the source. You can copy a range
only if the source object is greater than 5 MB.



=head2 CopySourceSSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the source object (for
example, C<AES256>).

This functionality is not supported when the source object is in a
directory bucket.



=head2 CopySourceSSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be one that was used when the source object was created.

This functionality is not supported when the source object is in a
directory bucket.



=head2 CopySourceSSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

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



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 B<REQUIRED> PartNumber => Int

Part number of part being copied. This is a positive integer between 1
and 10,000.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use when encrypting the object (for example,
AES256).

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header. This must be
the same encryption key specified in the initiate multipart upload
request.

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.

This functionality is not supported when the destination bucket is a
directory bucket.



=head2 B<REQUIRED> UploadId => Str

Upload ID identifying the multipart upload whose part is being copied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadPartCopy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

