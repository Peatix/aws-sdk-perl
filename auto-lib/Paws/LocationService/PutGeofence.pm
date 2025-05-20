
package Paws::LocationService::PutGeofence;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has GeofenceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GeofenceId', required => 1);
  has GeofenceProperties => (is => 'ro', isa => 'Paws::LocationService::PropertyMap');
  has Geometry => (is => 'ro', isa => 'Paws::LocationService::GeofenceGeometry', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGeofence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::PutGeofenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::PutGeofence - Arguments for method PutGeofence on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutGeofence on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method PutGeofence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutGeofence.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $PutGeofenceResponse = $geo->PutGeofence(
      CollectionName => 'MyResourceName',
      GeofenceId     => 'MyId',
      Geometry       => {
        Circle => {
          Center => [ 1, ... ],    # min: 2, max: 2
          Radius => 1,

        },    # OPTIONAL
        Geobuf  => 'BlobBase64EncodedGeobuf',    # max: 600000; OPTIONAL
        Polygon => [
          [
            [ 1, ... ], ...                      # min: 2, max: 2
          ],
          ...                                    # min: 4
        ],    # min: 1; OPTIONAL
      },
      GeofenceProperties => {
        'MyPropertyMapKeyString' => 'MyPropertyMapValueString'
        ,     # key: min: 1, max: 20, value: min: 1, max: 40
      },    # OPTIONAL
    );

    # Results:
    my $CreateTime = $PutGeofenceResponse->CreateTime;
    my $GeofenceId = $PutGeofenceResponse->GeofenceId;
    my $UpdateTime = $PutGeofenceResponse->UpdateTime;

    # Returns a L<Paws::LocationService::PutGeofenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/PutGeofence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The geofence collection to store the geofence in.



=head2 B<REQUIRED> GeofenceId => Str

An identifier for the geofence. For example, C<ExampleGeofence-1>.



=head2 GeofenceProperties => L<Paws::LocationService::PropertyMap>

Associates one of more properties with the geofence. A property is a
key-value pair stored with the geofence and added to any geofence event
triggered with that geofence.

Format: C<"key" : "value">



=head2 B<REQUIRED> Geometry => L<Paws::LocationService::GeofenceGeometry>

Contains the details to specify the position of the geofence. Can be a
polygon, a circle or a polygon encoded in Geobuf format. Including
multiple selections will return a validation error.

The geofence polygon
(https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html)
format supports a maximum of 1,000 vertices. The Geofence Geobuf
(https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html)
format supports a maximum of 100,000 vertices.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutGeofence in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

