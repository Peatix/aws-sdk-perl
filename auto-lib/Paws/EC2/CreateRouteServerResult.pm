
package Paws::EC2::CreateRouteServerResult;
  use Moose;
  has RouteServer => (is => 'ro', isa => 'Paws::EC2::RouteServer', request_name => 'routeServer', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRouteServerResult

=head1 ATTRIBUTES


=head2 RouteServer => L<Paws::EC2::RouteServer>

Information about the created route server.


=head2 _request_id => Str


=cut

