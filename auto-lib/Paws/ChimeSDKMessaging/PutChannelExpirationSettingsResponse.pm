
package Paws::ChimeSDKMessaging::PutChannelExpirationSettingsResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ExpirationSettings => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ExpirationSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PutChannelExpirationSettingsResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The channel ARN.


=head2 ExpirationSettings => L<Paws::ChimeSDKMessaging::ExpirationSettings>

Settings that control the interval after which a channel is deleted.


=head2 _request_id => Str


=cut

