
package Paws::EC2::DescribeIpamPoolsResult;
  use Moose;
  has IpamPools => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamPool]', request_name => 'ipamPoolSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIpamPoolsResult

=head1 ATTRIBUTES


=head2 IpamPools => ArrayRef[L<Paws::EC2::IpamPool>]

Information about the IPAM pools.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

