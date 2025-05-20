
package Paws::LocationService::CalculateRouteMatrix;
  use Moose;
  has CalculatorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatorName', required => 1);
  has CarModeOptions => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteCarModeOptions');
  has DepartNow => (is => 'ro', isa => 'Bool');
  has DeparturePositions => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]', required => 1);
  has DepartureTime => (is => 'ro', isa => 'Str');
  has DestinationPositions => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]', required => 1);
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TruckModeOptions => (is => 'ro', isa => 'Paws::LocationService::CalculateRouteTruckModeOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CalculateRouteMatrix');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routes/v0/calculators/{CalculatorName}/calculate/route-matrix');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CalculateRouteMatrixResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CalculateRouteMatrix - Arguments for method CalculateRouteMatrix on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CalculateRouteMatrix on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CalculateRouteMatrix.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CalculateRouteMatrix.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CalculateRouteMatrixResponse = $geo->CalculateRouteMatrix(
      CalculatorName     => 'MyResourceName',
      DeparturePositions => [
        [ 1, ... ], ...    # min: 2, max: 2
      ],
      DestinationPositions => [
        [ 1, ... ], ...    # min: 2, max: 2
      ],
      CarModeOptions => {
        AvoidFerries => 1,    # OPTIONAL
        AvoidTolls   => 1,    # OPTIONAL
      },    # OPTIONAL
      DepartNow        => 1,                        # OPTIONAL
      DepartureTime    => '1970-01-01T01:00:00',    # OPTIONAL
      DistanceUnit     => 'Kilometers',             # OPTIONAL
      Key              => 'MyApiKey',               # OPTIONAL
      TravelMode       => 'Car',                    # OPTIONAL
      TruckModeOptions => {
        AvoidFerries => 1,                          # OPTIONAL
        AvoidTolls   => 1,                          # OPTIONAL
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
    );

    # Results:
    my $RouteMatrix = $CalculateRouteMatrixResponse->RouteMatrix;
    my $SnappedDeparturePositions =
      $CalculateRouteMatrixResponse->SnappedDeparturePositions;
    my $SnappedDestinationPositions =
      $CalculateRouteMatrixResponse->SnappedDestinationPositions;
    my $Summary = $CalculateRouteMatrixResponse->Summary;

    # Returns a L<Paws::LocationService::CalculateRouteMatrixResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CalculateRouteMatrix>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource that you want to use to
calculate the route matrix.



=head2 CarModeOptions => L<Paws::LocationService::CalculateRouteCarModeOptions>

Specifies route preferences when traveling by C<Car>, such as avoiding
routes that use ferries or tolls.

Requirements: C<TravelMode> must be specified as C<Car>.



=head2 DepartNow => Bool

Sets the time of departure as the current time. Uses the current time
to calculate the route matrix. You can't set both C<DepartureTime> and
C<DepartNow>. If neither is set, the best time of day to travel with
the best traffic conditions is used to calculate the route matrix.

Default Value: C<false>

Valid Values: C<false> | C<true>



=head2 B<REQUIRED> DeparturePositions => ArrayRef[ArrayRef[Num]]

The list of departure (origin) positions for the route matrix. An array
of points, each of which is itself a 2-value array defined in WGS 84
(https://earth-info.nga.mil/GandG/wgs84/index.html) format:
C<[longitude, latitude]>. For example, C<[-123.115, 49.285]>.

Depending on the data provider selected in the route calculator
resource there may be additional restrictions on the inputs you can
choose. See Position restrictions
(https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits)
in the I<Amazon Location Service Developer Guide>.

For route calculators that use Esri as the data provider, if you
specify a departure that's not located on a road, Amazon Location moves
the position to the nearest road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).
The snapped value is available in the result in
C<SnappedDeparturePositions>.

Valid Values: C<[-180 to 180,-90 to 90]>



=head2 DepartureTime => Str

Specifies the desired time of departure. Uses the given time to
calculate the route matrix. You can't set both C<DepartureTime> and
C<DepartNow>. If neither is set, the best time of day to travel with
the best traffic conditions is used to calculate the route matrix.

Setting a departure time in the past returns a C<400
ValidationException> error.

=over

=item *

In ISO 8601 (https://www.iso.org/iso-8601-date-and-time-format.html)
format: C<YYYY-MM-DDThh:mm:ss.sssZ>. For example,
C<2020E<ndash>07-2T12:15:20.000Z+01:00>

=back




=head2 B<REQUIRED> DestinationPositions => ArrayRef[ArrayRef[Num]]

The list of destination positions for the route matrix. An array of
points, each of which is itself a 2-value array defined in WGS 84
(https://earth-info.nga.mil/GandG/wgs84/index.html) format:
C<[longitude, latitude]>. For example, C<[-122.339, 47.615]>

Depending on the data provider selected in the route calculator
resource there may be additional restrictions on the inputs you can
choose. See Position restrictions
(https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits)
in the I<Amazon Location Service Developer Guide>.

For route calculators that use Esri as the data provider, if you
specify a destination that's not located on a road, Amazon Location
moves the position to the nearest road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).
The snapped value is available in the result in
C<SnappedDestinationPositions>.

Valid Values: C<[-180 to 180,-90 to 90]>



=head2 DistanceUnit => Str

Set the unit system to specify the distance.

Default Value: C<Kilometers>

Valid values are: C<"Kilometers">, C<"Miles">

=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

The C<TravelMode> you specify also determines how you specify route
preferences:

=over

=item *

If traveling by C<Car> use the C<CarModeOptions> parameter.

=item *

If traveling by C<Truck> use the C<TruckModeOptions> parameter.

=back

C<Bicycle> or C<Motorcycle> are only valid when using C<Grab> as a data
provider, and only within Southeast Asia.

C<Truck> is not available for Grab.

For more information about using Grab as a data provider, see GrabMaps
(https://docs.aws.amazon.com/location/latest/developerguide/grab.html)
in the I<Amazon Location Service Developer Guide>.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Truck">, C<"Walking">, C<"Bicycle">, C<"Motorcycle">

=head2 TruckModeOptions => L<Paws::LocationService::CalculateRouteTruckModeOptions>

Specifies route preferences when traveling by C<Truck>, such as
avoiding routes that use ferries or tolls, and truck specifications to
consider when choosing an optimal road.

Requirements: C<TravelMode> must be specified as C<Truck>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CalculateRouteMatrix in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

