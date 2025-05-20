
package Paws::ChimeSDKMessaging::UpdateChannelFlowResponse;
  use Moose;
  has ChannelFlowArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::UpdateChannelFlowResponse

=head1 ATTRIBUTES


=head2 ChannelFlowArn => Str

The ARN of the channel flow.


=head2 _request_id => Str


=cut

