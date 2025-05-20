
package Paws::EC2::DescribeVpcPeeringConnectionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VpcPeeringConnections => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcPeeringConnection]', request_name => 'vpcPeeringConnectionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcPeeringConnectionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 VpcPeeringConnections => ArrayRef[L<Paws::EC2::VpcPeeringConnection>]

Information about the VPC peering connections.


=head2 _request_id => Str


=cut

