
package Paws::GeoRoutes::CalculateRoutesResponse;
  use Moose;
  has LegGeometryFormat => (is => 'ro', isa => 'Str', required => 1);
  has Notices => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteResponseNotice]', required => 1);
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::Route]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateRoutesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LegGeometryFormat => Str

Specifies the format of the geometry returned for each leg of the
route.

Valid values are: C<"FlexiblePolyline">, C<"Simple">
=head2 B<REQUIRED> Notices => ArrayRef[L<Paws::GeoRoutes::RouteResponseNotice>]

Notices are additional information returned that indicate issues that
occurred during route calculation.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.


=head2 B<REQUIRED> Routes => ArrayRef[L<Paws::GeoRoutes::Route>]

The path from the origin to the destination.


=head2 _request_id => Str


=cut

