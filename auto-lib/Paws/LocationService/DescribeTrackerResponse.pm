
package Paws::LocationService::DescribeTrackerResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has EventBridgeEnabled => (is => 'ro', isa => 'Bool');
  has KmsKeyEnableGeospatialQueries => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PositionFiltering => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has TrackerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeTrackerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the tracker resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> Description => Str

The optional description for the tracker resource.


=head2 EventBridgeEnabled => Bool

Whether C<UPDATE> events from this tracker in EventBridge are enabled.
If set to C<true> these events will be sent to EventBridge.


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
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html)
assigned to the Amazon Location resource.


=head2 PositionFiltering => Str

The position filtering method of the tracker resource.

Valid values are: C<"TimeBased">, C<"DistanceBased">, C<"AccuracyBased">
=head2 PricingPlan => Str

Always returns C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 PricingPlanDataSource => Str

No longer used. Always returns an empty string.


=head2 Tags => L<Paws::LocationService::TagMap>

The tags associated with the tracker resource.


=head2 B<REQUIRED> TrackerArn => Str

The Amazon Resource Name (ARN) for the tracker resource. Used when you
need to specify a resource across all Amazon Web Services.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:tracker/ExampleTracker>

=back



=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the tracker resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

