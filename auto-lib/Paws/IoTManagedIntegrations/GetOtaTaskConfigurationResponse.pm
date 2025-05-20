
package Paws::IoTManagedIntegrations::GetOtaTaskConfigurationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PushConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::PushConfig');
  has TaskConfigurationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetOtaTaskConfigurationResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp value of when the over-the-air (OTA) task configuration
was created at.


=head2 Description => Str

A description of the over-the-air (OTA) task configuration.


=head2 Name => Str

The name of the over-the-air (OTA) task configuration.


=head2 PushConfig => L<Paws::IoTManagedIntegrations::PushConfig>

Describes the type of configuration used for the over-the-air (OTA)
task.


=head2 TaskConfigurationId => Str

The over-the-air (OTA) task configuration id.


=head2 _request_id => Str


=cut

