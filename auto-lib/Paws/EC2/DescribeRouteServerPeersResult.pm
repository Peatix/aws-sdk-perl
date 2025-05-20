
package Paws::EC2::DescribeRouteServerPeersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has RouteServerPeers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerPeer]', request_name => 'routeServerPeerSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRouteServerPeersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 RouteServerPeers => ArrayRef[L<Paws::EC2::RouteServerPeer>]

Information about the described route server peers.


=head2 _request_id => Str


=cut

