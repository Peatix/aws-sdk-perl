
package Paws::SageMakerRuntime::InvokeEndpointOutput;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has ClosedSessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Closed-Session-Id');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has CustomAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Custom-Attributes');
  has InvokedProductionVariant => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-Amzn-Invoked-Production-Variant');
  has NewSessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-New-Session-Id');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Includes the inference provided by the model.

For information about the format of the response body, see Common Data
Formats-Inference
(https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).

If the explainer is activated, the body includes the explanations
provided by the model. For more information, see the B<Response
section> under Invoke the Endpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-invoke-endpoint.html#clarify-online-explainability-response)
in the Developer Guide.


=head2 ClosedSessionId => Str

If you closed a stateful session with your request, the ID of that
session.


=head2 ContentType => Str

The MIME type of the inference returned from the model container.


=head2 CustomAttributes => Str

Provides additional information in the response about the inference
returned by a model hosted at an Amazon SageMaker endpoint. The
information is an opaque value that is forwarded verbatim. You could
use this value, for example, to return an ID received in the
C<CustomAttributes> header of a request or other metadata that a
service endpoint was programmed to produce. The value must consist of
no more than 1024 visible US-ASCII characters as specified in Section
3.3.6. Field Value Components
(https://tools.ietf.org/html/rfc7230#section-3.2.6) of the Hypertext
Transfer Protocol (HTTP/1.1). If the customer wants the custom
attribute returned, the model must set the custom attribute to be
included on the way back.

The code in your model is responsible for setting or updating any
custom attributes in the response. If your code does not set this value
in the response, an empty value is returned. For example, if a custom
attribute represents the trace ID, your model can prepend the custom
attribute with C<Trace ID:> in your post-processing function.

This feature is currently supported in the Amazon Web Services SDKs but
not in the Amazon SageMaker Python SDK.


=head2 InvokedProductionVariant => Str

Identifies the production variant that was invoked.


=head2 NewSessionId => Str

If you created a stateful session with your request, the ID and
expiration time that the model assigns to that session.


=head2 _request_id => Str


=cut

