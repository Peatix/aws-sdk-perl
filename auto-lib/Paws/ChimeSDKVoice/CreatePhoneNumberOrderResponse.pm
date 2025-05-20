
package Paws::ChimeSDKVoice::CreatePhoneNumberOrderResponse;
  use Moose;
  has PhoneNumberOrder => (is => 'ro', isa => 'Paws::ChimeSDKVoice::PhoneNumberOrder');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreatePhoneNumberOrderResponse

=head1 ATTRIBUTES


=head2 PhoneNumberOrder => L<Paws::ChimeSDKVoice::PhoneNumberOrder>

The phone number order details.


=head2 _request_id => Str


=cut

