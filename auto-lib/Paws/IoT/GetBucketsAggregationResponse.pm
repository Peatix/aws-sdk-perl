
package Paws::IoT::GetBucketsAggregationResponse;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Bucket]', traits => ['NameInRequest'], request_name => 'buckets');
  has TotalCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetBucketsAggregationResponse

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::IoT::Bucket>]

The main part of the response with a list of buckets. Each bucket
contains a C<keyValue> and a C<count>.

C<keyValue>: The aggregation field value counted for the particular
bucket.

C<count>: The number of documents that have that value.


=head2 TotalCount => Int

The total number of things that fit the query string criteria.


=head2 _request_id => Str


=cut

