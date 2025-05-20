
package Paws::IoTManagedIntegrations::GetRuntimeLogConfigurationResponse;
  use Moose;
  has ManagedThingId => (is => 'ro', isa => 'Str');
  has RuntimeLogConfigurations => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::RuntimeLogConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetRuntimeLogConfigurationResponse

=head1 ATTRIBUTES


=head2 ManagedThingId => Str

The id for a managed thing.


=head2 RuntimeLogConfigurations => L<Paws::IoTManagedIntegrations::RuntimeLogConfigurations>

The runtime log configuration for a managed thing.


=head2 _request_id => Str


=cut

