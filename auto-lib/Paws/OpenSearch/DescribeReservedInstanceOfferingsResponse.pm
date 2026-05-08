
package Paws::OpenSearch::DescribeReservedInstanceOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstanceOfferings => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::ReservedInstanceOffering]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeReservedInstanceOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 ReservedInstanceOfferings => ArrayRef[L<Paws::OpenSearch::ReservedInstanceOffering>]

List of Reserved Instance offerings.


=head2 _request_id => Str


=cut

