
package Paws::ChimeSDKVoice::UpdateSipMediaApplicationCallResponse;
  use Moose;
  has SipMediaApplicationCall => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationCall');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateSipMediaApplicationCallResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationCall => L<Paws::ChimeSDKVoice::SipMediaApplicationCall>

A C<Call> instance for a SIP media application.


=head2 _request_id => Str


=cut

