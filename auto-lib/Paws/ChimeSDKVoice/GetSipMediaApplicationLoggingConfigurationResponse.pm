
package Paws::ChimeSDKVoice::GetSipMediaApplicationLoggingConfigurationResponse;
  use Moose;
  has SipMediaApplicationLoggingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationLoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetSipMediaApplicationLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationLoggingConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationLoggingConfiguration>

The actual logging configuration.


=head2 _request_id => Str


=cut

