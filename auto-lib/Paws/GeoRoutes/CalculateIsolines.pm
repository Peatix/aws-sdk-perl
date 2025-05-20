
package Paws::GeoRoutes::CalculateIsolines;
  use Moose;
  has Allow => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineAllowOptions');
  has ArrivalTime => (is => 'ro', isa => 'Str');
  has Avoid => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineAvoidanceOptions');
  has DepartNow => (is => 'ro', isa => 'Bool');
  has DepartureTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'ArrayRef[Num]');
  has DestinationOptions => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineDestinationOptions');
  has IsolineGeometryFormat => (is => 'ro', isa => 'Str');
  has IsolineGranularity => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineGranularityOptions');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has OptimizeIsolineFor => (is => 'ro', isa => 'Str');
  has OptimizeRoutingFor => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'ArrayRef[Num]');
  has OriginOptions => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineOriginOptions');
  has Thresholds => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineThresholds', required => 1);
  has Traffic => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineTrafficOptions');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TravelModeOptions => (is => 'ro', isa => 'Paws::GeoRoutes::IsolineTravelModeOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CalculateIsolines');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/isolines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoRoutes::CalculateIsolinesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::CalculateIsolines - Arguments for method CalculateIsolines on L<Paws::GeoRoutes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CalculateIsolines on the
L<Amazon Location Service Routes V2|Paws::GeoRoutes> service. Use the attributes of this class
as arguments to method CalculateIsolines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CalculateIsolines.

=head1 SYNOPSIS

    my $geo-routes = Paws->service('GeoRoutes');
    my $CalculateIsolinesResponse = $geo -routes->CalculateIsolines(
      Thresholds => {
        Distance => [
          1, ...    # max: 300000
        ],    # min: 1, max: 5; OPTIONAL
        Time => [
          1, ...    # max: 10800
        ],    # min: 1, max: 5; OPTIONAL
      },
      Allow => {
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
            ,    # values: CongestionPricing, Environmental, Vignette; OPTIONAL
          },
          ...
        ],    # max: 3; OPTIONAL
      },    # OPTIONAL
      DepartNow          => 1,                                  # OPTIONAL
      DepartureTime      => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
      Destination        => [ 1, ... ],                         # OPTIONAL
      DestinationOptions => {
        AvoidActionsForDistance => 1,    # max: 4294967295; OPTIONAL
        Heading                 => 1,    # max: 360; OPTIONAL
        Matching                => {
          NameHint        => 'MySensitiveString',    # OPTIONAL
          OnRoadThreshold => 1,                      # max: 4294967295; OPTIONAL
          Radius          => 1,                      # max: 4294967295; OPTIONAL
          Strategy        =>
            'MatchAny',   # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
        },    # OPTIONAL
        SideOfStreet => {
          Position => [ 1, ... ],    # min: 2, max: 2
          UseWith  =>
            'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      IsolineGeometryFormat => 'FlexiblePolyline',    # OPTIONAL
      IsolineGranularity    => {
        MaxPoints     => 1,    # min: 31; OPTIONAL
        MaxResolution => 1,    # max: 4294967295; OPTIONAL
      },    # OPTIONAL
      Key                => 'MyApiKey',               # OPTIONAL
      OptimizeIsolineFor => 'AccurateCalculation',    # OPTIONAL
      OptimizeRoutingFor => 'FastestRoute',           # OPTIONAL
      Origin             => [ 1, ... ],               # OPTIONAL
      OriginOptions      => {
        AvoidActionsForDistance => 1,    # max: 4294967295; OPTIONAL
        Heading                 => 1,    # max: 360; OPTIONAL
        Matching                => {
          NameHint        => 'MySensitiveString',    # OPTIONAL
          OnRoadThreshold => 1,                      # max: 4294967295; OPTIONAL
          Radius          => 1,                      # max: 4294967295; OPTIONAL
          Strategy        =>
            'MatchAny',   # values: MatchAny, MatchMostSignificantRoad; OPTIONAL
        },    # OPTIONAL
        SideOfStreet => {
          Position => [ 1, ... ],    # min: 2, max: 2
          UseWith  =>
            'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
        },    # OPTIONAL
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
            LastCharacter => 'MyIsolineVehicleLicensePlateLastCharacterString'
            ,    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          MaxSpeed  => 1,    # min: 3.6, max: 252; OPTIONAL
          Occupancy => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        Scooter => {
          EngineType => 'Electric'
          ,    # values: Electric, InternalCombustion, PluginHybrid; OPTIONAL
          LicensePlate => {
            LastCharacter => 'MyIsolineVehicleLicensePlateLastCharacterString'
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
            LastCharacter => 'MyIsolineVehicleLicensePlateLastCharacterString'
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
    my $ArrivalTime   = $CalculateIsolinesResponse->ArrivalTime;
    my $DepartureTime = $CalculateIsolinesResponse->DepartureTime;
    my $IsolineGeometryFormat =
      $CalculateIsolinesResponse->IsolineGeometryFormat;
    my $Isolines           = $CalculateIsolinesResponse->Isolines;
    my $PricingBucket      = $CalculateIsolinesResponse->PricingBucket;
    my $SnappedDestination = $CalculateIsolinesResponse->SnappedDestination;
    my $SnappedOrigin      = $CalculateIsolinesResponse->SnappedOrigin;

    # Returns a L<Paws::GeoRoutes::CalculateIsolinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes/CalculateIsolines>

=head1 ATTRIBUTES


=head2 Allow => L<Paws::GeoRoutes::IsolineAllowOptions>

Features that are allowed while calculating an isoline.



=head2 ArrivalTime => Str

Time of arrival at the destination.

Time format: C<YYYY-MM-DDThh:mm:ss.sssZ |
YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>



=head2 Avoid => L<Paws::GeoRoutes::IsolineAvoidanceOptions>

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



=head2 Destination => ArrayRef[Num]

The final position for the route. In the World Geodetic System (WGS 84)
format: C<[longitude, latitude]>.



=head2 DestinationOptions => L<Paws::GeoRoutes::IsolineDestinationOptions>

Destination related options.



=head2 IsolineGeometryFormat => Str

The format of the returned IsolineGeometry.

Default Value:C<FlexiblePolyline>

Valid values are: C<"FlexiblePolyline">, C<"Simple">

=head2 IsolineGranularity => L<Paws::GeoRoutes::IsolineGranularityOptions>

Defines the granularity of the returned Isoline.



=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 OptimizeIsolineFor => Str

Specifies the optimization criteria for when calculating an isoline.
AccurateCalculation generates an isoline of higher granularity that is
more precise. FastCalculation generates an isoline faster by reducing
the granularity, and in turn the quality of the isoline.
BalancedCalculation generates an isoline by balancing between quality
and performance.

Default Value: C<BalancedCalculation>

Valid values are: C<"AccurateCalculation">, C<"BalancedCalculation">, C<"FastCalculation">

=head2 OptimizeRoutingFor => Str

Specifies the optimization criteria for calculating a route.

Default Value: C<FastestRoute>

Valid values are: C<"FastestRoute">, C<"ShortestRoute">

=head2 Origin => ArrayRef[Num]

The start position for the route.



=head2 OriginOptions => L<Paws::GeoRoutes::IsolineOriginOptions>

Origin related options.



=head2 B<REQUIRED> Thresholds => L<Paws::GeoRoutes::IsolineThresholds>

Threshold to be used for the isoline calculation. Up to 3 thresholds
per provided type can be requested.

You incur a calculation charge for each threshold. Using a large amount
of thresholds in a request can lead you to incur unexpected charges.
See Amazon Location's pricing page
(https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`)
for more information.



=head2 Traffic => L<Paws::GeoRoutes::IsolineTrafficOptions>

Traffic related options.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

The mode C<Scooter> also applies to motorcycles, set to C<Scooter> when
wanted to calculate options for motorcycles.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Pedestrian">, C<"Scooter">, C<"Truck">

=head2 TravelModeOptions => L<Paws::GeoRoutes::IsolineTravelModeOptions>

Travel mode related options for the provided travel mode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CalculateIsolines in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

