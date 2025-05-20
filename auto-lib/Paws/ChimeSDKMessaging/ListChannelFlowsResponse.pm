
package Paws::ChimeSDKMessaging::ListChannelFlowsResponse;
  use Moose;
  has ChannelFlows => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelFlowSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelFlowsResponse

=head1 ATTRIBUTES


=head2 ChannelFlows => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelFlowSummary>]

The information about each channel flow.


=head2 NextToken => Str

The token passed by previous API calls until all requested channels are
returned.


=head2 _request_id => Str


=cut

