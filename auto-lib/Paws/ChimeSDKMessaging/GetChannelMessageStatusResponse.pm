
package Paws::ChimeSDKMessaging::GetChannelMessageStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::ChannelMessageStatusStructure');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetChannelMessageStatusResponse

=head1 ATTRIBUTES


=head2 Status => L<Paws::ChimeSDKMessaging::ChannelMessageStatusStructure>

The message status and details.


=head2 _request_id => Str


=cut

