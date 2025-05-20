
package Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamOutput', traits => ['NameInRequest'], request_name => 'body', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamOutput>

Streaming response from the model in the format specified by the
C<BidirectionalOutputPayloadPart> header.


=head2 _request_id => Str


=cut

