
package Paws::EC2::GetRouteServerRoutingDatabaseResult;
  use Moose;
  has AreRoutesPersisted => (is => 'ro', isa => 'Bool', request_name => 'areRoutesPersisted', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerRoute]', request_name => 'routeSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetRouteServerRoutingDatabaseResult

=head1 ATTRIBUTES


=head2 AreRoutesPersisted => Bool

Indicates whether routes are being persisted in the routing database.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Routes => ArrayRef[L<Paws::EC2::RouteServerRoute>]

The collection of routes in the route server's routing database.


=head2 _request_id => Str


=cut

