
package Paws::ChimeSDKVoice::GetVoiceConnectorEmergencyCallingConfigurationResponse;
  use Moose;
  has EmergencyCallingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::EmergencyCallingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorEmergencyCallingConfigurationResponse

=head1 ATTRIBUTES


=head2 EmergencyCallingConfiguration => L<Paws::ChimeSDKVoice::EmergencyCallingConfiguration>

The details of the emergency calling configuration.


=head2 _request_id => Str


=cut

