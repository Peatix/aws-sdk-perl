package Paws::BedrockRuntime;
  use Moose;
  sub service { 'bedrock-runtime' }
  sub signing_name { 'bedrock' }
  sub version { '2023-09-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ApplyGuardrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::ApplyGuardrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Converse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::Converse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConverseStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::ConverseStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAsyncInvoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::GetAsyncInvoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::InvokeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeModelWithBidirectionalStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::InvokeModelWithBidirectionalStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeModelWithResponseStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::InvokeModelWithResponseStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAsyncInvokes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::ListAsyncInvokes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAsyncInvoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockRuntime::StartAsyncInvoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAsyncInvokes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAsyncInvokes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAsyncInvokes(@_, nextToken => $next_result->nextToken);
        push @{ $result->asyncInvokeSummaries }, @{ $next_result->asyncInvokeSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'asyncInvokeSummaries') foreach (@{ $result->asyncInvokeSummaries });
        $result = $self->ListAsyncInvokes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'asyncInvokeSummaries') foreach (@{ $result->asyncInvokeSummaries });
    }

    return undef
  }


  sub operations { qw/ApplyGuardrail Converse ConverseStream GetAsyncInvoke InvokeModel InvokeModelWithBidirectionalStream InvokeModelWithResponseStream ListAsyncInvokes StartAsyncInvoke / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime - Perl Interface to AWS Amazon Bedrock Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BedrockRuntime');
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

Describes the API operations for running inference using Amazon Bedrock
models.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 ApplyGuardrail

=over

=item Content => ArrayRef[L<Paws::BedrockRuntime::GuardrailContentBlock>]

=item GuardrailIdentifier => Str

=item GuardrailVersion => Str

=item Source => Str

=item [OutputScope => Str]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::ApplyGuardrail>

Returns: a L<Paws::BedrockRuntime::ApplyGuardrailResponse> instance

The action to apply a guardrail.

For troubleshooting some of the common errors you might encounter when
using the C<ApplyGuardrail> API, see Troubleshooting Amazon Bedrock API
Error Codes
(https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
in the Amazon Bedrock User Guide


=head2 Converse

=over

=item ModelId => Str

=item [AdditionalModelRequestFields => L<Paws::BedrockRuntime::Document>]

=item [AdditionalModelResponseFieldPaths => ArrayRef[Str|Undef]]

=item [GuardrailConfig => L<Paws::BedrockRuntime::GuardrailConfiguration>]

=item [InferenceConfig => L<Paws::BedrockRuntime::InferenceConfiguration>]

=item [Messages => ArrayRef[L<Paws::BedrockRuntime::Message>]]

=item [PerformanceConfig => L<Paws::BedrockRuntime::PerformanceConfiguration>]

=item [PromptVariables => L<Paws::BedrockRuntime::PromptVariableMap>]

=item [RequestMetadata => L<Paws::BedrockRuntime::RequestMetadata>]

=item [System => ArrayRef[L<Paws::BedrockRuntime::SystemContentBlock>]]

=item [ToolConfig => L<Paws::BedrockRuntime::ToolConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::Converse>

Returns: a L<Paws::BedrockRuntime::ConverseResponse> instance

Sends messages to the specified Amazon Bedrock model. C<Converse>
provides a consistent interface that works with all models that support
messages. This allows you to write code once and use it with different
models. If a model has unique inference parameters, you can also pass
those unique parameters to the model.

Amazon Bedrock doesn't store any text, images, or documents that you
provide as content. The data is only used to generate the response.

You can submit a prompt by including it in the C<messages> field,
specifying the C<modelId> of a foundation model or inference profile to
run inference on it, and including any other fields that are relevant
to your use case.

You can also submit a prompt from Prompt management by specifying the
ARN of the prompt version and including a map of variables to values in
the C<promptVariables> field. You can append more messages to the
prompt by using the C<messages> field. If you use a prompt from Prompt
management, you can't include the following fields in the request:
C<additionalModelRequestFields>, C<inferenceConfig>, C<system>, or
C<toolConfig>. Instead, these fields must be defined through Prompt
management. For more information, see Use a prompt from Prompt
management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html).

For information about the Converse API, see I<Use the Converse API> in
the I<Amazon Bedrock User Guide>. To use a guardrail, see I<Use a
guardrail with the Converse API> in the I<Amazon Bedrock User Guide>.
To use a tool with a model, see I<Tool use (Function calling)> in the
I<Amazon Bedrock User Guide>

For example code, see I<Converse API examples> in the I<Amazon Bedrock
User Guide>.

This operation requires permission for the C<bedrock:InvokeModel>
action.

To deny all inference access to resources that you specify in the
modelId field, you need to deny access to the C<bedrock:InvokeModel>
and C<bedrock:InvokeModelWithResponseStream> actions. Doing this also
denies access to the resource through the base inference actions
(InvokeModel
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html)
and InvokeModelWithResponseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html)).
For more information see Deny access for inference on specific models
(https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

For troubleshooting some of the common errors you might encounter when
using the C<Converse> API, see Troubleshooting Amazon Bedrock API Error
Codes
(https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
in the Amazon Bedrock User Guide


=head2 ConverseStream

=over

=item ModelId => Str

=item [AdditionalModelRequestFields => L<Paws::BedrockRuntime::Document>]

=item [AdditionalModelResponseFieldPaths => ArrayRef[Str|Undef]]

=item [GuardrailConfig => L<Paws::BedrockRuntime::GuardrailStreamConfiguration>]

=item [InferenceConfig => L<Paws::BedrockRuntime::InferenceConfiguration>]

=item [Messages => ArrayRef[L<Paws::BedrockRuntime::Message>]]

=item [PerformanceConfig => L<Paws::BedrockRuntime::PerformanceConfiguration>]

=item [PromptVariables => L<Paws::BedrockRuntime::PromptVariableMap>]

=item [RequestMetadata => L<Paws::BedrockRuntime::RequestMetadata>]

=item [System => ArrayRef[L<Paws::BedrockRuntime::SystemContentBlock>]]

=item [ToolConfig => L<Paws::BedrockRuntime::ToolConfiguration>]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::ConverseStream>

Returns: a L<Paws::BedrockRuntime::ConverseStreamResponse> instance

Sends messages to the specified Amazon Bedrock model and returns the
response in a stream. C<ConverseStream> provides a consistent API that
works with all Amazon Bedrock models that support messages. This allows
you to write code once and use it with different models. Should a model
have unique inference parameters, you can also pass those unique
parameters to the model.

To find out if a model supports streaming, call GetFoundationModel
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
and check the C<responseStreamingSupported> field in the response.

The CLI doesn't support streaming operations in Amazon Bedrock,
including C<ConverseStream>.

Amazon Bedrock doesn't store any text, images, or documents that you
provide as content. The data is only used to generate the response.

You can submit a prompt by including it in the C<messages> field,
specifying the C<modelId> of a foundation model or inference profile to
run inference on it, and including any other fields that are relevant
to your use case.

You can also submit a prompt from Prompt management by specifying the
ARN of the prompt version and including a map of variables to values in
the C<promptVariables> field. You can append more messages to the
prompt by using the C<messages> field. If you use a prompt from Prompt
management, you can't include the following fields in the request:
C<additionalModelRequestFields>, C<inferenceConfig>, C<system>, or
C<toolConfig>. Instead, these fields must be defined through Prompt
management. For more information, see Use a prompt from Prompt
management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html).

For information about the Converse API, see I<Use the Converse API> in
the I<Amazon Bedrock User Guide>. To use a guardrail, see I<Use a
guardrail with the Converse API> in the I<Amazon Bedrock User Guide>.
To use a tool with a model, see I<Tool use (Function calling)> in the
I<Amazon Bedrock User Guide>

For example code, see I<Conversation streaming example> in the I<Amazon
Bedrock User Guide>.

This operation requires permission for the
C<bedrock:InvokeModelWithResponseStream> action.

To deny all inference access to resources that you specify in the
modelId field, you need to deny access to the C<bedrock:InvokeModel>
and C<bedrock:InvokeModelWithResponseStream> actions. Doing this also
denies access to the resource through the base inference actions
(InvokeModel
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html)
and InvokeModelWithResponseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html)).
For more information see Deny access for inference on specific models
(https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

For troubleshooting some of the common errors you might encounter when
using the C<ConverseStream> API, see Troubleshooting Amazon Bedrock API
Error Codes
(https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
in the Amazon Bedrock User Guide


=head2 GetAsyncInvoke

=over

=item InvocationArn => Str


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::GetAsyncInvoke>

Returns: a L<Paws::BedrockRuntime::GetAsyncInvokeResponse> instance

Retrieve information about an asynchronous invocation.


=head2 InvokeModel

=over

=item ModelId => Str

=item [Accept => Str]

=item [Body => Str]

=item [ContentType => Str]

=item [GuardrailIdentifier => Str]

=item [GuardrailVersion => Str]

=item [PerformanceConfigLatency => Str]

=item [Trace => Str]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::InvokeModel>

Returns: a L<Paws::BedrockRuntime::InvokeModelResponse> instance

Invokes the specified Amazon Bedrock model to run inference using the
prompt and inference parameters provided in the request body. You use
model inference to generate text, images, and embeddings.

For example code, see I<Invoke model code examples> in the I<Amazon
Bedrock User Guide>.

This operation requires permission for the C<bedrock:InvokeModel>
action.

To deny all inference access to resources that you specify in the
modelId field, you need to deny access to the C<bedrock:InvokeModel>
and C<bedrock:InvokeModelWithResponseStream> actions. Doing this also
denies access to the resource through the Converse API actions
(Converse
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html)
and ConverseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)).
For more information see Deny access for inference on specific models
(https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

For troubleshooting some of the common errors you might encounter when
using the C<InvokeModel> API, see Troubleshooting Amazon Bedrock API
Error Codes
(https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
in the Amazon Bedrock User Guide


=head2 InvokeModelWithBidirectionalStream

=over

=item Body => L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamInput>

=item ModelId => Str


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStream>

Returns: a L<Paws::BedrockRuntime::InvokeModelWithBidirectionalStreamResponse> instance

Invoke the specified Amazon Bedrock model to run inference using the
bidirectional stream. The response is returned in a stream that remains
open for 8 minutes. A single session can contain multiple prompts and
responses from the model. The prompts to the model are provided as
audio files and the model's responses are spoken back to the user and
transcribed.

It is possible for users to interrupt the model's response with a new
prompt, which will halt the response speech. The model will retain
contextual awareness of the conversation while pivoting to respond to
the new prompt.


=head2 InvokeModelWithResponseStream

=over

=item ModelId => Str

=item [Accept => Str]

=item [Body => Str]

=item [ContentType => Str]

=item [GuardrailIdentifier => Str]

=item [GuardrailVersion => Str]

=item [PerformanceConfigLatency => Str]

=item [Trace => Str]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::InvokeModelWithResponseStream>

Returns: a L<Paws::BedrockRuntime::InvokeModelWithResponseStreamResponse> instance

Invoke the specified Amazon Bedrock model to run inference using the
prompt and inference parameters provided in the request body. The
response is returned in a stream.

To see if a model supports streaming, call GetFoundationModel
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
and check the C<responseStreamingSupported> field in the response.

The CLI doesn't support streaming operations in Amazon Bedrock,
including C<InvokeModelWithResponseStream>.

For example code, see I<Invoke model with streaming code example> in
the I<Amazon Bedrock User Guide>.

This operation requires permissions to perform the
C<bedrock:InvokeModelWithResponseStream> action.

To deny all inference access to resources that you specify in the
modelId field, you need to deny access to the C<bedrock:InvokeModel>
and C<bedrock:InvokeModelWithResponseStream> actions. Doing this also
denies access to the resource through the Converse API actions
(Converse
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html)
and ConverseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)).
For more information see Deny access for inference on specific models
(https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

For troubleshooting some of the common errors you might encounter when
using the C<InvokeModelWithResponseStream> API, see Troubleshooting
Amazon Bedrock API Error Codes
(https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
in the Amazon Bedrock User Guide


=head2 ListAsyncInvokes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]

=item [SubmitTimeAfter => Str]

=item [SubmitTimeBefore => Str]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::ListAsyncInvokes>

Returns: a L<Paws::BedrockRuntime::ListAsyncInvokesResponse> instance

Lists asynchronous invocations.


=head2 StartAsyncInvoke

=over

=item ModelId => Str

=item ModelInput => L<Paws::BedrockRuntime::ModelInputPayload>

=item OutputDataConfig => L<Paws::BedrockRuntime::AsyncInvokeOutputDataConfig>

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::BedrockRuntime::Tag>]]


=back

Each argument is described in detail in: L<Paws::BedrockRuntime::StartAsyncInvoke>

Returns: a L<Paws::BedrockRuntime::StartAsyncInvokeResponse> instance

Starts an asynchronous invocation.

This operation requires permission for the C<bedrock:InvokeModel>
action.

To deny all inference access to resources that you specify in the
modelId field, you need to deny access to the C<bedrock:InvokeModel>
and C<bedrock:InvokeModelWithResponseStream> actions. Doing this also
denies access to the resource through the Converse API actions
(Converse
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html)
and ConverseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)).
For more information see Deny access for inference on specific models
(https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAsyncInvokes(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, SubmitTimeAfter => Str, SubmitTimeBefore => Str])

=head2 ListAllAsyncInvokes([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str, SubmitTimeAfter => Str, SubmitTimeBefore => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - asyncInvokeSummaries, passing the object as the first parameter, and the string 'asyncInvokeSummaries' as the second parameter 

If not, it will return a a L<Paws::BedrockRuntime::ListAsyncInvokesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

