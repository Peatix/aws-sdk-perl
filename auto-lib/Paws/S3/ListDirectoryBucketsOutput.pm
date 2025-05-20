
package Paws::S3::ListDirectoryBucketsOutput;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::S3::Bucket]', request_name => 'Bucket', traits => ['NameInRequest']);
  has ContinuationToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListDirectoryBucketsOutput

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::S3::Bucket>]

The list of buckets owned by the requester.



=head2 ContinuationToken => Str

If C<ContinuationToken> was sent with the request, it is included in
the response. You can use the returned C<ContinuationToken> for
pagination of the list response.




=cut

