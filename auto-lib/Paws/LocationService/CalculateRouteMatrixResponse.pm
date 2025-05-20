
package Paws::LocationService::CalculateRouteMatrixResponse;
  use Moose;
  has RouteMatrix => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::LocationService::RouteMatrixEntry]]', required => 1);
  has SnappedDeparturePositions => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]');
  has SnappedDestinationPositions => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]');
  has Summary => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteMatrixSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CalculateRouteMatrixResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RouteMatrix => ArrayRef[L<ArrayRef[Paws::LocationService::RouteMatrixEntry]>]

The calculated route matrix containing the results for all pairs of
C<DeparturePositions> to C<DestinationPositions>. Each row corresponds
to one entry in C<DeparturePositions>. Each entry in the row
corresponds to the route from that entry in C<DeparturePositions> to an
entry in C<DestinationPositions>.


=head2 SnappedDeparturePositions => ArrayRef[ArrayRef[Num]]

For routes calculated using an Esri route calculator resource,
departure positions are snapped to the closest road. For Esri route
calculator resources, this returns the list of departure/origin
positions used for calculation of the C<RouteMatrix>.


=head2 SnappedDestinationPositions => ArrayRef[ArrayRef[Num]]

The list of destination positions for the route matrix used for
calculation of the C<RouteMatrix>.


=head2 B<REQUIRED> Summary => L<Paws::LocationService::CalculateRouteMatrixSummary>

Contains information about the route matrix, C<DataSource>,
C<DistanceUnit>, C<RouteCount> and C<ErrorCount>.


=head2 _request_id => Str


=cut

