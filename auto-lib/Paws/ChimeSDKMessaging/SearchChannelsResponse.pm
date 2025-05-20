
package Paws::ChimeSDKMessaging::SearchChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::SearchChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelSummary>]

A list of the channels in the request.


=head2 NextToken => Str

The token returned from previous API responses until the number of
channels is reached.


=head2 _request_id => Str


=cut

