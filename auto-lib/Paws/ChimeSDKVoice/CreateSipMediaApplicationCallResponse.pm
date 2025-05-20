
package Paws::ChimeSDKVoice::CreateSipMediaApplicationCallResponse;
  use Moose;
  has SipMediaApplicationCall => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationCall');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateSipMediaApplicationCallResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationCall => L<Paws::ChimeSDKVoice::SipMediaApplicationCall>

The actual call.


=head2 _request_id => Str


=cut

