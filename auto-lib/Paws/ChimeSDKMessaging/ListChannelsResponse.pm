
package Paws::ChimeSDKMessaging::ListChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelSummary>]

The information about each channel.


=head2 NextToken => Str

The token returned from previous API requests until the number of
channels is reached.


=head2 _request_id => Str


=cut

