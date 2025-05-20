
package Paws::S3::ListMultipartUploads;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has KeyMarker => (is => 'ro', isa => 'Str', query_name => 'key-marker', traits => ['ParamInQuery']);
  has MaxUploads => (is => 'ro', isa => 'Int', query_name => 'max-uploads', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has UploadIdMarker => (is => 'ro', isa => 'Str', query_name => 'upload-id-marker', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListMultipartUploadsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploads - Arguments for method ListMultipartUploads on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultipartUploads on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListMultipartUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultipartUploads.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To list in-progress multipart uploads on a bucket
    # The following example lists in-progress multipart uploads on a specific
    # bucket.
    my $ListMultipartUploadsOutput =
      $s3->ListMultipartUploads( 'Bucket' => 'examplebucket' );

    # Results:
    my $Uploads = $ListMultipartUploadsOutput->Uploads;

    # Returns a L<Paws::S3::ListMultipartUploadsOutput> object.
    # List next set of multipart uploads when previous result is truncated
    # The following example specifies the upload-id-marker and key-marker from
    # previous truncated response to retrieve next setup of multipart uploads.
    my $ListMultipartUploadsOutput = $s3->ListMultipartUploads(
      'Bucket'         => 'examplebucket',
      'KeyMarker'      => 'nextkeyfrompreviousresponse',
      'MaxUploads'     => 2,
      'UploadIdMarker' => 'valuefrompreviousresponse'
    );

    # Results:
    my $Bucket             = $ListMultipartUploadsOutput->Bucket;
    my $IsTruncated        = $ListMultipartUploadsOutput->IsTruncated;
    my $KeyMarker          = $ListMultipartUploadsOutput->KeyMarker;
    my $MaxUploads         = $ListMultipartUploadsOutput->MaxUploads;
    my $NextKeyMarker      = $ListMultipartUploadsOutput->NextKeyMarker;
    my $NextUploadIdMarker = $ListMultipartUploadsOutput->NextUploadIdMarker;
    my $UploadIdMarker     = $ListMultipartUploadsOutput->UploadIdMarker;
    my $Uploads            = $ListMultipartUploadsOutput->Uploads;

    # Returns a L<Paws::S3::ListMultipartUploadsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListMultipartUploads>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which the multipart upload was initiated.

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



=head2 Delimiter => Str

Character you use to group keys.

All keys that contain the same string between the prefix, if specified,
and the first occurrence of the delimiter after the prefix are grouped
under a single result element, C<CommonPrefixes>. If you don't specify
the prefix parameter, then the substring starts at the beginning of the
key. The keys that are grouped under C<CommonPrefixes> result element
are not returned elsewhere in the response.

B<Directory buckets> - For directory buckets, C</> is the only
supported delimiter.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 KeyMarker => Str

Specifies the multipart upload after which listing should begin.

=over

=item *

B<General purpose buckets> - For general purpose buckets, C<key-marker>
is an object key. Together with C<upload-id-marker>, this parameter
specifies the multipart upload after which listing should begin.

If C<upload-id-marker> is not specified, only the keys
lexicographically greater than the specified C<key-marker> will be
included in the list.

If C<upload-id-marker> is specified, any multipart uploads for a key
equal to the C<key-marker> might also be included, provided those
multipart uploads have upload IDs lexicographically greater than the
specified C<upload-id-marker>.

=item *

B<Directory buckets> - For directory buckets, C<key-marker> is
obfuscated and isn't a real object key. The C<upload-id-marker>
parameter isn't supported by directory buckets. To list the additional
multipart uploads, you only need to set the value of C<key-marker> to
the C<NextKeyMarker> value from the previous response.

In the C<ListMultipartUploads> response, the multipart uploads aren't
sorted lexicographically based on the object keys.

=back




=head2 MaxUploads => Int

Sets the maximum number of multipart uploads, from 1 to 1,000, to
return in the response body. 1,000 is the maximum number of uploads
that can be returned in a response.



=head2 Prefix => Str

Lists in-progress uploads only for those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different grouping of keys. (You can think of using C<prefix> to make
groups in the same way that you'd use a folder in a file system.)

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 UploadIdMarker => Str

Together with key-marker, specifies the multipart upload after which
listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored. Otherwise, any multipart uploads
for a key equal to the key-marker might be included in the list only if
they have an upload ID lexicographically greater than the specified
C<upload-id-marker>.

This functionality is not supported for directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultipartUploads in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

