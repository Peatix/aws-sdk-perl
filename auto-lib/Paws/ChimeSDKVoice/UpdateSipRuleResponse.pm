
package Paws::ChimeSDKVoice::UpdateSipRuleResponse;
  use Moose;
  has SipRule => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateSipRuleResponse

=head1 ATTRIBUTES


=head2 SipRule => L<Paws::ChimeSDKVoice::SipRule>

The updated SIP rule details.


=head2 _request_id => Str


=cut

