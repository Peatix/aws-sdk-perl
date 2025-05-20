
package Paws::GeoRoutes::CalculateRoutes;
  use Moose;
  has Allow => (is => 'ro', isa => 'Paws::GeoRoutes::RouteAllowOptions');
  has ArrivalTime => (is => 'ro', isa => 'Str');
  has Avoid => (is => 'ro', isa => 'Paws::GeoRoutes::RouteAvoidanceOptions');
  has DepartNow => (is => 'ro', isa => 'Bool');
  has DepartureTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has DestinationOptions => (is => 'ro', isa => 'Paws::GeoRoutes::RouteDestinationOptions');
  has Driver => (is => 'ro', isa => 'Paws::GeoRoutes::RouteDriverOptions');
  has Exclude => (is => 'ro', isa => 'Paws::GeoRoutes::RouteExclusionOptions');
  has InstructionsMeasurementSystem => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has Languages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LegAdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LegGeometryFormat => (is => 'ro', isa => 'Str');
  has MaxAlternatives => (is => 'ro', isa => 'Int');
  has OptimizeRoutingFor => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has OriginOptions => (is => 'ro', isa => 'Paws::GeoRoutes::RouteOriginOptions');
  has SpanAdditionalFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tolls => (is => 'ro', isa => 'Paws::GeoRoutes::RouteTollOptions');
  has Traffic => (is => 'ro', isa => 'Paws::GeoRoutes::RouteTrafficOptions');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TravelModeOptions => (is => 'ro', isa => 'Paws::GeoRoutes::RouteTravelModeOptions');
  has TravelStepType => (is => 'ro', isa => 'Str');
  has Waypoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteWaypoint]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CalculateRoutes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoRoutes::CalculateRoutesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateRoutes - Arguments for method CalculateRoutes on L<Paws::GeoRoutes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CalculateRoutes on the
L<Amazon Location Service Routes V2|Paws::GeoRoutes> service. Use the attributes of this class
as arguments to method CalculateRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CalculateRoutes.

=head1 SYNOPSIS

    my $geo-routes = Paws->service('GeoRoutes');
    my $CalculateRoutesResponse = $geo -routes->CalculateRoutes(
      Destination => [ 1, ... ],
      Origin      => [ 1, ... ],
      Allow       => {
        Hot => 1,    # OPTIONAL
        Hov => 1,    # OPTIONAL
      },    # OPTIONAL
      ArrivalTime => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
      Avoid       => {
        Areas => [
          {
            Geometry => {
              BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
              Corridor    => {
                LineString => [
                  [ 1, ... ], ...           # min: 2, max: 2
                ],    # min: 2
                Radius => 1,

              },    # OPTIONAL
              Polygon => [
                [
                  [ 1, ... ], ...    # min: 2, max: 2
                ],
                ...                  # min: 4
              ],    # min: 1, max: 1; OPTIONAL
              PolylineCorridor => {
                Polyline => 'MyPolyline',    # min: 1
                Radius   => 1,

              },    # OPTIONAL
              PolylinePolygon => [
                'MyPolylineRing', ...    # min: 1
              ],    # min: 1, max: 1; OPTIONAL
            },
            Except => [
              {
                BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
                Corridor    => {
                  LineString => [
                    [ 1, ... ], ...           # min: 2, max: 2
                  ],    # min: 2
                  Radius => 1,

                },    # OPTIONAL
                Polygon => [
                  [
                    [ 1, ... ], ...    # min: 2, max: 2
                  ],
                  ...                  # min: 4
                ],    # min: 1, max: 1; OPTIONAL
                PolylineCorridor => {
                  Polyline => 'MyPolyline',    # min: 1
                  Radius   => 1,

                },    # OPTIONAL
                PolylinePolygon => [
                  'MyPolylineRing', ...    # min: 1
                ],    # min: 1, max: 1; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        CarShuttleTrains         => 1,    # OPTIONAL
        ControlledAccessHighways => 1,    # OPTIONAL
        DirtRoads                => 1,    # OPTIONAL
        Ferries                  => 1,    # OPTIONAL
        SeasonalClosure          => 1,    # OPTIONAL
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
            ,    # values: CongestionPricing, Environmental, Vignette

          },
          ...
        ],    # max: 3; OPTIONAL
      },    # OPTIONAL
      DepartNow          => 1,                                  # OPTIONAL
      DepartureTime      => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
      DestinationOptions => {
        AvoidActionsForDistance => 1,    # max: 2000; OPTIONAL
        AvoidUTurns             => 1,    # OPTIONAL
        Heading                 => 1,    # max: 360; OPTIONAL
        Matching                => {
          NameHint =>
            'MyRouteMatchingOptionsNameHintString',    # max: 100; OPTIONAL
          OnRoadThreshold => 1,    # max: 4294967295; OPTIONAL
          Radius          => 1,    # max: 4294967295; OPTIONAL
          Strategy        =>
            'MatchAny',   # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
        },    # OPTIONAL
        SideOfStreet => {
          Position => [ 1, ... ],    # min: 2, max: 2
          UseWith  =>
            'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
        },    # OPTIONAL
        StopDuration => 1,    # max: 4294967295; OPTIONAL
      },    # OPTIONAL
      Driver => {
        Schedule => [
          {
            DriveDuration => 1,    # max: 4294967295; OPTIONAL
            RestDuration  => 1,    # max: 4294967295; OPTIONAL

          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Exclude => {
        Countries => [
          'MyCountryCode', ...    # min: 2, max: 3
        ],    # min: 1, max: 100

      },    # OPTIONAL
      InstructionsMeasurementSystem => 'Metric',      # OPTIONAL
      Key                           => 'MyApiKey',    # OPTIONAL
      Languages                     => [
        'MyLanguageTag', ...                          # min: 2, max: 35
      ],    # OPTIONAL
      LegAdditionalFeatures => [
        'Elevation',
        ... # values: Elevation, Incidents, PassThroughWaypoints, Summary, Tolls, TravelStepInstructions, TruckRoadTypes, TypicalDuration, Zones
      ],    # OPTIONAL
      LegGeometryFormat  => 'FlexiblePolyline',    # OPTIONAL
      MaxAlternatives    => 1,                     # OPTIONAL
      OptimizeRoutingFor => 'FastestRoute',        # OPTIONAL
      OriginOptions      => {
        AvoidActionsForDistance => 1,              # max: 2000; OPTIONAL
        AvoidUTurns             => 1,              # OPTIONAL
        Heading                 => 1,              # max: 360; OPTIONAL
        Matching                => {
          NameHint =>
            'MyRouteMatchingOptionsNameHintString',    # max: 100; OPTIONAL
          OnRoadThreshold => 1,    # max: 4294967295; OPTIONAL
          Radius          => 1,    # max: 4294967295; OPTIONAL
          Strategy        =>
            'MatchAny',   # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
        },    # OPTIONAL
        SideOfStreet => {
          Position => [ 1, ... ],    # min: 2, max: 2
          UseWith  =>
            'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SpanAdditionalFeatures => [
        'BestCaseDuration',
        ... # values: BestCaseDuration, CarAccess, Country, Distance, Duration, DynamicSpeed, FunctionalClassification, Gates, Incidents, Names, Notices, PedestrianAccess, RailwayCrossings, Region, RoadAttributes, RouteNumbers, ScooterAccess, SpeedLimit, TollSystems, TruckAccess, TruckRoadTypes, TypicalDuration, Zones, Consumption
      ],    # OPTIONAL
      Tolls => {
        AllTransponders => 1,                   # OPTIONAL
        AllVignettes    => 1,                   # OPTIONAL
        Currency        => 'MyCurrencyCode',    # min: 3, max: 3; OPTIONAL
        EmissionType    => {
          Type             => 'MyString',
          Co2EmissionClass => 'MyString',
        },                                      # OPTIONAL
        VehicleCategory => 'Minibus',           # values: Minibus; OPTIONAL
      },    # OPTIONAL
      Traffic => {
        FlowEventThresholdOverride => 1,    # max: 4294967295; OPTIONAL
        Usage                      => 'IgnoreTrafficData'
        ,    # values: IgnoreTrafficData, UseTrafficData; OPTIONAL
      },    # OPTIONAL
      TravelMode        => 'Car',    # OPTIONAL
      TravelModeOptions => {
        Car => {
          EngineType => 'Electric'
          ,    # values: Electric, InternalCombustion, PluginHybrid; OPTIONAL
          LicensePlate => {
            LastCharacter => 'MyRouteVehicleLicensePlateLastCharacterString'
            ,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed  => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        Pedestrian => {
          Speed => 1,    # min: 1.8, max: 7.2; OPTIONAL
        },    # OPTIONAL
        Scooter => {
          EngineType => 'Electric'
          ,    # values: Electric, InternalCombustion, PluginHybrid; OPTIONAL
          LicensePlate => {
            LastCharacter => 'MyRouteVehicleLicensePlateLastCharacterString'
            ,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed  => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        Truck => {
          AxleCount  => 1,           # min: 2, max: 255; OPTIONAL
          EngineType => 'Electric'
          ,    # values: Electric, InternalCombustion, PluginHybrid; OPTIONAL
          GrossWeight     => 1,    # max: 4294967295; OPTIONAL
          HazardousCargos => [
            'Combustible',
            ... # values: Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
          ],    # max: 11; OPTIONAL
          Height               => 1,    # max: 5000; OPTIONAL
          HeightAboveFirstAxle => 1,    # max: 5000; OPTIONAL
          KpraLength           => 1,    # max: 4294967295; OPTIONAL
          Length               => 1,    # max: 30000; OPTIONAL
          LicensePlate         => {
            LastCharacter => 'MyRouteVehicleLicensePlateLastCharacterString'
            ,                           # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed        => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy       => 1,    # min: 1; OPTIONAL
          PayloadCapacity => 1,    # max: 4294967295; OPTIONAL
          TireCount       => 1,    # min: 1, max: 255; OPTIONAL
          Trailer         => {
            AxleCount    => 1,     # min: 1; OPTIONAL
            TrailerCount => 1,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          TruckType =>
            'LightTruck', # values: LightTruck, StraightTruck, Tractor; OPTIONAL
          TunnelRestrictionCode =>
            'MyRouteTruckOptionsTunnelRestrictionCodeString'
          ,                           # max: 20; OPTIONAL
          WeightPerAxle      => 1,    # max: 4294967295; OPTIONAL
          WeightPerAxleGroup => {
            Quad   => 1,              # max: 4294967295; OPTIONAL
            Quint  => 1,              # max: 4294967295; OPTIONAL
            Single => 1,              # max: 4294967295; OPTIONAL
            Tandem => 1,              # max: 4294967295; OPTIONAL
            Triple => 1,              # max: 4294967295; OPTIONAL
          },    # OPTIONAL
          Width => 1,    # max: 5000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TravelStepType => 'Default',    # OPTIONAL
      Waypoints      => [
        {
          Position                => [ 1, ... ],    # min: 2, max: 2
          AvoidActionsForDistance => 1,             # max: 2000; OPTIONAL
          AvoidUTurns             => 1,             # OPTIONAL
          Heading                 => 1,             # max: 360; OPTIONAL
          Matching                => {
            NameHint =>
              'MyRouteMatchingOptionsNameHintString',    # max: 100; OPTIONAL
            OnRoadThreshold => 1,    # max: 4294967295; OPTIONAL
            Radius          => 1,    # max: 4294967295; OPTIONAL
            Strategy        =>
              'MatchAny', # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
          },    # OPTIONAL
          PassThrough  => 1,    # OPTIONAL
          SideOfStreet => {
            Position => [ 1, ... ],    # min: 2, max: 2
            UseWith  =>
              'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
          },    # OPTIONAL
          StopDuration => 1,    # max: 4294967295; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LegGeometryFormat = $CalculateRoutesResponse->LegGeometryFormat;
    my $Notices           = $CalculateRoutesResponse->Notices;
    my $PricingBucket     = $CalculateRoutesResponse->PricingBucket;
    my $Routes            = $CalculateRoutesResponse->Routes;

    # Returns a L<Paws::GeoRoutes::CalculateRoutesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes/CalculateRoutes>

=head1 ATTRIBUTES


=head2 Allow => L<Paws::GeoRoutes::RouteAllowOptions>

Features that are allowed while calculating a route.



=head2 ArrivalTime => Str

Time of arrival at the destination.

Time format:C<YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>



=head2 Avoid => L<Paws::GeoRoutes::RouteAvoidanceOptions>

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



=head2 B<REQUIRED> Destination => ArrayRef[Num]

The final position for the route. In the World Geodetic System (WGS 84)
format: C<[longitude, latitude]>.



=head2 DestinationOptions => L<Paws::GeoRoutes::RouteDestinationOptions>

Destination related options.



=head2 Driver => L<Paws::GeoRoutes::RouteDriverOptions>

Driver related options.



=head2 Exclude => L<Paws::GeoRoutes::RouteExclusionOptions>

Features to be strictly excluded while calculating the route.



=head2 InstructionsMeasurementSystem => Str

Measurement system to be used for instructions within steps in the
response.

Valid values are: C<"Metric">, C<"Imperial">

=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 Languages => ArrayRef[Str|Undef]

List of languages for instructions within steps in the response.

Instructions in the requested language are returned only if they are
available.



=head2 LegAdditionalFeatures => ArrayRef[Str|Undef]

A list of optional additional parameters such as timezone that can be
requested for each result.

=over

=item *

C<Elevation>: Retrieves the elevation information for each location.

=item *

C<Incidents>: Provides information on traffic incidents along the
route.

=item *

C<PassThroughWaypoints>: Indicates waypoints that are passed through
without stopping.

=item *

C<Summary>: Returns a summary of the route, including distance and
duration.

=item *

C<Tolls>: Supplies toll cost information along the route.

=item *

C<TravelStepInstructions>: Provides step-by-step instructions for
travel along the route.

=item *

C<TruckRoadTypes>: Returns information about road types suitable for
trucks.

=item *

C<TypicalDuration>: Gives typical travel duration based on historical
data.

=item *

C<Zones>: Specifies the time zone information for each waypoint.

=back




=head2 LegGeometryFormat => Str

Specifies the format of the geometry returned for each leg of the
route. You can choose between two different geometry encoding formats.

C<FlexiblePolyline>: A compact and precise encoding format for the leg
geometry. For more information on the format, see the GitHub repository
for C<FlexiblePolyline>
(https://github.com/heremaps/flexible-polyline).

C<Simple>: A less compact encoding, which is easier to decode but may
be less precise and result in larger payloads.

Valid values are: C<"FlexiblePolyline">, C<"Simple">

=head2 MaxAlternatives => Int

Maximum number of alternative routes to be provided in the response, if
available.



=head2 OptimizeRoutingFor => Str

Specifies the optimization criteria for calculating a route.

Default Value: C<FastestRoute>

Valid values are: C<"FastestRoute">, C<"ShortestRoute">

=head2 B<REQUIRED> Origin => ArrayRef[Num]

The start position for the route.



=head2 OriginOptions => L<Paws::GeoRoutes::RouteOriginOptions>

Origin related options.



=head2 SpanAdditionalFeatures => ArrayRef[Str|Undef]

A list of optional features such as SpeedLimit that can be requested
for a Span. A span is a section of a Leg for which the requested
features have the same values.



=head2 Tolls => L<Paws::GeoRoutes::RouteTollOptions>

Toll related options.



=head2 Traffic => L<Paws::GeoRoutes::RouteTrafficOptions>

Traffic related options.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Pedestrian">, C<"Scooter">, C<"Truck">

=head2 TravelModeOptions => L<Paws::GeoRoutes::RouteTravelModeOptions>

Travel mode related options for the provided travel mode.



=head2 TravelStepType => Str

Type of step returned by the response. Default provides basic steps
intended for web based applications. TurnByTurn provides detailed
instructions with more granularity intended for a turn based navigation
system.

Valid values are: C<"Default">, C<"TurnByTurn">

=head2 Waypoints => ArrayRef[L<Paws::GeoRoutes::RouteWaypoint>]

List of waypoints between the Origin and Destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CalculateRoutes in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

