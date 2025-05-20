
package Paws::IoTManagedIntegrations::StartDeviceDiscoveryResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has StartedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::StartDeviceDiscoveryResponse

=head1 ATTRIBUTES


=head2 Id => Str

The id of the device discovery job request.


=head2 StartedAt => Str

The timestamp value for the start time of the device discovery.


=head2 _request_id => Str


=cut

