
package Paws::IoTManagedIntegrations::PutHubConfigurationResponse;
  use Moose;
  has HubTokenTimerExpirySettingInSeconds => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::PutHubConfigurationResponse

=head1 ATTRIBUTES


=head2 HubTokenTimerExpirySettingInSeconds => Int

A user-defined integer value that represents the hub token timer expiry
setting in seconds.


=head2 _request_id => Str


=cut

