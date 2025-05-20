
package Paws::GeoRoutes::CalculateRouteMatrixResponse;
  use Moose;
  has ErrorCount => (is => 'ro', isa => 'Int', required => 1);
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has RouteMatrix => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::GeoRoutes::RouteMatrixEntry]]', required => 1);
  has RoutingBoundary => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixBoundary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateRouteMatrixResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorCount => Int

The count of error results in the route matrix. If this number is 0,
all routes were calculated successfully.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.


=head2 B<REQUIRED> RouteMatrix => ArrayRef[L<ArrayRef[Paws::GeoRoutes::RouteMatrixEntry]>]

The calculated route matrix containing the results for all pairs of
Origins to Destination positions. Each row corresponds to one entry in
Origins. Each entry in the row corresponds to the route from that entry
in Origins to an entry in Destination positions.


=head2 B<REQUIRED> RoutingBoundary => L<Paws::GeoRoutes::RouteMatrixBoundary>

Boundary within which the matrix is to be calculated. All data, origins
and destinations outside the boundary are considered invalid.

When request routing boundary was set as AutoCircle, the response
routing boundary will return Circle derived from the AutoCircle
settings.


=head2 _request_id => Str


=cut

