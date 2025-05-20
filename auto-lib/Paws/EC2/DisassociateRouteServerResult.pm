
package Paws::EC2::DisassociateRouteServerResult;
  use Moose;
  has RouteServerAssociation => (is => 'ro', isa => 'Paws::EC2::RouteServerAssociation', request_name => 'routeServerAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateRouteServerResult

=head1 ATTRIBUTES


=head2 RouteServerAssociation => L<Paws::EC2::RouteServerAssociation>

Information about the disassociated route server.


=head2 _request_id => Str


=cut

