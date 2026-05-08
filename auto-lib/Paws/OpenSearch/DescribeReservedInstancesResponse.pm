
package Paws::OpenSearch::DescribeReservedInstancesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::ReservedInstance]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeReservedInstancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 ReservedInstances => ArrayRef[L<Paws::OpenSearch::ReservedInstance>]

List of Reserved Instances in the current Region.


=head2 _request_id => Str


=cut

