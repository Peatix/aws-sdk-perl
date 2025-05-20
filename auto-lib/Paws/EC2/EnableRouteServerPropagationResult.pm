
package Paws::EC2::EnableRouteServerPropagationResult;
  use Moose;
  has RouteServerPropagation => (is => 'ro', isa => 'Paws::EC2::RouteServerPropagation', request_name => 'routeServerPropagation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableRouteServerPropagationResult

=head1 ATTRIBUTES


=head2 RouteServerPropagation => L<Paws::EC2::RouteServerPropagation>

Information about the enabled route server propagation.


=head2 _request_id => Str


=cut

