
package Paws::ChimeSDKVoice::PutVoiceConnectorLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::ChimeSDKVoice::LoggingConfiguration>

The updated logging configuration.


=head2 _request_id => Str


=cut

