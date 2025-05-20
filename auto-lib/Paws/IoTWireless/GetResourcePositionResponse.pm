
package Paws::IoTWireless::GetResourcePositionResponse;
  use Moose;
  has GeoJsonPayload => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GeoJsonPayload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourcePositionResponse

=head1 ATTRIBUTES


=head2 GeoJsonPayload => Str

The position information of the resource, displayed as a JSON payload.
The payload uses the GeoJSON format, which a format that's used to
encode geographic data structures. For more information, see GeoJSON
(https://geojson.org/).


=head2 _request_id => Str


=cut

