
package Paws::ChimeSDKMessaging::DescribeChannelResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::Channel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::ChimeSDKMessaging::Channel>

The channel details.


=head2 _request_id => Str


=cut

