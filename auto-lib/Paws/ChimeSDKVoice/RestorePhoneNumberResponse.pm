
package Paws::ChimeSDKVoice::RestorePhoneNumberResponse;
  use Moose;
  has PhoneNumber => (is => 'ro', isa => 'Paws::ChimeSDKVoice::PhoneNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::RestorePhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumber => L<Paws::ChimeSDKVoice::PhoneNumber>

The restored phone number.


=head2 _request_id => Str


=cut

