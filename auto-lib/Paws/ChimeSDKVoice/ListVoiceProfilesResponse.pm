
package Paws::ChimeSDKVoice::ListVoiceProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceProfiles => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceProfileSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListVoiceProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next page of results.


=head2 VoiceProfiles => ArrayRef[L<Paws::ChimeSDKVoice::VoiceProfileSummary>]

The list of voice profiles.


=head2 _request_id => Str


=cut

