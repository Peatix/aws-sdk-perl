
package Paws::ChimeSDKVoice::GetSipMediaApplicationAlexaSkillConfigurationResponse;
  use Moose;
  has SipMediaApplicationAlexaSkillConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationAlexaSkillConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetSipMediaApplicationAlexaSkillConfigurationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationAlexaSkillConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationAlexaSkillConfiguration>

Returns the Alexa Skill configuration.


=head2 _request_id => Str


=cut

