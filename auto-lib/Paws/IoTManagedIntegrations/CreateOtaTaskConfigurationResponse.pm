
package Paws::IoTManagedIntegrations::CreateOtaTaskConfigurationResponse;
  use Moose;
  has TaskConfigurationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateOtaTaskConfigurationResponse

=head1 ATTRIBUTES


=head2 TaskConfigurationId => Str

The identifier of the over-the-air (OTA) task configuration.


=head2 _request_id => Str


=cut

