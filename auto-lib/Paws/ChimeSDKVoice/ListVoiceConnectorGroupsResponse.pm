
package Paws::ChimeSDKVoice::ListVoiceConnectorGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceConnectorGroups => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceConnectorGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListVoiceConnectorGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 VoiceConnectorGroups => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnectorGroup>]

The details of the Voice Connector groups.


=head2 _request_id => Str


=cut

