
package Paws::S3::ListObjectsV2Output;
  use Moose;
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Paws::S3::Object]');
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyCount => (is => 'ro', isa => 'Int');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextContinuationToken => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has StartAfter => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsV2Output

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

All of the keys (up to 1,000) that share the same prefix are grouped
together. When counting the total numbers of returns by this API
operation, this group of keys is considered as one item.

A response can contain C<CommonPrefixes> only if you specify a
delimiter.

C<CommonPrefixes> contains all (if there are any) keys between
C<Prefix> and the next occurrence of the string specified by a
delimiter.

C<CommonPrefixes> lists keys that act like subdirectories in the
directory specified by C<Prefix>.

For example, if the prefix is C<notes/> and the delimiter is a slash
(C</>) as in C<notes/summer/july>, the common prefix is
C<notes/summer/>. All of the keys that roll up into a common prefix
count as a single return when calculating the number of returns.

=over

=item *

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.

=item *

B<Directory buckets > - When you query C<ListObjectsV2> with a
delimiter during in-progress multipart uploads, the C<CommonPrefixes>
response parameter contains the prefixes that are associated with the
in-progress multipart uploads. For more information about multipart
uploads, see Multipart Upload Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
the I<Amazon S3 User Guide>.

=back




=head2 Contents => ArrayRef[L<Paws::S3::Object>]

Metadata about each object returned.



=head2 ContinuationToken => Str

If C<ContinuationToken> was sent with the request, it is included in
the response. You can use the returned C<ContinuationToken> for
pagination of the list response. You can use this C<ContinuationToken>
for pagination of the list results.



=head2 Delimiter => Str

Causes keys that contain the same string between the C<prefix> and the
first occurrence of the delimiter to be rolled up into a single result
element in the C<CommonPrefixes> collection. These rolled-up keys are
not returned elsewhere in the response. Each rolled-up result counts as
only one return against the C<MaxKeys> value.

B<Directory buckets> - For directory buckets, C</> is the only
supported delimiter.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object key names in the XML
response.

If you specify the C<encoding-type> request parameter, Amazon S3
includes this element in the response, and returns encoded key name
values in the following response elements:

C<Delimiter, Prefix, Key,> and C<StartAfter>.

Valid values are: C<"url">

=head2 IsTruncated => Bool

Set to C<false> if all of the results were returned. Set to C<true> if
more keys are available to return. If the number of results exceeds
that specified by C<MaxKeys>, all of the results might not be returned.



=head2 KeyCount => Int

C<KeyCount> is the number of keys returned with this request.
C<KeyCount> will always be less than or equal to the C<MaxKeys> field.
For example, if you ask for 50 keys, your result will include 50 keys
or fewer.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. By default,
the action returns up to 1,000 key names. The response might contain
fewer keys but will never contain more.



=head2 Name => Str

The bucket name.



=head2 NextContinuationToken => Str

C<NextContinuationToken> is sent when C<isTruncated> is true, which
means there are more keys in the bucket that can be listed. The next
list requests to Amazon S3 can be continued with this
C<NextContinuationToken>. C<NextContinuationToken> is obfuscated and is
not a real key



=head2 Prefix => Str

Keys that begin with the indicated prefix.

B<Directory buckets> - For directory buckets, only prefixes that end in
a delimiter (C</>) are supported.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 StartAfter => Str

If StartAfter was sent with the request, it is included in the
response.

This functionality is not supported for directory buckets.




=cut

