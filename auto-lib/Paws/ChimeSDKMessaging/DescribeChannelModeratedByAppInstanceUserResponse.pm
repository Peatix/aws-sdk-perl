
package Paws::ChimeSDKMessaging::DescribeChannelModeratedByAppInstanceUserResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelModeratedByAppInstanceUserSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelModeratedByAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::ChimeSDKMessaging::ChannelModeratedByAppInstanceUserSummary>

The moderated channel.


=head2 _request_id => Str


=cut

