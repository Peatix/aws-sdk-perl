
package Paws::LocationService::CalculateRoute;
  use Moose;
  has ArrivalTime => (is => 'ro', isa => 'Str');
  has CalculatorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatorName', required => 1);
  has CarModeOptions => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteCarModeOptions');
  has DepartNow => (is => 'ro', isa => 'Bool');
  has DeparturePosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has DepartureTime => (is => 'ro', isa => 'Str');
  has DestinationPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has IncludeLegGeometry => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has OptimizeFor => (is => 'ro', isa => 'Str');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TruckModeOptions => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteTruckModeOptions');
  has WaypointPositions => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CalculateRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routes/v0/calculators/{CalculatorName}/calculate/route');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CalculateRouteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CalculateRoute - Arguments for method CalculateRoute on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CalculateRoute on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CalculateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CalculateRoute.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CalculateRouteResponse = $geo->CalculateRoute(
      CalculatorName      => 'MyResourceName',
      DeparturePosition   => [ 1, ... ],
      DestinationPosition => [ 1, ... ],
      ArrivalTime         => '1970-01-01T01:00:00',    # OPTIONAL
      CarModeOptions      => {
        AvoidFerries => 1,                             # OPTIONAL
        AvoidTolls   => 1,                             # OPTIONAL
      },    # OPTIONAL
      DepartNow          => 1,                        # OPTIONAL
      DepartureTime      => '1970-01-01T01:00:00',    # OPTIONAL
      DistanceUnit       => 'Kilometers',             # OPTIONAL
      IncludeLegGeometry => 1,                        # OPTIONAL
      Key                => 'MyApiKey',               # OPTIONAL
      OptimizeFor        => 'FastestRoute',           # OPTIONAL
      TravelMode         => 'Car',                    # OPTIONAL
      TruckModeOptions   => {
        AvoidFerries => 1,                            # OPTIONAL
        AvoidTolls   => 1,                            # OPTIONAL
        Dimensions   => {
          Height => 1,           # OPTIONAL
          Length => 1,           # OPTIONAL
          Unit   => 'Meters',    # values: Meters, Feet; OPTIONAL
          Width  => 1,           # OPTIONAL
        },    # OPTIONAL
        Weight => {
          Total => 1,              # OPTIONAL
          Unit  => 'Kilograms',    # values: Kilograms, Pounds; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      WaypointPositions => [
        [ 1, ... ], ...    # min: 2, max: 2
      ],    # OPTIONAL
    );

    # Results:
    my $Legs    = $CalculateRouteResponse->Legs;
    my $Summary = $CalculateRouteResponse->Summary;

    # Returns a L<Paws::LocationService::CalculateRouteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CalculateRoute>

=head1 ATTRIBUTES


=head2 ArrivalTime => Str

Specifies the desired time of arrival. Uses the given time to calculate
the route. Otherwise, the best time of day to travel with the best
traffic conditions is used to calculate the route.

ArrivalTime is not supported Esri.



=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource that you want to use to
calculate the route.



=head2 CarModeOptions => L<Paws::LocationService::CalculateRouteCarModeOptions>

Specifies route preferences when traveling by C<Car>, such as avoiding
routes that use ferries or tolls.

Requirements: C<TravelMode> must be specified as C<Car>.



=head2 DepartNow => Bool

Sets the time of departure as the current time. Uses the current time
to calculate a route. Otherwise, the best time of day to travel with
the best traffic conditions is used to calculate the route.

Default Value: C<false>

Valid Values: C<false> | C<true>



=head2 B<REQUIRED> DeparturePosition => ArrayRef[Num]

The start position for the route. Defined in World Geodetic System (WGS
84) (https://earth-info.nga.mil/index.php?dir=wgs84&action=wgs84)
format: C<[longitude, latitude]>.

=over

=item *

For example, C<[-123.115, 49.285]>

=back

If you specify a departure that's not located on a road, Amazon
Location moves the position to the nearest road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).
If Esri is the provider for your route calculator, specifying a route
that is longer than 400 km returns a C<400 RoutesValidationException>
error.

Valid Values: C<[-180 to 180,-90 to 90]>



=head2 DepartureTime => Str

Specifies the desired time of departure. Uses the given time to
calculate the route. Otherwise, the best time of day to travel with the
best traffic conditions is used to calculate the route.

=over

=item *

In ISO 8601 (https://www.iso.org/iso-8601-date-and-time-format.html)
format: C<YYYY-MM-DDThh:mm:ss.sssZ>. For example,
C<2020E<ndash>07-2T12:15:20.000Z+01:00>

=back




=head2 B<REQUIRED> DestinationPosition => ArrayRef[Num]

The finish position for the route. Defined in World Geodetic System
(WGS 84) (https://earth-info.nga.mil/index.php?dir=wgs84&action=wgs84)
format: C<[longitude, latitude]>.

=over

=item *

For example, C<[-122.339, 47.615]>

=back

If you specify a destination that's not located on a road, Amazon
Location moves the position to the nearest road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).

Valid Values: C<[-180 to 180,-90 to 90]>



=head2 DistanceUnit => Str

Set the unit system to specify the distance.

Default Value: C<Kilometers>

Valid values are: C<"Kilometers">, C<"Miles">

=head2 IncludeLegGeometry => Bool

Set to include the geometry details in the result for each path between
a pair of positions.

Default Value: C<false>

Valid Values: C<false> | C<true>



=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 OptimizeFor => Str

Specifies the distance to optimize for when calculating a route.

Valid values are: C<"FastestRoute">, C<"ShortestRoute">

=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility. You can choose
C<Car>, C<Truck>, C<Walking>, C<Bicycle> or C<Motorcycle> as options
for the C<TravelMode>.

C<Bicycle> and C<Motorcycle> are only valid when using Grab as a data
provider, and only within Southeast Asia.

C<Truck> is not available for Grab.

For more details on the using Grab for routing, including areas of
coverage, see GrabMaps
(https://docs.aws.amazon.com/location/latest/developerguide/grab.html)
in the I<Amazon Location Service Developer Guide>.

The C<TravelMode> you specify also determines how you specify route
preferences:

=over

=item *

If traveling by C<Car> use the C<CarModeOptions> parameter.

=item *

If traveling by C<Truck> use the C<TruckModeOptions> parameter.

=back

Default Value: C<Car>

Valid values are: C<"Car">, C<"Truck">, C<"Walking">, C<"Bicycle">, C<"Motorcycle">

=head2 TruckModeOptions => L<Paws::LocationService::CalculateRouteTruckModeOptions>

Specifies route preferences when traveling by C<Truck>, such as
avoiding routes that use ferries or tolls, and truck specifications to
consider when choosing an optimal road.

Requirements: C<TravelMode> must be specified as C<Truck>.



=head2 WaypointPositions => ArrayRef[ArrayRef[Num]]

Specifies an ordered list of up to 23 intermediate positions to include
along a route between the departure position and destination position.

=over

=item *

For example, from the C<DeparturePosition> C<[-123.115, 49.285]>, the
route follows the order that the waypoint positions are given
C<[[-122.757, 49.0021],[-122.349, 47.620]]>

=back

If you specify a waypoint position that's not located on a road, Amazon
Location moves the position to the nearest road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).

Specifying more than 23 waypoints returns a C<400 ValidationException>
error.

If Esri is the provider for your route calculator, specifying a route
that is longer than 400 km returns a C<400 RoutesValidationException>
error.

Valid Values: C<[-180 to 180,-90 to 90]>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CalculateRoute in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

