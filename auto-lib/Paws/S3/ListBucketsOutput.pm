
package Paws::S3::ListBucketsOutput;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::S3::Bucket]', request_name => 'Bucket', traits => ['NameInRequest']);
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has Prefix => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketsOutput

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::S3::Bucket>]

The list of buckets owned by the requester.



=head2 ContinuationToken => Str

C<ContinuationToken> is included in the response when there are more
buckets that can be listed with pagination. The next C<ListBuckets>
request to Amazon S3 can be continued with this C<ContinuationToken>.
C<ContinuationToken> is obfuscated and is not a real bucket.



=head2 Owner => L<Paws::S3::Owner>

The owner of the buckets listed.



=head2 Prefix => Str

If C<Prefix> was sent with the request, it is included in the response.

All bucket names in the response begin with the specified bucket name
prefix.




=cut

