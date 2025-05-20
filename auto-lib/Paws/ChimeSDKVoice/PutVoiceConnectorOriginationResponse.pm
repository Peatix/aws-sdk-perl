
package Paws::ChimeSDKVoice::PutVoiceConnectorOriginationResponse;
  use Moose;
  has Origination => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Origination');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorOriginationResponse

=head1 ATTRIBUTES


=head2 Origination => L<Paws::ChimeSDKVoice::Origination>

The updated origination settings.


=head2 _request_id => Str


=cut

