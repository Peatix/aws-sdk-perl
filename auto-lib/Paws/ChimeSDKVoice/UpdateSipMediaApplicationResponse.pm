
package Paws::ChimeSDKVoice::UpdateSipMediaApplicationResponse;
  use Moose;
  has SipMediaApplication => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplication');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateSipMediaApplicationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplication => L<Paws::ChimeSDKVoice::SipMediaApplication>

The updated SIP media applicationE<rsquo>s details.


=head2 _request_id => Str


=cut

