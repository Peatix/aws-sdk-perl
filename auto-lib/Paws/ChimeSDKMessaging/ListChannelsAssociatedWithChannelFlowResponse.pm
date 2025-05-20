
package Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlowResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelAssociatedWithFlowSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlowResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelAssociatedWithFlowSummary>]

The information about each channel.


=head2 NextToken => Str

The token passed by previous API calls until all requested channels are
returned.


=head2 _request_id => Str


=cut

