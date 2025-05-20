
package Paws::IoTManagedIntegrations::RegisterCustomEndpointResponse;
  use Moose;
  has EndpointAddress => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::RegisterCustomEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointAddress => Str

The IoT managed integrations dedicated, custom endpoint for the device
to route traffic through.


=head2 _request_id => Str


=cut

