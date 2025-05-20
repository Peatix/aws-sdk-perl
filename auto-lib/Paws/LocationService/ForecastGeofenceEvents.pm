
package Paws::LocationService::ForecastGeofenceEvents;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has DeviceState => (is => 'ro', isa => 'Paws::LocationService::ForecastGeofenceEventsDeviceState', required => 1);
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SpeedUnit => (is => 'ro', isa => 'Str');
  has TimeHorizonMinutes => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ForecastGeofenceEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/forecast-geofence-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::ForecastGeofenceEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ForecastGeofenceEvents - Arguments for method ForecastGeofenceEvents on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ForecastGeofenceEvents on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method ForecastGeofenceEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ForecastGeofenceEvents.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $ForecastGeofenceEventsResponse = $geo->ForecastGeofenceEvents(
      CollectionName => 'MyResourceName',
      DeviceState    => {
        Position => [ 1, ... ],    # min: 2, max: 2
        Speed    => 1,             # OPTIONAL
      },
      DistanceUnit       => 'Kilometers',           # OPTIONAL
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyLargeToken',         # OPTIONAL
      SpeedUnit          => 'KilometersPerHour',    # OPTIONAL
      TimeHorizonMinutes => 1,                      # OPTIONAL
    );

    # Results:
    my $DistanceUnit     = $ForecastGeofenceEventsResponse->DistanceUnit;
    my $ForecastedEvents = $ForecastGeofenceEventsResponse->ForecastedEvents;
    my $NextToken        = $ForecastGeofenceEventsResponse->NextToken;
    my $SpeedUnit        = $ForecastGeofenceEventsResponse->SpeedUnit;

    # Returns a L<Paws::LocationService::ForecastGeofenceEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/ForecastGeofenceEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection.



=head2 B<REQUIRED> DeviceState => L<Paws::LocationService::ForecastGeofenceEventsDeviceState>

The device's state, including current position and speed.



=head2 DistanceUnit => Str

The distance unit used for the C<NearestDistance> property returned in
a forecasted event. The measurement system must match for
C<DistanceUnit> and C<SpeedUnit>; if C<Kilometers> is specified for
C<DistanceUnit>, then C<SpeedUnit> must be C<KilometersPerHour>.

Default Value: C<Kilometers>

Valid values are: C<"Kilometers">, C<"Miles">

=head2 MaxResults => Int

An optional limit for the number of resources returned in a single
call.

Default value: C<20>



=head2 NextToken => Str

The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.

Default value: C<null>



=head2 SpeedUnit => Str

The speed unit for the device captured by the device state. The
measurement system must match for C<DistanceUnit> and C<SpeedUnit>; if
C<Kilometers> is specified for C<DistanceUnit>, then C<SpeedUnit> must
be C<KilometersPerHour>.

Default Value: C<KilometersPerHour>.

Valid values are: C<"KilometersPerHour">, C<"MilesPerHour">

=head2 TimeHorizonMinutes => Num

Specifies the time horizon in minutes for the forecasted events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ForecastGeofenceEvents in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

