
package Paws::ChimeSDKMessaging::SendChannelMessageResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMessageStatusStructure');
  has SubChannelId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::SendChannelMessageResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 MessageId => Str

The ID string assigned to each message.


=head2 Status => L<Paws::ChimeSDKMessaging::ChannelMessageStatusStructure>

The status of the channel message.


=head2 SubChannelId => Str

The ID of the SubChannel in the response.


=head2 _request_id => Str


=cut

