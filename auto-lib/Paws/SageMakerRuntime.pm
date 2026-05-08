package Paws::SageMakerRuntime;
  use Moose;
  sub service { 'runtime.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2017-05-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub InvokeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerRuntime::InvokeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeEndpointAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerRuntime::InvokeEndpointAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeEndpointWithResponseStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerRuntime::InvokeEndpointWithResponseStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/InvokeEndpoint InvokeEndpointAsync InvokeEndpointWithResponseStream / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime - Perl Interface to AWS Amazon SageMaker Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon SageMaker runtime API.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13>


=head1 METHODS

=head2 InvokeEndpoint

=over

=item Body => Str

=item EndpointName => Str

=item [Accept => Str]

=item [ContentType => Str]

=item [CustomAttributes => Str]

=item [EnableExplanations => Str]

=item [InferenceComponentName => Str]

=item [InferenceId => Str]

=item [SessionId => Str]

=item [TargetContainerHostname => Str]

=item [TargetModel => Str]

=item [TargetVariant => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerRuntime::InvokeEndpoint>

Returns: a L<Paws::SageMakerRuntime::InvokeEndpointOutput> instance

After you deploy a model into production using Amazon SageMaker hosting
services, your client applications use this API to get inferences from
the model hosted at the specified endpoint.

For an overview of Amazon SageMaker, see How It Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

Amazon SageMaker strips all POST headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.

Calls to C<InvokeEndpoint> are authenticated by using Amazon Web
Services Signature Version 4. For information, see Authenticating
Requests (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<Amazon S3 API Reference>.

A customer's model containers must respond to requests within 60
seconds. The model itself can have a maximum processing time of 60
seconds before responding to invocations. If your model is going to
take 50-60 seconds of processing time, the SDK socket timeout should be
set to be 70 seconds.

Endpoints are scoped to an individual account, and are not public. The
URL does not contain the account ID, but Amazon SageMaker determines
the account ID from the authentication token that is supplied by the
caller.


=head2 InvokeEndpointAsync

=over

=item EndpointName => Str

=item InputLocation => Str

=item [Accept => Str]

=item [ContentType => Str]

=item [CustomAttributes => Str]

=item [InferenceId => Str]

=item [InvocationTimeoutSeconds => Int]

=item [RequestTTLSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMakerRuntime::InvokeEndpointAsync>

Returns: a L<Paws::SageMakerRuntime::InvokeEndpointAsyncOutput> instance

After you deploy a model into production using Amazon SageMaker hosting
services, your client applications use this API to get inferences from
the model hosted at the specified endpoint in an asynchronous manner.

Inference requests sent to this API are enqueued for asynchronous
processing. The processing of the inference request may or may not
complete before you receive a response from this API. The response from
this API will not contain the result of the inference request but
contain information about where you can locate it.

Amazon SageMaker strips all POST headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.

Calls to C<InvokeEndpointAsync> are authenticated by using Amazon Web
Services Signature Version 4. For information, see Authenticating
Requests (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<Amazon S3 API Reference>.


=head2 InvokeEndpointWithResponseStream

=over

=item Body => Str

=item EndpointName => Str

=item [Accept => Str]

=item [ContentType => Str]

=item [CustomAttributes => Str]

=item [InferenceComponentName => Str]

=item [InferenceId => Str]

=item [SessionId => Str]

=item [TargetContainerHostname => Str]

=item [TargetVariant => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerRuntime::InvokeEndpointWithResponseStream>

Returns: a L<Paws::SageMakerRuntime::InvokeEndpointWithResponseStreamOutput> instance

Invokes a model at the specified endpoint to return the inference
response as a stream. The inference stream provides the response
payload incrementally as a series of parts. Before you can get an
inference stream, you must have access to a model that's deployed using
Amazon SageMaker hosting services, and the container for that model
must support inference streaming.

For more information that can help you use this API, see the following
sections in the I<Amazon SageMaker Developer Guide>:

=over

=item *

For information about how to add streaming support to a model, see How
Containers Serve Requests
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests).

=item *

For information about how to process the streaming response, see Invoke
real-time endpoints
(https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html).

=back

Before you can use this operation, your IAM permissions must allow the
C<sagemaker:InvokeEndpoint> action. For more information about Amazon
SageMaker actions for IAM policies, see Actions, resources, and
condition keys for Amazon SageMaker
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html)
in the I<IAM Service Authorization Reference>.

Amazon SageMaker strips all POST headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.

Calls to C<InvokeEndpointWithResponseStream> are authenticated by using
Amazon Web Services Signature Version 4. For information, see
Authenticating Requests (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<Amazon S3 API Reference>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

