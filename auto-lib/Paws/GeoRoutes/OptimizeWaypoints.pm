
package Paws::GeoRoutes::OptimizeWaypoints;
  use Moose;
  has Avoid => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationAvoidanceOptions');
  has Clustering => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationClusteringOptions');
  has DepartureTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'ArrayRef[Num]');
  has DestinationOptions => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationDestinationOptions');
  has Driver => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationDriverOptions');
  has Exclude => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationExclusionOptions');
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has OptimizeSequencingFor => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has OriginOptions => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationOriginOptions');
  has Traffic => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationTrafficOptions');
  has TravelMode => (is => 'ro', isa => 'Str');
  has TravelModeOptions => (is => 'ro', isa => 'Paws::GeoRoutes::WaypointOptimizationTravelModeOptions');
  has Waypoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::WaypointOptimizationWaypoint]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OptimizeWaypoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/optimize-waypoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoRoutes::OptimizeWaypointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::OptimizeWaypoints - Arguments for method OptimizeWaypoints on L<Paws::GeoRoutes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OptimizeWaypoints on the
L<Amazon Location Service Routes V2|Paws::GeoRoutes> service. Use the attributes of this class
as arguments to method OptimizeWaypoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OptimizeWaypoints.

=head1 SYNOPSIS

    my $geo-routes = Paws->service('GeoRoutes');
    my $OptimizeWaypointsResponse = $geo -routes->OptimizeWaypoints(
      Origin => [ 1, ... ],
      Avoid  => {
        Areas => [
          {
            Geometry => {
              BoundingBox => [ 1, ... ],    # min: 4, max: 4; OPTIONAL
            },

          },
          ...
        ],    # max: 20; OPTIONAL
        CarShuttleTrains         => 1,    # OPTIONAL
        ControlledAccessHighways => 1,    # OPTIONAL
        DirtRoads                => 1,    # OPTIONAL
        Ferries                  => 1,    # OPTIONAL
        TollRoads                => 1,    # OPTIONAL
        Tunnels                  => 1,    # OPTIONAL
        UTurns                   => 1,    # OPTIONAL
      },    # OPTIONAL
      Clustering => {
        Algorithm =>
          'DrivingDistance',    # values: DrivingDistance, TopologySegment
        DrivingDistanceOptions => {
          DrivingDistance => 1,    # max: 4294967295

        },    # OPTIONAL
      },    # OPTIONAL
      DepartureTime      => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
      Destination        => [ 1, ... ],                         # OPTIONAL
      DestinationOptions => {
        AccessHours => {
          From => {
            DayOfWeek => 'Monday'
            , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
            TimeOfDay => 'MyTimeOfDay',

          },
          To => {
            DayOfWeek => 'Monday'
            , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
            TimeOfDay => 'MyTimeOfDay',

          },

        },    # OPTIONAL
        AppointmentTime => 'MyTimestampWithTimezoneOffset',
        Heading         => 1,                               # max: 360; OPTIONAL
        Id              => 'MyWaypointId',    # min: 1, max: 100; OPTIONAL
        ServiceDuration => 1,                 # max: 4294967295; OPTIONAL
        SideOfStreet    => {
          Position => [ 1, ... ],             # min: 2, max: 2
          UseWith  =>
            'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Driver => {
        RestCycles => {
          LongCycle => {
            RestDuration => 1,    # max: 4294967295; OPTIONAL
            WorkDuration => 1,    # max: 4294967295; OPTIONAL

          },
          ShortCycle => {
            RestDuration => 1,    # max: 4294967295; OPTIONAL
            WorkDuration => 1,    # max: 4294967295; OPTIONAL

          },

        },    # OPTIONAL
        RestProfile => {
          Profile =>
            'MyWaypointOptimizationRestProfileProfileString',   # min: 2, max: 2

        },    # OPTIONAL
        TreatServiceTimeAs => 'Rest',    # values: Rest, Work; OPTIONAL
      },    # OPTIONAL
      Exclude => {
        Countries => [
          'MyCountryCode', ...    # min: 2, max: 3
        ],    # min: 1, max: 100

      },    # OPTIONAL
      Key                   => 'MyApiKey',        # OPTIONAL
      OptimizeSequencingFor => 'FastestRoute',    # OPTIONAL
      OriginOptions         => {
        Id => 'MyWaypointId',                     # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Traffic => {
        Usage => 'IgnoreTrafficData'
        ,    # values: IgnoreTrafficData, UseTrafficData; OPTIONAL
      },    # OPTIONAL
      TravelMode        => 'Car',    # OPTIONAL
      TravelModeOptions => {
        Pedestrian => {
          Speed => 1,                # min: 1.8, max: 7.2; OPTIONAL
        },    # OPTIONAL
        Truck => {
          GrossWeight     => 1,    # max: 4294967295; OPTIONAL
          HazardousCargos => [
            'Combustible',
            ... # values: Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
          ],    # OPTIONAL
          Height  => 1,    # max: 5000; OPTIONAL
          Length  => 1,    # max: 30000; OPTIONAL
          Trailer => {
            TrailerCount => 1,    # max: 255; OPTIONAL
          },    # OPTIONAL
          TruckType =>
            'StraightTruck',    # values: StraightTruck, Tractor; OPTIONAL
          TunnelRestrictionCode =>
            'MyTunnelRestrictionCode',    # min: 1, max: 1; OPTIONAL
          WeightPerAxle => 1,             # max: 4294967295; OPTIONAL
          Width         => 1,             # max: 5000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Waypoints => [
        {
          Position    => [ 1, ... ],    # min: 2, max: 2
          AccessHours => {
            From => {
              DayOfWeek => 'Monday'
              , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
              TimeOfDay => 'MyTimeOfDay',

            },
            To => {
              DayOfWeek => 'Monday'
              , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
              TimeOfDay => 'MyTimeOfDay',

            },

          },    # OPTIONAL
          AppointmentTime => 'MyTimestampWithTimezoneOffset',
          Before          => [ 1, ... ],                        # OPTIONAL
          Heading         => 1,                 # max: 360; OPTIONAL
          Id              => 'MyWaypointId',    # min: 1, max: 100; OPTIONAL
          ServiceDuration => 1,                 # max: 4294967295; OPTIONAL
          SideOfStreet    => {
            Position => [ 1, ... ],             # min: 2, max: 2
            UseWith  =>
              'AnyStreet',    # values: AnyStreet, DividedStreetOnly; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Connections        = $OptimizeWaypointsResponse->Connections;
    my $Distance           = $OptimizeWaypointsResponse->Distance;
    my $Duration           = $OptimizeWaypointsResponse->Duration;
    my $ImpedingWaypoints  = $OptimizeWaypointsResponse->ImpedingWaypoints;
    my $OptimizedWaypoints = $OptimizeWaypointsResponse->OptimizedWaypoints;
    my $PricingBucket      = $OptimizeWaypointsResponse->PricingBucket;
    my $TimeBreakdown      = $OptimizeWaypointsResponse->TimeBreakdown;

    # Returns a L<Paws::GeoRoutes::OptimizeWaypointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes/OptimizeWaypoints>

=head1 ATTRIBUTES


=head2 Avoid => L<Paws::GeoRoutes::WaypointOptimizationAvoidanceOptions>

Features that are avoided. Avoidance is on a best-case basis. If an
avoidance can't be satisfied for a particular case, this setting is
ignored.



=head2 Clustering => L<Paws::GeoRoutes::WaypointOptimizationClusteringOptions>

Clustering allows you to specify how nearby waypoints can be clustered
to improve the optimized sequence.



=head2 DepartureTime => Str

Departure time from the waypoint.

Time format:C<YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm>

Examples:

C<2020-04-22T17:57:24Z>

C<2020-04-22T17:57:24+02:00>



=head2 Destination => ArrayRef[Num]

The final position for the route in the World Geodetic System (WGS 84)
format: C<[longitude, latitude]>.



=head2 DestinationOptions => L<Paws::GeoRoutes::WaypointOptimizationDestinationOptions>

Destination related options.



=head2 Driver => L<Paws::GeoRoutes::WaypointOptimizationDriverOptions>

Driver related options.



=head2 Exclude => L<Paws::GeoRoutes::WaypointOptimizationExclusionOptions>

Features to be strictly excluded while calculating the route.



=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 OptimizeSequencingFor => Str

Specifies the optimization criteria for the calculated sequence.

Default Value: C<FastestRoute>.

Valid values are: C<"FastestRoute">, C<"ShortestRoute">

=head2 B<REQUIRED> Origin => ArrayRef[Num]

The start position for the route.



=head2 OriginOptions => L<Paws::GeoRoutes::WaypointOptimizationOriginOptions>

Origin related options.



=head2 Traffic => L<Paws::GeoRoutes::WaypointOptimizationTrafficOptions>

Traffic-related options.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Pedestrian">, C<"Scooter">, C<"Truck">

=head2 TravelModeOptions => L<Paws::GeoRoutes::WaypointOptimizationTravelModeOptions>

Travel mode related options for the provided travel mode.



=head2 Waypoints => ArrayRef[L<Paws::GeoRoutes::WaypointOptimizationWaypoint>]

List of waypoints between the C<Origin> and C<Destination>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OptimizeWaypoints in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

