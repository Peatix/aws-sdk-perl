
package Paws::IoTFleetWise::ListDecoderManifestSignalsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SignalDecoders => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::SignalDecoder]', traits => ['NameInRequest'], request_name => 'signalDecoders' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListDecoderManifestSignalsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 SignalDecoders => ArrayRef[L<Paws::IoTFleetWise::SignalDecoder>]

Information about a list of signals to decode.


=head2 _request_id => Str


=cut

1;