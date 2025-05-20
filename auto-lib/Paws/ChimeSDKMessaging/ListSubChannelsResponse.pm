
package Paws::ChimeSDKMessaging::ListSubChannelsResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubChannels => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::SubChannelSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListSubChannelsResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of elastic channel.


=head2 NextToken => Str

The token passed by previous API calls until all requested sub-channels
are returned.


=head2 SubChannels => ArrayRef[L<Paws::ChimeSDKMessaging::SubChannelSummary>]

The information about each sub-channel.


=head2 _request_id => Str


=cut

