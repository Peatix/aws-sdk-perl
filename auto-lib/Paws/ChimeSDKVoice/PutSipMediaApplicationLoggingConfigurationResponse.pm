
package Paws::ChimeSDKVoice::PutSipMediaApplicationLoggingConfigurationResponse;
  use Moose;
  has SipMediaApplicationLoggingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationLoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutSipMediaApplicationLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationLoggingConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationLoggingConfiguration>

The updated logging configuration for the specified SIP media
application.


=head2 _request_id => Str


=cut

