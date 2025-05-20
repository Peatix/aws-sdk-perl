
package Paws::ChimeSDKMessaging::DescribeChannelModeratorResponse;
  use Moose;
  has ChannelModerator => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelModerator');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelModeratorResponse

=head1 ATTRIBUTES


=head2 ChannelModerator => L<Paws::ChimeSDKMessaging::ChannelModerator>

The details of the channel moderator.


=head2 _request_id => Str


=cut

