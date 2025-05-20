
package Paws::LocationService::UpdateTracker;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBridgeEnabled => (is => 'ro', isa => 'Bool');
  has KmsKeyEnableGeospatialQueries => (is => 'ro', isa => 'Bool');
  has PositionFiltering => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTracker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdateTrackerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateTracker - Arguments for method UpdateTracker on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTracker on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdateTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTracker.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdateTrackerResponse = $geo->UpdateTracker(
      TrackerName                   => 'MyResourceName',
      Description                   => 'MyResourceDescription',    # OPTIONAL
      EventBridgeEnabled            => 1,                          # OPTIONAL
      KmsKeyEnableGeospatialQueries => 1,                          # OPTIONAL
      PositionFiltering             => 'TimeBased',                # OPTIONAL
      PricingPlan                   => 'RequestBasedUsage',        # OPTIONAL
      PricingPlanDataSource         => 'MyString',                 # OPTIONAL
    );

    # Results:
    my $TrackerArn  = $UpdateTrackerResponse->TrackerArn;
    my $TrackerName = $UpdateTrackerResponse->TrackerName;
    my $UpdateTime  = $UpdateTrackerResponse->UpdateTime;

    # Returns a L<Paws::LocationService::UpdateTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdateTracker>

=head1 ATTRIBUTES


=head2 Description => Str

Updates the description for the tracker resource.



=head2 EventBridgeEnabled => Bool

Whether to enable position C<UPDATE> events from this tracker to be
sent to EventBridge.

You do not need enable this feature to get C<ENTER> and C<EXIT> events
for geofences with this tracker. Those events are always sent to
EventBridge.



=head2 KmsKeyEnableGeospatialQueries => Bool

Enables C<GeospatialQueries> for a tracker that uses a Amazon Web
Services KMS customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html).

This parameter is only used if you are using a KMS customer managed
key.



=head2 PositionFiltering => Str

Updates the position filtering for the tracker resource.

Valid values:

=over

=item *

C<TimeBased> - Location updates are evaluated against linked geofence
collections, but not every location update is stored. If your update
frequency is more often than 30 seconds, only one update per 30 seconds
is stored for each unique device ID.

=item *

C<DistanceBased> - If the device has moved less than 30 m (98.4 ft),
location updates are ignored. Location updates within this distance are
neither evaluated against linked geofence collections, nor stored. This
helps control costs by reducing the number of geofence evaluations and
historical device positions to paginate through. Distance-based
filtering can also reduce the effects of GPS noise when displaying
device trajectories on a map.

=item *

C<AccuracyBased> - If the device has moved less than the measured
accuracy, location updates are ignored. For example, if two consecutive
updates from a device have a horizontal accuracy of 5 m and 10 m, the
second update is ignored if the device has moved less than 15 m.
Ignored location updates are neither evaluated against linked geofence
collections, nor stored. This helps educe the effects of GPS noise when
displaying device trajectories on a map, and can help control costs by
reducing the number of geofence evaluations.

=back


Valid values are: C<"TimeBased">, C<"DistanceBased">, C<"AccuracyBased">

=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 PricingPlanDataSource => Str

This parameter is no longer used.



=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTracker in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

