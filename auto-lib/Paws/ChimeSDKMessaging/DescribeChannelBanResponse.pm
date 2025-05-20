
package Paws::ChimeSDKMessaging::DescribeChannelBanResponse;
  use Moose;
  has ChannelBan => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelBan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelBanResponse

=head1 ATTRIBUTES


=head2 ChannelBan => L<Paws::ChimeSDKMessaging::ChannelBan>

The details of the ban.


=head2 _request_id => Str


=cut

