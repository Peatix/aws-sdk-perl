
package Paws::EC2::GetRouteServerPropagationsResult;
  use Moose;
  has RouteServerPropagations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerPropagation]', request_name => 'routeServerPropagationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetRouteServerPropagationsResult

=head1 ATTRIBUTES


=head2 RouteServerPropagations => ArrayRef[L<Paws::EC2::RouteServerPropagation>]

Information about the route propagations for the specified route
server.


=head2 _request_id => Str


=cut

