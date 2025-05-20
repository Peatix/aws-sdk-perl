
package Paws::BedrockRuntime::ConverseStreamResponse;
  use Moose;
  has Stream => (is => 'ro', isa => 'Paws::BedrockRuntime::ConverseStreamOutput', traits => ['NameInRequest'], request_name => 'stream');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Stream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ConverseStreamResponse

=head1 ATTRIBUTES


=head2 Stream => L<Paws::BedrockRuntime::ConverseStreamOutput>

The output stream that the model generated.


=head2 _request_id => Str


=cut

