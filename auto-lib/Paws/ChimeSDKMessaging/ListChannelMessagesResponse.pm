
package Paws::ChimeSDKMessaging::ListChannelMessagesResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelMessages => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelMessageSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubChannelId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelMessagesResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel containing the requested messages.


=head2 ChannelMessages => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelMessageSummary>]

The information about, and content of, each requested message.


=head2 NextToken => Str

The token passed by previous API calls until all requested messages are
returned.


=head2 SubChannelId => Str

The ID of the SubChannel in the response.


=head2 _request_id => Str


=cut

