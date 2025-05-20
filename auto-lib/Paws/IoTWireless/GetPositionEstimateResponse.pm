
package Paws::IoTWireless::GetPositionEstimateResponse;
  use Moose;
  has GeoJsonPayload => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GeoJsonPayload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPositionEstimateResponse

=head1 ATTRIBUTES


=head2 GeoJsonPayload => Str

The position information of the resource, displayed as a JSON payload.
The payload is of type blob and uses the GeoJSON (https://geojson.org/)
format, which a format that's used to encode geographic data
structures. A sample payload contains the timestamp information, the
WGS84 coordinates of the location, and the accuracy and confidence
level. For more information and examples, see Resolve device location
(console)
(https://docs.aws.amazon.com/iot/latest/developerguide/location-resolve-console.html).


=head2 _request_id => Str


=cut

