
package Paws::CleanRoomsML::CreateMLInputChannelResponse;
  use Moose;
  has MlInputChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mlInputChannelArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateMLInputChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MlInputChannelArn => Str

The Amazon Resource Name (ARN) of the ML input channel.


=head2 _request_id => Str


=cut

