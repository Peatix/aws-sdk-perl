
package Paws::Rekognition::StartStreamProcessorResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartStreamProcessorResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

A unique identifier for the stream processing session.


=head2 _request_id => Str


=cut

1;