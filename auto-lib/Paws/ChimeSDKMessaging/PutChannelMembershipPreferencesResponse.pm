
package Paws::ChimeSDKMessaging::PutChannelMembershipPreferencesResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Member => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::Identity');
  has Preferences => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMembershipPreferences');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PutChannelMembershipPreferencesResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 Member => L<Paws::ChimeSDKMessaging::Identity>

The details of a user.


=head2 Preferences => L<Paws::ChimeSDKMessaging::ChannelMembershipPreferences>

The ARN and metadata of the member being added.


=head2 _request_id => Str


=cut

