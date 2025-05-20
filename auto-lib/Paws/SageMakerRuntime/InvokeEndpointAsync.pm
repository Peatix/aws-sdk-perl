
package Paws::SageMakerRuntime::InvokeEndpointAsync;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Accept');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Content-Type');
  has CustomAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Custom-Attributes');
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EndpointName', required => 1);
  has InferenceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-Inference-Id');
  has InputLocation => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-InputLocation', required => 1);
  has InvocationTimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-InvocationTimeoutSeconds');
  has RequestTTLSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'X-Amzn-SageMaker-RequestTTLSeconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeEndpointAsync');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoints/{EndpointName}/async-invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerRuntime::InvokeEndpointAsyncOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpointAsync - Arguments for method InvokeEndpointAsync on L<Paws::SageMakerRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeEndpointAsync on the
L<Amazon SageMaker Runtime|Paws::SageMakerRuntime> service. Use the attributes of this class
as arguments to method InvokeEndpointAsync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeEndpointAsync.

=head1 SYNOPSIS

    my $runtime.sagemaker = Paws->service('SageMakerRuntime');
    my $InvokeEndpointAsyncOutput = $runtime . sagemaker->InvokeEndpointAsync(
      EndpointName             => 'MyEndpointName',
      InputLocation            => 'MyInputLocationHeader',
      Accept                   => 'MyHeader',                    # OPTIONAL
      ContentType              => 'MyHeader',                    # OPTIONAL
      CustomAttributes         => 'MyCustomAttributesHeader',    # OPTIONAL
      InferenceId              => 'MyInferenceId',               # OPTIONAL
      InvocationTimeoutSeconds => 1,                             # OPTIONAL
      RequestTTLSeconds        => 1,                             # OPTIONAL
    );

    # Results:
    my $FailureLocation = $InvokeEndpointAsyncOutput->FailureLocation;
    my $InferenceId     = $InvokeEndpointAsyncOutput->InferenceId;
    my $OutputLocation  = $InvokeEndpointAsyncOutput->OutputLocation;

    # Returns a L<Paws::SageMakerRuntime::InvokeEndpointAsyncOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker/InvokeEndpointAsync>

=head1 ATTRIBUTES


=head2 Accept => Str

The desired MIME type of the inference response from the model
container.



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



=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint that you specified when you created the
endpoint using the CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html)
API.



=head2 InferenceId => Str

The identifier for the inference request. Amazon SageMaker will
generate an identifier for you if none is specified.



=head2 B<REQUIRED> InputLocation => Str

The Amazon S3 URI where the inference request payload is stored.



=head2 InvocationTimeoutSeconds => Int

Maximum amount of time in seconds a request can be processed before it
is marked as expired. The default is 15 minutes, or 900 seconds.



=head2 RequestTTLSeconds => Int

Maximum age in seconds a request can be in the queue before it is
marked as expired. The default is 6 hours, or 21,600 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeEndpointAsync in L<Paws::SageMakerRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

