
package Paws::ChimeSDKMessaging::CreateChannelModeratorResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelModerator => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::Identity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::CreateChannelModeratorResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 ChannelModerator => L<Paws::ChimeSDKMessaging::Identity>

The ARNs of the channel and the moderator.


=head2 _request_id => Str


=cut

