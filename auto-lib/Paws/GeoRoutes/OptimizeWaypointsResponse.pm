
package Paws::GeoRoutes::OptimizeWaypointsResponse;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::WaypointOptimizationConnection]', required => 1);
  has Distance => (is => 'ro', isa => 'Int', required => 1);
  has Duration => (is => 'ro', isa => 'Int', required => 1);
  has ImpedingWaypoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::WaypointOptimizationImpedingWaypoint]', required => 1);
  has OptimizedWaypoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::WaypointOptimizationOptimizedWaypoint]', required => 1);
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has TimeBreakdown => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationTimeBreakdown', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::OptimizeWaypointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Connections => ArrayRef[L<Paws::GeoRoutes::WaypointOptimizationConnection>]

Details about the connection from one waypoint to the next, within the
optimized sequence.


=head2 B<REQUIRED> Distance => Int

Overall distance to travel the whole sequence.


=head2 B<REQUIRED> Duration => Int

Overall duration to travel the whole sequence.

B<Unit>: C<seconds>


=head2 B<REQUIRED> ImpedingWaypoints => ArrayRef[L<Paws::GeoRoutes::WaypointOptimizationImpedingWaypoint>]

Returns waypoints that caused the optimization problem to fail, and the
constraints that were unsatisfied leading to the failure.


=head2 B<REQUIRED> OptimizedWaypoints => ArrayRef[L<Paws::GeoRoutes::WaypointOptimizationOptimizedWaypoint>]

Waypoints in the order of the optimized sequence.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.


=head2 B<REQUIRED> TimeBreakdown => L<Paws::GeoRoutes::WaypointOptimizationTimeBreakdown>

Time breakdown for the sequence.


=head2 _request_id => Str


=cut

