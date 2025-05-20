
package Paws::EC2::CreateRouteServerEndpointResult;
  use Moose;
  has RouteServerEndpoint => (is => 'ro', isa => 'Paws::EC2::RouteServerEndpoint', request_name => 'routeServerEndpoint', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRouteServerEndpointResult

=head1 ATTRIBUTES


=head2 RouteServerEndpoint => L<Paws::EC2::RouteServerEndpoint>

Information about the created route server endpoint.


=head2 _request_id => Str


=cut

