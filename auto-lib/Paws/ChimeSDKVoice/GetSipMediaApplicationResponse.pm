
package Paws::ChimeSDKVoice::GetSipMediaApplicationResponse;
  use Moose;
  has SipMediaApplication => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplication');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetSipMediaApplicationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplication => L<Paws::ChimeSDKVoice::SipMediaApplication>

The details of the SIP media application.


=head2 _request_id => Str


=cut

