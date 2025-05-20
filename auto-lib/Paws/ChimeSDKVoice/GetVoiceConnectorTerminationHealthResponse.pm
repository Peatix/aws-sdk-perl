
package Paws::ChimeSDKVoice::GetVoiceConnectorTerminationHealthResponse;
  use Moose;
  has TerminationHealth => (is => 'ro', isa => 'Paws::ChimeSDKVoice::TerminationHealth');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorTerminationHealthResponse

=head1 ATTRIBUTES


=head2 TerminationHealth => L<Paws::ChimeSDKVoice::TerminationHealth>

The termination health details.


=head2 _request_id => Str


=cut

