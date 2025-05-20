
package Paws::IoTManagedIntegrations::GetManagedThingCapabilitiesResponse;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Str');
  has CapabilityReport => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::CapabilityReport');
  has ManagedThingId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingCapabilitiesResponse

=head1 ATTRIBUTES


=head2 Capabilities => Str

The capabilities of the device such as light bulb.


=head2 CapabilityReport => L<Paws::IoTManagedIntegrations::CapabilityReport>

A report of the capabilities for the managed thing.


=head2 ManagedThingId => Str

The id of the device.


=head2 _request_id => Str


=cut

