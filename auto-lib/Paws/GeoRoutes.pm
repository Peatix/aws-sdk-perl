package Paws::GeoRoutes;
  use Moose;
  sub service { 'geo-routes' }
  sub signing_name { 'geo-routes' }
  sub version { '2020-11-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CalculateIsolines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoRoutes::CalculateIsolines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CalculateRouteMatrix {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoRoutes::CalculateRouteMatrix', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CalculateRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoRoutes::CalculateRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OptimizeWaypoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoRoutes::OptimizeWaypoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SnapToRoads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GeoRoutes::SnapToRoads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CalculateIsolines CalculateRouteMatrix CalculateRoutes OptimizeWaypoints SnapToRoads / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes - Perl Interface to AWS Amazon Location Service Routes V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GeoRoutes');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

With the Amazon Location Routes API you can calculate routes and
estimate travel time based on up-to-date road network and live traffic
information.

Calculate optimal travel routes and estimate travel times using
up-to-date road network and traffic data. Key features include:

=over

=item *

Point-to-point routing with estimated travel time, distance, and
turn-by-turn directions

=item *

Multi-point route optimization to minimize travel time or distance

=item *

Route matrices for efficient multi-destination planning

=item *

Isoline calculations to determine reachable areas within specified time
or distance thresholds

=item *

Map-matching to align GPS traces with the road network

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19>


=head1 METHODS

=head2 CalculateIsolines

=over

=item Thresholds => L<Paws::GeoRoutes::IsolineThresholds>

=item [Allow => L<Paws::GeoRoutes::IsolineAllowOptions>]

=item [ArrivalTime => Str]

=item [Avoid => L<Paws::GeoRoutes::IsolineAvoidanceOptions>]

=item [DepartNow => Bool]

=item [DepartureTime => Str]

=item [Destination => ArrayRef[Num]]

=item [DestinationOptions => L<Paws::GeoRoutes::IsolineDestinationOptions>]

=item [IsolineGeometryFormat => Str]

=item [IsolineGranularity => L<Paws::GeoRoutes::IsolineGranularityOptions>]

=item [Key => Str]

=item [OptimizeIsolineFor => Str]

=item [OptimizeRoutingFor => Str]

=item [Origin => ArrayRef[Num]]

=item [OriginOptions => L<Paws::GeoRoutes::IsolineOriginOptions>]

=item [Traffic => L<Paws::GeoRoutes::IsolineTrafficOptions>]

=item [TravelMode => Str]

=item [TravelModeOptions => L<Paws::GeoRoutes::IsolineTravelModeOptions>]


=back

Each argument is described in detail in: L<Paws::GeoRoutes::CalculateIsolines>

Returns: a L<Paws::GeoRoutes::CalculateIsolinesResponse> instance

Use the C<CalculateIsolines> action to find service areas that can be
reached in a given threshold of time, distance.


=head2 CalculateRouteMatrix

=over

=item Destinations => ArrayRef[L<Paws::GeoRoutes::RouteMatrixDestination>]

=item Origins => ArrayRef[L<Paws::GeoRoutes::RouteMatrixOrigin>]

=item RoutingBoundary => L<Paws::GeoRoutes::RouteMatrixBoundary>

=item [Allow => L<Paws::GeoRoutes::RouteMatrixAllowOptions>]

=item [Avoid => L<Paws::GeoRoutes::RouteMatrixAvoidanceOptions>]

=item [DepartNow => Bool]

=item [DepartureTime => Str]

=item [Exclude => L<Paws::GeoRoutes::RouteMatrixExclusionOptions>]

=item [Key => Str]

=item [OptimizeRoutingFor => Str]

=item [Traffic => L<Paws::GeoRoutes::RouteMatrixTrafficOptions>]

=item [TravelMode => Str]

=item [TravelModeOptions => L<Paws::GeoRoutes::RouteMatrixTravelModeOptions>]


=back

Each argument is described in detail in: L<Paws::GeoRoutes::CalculateRouteMatrix>

Returns: a L<Paws::GeoRoutes::CalculateRouteMatrixResponse> instance

Use C<CalculateRouteMatrix> to compute results for all pairs of Origins
to Destinations. Each row corresponds to one entry in Origins. Each
entry in the row corresponds to the route from that entry in Origins to
an entry in Destinations positions.


=head2 CalculateRoutes

=over

=item Destination => ArrayRef[Num]

=item Origin => ArrayRef[Num]

=item [Allow => L<Paws::GeoRoutes::RouteAllowOptions>]

=item [ArrivalTime => Str]

=item [Avoid => L<Paws::GeoRoutes::RouteAvoidanceOptions>]

=item [DepartNow => Bool]

=item [DepartureTime => Str]

=item [DestinationOptions => L<Paws::GeoRoutes::RouteDestinationOptions>]

=item [Driver => L<Paws::GeoRoutes::RouteDriverOptions>]

=item [Exclude => L<Paws::GeoRoutes::RouteExclusionOptions>]

=item [InstructionsMeasurementSystem => Str]

=item [Key => Str]

=item [Languages => ArrayRef[Str|Undef]]

=item [LegAdditionalFeatures => ArrayRef[Str|Undef]]

=item [LegGeometryFormat => Str]

=item [MaxAlternatives => Int]

=item [OptimizeRoutingFor => Str]

=item [OriginOptions => L<Paws::GeoRoutes::RouteOriginOptions>]

=item [SpanAdditionalFeatures => ArrayRef[Str|Undef]]

=item [Tolls => L<Paws::GeoRoutes::RouteTollOptions>]

=item [Traffic => L<Paws::GeoRoutes::RouteTrafficOptions>]

=item [TravelMode => Str]

=item [TravelModeOptions => L<Paws::GeoRoutes::RouteTravelModeOptions>]

=item [TravelStepType => Str]

=item [Waypoints => ArrayRef[L<Paws::GeoRoutes::RouteWaypoint>]]


=back

Each argument is described in detail in: L<Paws::GeoRoutes::CalculateRoutes>

Returns: a L<Paws::GeoRoutes::CalculateRoutesResponse> instance

C<CalculateRoutes> computes routes given the following required
parameters: C<Origin> and C<Destination>.


=head2 OptimizeWaypoints

=over

=item Origin => ArrayRef[Num]

=item [Avoid => L<Paws::GeoRoutes::WaypointOptimizationAvoidanceOptions>]

=item [Clustering => L<Paws::GeoRoutes::WaypointOptimizationClusteringOptions>]

=item [DepartureTime => Str]

=item [Destination => ArrayRef[Num]]

=item [DestinationOptions => L<Paws::GeoRoutes::WaypointOptimizationDestinationOptions>]

=item [Driver => L<Paws::GeoRoutes::WaypointOptimizationDriverOptions>]

=item [Exclude => L<Paws::GeoRoutes::WaypointOptimizationExclusionOptions>]

=item [Key => Str]

=item [OptimizeSequencingFor => Str]

=item [OriginOptions => L<Paws::GeoRoutes::WaypointOptimizationOriginOptions>]

=item [Traffic => L<Paws::GeoRoutes::WaypointOptimizationTrafficOptions>]

=item [TravelMode => Str]

=item [TravelModeOptions => L<Paws::GeoRoutes::WaypointOptimizationTravelModeOptions>]

=item [Waypoints => ArrayRef[L<Paws::GeoRoutes::WaypointOptimizationWaypoint>]]


=back

Each argument is described in detail in: L<Paws::GeoRoutes::OptimizeWaypoints>

Returns: a L<Paws::GeoRoutes::OptimizeWaypointsResponse> instance

C<OptimizeWaypoints> calculates the optimal order to travel between a
set of waypoints to minimize either the travel time or the distance
travelled during the journey, based on road network restrictions and
the traffic pattern data.


=head2 SnapToRoads

=over

=item TracePoints => ArrayRef[L<Paws::GeoRoutes::RoadSnapTracePoint>]

=item [Key => Str]

=item [SnappedGeometryFormat => Str]

=item [SnapRadius => Int]

=item [TravelMode => Str]

=item [TravelModeOptions => L<Paws::GeoRoutes::RoadSnapTravelModeOptions>]


=back

Each argument is described in detail in: L<Paws::GeoRoutes::SnapToRoads>

Returns: a L<Paws::GeoRoutes::SnapToRoadsResponse> instance

C<SnapToRoads> matches GPS trace to roads most likely traveled on.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

