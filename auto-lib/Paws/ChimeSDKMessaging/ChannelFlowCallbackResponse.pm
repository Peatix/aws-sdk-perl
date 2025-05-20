
package Paws::ChimeSDKMessaging::ChannelFlowCallbackResponse;
  use Moose;
  has CallbackId => (is => 'ro', isa => 'Str');
  has ChannelArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ChannelFlowCallbackResponse

=head1 ATTRIBUTES


=head2 CallbackId => Str

The call back ID passed in the request.


=head2 ChannelArn => Str

The ARN of the channel.


=head2 _request_id => Str


=cut

