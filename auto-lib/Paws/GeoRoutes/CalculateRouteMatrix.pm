
package Paws::GeoRoutes::CalculateRouteMatrix;
  use Moose;
  has Allow => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixAllowOptions');
  has Avoid => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixAvoidanceOptions');
  has DepartNow => (is => 'ro', isa => 'Bool');
  has DepartureTime => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteMatrixDestination]', required => 1);
  has Exclude => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixExclusionOptions');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has OptimizeRoutingFor => (is => 'ro', isa => 'Str');
  has Origins => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteMatrixOrigin]', required => 1);
  has RoutingBoundary => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixBoundary', required => 1);
  has Traffic => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixTrafficOptions');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TravelModeOptions => (is => 'ro', isa => 'Paws::GeoRoutes::RouteMatrixTravelModeOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CalculateRouteMatrix');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/route-matrix');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoRoutes::CalculateRouteMatrixResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateRouteMatrix - Arguments for method CalculateRouteMatrix on L<Paws::GeoRoutes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CalculateRouteMatrix on the
L<Amazon Location Service Routes V2|Paws::GeoRoutes> service. Use the attributes of this class
as arguments to method CalculateRouteMatrix.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CalculateRouteMatrix.

=head1 SYNOPSIS

    my $geo-routes = Paws->service('GeoRoutes');
    my $CalculateRouteMatrixResponse = $geo -routes->CalculateRouteMatrix(
      Destinations => [
        {
          Position => [ 1, ... ],    # min: 2, max: 2
          Options  => {
            AvoidActionsForDistance => 1,    # OPTIONAL
            Heading                 => 1,    # max: 360; OPTIONAL
            Matching                => {
              NameHint        => 'MySensitiveString',    # OPTIONAL
              OnRoadThreshold => 1,                      # OPTIONAL
              Radius          => 1,           # max: 4294967295; OPTIONAL
              Strategy        => 'MatchAny'
              ,    # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
            },    # OPTIONAL
            SideOfStreet => {
              Position => [ 1, ... ],    # min: 2, max: 2
              UseWith  =>
                'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      Origins => [
        {
          Position => [ 1, ... ],    # min: 2, max: 2
          Options  => {
            AvoidActionsForDistance => 1,    # OPTIONAL
            Heading                 => 1,    # max: 360; OPTIONAL
            Matching                => {
              NameHint        => 'MySensitiveString',    # OPTIONAL
              OnRoadThreshold => 1,                      # OPTIONAL
              Radius          => 1,           # max: 4294967295; OPTIONAL
              Strategy        => 'MatchAny'
              ,    # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
            },    # OPTIONAL
            SideOfStreet => {
              Position => [ 1, ... ],    # min: 2, max: 2
              UseWith  =>
                'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      RoutingBoundary => {
        Geometry => {
          AutoCircle => {
            Margin    => 1,    # max: 200000; OPTIONAL
            MaxRadius => 1,    # max: 200000; OPTIONAL
          },    # OPTIONAL
          BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
          Circle      => {
            Center => [ 1, ... ],       # min: 2, max: 2
            Radius => 1,

          },    # OPTIONAL
          Polygon => [
            [
              [ 1, ... ], ...    # min: 2, max: 2
            ],
            ...                  # min: 4
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
        Unbounded => 1,    # OPTIONAL
      },
      Allow => {
        Hot => 1,          # OPTIONAL
        Hov => 1,          # OPTIONAL
      },    # OPTIONAL
      Avoid => {
        Areas => [
          {
            Geometry => {
              BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
              Polygon     => [
                [
                  [ 1, ... ], ...           # min: 2, max: 2
                ],
                ...                         # min: 4
              ],    # min: 1, max: 1; OPTIONAL
              PolylinePolygon => [
                'MyPolylineRing', ...    # min: 1
              ],    # min: 1, max: 1; OPTIONAL
            },

          },
          ...
        ],    # max: 250; OPTIONAL
        CarShuttleTrains         => 1,    # OPTIONAL
        ControlledAccessHighways => 1,    # OPTIONAL
        DirtRoads                => 1,    # OPTIONAL
        Ferries                  => 1,    # OPTIONAL
        TollRoads                => 1,    # OPTIONAL
        TollTransponders         => 1,    # OPTIONAL
        TruckRoadTypes           => [
          'MyTruckRoadType', ...          # min: 1, max: 3
        ],    # min: 1, max: 12; OPTIONAL
        Tunnels        => 1,    # OPTIONAL
        UTurns         => 1,    # OPTIONAL
        ZoneCategories => [
          {
            Category => 'CongestionPricing'
            ,    # values: CongestionPricing, Environmental, Vignette; OPTIONAL
          },
          ...
        ],    # max: 3; OPTIONAL
      },    # OPTIONAL
      DepartNow     => 1,                                  # OPTIONAL
      DepartureTime => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
      Exclude       => {
        Countries => [
          'MyCountryCode', ...                             # min: 2, max: 3
        ],    # min: 1, max: 100

      },    # OPTIONAL
      Key                => 'MyApiKey',        # OPTIONAL
      OptimizeRoutingFor => 'FastestRoute',    # OPTIONAL
      Traffic            => {
        FlowEventThresholdOverride => 1,       # max: 4294967295; OPTIONAL
        Usage                      => 'IgnoreTrafficData'
        ,    # values: IgnoreTrafficData, UseTrafficData; OPTIONAL
      },    # OPTIONAL
      TravelMode        => 'Car',    # OPTIONAL
      TravelModeOptions => {
        Car => {
          LicensePlate => {
            LastCharacter =>
              'MyRouteMatrixVehicleLicensePlateLastCharacterString'
            ,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed  => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        Scooter => {
          LicensePlate => {
            LastCharacter =>
              'MyRouteMatrixVehicleLicensePlateLastCharacterString'
            ,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed  => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        Truck => {
          AxleCount       => 1,    # min: 2, max: 255; OPTIONAL
          GrossWeight     => 1,    # max: 4294967295; OPTIONAL
          HazardousCargos => [
            'Combustible',
            ... # values: Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
          ],    # max: 11; OPTIONAL
          Height       => 1,    # max: 5000; OPTIONAL
          KpraLength   => 1,    # max: 4294967295; OPTIONAL
          Length       => 1,    # max: 30000; OPTIONAL
          LicensePlate => {
            LastCharacter =>
              'MyRouteMatrixVehicleLicensePlateLastCharacterString'
            ,                   # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed        => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy       => 1,    # min: 1; OPTIONAL
          PayloadCapacity => 1,    # max: 4294967295; OPTIONAL
          Trailer         => {
            TrailerCount => 1,     # max: 255; OPTIONAL
          },    # OPTIONAL
          TruckType =>
            'LightTruck', # values: LightTruck, StraightTruck, Tractor; OPTIONAL
          TunnelRestrictionCode =>
            'MyTunnelRestrictionCode',    # min: 1, max: 1; OPTIONAL
          WeightPerAxle      => 1,        # max: 4294967295; OPTIONAL
          WeightPerAxleGroup => {
            Quad   => 1,                  # max: 4294967295; OPTIONAL
            Quint  => 1,                  # max: 4294967295; OPTIONAL
            Single => 1,                  # max: 4294967295; OPTIONAL
            Tandem => 1,                  # max: 4294967295; OPTIONAL
            Triple => 1,                  # max: 4294967295; OPTIONAL
          },    # OPTIONAL
          Width => 1,    # max: 5000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ErrorCount      = $CalculateRouteMatrixResponse->ErrorCount;
    my $PricingBucket   = $CalculateRouteMatrixResponse->PricingBucket;
    my $RouteMatrix     = $CalculateRouteMatrixResponse->RouteMatrix;
    my $RoutingBoundary = $CalculateRouteMatrixResponse->RoutingBoundary;

    # Returns a L<Paws::GeoRoutes::CalculateRouteMatrixResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes/CalculateRouteMatrix>

=head1 ATTRIBUTES


=head2 Allow => L<Paws::GeoRoutes::RouteMatrixAllowOptions>

Features that are allowed while calculating a route.



=head2 Avoid => L<Paws::GeoRoutes::RouteMatrixAvoidanceOptions>

Features that are avoided while calculating a route. Avoidance is on a
best-case basis. If an avoidance can't be satisfied for a particular
case, it violates the avoidance and the returned response produces a
notice for the violation.



=head2 DepartNow => Bool

Uses the current time as the time of departure.



=head2 DepartureTime => Str

Time of departure from thr origin.

Time format:C<YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>



=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::GeoRoutes::RouteMatrixDestination>]

List of destinations for the route.

Route calculations are billed for each origin and destination pair. If
you use a large matrix of origins and destinations, your costs will
increase accordingly. See Amazon Location's pricing page
(https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`)
for more information.



=head2 Exclude => L<Paws::GeoRoutes::RouteMatrixExclusionOptions>

Features to be strictly excluded while calculating the route.



=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 OptimizeRoutingFor => Str

Specifies the optimization criteria for calculating a route.

Default Value: C<FastestRoute>

Valid values are: C<"FastestRoute">, C<"ShortestRoute">

=head2 B<REQUIRED> Origins => ArrayRef[L<Paws::GeoRoutes::RouteMatrixOrigin>]

The position in longitude and latitude for the origin.

Route calculations are billed for each origin and destination pair.
Using a large amount of Origins in a request can lead you to incur
unexpected charges. See Amazon Location's pricing page
(https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`)
for more information.



=head2 B<REQUIRED> RoutingBoundary => L<Paws::GeoRoutes::RouteMatrixBoundary>

Boundary within which the matrix is to be calculated. All data, origins
and destinations outside the boundary are considered invalid.

When request routing boundary was set as AutoCircle, the response
routing boundary will return Circle derived from the AutoCircle
settings.



=head2 Traffic => L<Paws::GeoRoutes::RouteMatrixTrafficOptions>

Traffic related options.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Pedestrian">, C<"Scooter">, C<"Truck">

=head2 TravelModeOptions => L<Paws::GeoRoutes::RouteMatrixTravelModeOptions>

Travel mode related options for the provided travel mode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CalculateRouteMatrix in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

