
package Paws::LocationService::ForecastGeofenceEventsResponse;
  use Moose;
  has DistanceUnit => (is => 'ro', isa => 'Str', required => 1);
  has ForecastedEvents => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::ForecastedEvent]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has SpeedUnit => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ForecastGeofenceEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistanceUnit => Str

The distance unit for the forecasted events.

Valid values are: C<"Kilometers">, C<"Miles">
=head2 B<REQUIRED> ForecastedEvents => ArrayRef[L<Paws::LocationService::ForecastedEvent>]

The list of forecasted events.


=head2 NextToken => Str

The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.


=head2 B<REQUIRED> SpeedUnit => Str

The speed unit for the forecasted events.

Valid values are: C<"KilometersPerHour">, C<"MilesPerHour">
=head2 _request_id => Str


=cut

