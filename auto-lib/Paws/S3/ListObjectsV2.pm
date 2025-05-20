
package Paws::S3::ListObjectsV2;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has FetchOwner => (is => 'ro', isa => 'Bool', query_name => 'fetch-owner', traits => ['ParamInQuery']);
  has MaxKeys => (is => 'ro', isa => 'Int', query_name => 'max-keys', traits => ['ParamInQuery']);
  has OptionalObjectAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'x-amz-optional-object-attributes', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has StartAfter => (is => 'ro', isa => 'Str', query_name => 'start-after', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectsV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?list-type=2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectsV2Output');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsV2 - Arguments for method ListObjectsV2 on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectsV2 on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListObjectsV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectsV2.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
# To get object list
# The following example retrieves object list. The request specifies max keys to
# limit response to include only 2 object keys.
    my $ListObjectsV2Output = $s3->ListObjectsV2(
      'Bucket'  => 'examplebucket',
      'MaxKeys' => 2
    );

    # Results:
    my $Contents              = $ListObjectsV2Output->Contents;
    my $IsTruncated           = $ListObjectsV2Output->IsTruncated;
    my $KeyCount              = $ListObjectsV2Output->KeyCount;
    my $MaxKeys               = $ListObjectsV2Output->MaxKeys;
    my $Name                  = $ListObjectsV2Output->Name;
    my $NextContinuationToken = $ListObjectsV2Output->NextContinuationToken;
    my $Prefix                = $ListObjectsV2Output->Prefix;

    # Returns a L<Paws::S3::ListObjectsV2Output> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListObjectsV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

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



=head2 ContinuationToken => Str

C<ContinuationToken> indicates to Amazon S3 that the list is being
continued on this bucket with a token. C<ContinuationToken> is
obfuscated and is not a real key. You can use this C<ContinuationToken>
for pagination of the list results.



=head2 Delimiter => Str

A delimiter is a character that you use to group keys.

=over

=item *

B<Directory buckets> - For directory buckets, C</> is the only
supported delimiter.

=item *

B<Directory buckets > - When you query C<ListObjectsV2> with a
delimiter during in-progress multipart uploads, the C<CommonPrefixes>
response parameter contains the prefixes that are associated with the
in-progress multipart uploads. For more information about multipart
uploads, see Multipart Upload Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
the I<Amazon S3 User Guide>.

=back




=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode the object keys
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html)
in the response. Responses are encoded only in UTF-8. An object key can
contain any Unicode character. However, the XML 1.0 parser can't parse
certain characters, such as characters with an ASCII value from 0 to
10. For characters that aren't supported in XML 1.0, you can add this
parameter to request that Amazon S3 encode the keys in the response.
For more information about characters to avoid in object key names, see
Object key naming guidelines
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines).

When using the URL encoding type, non-ASCII characters that are used in
an object's key name will be percent-encoded according to UTF-8 code
values. For example, the object C<test_file(3).png> will appear as
C<test_file%283%29.png>.

Valid values are: C<"url">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 FetchOwner => Bool

The owner field is not present in C<ListObjectsV2> by default. If you
want to return the owner field with each key in the result, then set
the C<FetchOwner> field to C<true>.

B<Directory buckets> - For directory buckets, the bucket owner is
returned as the object owner for all objects.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. By default,
the action returns up to 1,000 key names. The response might contain
fewer keys but will never contain more.



=head2 OptionalObjectAttributes => ArrayRef[Str|Undef]

Specifies the optional fields that you want returned in the response.
Fields that you do not specify are not returned.

This functionality is not supported for directory buckets.



=head2 Prefix => Str

Limits the response to keys that begin with the specified prefix.

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.



=head2 RequestPayer => Str

Confirms that the requester knows that she or he will be charged for
the list objects request in V2 style. Bucket owners need not specify
this parameter in their requests.

This functionality is not supported for directory buckets.

Valid values are: C<"requester">

=head2 StartAfter => Str

StartAfter is where you want Amazon S3 to start listing from. Amazon S3
starts listing after this specified key. StartAfter can be any key in
the bucket.

This functionality is not supported for directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectsV2 in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

