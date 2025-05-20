
package Paws::ChimeSDKVoice::GetVoiceConnectorLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::ChimeSDKVoice::LoggingConfiguration>

The logging configuration details .


=head2 _request_id => Str


=cut

