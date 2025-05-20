
package Paws::LocationService::UpdateGeofenceCollectionResponse;
  use Moose;
  has CollectionArn => (is => 'ro', isa => 'Str', required => 1);
  has CollectionName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateGeofenceCollectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionArn => Str

The Amazon Resource Name (ARN) of the updated geofence collection. Used
to specify a resource across Amazon Web Services.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection>

=back



=head2 B<REQUIRED> CollectionName => Str

The name of the updated geofence collection.


=head2 B<REQUIRED> UpdateTime => Str

The time when the geofence collection was last updated in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 _request_id => Str


=cut

