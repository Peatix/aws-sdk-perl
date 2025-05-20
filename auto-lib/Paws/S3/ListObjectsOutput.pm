
package Paws::S3::ListObjectsOutput;
  use Moose;
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Paws::S3::Object]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsOutput

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

All of the keys (up to 1,000) rolled up in a common prefix count as a
single return when calculating the number of returns.

A response can contain C<CommonPrefixes> only if you specify a
delimiter.

C<CommonPrefixes> contains all (if there are any) keys between
C<Prefix> and the next occurrence of the string specified by the
delimiter.

C<CommonPrefixes> lists keys that act like subdirectories in the
directory specified by C<Prefix>.

For example, if the prefix is C<notes/> and the delimiter is a slash
(C</>), as in C<notes/summer/july>, the common prefix is
C<notes/summer/>. All of the keys that roll up into a common prefix
count as a single return when calculating the number of returns.



=head2 Contents => ArrayRef[L<Paws::S3::Object>]

Metadata about each object returned.



=head2 Delimiter => Str

Causes keys that contain the same string between the prefix and the
first occurrence of the delimiter to be rolled up into a single result
element in the C<CommonPrefixes> collection. These rolled-up keys are
not returned elsewhere in the response. Each rolled-up result counts as
only one return against the C<MaxKeys> value.



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

=head2 IsTruncated => Bool

A flag that indicates whether Amazon S3 returned all of the results
that satisfied the search criteria.



=head2 Marker => Str

Indicates where in the bucket listing begins. Marker is included in the
response if it was sent with the request.



=head2 MaxKeys => Int

The maximum number of keys returned in the response body.



=head2 Name => Str

The bucket name.



=head2 NextMarker => Str

When the response is truncated (the C<IsTruncated> element value in the
response is C<true>), you can use the key name in this field as the
C<marker> parameter in the subsequent request to get the next set of
objects. Amazon S3 lists objects in alphabetical order.

This element is returned only if you have the C<delimiter> request
parameter specified. If the response does not include the C<NextMarker>
element and it is truncated, you can use the value of the last C<Key>
element in the response as the C<marker> parameter in the subsequent
request to get the next set of object keys.



=head2 Prefix => Str

Keys that begin with the indicated prefix.



=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

