
package Paws::ChimeSDKVoice::ListVoiceConnectorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceConnectors => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceConnector]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListVoiceConnectorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 VoiceConnectors => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnector>]

The details of the Voice Connectors.


=head2 _request_id => Str


=cut

