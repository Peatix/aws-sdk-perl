
package Paws::ChimeSDKMessaging::GetChannelMessageResponse;
  use Moose;
  has ChannelMessage => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetChannelMessageResponse

=head1 ATTRIBUTES


=head2 ChannelMessage => L<Paws::ChimeSDKMessaging::ChannelMessage>

The details of and content in the message.


=head2 _request_id => Str


=cut

