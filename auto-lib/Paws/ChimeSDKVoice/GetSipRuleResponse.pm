
package Paws::ChimeSDKVoice::GetSipRuleResponse;
  use Moose;
  has SipRule => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetSipRuleResponse

=head1 ATTRIBUTES


=head2 SipRule => L<Paws::ChimeSDKVoice::SipRule>

The SIP rule details.


=head2 _request_id => Str


=cut

