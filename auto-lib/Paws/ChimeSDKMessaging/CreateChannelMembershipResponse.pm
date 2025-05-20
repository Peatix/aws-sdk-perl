
package Paws::ChimeSDKMessaging::CreateChannelMembershipResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Member => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::Identity');
  has SubChannelId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::CreateChannelMembershipResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 Member => L<Paws::ChimeSDKMessaging::Identity>

The ARN and metadata of the member being added.


=head2 SubChannelId => Str

The ID of the SubChannel in the response.


=head2 _request_id => Str


=cut

