
package Paws::S3Tables::ListTableBucketsResponse;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'continuationToken');
  has TableBuckets => (is => 'ro', isa => 'ArrayRef[Paws::S3Tables::TableBucketSummary]', traits => ['NameInRequest'], request_name => 'tableBuckets', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::ListTableBucketsResponse

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

You can use this C<ContinuationToken> for pagination of the list
results.


=head2 B<REQUIRED> TableBuckets => ArrayRef[L<Paws::S3Tables::TableBucketSummary>]

A list of table buckets.


=head2 _request_id => Str


=cut

