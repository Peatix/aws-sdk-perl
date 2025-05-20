
package Paws::SageMakerRuntime::InvokeEndpoint;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has CustomAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Custom-Attributes');
  has EnableExplanations => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Enable-Explanations');
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EndpointName', required => 1);
  has InferenceComponentName => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Inference-Component');
  has InferenceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Inference-Id');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Session-Id');
  has TargetContainerHostname => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Target-Container-Hostname');
  has TargetModel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Target-Model');
  has TargetVariant => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Target-Variant');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoints/{EndpointName}/invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerRuntime::InvokeEndpointOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpoint - Arguments for method InvokeEndpoint on L<Paws::SageMakerRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeEndpoint on the
L<Amazon SageMaker Runtime|Paws::SageMakerRuntime> service. Use the attributes of this class
as arguments to method InvokeEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeEndpoint.

=head1 SYNOPSIS

    my $runtime.sagemaker = Paws->service('SageMakerRuntime');
    my $InvokeEndpointOutput = $runtime . sagemaker->InvokeEndpoint(
      Body                   => 'BlobBodyBlob',
      EndpointName           => 'MyEndpointName',
      Accept                 => 'MyHeader',                      # OPTIONAL
      ContentType            => 'MyHeader',                      # OPTIONAL
      CustomAttributes       => 'MyCustomAttributesHeader',      # OPTIONAL
      EnableExplanations     => 'MyEnableExplanationsHeader',    # OPTIONAL
      InferenceComponentName => 'MyInferenceComponentHeader',    # OPTIONAL
      InferenceId            => 'MyInferenceId',                 # OPTIONAL
      SessionId => 'MySessionIdOrNewSessionConstantHeader',      # OPTIONAL
      TargetContainerHostname => 'MyTargetContainerHostnameHeader',   # OPTIONAL
      TargetModel             => 'MyTargetModelHeader',               # OPTIONAL
      TargetVariant           => 'MyTargetVariantHeader',             # OPTIONAL
    );

    # Results:
    my $Body             = $InvokeEndpointOutput->Body;
    my $ClosedSessionId  = $InvokeEndpointOutput->ClosedSessionId;
    my $ContentType      = $InvokeEndpointOutput->ContentType;
    my $CustomAttributes = $InvokeEndpointOutput->CustomAttributes;
    my $InvokedProductionVariant =
      $InvokeEndpointOutput->InvokedProductionVariant;
    my $NewSessionId = $InvokeEndpointOutput->NewSessionId;

    # Returns a L<Paws::SageMakerRuntime::InvokeEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker/InvokeEndpoint>

=head1 ATTRIBUTES


=head2 Accept => Str

The desired MIME type of the inference response from the model
container.



=head2 B<REQUIRED> Body => Str

Provides input data, in the format specified in the C<ContentType>
request header. Amazon SageMaker passes all of the data in the body to
the model.

For information about the format of the request body, see Common Data
Formats-Inference
(https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).



=head2 ContentType => Str

The MIME type of the input data in the request body.



=head2 CustomAttributes => Str

Provides additional information about a request for an inference
submitted to a model hosted at an Amazon SageMaker endpoint. The
information is an opaque value that is forwarded verbatim. You could
use this value, for example, to provide an ID that you can use to track
a request or to provide other metadata that a service endpoint was
programmed to process. The value must consist of no more than 1024
visible US-ASCII characters as specified in Section 3.3.6. Field Value
Components
(https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6) of the
Hypertext Transfer Protocol (HTTP/1.1).

The code in your model is responsible for setting or updating any
custom attributes in the response. If your code does not set this value
in the response, an empty value is returned. For example, if a custom
attribute represents the trace ID, your model can prepend the custom
attribute with C<Trace ID:> in your post-processing function.

This feature is currently supported in the Amazon Web Services SDKs but
not in the Amazon SageMaker Python SDK.



=head2 EnableExplanations => Str

An optional JMESPath expression used to override the
C<EnableExplanations> parameter of the C<ClarifyExplainerConfig> API.
See the EnableExplanations
(https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable)
section in the developer guide for more information.



=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint that you specified when you created the
endpoint using the CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html)
API.



=head2 InferenceComponentName => Str

If the endpoint hosts one or more inference components, this parameter
specifies the name of inference component to invoke.



=head2 InferenceId => Str

If you provide a value, it is added to the captured data when you
enable data capture on the endpoint. For information about data
capture, see Capture Data
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html).



=head2 SessionId => Str

Creates a stateful session or identifies an existing one. You can do
one of the following:

=over

=item *

Create a stateful session by specifying the value C<NEW_SESSION>.

=item *

Send your request to an existing stateful session by specifying the ID
of that session.

=back

With a stateful session, you can send multiple requests to a stateful
model. When you create a session with a stateful model, the model must
create the session ID and set the expiration time. The model must also
provide that information in the response to your request. You can get
the ID and timestamp from the C<NewSessionId> response parameter. For
any subsequent request where you specify that session ID, SageMaker
routes the request to the same instance that supports the session.



=head2 TargetContainerHostname => Str

If the endpoint hosts multiple containers and is configured to use
direct invocation, this parameter specifies the host name of the
container to invoke.



=head2 TargetModel => Str

The model to request for inference when invoking a multi-model
endpoint.



=head2 TargetVariant => Str

Specify the production variant to send the inference request to when
invoking an endpoint that is running two or more variants. Note that
this parameter overrides the default behavior for the endpoint, which
is to distribute the invocation traffic based on the variant weights.

For information about how to use variant targeting to perform a/b
testing, see Test models in production
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeEndpoint in L<Paws::SageMakerRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

