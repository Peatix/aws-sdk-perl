
package Paws::GeoRoutes::SnapToRoadsResponse;
  use Moose;
  has Notices => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RoadSnapNotice]', required => 1);
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has SnappedGeometry => (is => 'ro', isa => 'Paws::GeoRoutes::RoadSnapSnappedGeometry');
  has SnappedGeometryFormat => (is => 'ro', isa => 'Str', required => 1);
  has SnappedTracePoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RoadSnapSnappedTracePoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::SnapToRoadsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Notices => ArrayRef[L<Paws::GeoRoutes::RoadSnapNotice>]

Notices are additional information returned that indicate issues that
occurred during route calculation.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.


=head2 SnappedGeometry => L<Paws::GeoRoutes::RoadSnapSnappedGeometry>

The interpolated geometry for the snapped route onto the road network.


=head2 B<REQUIRED> SnappedGeometryFormat => Str

Specifies the format of the geometry returned for each leg of the
route.

Valid values are: C<"FlexiblePolyline">, C<"Simple">
=head2 B<REQUIRED> SnappedTracePoints => ArrayRef[L<Paws::GeoRoutes::RoadSnapSnappedTracePoint>]

The trace points snapped onto the road network.


=head2 _request_id => Str


=cut

