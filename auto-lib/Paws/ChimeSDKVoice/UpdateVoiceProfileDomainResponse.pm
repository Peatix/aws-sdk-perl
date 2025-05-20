
package Paws::ChimeSDKVoice::UpdateVoiceProfileDomainResponse;
  use Moose;
  has VoiceProfileDomain => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceProfileDomain');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateVoiceProfileDomainResponse

=head1 ATTRIBUTES


=head2 VoiceProfileDomain => L<Paws::ChimeSDKVoice::VoiceProfileDomain>

The updated details of the voice profile domain.


=head2 _request_id => Str


=cut

