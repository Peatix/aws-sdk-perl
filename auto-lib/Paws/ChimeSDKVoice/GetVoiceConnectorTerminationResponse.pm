
package Paws::ChimeSDKVoice::GetVoiceConnectorTerminationResponse;
  use Moose;
  has Termination => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Termination');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorTerminationResponse

=head1 ATTRIBUTES


=head2 Termination => L<Paws::ChimeSDKVoice::Termination>

The termination setting details.


=head2 _request_id => Str


=cut

