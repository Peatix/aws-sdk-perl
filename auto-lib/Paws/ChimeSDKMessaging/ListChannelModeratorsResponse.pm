
package Paws::ChimeSDKMessaging::ListChannelModeratorsResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelModerators => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelModeratorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelModeratorsResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 ChannelModerators => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelModeratorSummary>]

The information about and names of each moderator.


=head2 NextToken => Str

The token passed by previous API calls until all requested moderators
are returned.


=head2 _request_id => Str


=cut

