
package Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorResponse;
  use Moose;
  has PhoneNumberErrors => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::PhoneNumberError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::DisassociatePhoneNumbersFromVoiceConnectorResponse

=head1 ATTRIBUTES


=head2 PhoneNumberErrors => ArrayRef[L<Paws::ChimeSDKVoice::PhoneNumberError>]

If the action fails for one or more of the phone numbers in the
request, a list of the phone numbers is returned, along with error
codes and error messages.


=head2 _request_id => Str


=cut

