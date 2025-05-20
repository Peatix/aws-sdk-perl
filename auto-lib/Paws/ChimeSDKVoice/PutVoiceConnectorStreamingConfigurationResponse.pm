
package Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfigurationResponse;
  use Moose;
  has StreamingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::StreamingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfigurationResponse

=head1 ATTRIBUTES


=head2 StreamingConfiguration => L<Paws::ChimeSDKVoice::StreamingConfiguration>

The updated streaming settings.


=head2 _request_id => Str


=cut

