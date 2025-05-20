
package Paws::GeoRoutes::CalculateIsolinesResponse;
  use Moose;
  has ArrivalTime => (is => 'ro', isa => 'Str');
  has DepartureTime => (is => 'ro', isa => 'Str');
  has IsolineGeometryFormat => (is => 'ro', isa => 'Str', required => 1);
  has Isolines => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::Isoline]', required => 1);
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has SnappedDestination => (is => 'ro', isa => 'ArrayRef[Num]');
  has SnappedOrigin => (is => 'ro', isa => 'ArrayRef[Num]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateIsolinesResponse

=head1 ATTRIBUTES


=head2 ArrivalTime => Str

Time of arrival at the destination. This parameter is returned only if
the Destination parameters was provided in the request.

Time format:C<YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>


=head2 DepartureTime => Str

Time of departure from thr origin.

Time format:C<YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>


=head2 B<REQUIRED> IsolineGeometryFormat => Str

The format of the returned IsolineGeometry.

Default Value:C<FlexiblePolyline>

Valid values are: C<"FlexiblePolyline">, C<"Simple">
=head2 B<REQUIRED> Isolines => ArrayRef[L<Paws::GeoRoutes::Isoline>]

Calculated isolines and associated properties.


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.


=head2 SnappedDestination => ArrayRef[Num]

Snapped destination that was used for the Isoline calculation.


=head2 SnappedOrigin => ArrayRef[Num]

Snapped origin that was used for the Isoline calculation.


=head2 _request_id => Str


=cut

