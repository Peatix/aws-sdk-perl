
package Paws::IoTManagedIntegrations::GetHubConfigurationResponse;
  use Moose;
  has HubTokenTimerExpirySettingInSeconds => (is => 'ro', isa => 'Int');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetHubConfigurationResponse

=head1 ATTRIBUTES


=head2 HubTokenTimerExpirySettingInSeconds => Int

A user-defined integer value that represents the hub token timer expiry
setting in seconds.


=head2 UpdatedAt => Str

The timestamp value of when the hub configuration was updated.


=head2 _request_id => Str


=cut

