
package Paws::GameLiftStreams::CreateStreamSessionConnectionOutput;
  use Moose;
  has SignalResponse => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::CreateStreamSessionConnectionOutput

=head1 ATTRIBUTES


=head2 SignalResponse => Str

The WebRTC answer string that the stream server generates in response
to the C<SignalRequest>.


=head2 _request_id => Str


=cut

