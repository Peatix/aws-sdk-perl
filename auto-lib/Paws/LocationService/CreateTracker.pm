
package Paws::LocationService::CreateTracker;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBridgeEnabled => (is => 'ro', isa => 'Bool');
  has KmsKeyEnableGeospatialQueries => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PositionFiltering => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTracker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateTrackerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateTracker - Arguments for method CreateTracker on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTracker on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTracker.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateTrackerResponse = $geo->CreateTracker(
      TrackerName                   => 'MyResourceName',
      Description                   => 'MyResourceDescription',    # OPTIONAL
      EventBridgeEnabled            => 1,                          # OPTIONAL
      KmsKeyEnableGeospatialQueries => 1,                          # OPTIONAL
      KmsKeyId                      => 'MyKmsKeyId',               # OPTIONAL
      PositionFiltering             => 'TimeBased',                # OPTIONAL
      PricingPlan                   => 'RequestBasedUsage',        # OPTIONAL
      PricingPlanDataSource         => 'MyString',                 # OPTIONAL
      Tags                          => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreateTime  = $CreateTrackerResponse->CreateTime;
    my $TrackerArn  = $CreateTrackerResponse->TrackerArn;
    my $TrackerName = $CreateTrackerResponse->TrackerName;

    # Returns a L<Paws::LocationService::CreateTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateTracker>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the tracker resource.



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

If you wish to encrypt your data using your own KMS customer managed
key, then the Bounding Polygon Queries feature will be disabled by
default. This is because by using this feature, a representation of
your device positions will not be encrypted using the your KMS managed
key. The exact device position, however; is still encrypted using your
managed key.

You can choose to opt-in to the Bounding Polygon Quseries feature. This
is done by setting the C<KmsKeyEnableGeospatialQueries> parameter to
true when creating or updating a Tracker.



=head2 KmsKeyId => Str

A key identifier for an Amazon Web Services KMS customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html).
Enter a key ID, key ARN, alias name, or alias ARN.



=head2 PositionFiltering => Str

Specifies the position filtering for the tracker resource.

Valid values:

=over

=item *

C<TimeBased> - Location updates are evaluated against linked geofence
collections, but not every location update is stored. If your update
frequency is more often than 30 seconds, only one update per 30 seconds
is stored for each unique device ID.

=item *

C<DistanceBased> - If the device has moved less than 30 m (98.4 ft),
location updates are ignored. Location updates within this area are
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
collections, nor stored. This can reduce the effects of GPS noise when
displaying device trajectories on a map, and can help control your
costs by reducing the number of geofence evaluations.

=back

This field is optional. If not specified, the default value is
C<TimeBased>.

Valid values are: C<"TimeBased">, C<"DistanceBased">, C<"AccuracyBased">

=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 PricingPlanDataSource => Str

This parameter is no longer used.



=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the tracker resource. A tag is a key-value
pair helps manage, identify, search, and filter your resources by
labelling them.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource

=item *

Each resource tag must be unique with a maximum of one value.

=item *

Maximum key length: 128 Unicode characters in UTF-8

=item *

Maximum value length: 256 Unicode characters in UTF-8

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @.

=item *

Cannot use "aws:" as a prefix for a key.

=back




=head2 B<REQUIRED> TrackerName => Str

The name for the tracker resource.

Requirements:

=over

=item *

Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
periods (.), and underscores (_).

=item *

Must be a unique tracker resource name.

=item *

No spaces allowed. For example, C<ExampleTracker>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTracker in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

