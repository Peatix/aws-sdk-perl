
package Paws::ChimeSDKMessaging::DescribeChannelMembershipResponse;
  use Moose;
  has ChannelMembership => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMembership');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelMembershipResponse

=head1 ATTRIBUTES


=head2 ChannelMembership => L<Paws::ChimeSDKMessaging::ChannelMembership>

The details of the membership.


=head2 _request_id => Str


=cut

