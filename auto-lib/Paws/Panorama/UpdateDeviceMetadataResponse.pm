
package Paws::Panorama::UpdateDeviceMetadataResponse;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::UpdateDeviceMetadataResponse

=head1 ATTRIBUTES


=head2 DeviceId => Str

The device's ID.


=head2 _request_id => Str


=cut

