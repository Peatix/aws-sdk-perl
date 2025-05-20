
package Paws::ChimeSDKVoice::CreateSipMediaApplicationResponse;
  use Moose;
  has SipMediaApplication => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplication');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateSipMediaApplicationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplication => L<Paws::ChimeSDKVoice::SipMediaApplication>

The SIP media application details.


=head2 _request_id => Str


=cut

