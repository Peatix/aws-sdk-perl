
package Paws::EC2::DescribeInstanceConnectEndpointsResult;
  use Moose;
  has InstanceConnectEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ec2InstanceConnectEndpoint]', request_name => 'instanceConnectEndpointSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceConnectEndpointsResult

=head1 ATTRIBUTES


=head2 InstanceConnectEndpoints => ArrayRef[L<Paws::EC2::Ec2InstanceConnectEndpoint>]

Information about the EC2 Instance Connect Endpoints.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

