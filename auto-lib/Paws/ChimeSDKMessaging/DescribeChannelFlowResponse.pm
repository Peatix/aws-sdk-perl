
package Paws::ChimeSDKMessaging::DescribeChannelFlowResponse;
  use Moose;
  has ChannelFlow => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelFlow');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelFlowResponse

=head1 ATTRIBUTES


=head2 ChannelFlow => L<Paws::ChimeSDKMessaging::ChannelFlow>

The channel flow details.


=head2 _request_id => Str


=cut

