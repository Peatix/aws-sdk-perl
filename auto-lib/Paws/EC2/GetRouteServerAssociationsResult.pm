
package Paws::EC2::GetRouteServerAssociationsResult;
  use Moose;
  has RouteServerAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerAssociation]', request_name => 'routeServerAssociationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetRouteServerAssociationsResult

=head1 ATTRIBUTES


=head2 RouteServerAssociations => ArrayRef[L<Paws::EC2::RouteServerAssociation>]

Information about the associations for the specified route server.


=head2 _request_id => Str


=cut

