
package Paws::BedrockRuntime::InvokeModelResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has PerformanceConfigLatency => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Bedrock-PerformanceConfig-Latency');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::InvokeModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Inference response from the model in the format specified in the
C<contentType> header. To see the format and content of the request and
response bodies for different models, refer to Inference parameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).


=head2 B<REQUIRED> ContentType => Str

The MIME type of the inference result.


=head2 PerformanceConfigLatency => Str

Model performance settings for the request.

Valid values are: C<"standard">, C<"optimized">
=head2 _request_id => Str


=cut

