
package Paws::GeoRoutes::SnapToRoads;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has SnappedGeometryFormat => (is => 'ro', isa => 'Str');
  has SnapRadius => (is => 'ro', isa => 'Int');
  has TracePoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RoadSnapTracePoint]', required => 1);
  has TravelMode => (is => 'ro', isa => 'Str');
  has TravelModeOptions => (is => 'ro', isa => 'Paws::GeoRoutes::RoadSnapTravelModeOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SnapToRoads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snap-to-roads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GeoRoutes::SnapToRoadsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::SnapToRoads - Arguments for method SnapToRoads on L<Paws::GeoRoutes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SnapToRoads on the
L<Amazon Location Service Routes V2|Paws::GeoRoutes> service. Use the attributes of this class
as arguments to method SnapToRoads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SnapToRoads.

=head1 SYNOPSIS

    my $geo-routes = Paws->service('GeoRoutes');
    my $SnapToRoadsResponse = $geo -routes->SnapToRoads(
      TracePoints => [
        {
          Position  => [ 1, ... ],                         # min: 2, max: 2
          Heading   => 1,                                  # max: 360; OPTIONAL
          Speed     => 1,                                  # OPTIONAL
          Timestamp => 'MyTimestampWithTimezoneOffset',    # OPTIONAL
        },
        ...
      ],
      Key                   => 'MyApiKey',            # OPTIONAL
      SnapRadius            => 1,                     # OPTIONAL
      SnappedGeometryFormat => 'FlexiblePolyline',    # OPTIONAL
      TravelMode            => 'Car',                 # OPTIONAL
      TravelModeOptions     => {
        Truck => {
          GrossWeight     => 1,    # max: 4294967295; OPTIONAL
          HazardousCargos => [
            'Combustible',
            ... # values: Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
          ],    # max: 11; OPTIONAL
          Height  => 1,    # max: 5000; OPTIONAL
          Length  => 1,    # max: 30000; OPTIONAL
          Trailer => {
            TrailerCount => 1,    # max: 255; OPTIONAL
          },    # OPTIONAL
          TunnelRestrictionCode =>
            'MyTunnelRestrictionCode',    # min: 1, max: 1; OPTIONAL
          Width => 1,                     # max: 5000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Notices               = $SnapToRoadsResponse->Notices;
    my $PricingBucket         = $SnapToRoadsResponse->PricingBucket;
    my $SnappedGeometry       = $SnapToRoadsResponse->SnappedGeometry;
    my $SnappedGeometryFormat = $SnapToRoadsResponse->SnappedGeometryFormat;
    my $SnappedTracePoints    = $SnapToRoadsResponse->SnappedTracePoints;

    # Returns a L<Paws::GeoRoutes::SnapToRoadsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-routes/SnapToRoads>

=head1 ATTRIBUTES


=head2 Key => Str

Optional: The API key to be used for authorization. Either an API key
or valid SigV4 signature must be provided when making a request.



=head2 SnappedGeometryFormat => Str

Chooses what the returned SnappedGeometry format should be.

Default Value: C<FlexiblePolyline>

Valid values are: C<"FlexiblePolyline">, C<"Simple">

=head2 SnapRadius => Int

The radius around the provided tracepoint that is considered for
snapping.

B<Unit>: C<meters>

Default value: C<300>



=head2 B<REQUIRED> TracePoints => ArrayRef[L<Paws::GeoRoutes::RoadSnapTracePoint>]

List of trace points to be snapped onto the road network.



=head2 TravelMode => Str

Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.

Default Value: C<Car>

Valid values are: C<"Car">, C<"Pedestrian">, C<"Scooter">, C<"Truck">

=head2 TravelModeOptions => L<Paws::GeoRoutes::RoadSnapTravelModeOptions>

Travel mode related options for the provided travel mode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SnapToRoads in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

