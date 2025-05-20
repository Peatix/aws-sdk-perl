
package Paws::ChimeSDKVoice::PutVoiceConnectorTerminationResponse;
  use Moose;
  has Termination => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Termination');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorTerminationResponse

=head1 ATTRIBUTES


=head2 Termination => L<Paws::ChimeSDKVoice::Termination>

The updated termination settings.


=head2 _request_id => Str


=cut

