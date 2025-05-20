
package Paws::LocationService::DescribeGeofenceCollectionResponse;
  use Moose;
  has CollectionArn => (is => 'ro', isa => 'Str', required => 1);
  has CollectionName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has GeofenceCount => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeGeofenceCollectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionArn => Str

The Amazon Resource Name (ARN) for the geofence collection resource.
Used when you need to specify a resource across all Amazon Web
Services.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection>

=back



=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection.


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 B<REQUIRED> Description => Str

The optional description for the geofence collection.


=head2 GeofenceCount => Int

The number of geofences in the geofence collection.


=head2 KmsKeyId => Str

A key identifier for an Amazon Web Services KMS customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html)
assigned to the Amazon Location resource


=head2 PricingPlan => Str

No longer used. Always returns C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 PricingPlanDataSource => Str

No longer used. Always returns an empty string.


=head2 Tags => L<Paws::LocationService::TagMap>

Displays the key, value pairs of tags associated with this resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the geofence collection was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 _request_id => Str


=cut

