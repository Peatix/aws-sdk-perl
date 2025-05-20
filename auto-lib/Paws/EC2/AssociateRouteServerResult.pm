
package Paws::EC2::AssociateRouteServerResult;
  use Moose;
  has RouteServerAssociation => (is => 'ro', isa => 'Paws::EC2::RouteServerAssociation', request_name => 'routeServerAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateRouteServerResult

=head1 ATTRIBUTES


=head2 RouteServerAssociation => L<Paws::EC2::RouteServerAssociation>

Information about the association between the route server and the VPC.


=head2 _request_id => Str


=cut

