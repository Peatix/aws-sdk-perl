
package Paws::EC2::DescribeRouteServerEndpointsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has RouteServerEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerEndpoint]', request_name => 'routeServerEndpointSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRouteServerEndpointsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 RouteServerEndpoints => ArrayRef[L<Paws::EC2::RouteServerEndpoint>]

Information about the described route server endpoints.


=head2 _request_id => Str


=cut

