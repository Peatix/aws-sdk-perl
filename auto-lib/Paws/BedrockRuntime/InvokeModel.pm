
package Paws::BedrockRuntime::InvokeModel;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Bedrock-GuardrailIdentifier');
  has GuardrailVersion => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Bedrock-GuardrailVersion');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelId', required => 1);
  has PerformanceConfigLatency => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Bedrock-PerformanceConfig-Latency');
  has Trace => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Bedrock-Trace');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model/{modelId}/invoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::InvokeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::InvokeModel - Arguments for method InvokeModel on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeModel on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method InvokeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeModel.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $InvokeModelResponse = $bedrock -runtime->InvokeModel(
      ModelId                  => 'MyInvokeModelIdentifier',
      Accept                   => 'MyMimeType',                # OPTIONAL
      Body                     => 'BlobBody',                  # OPTIONAL
      ContentType              => 'MyMimeType',                # OPTIONAL
      GuardrailIdentifier      => 'MyGuardrailIdentifier',     # OPTIONAL
      GuardrailVersion         => 'MyGuardrailVersion',        # OPTIONAL
      PerformanceConfigLatency => 'standard',                  # OPTIONAL
      Trace                    => 'ENABLED',                   # OPTIONAL
    );

    # Results:
    my $Body        = $InvokeModelResponse->Body;
    my $ContentType = $InvokeModelResponse->ContentType;
    my $PerformanceConfigLatency =
      $InvokeModelResponse->PerformanceConfigLatency;

    # Returns a L<Paws::BedrockRuntime::InvokeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/InvokeModel>

=head1 ATTRIBUTES


=head2 Accept => Str

The desired MIME type of the inference body in the response. The
default value is C<application/json>.



=head2 Body => Str

The prompt and inference parameters in the format specified in the
C<contentType> in the header. You must provide the body in JSON format.
To see the format and content of the request and response bodies for
different models, refer to Inference parameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
For more information, see Run inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html)
in the Bedrock User Guide.



=head2 ContentType => Str

The MIME type of the input data in the request. You must specify
C<application/json>.



=head2 GuardrailIdentifier => Str

The unique identifier of the guardrail that you want to use. If you
don't provide a value, no guardrail is applied to the invocation.

An error will be thrown in the following situations.

=over

=item *

You don't provide a guardrail identifier but you specify the
C<amazon-bedrock-guardrailConfig> field in the request body.

=item *

You enable the guardrail but the C<contentType> isn't
C<application/json>.

=item *

You provide a guardrail identifier, but C<guardrailVersion> isn't
specified.

=back




=head2 GuardrailVersion => Str

The version number for the guardrail. The value can also be C<DRAFT>.



=head2 B<REQUIRED> ModelId => Str

The unique identifier of the model to invoke to run inference.

The C<modelId> to provide depends on the type of model or throughput
that you use:

=over

=item *

If you use a base model, specify the model ID or its ARN. For a list of
model IDs for base models, see Amazon Bedrock base model IDs (on-demand
throughput)
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns)
in the Amazon Bedrock User Guide.

=item *

If you use an inference profile, specify the inference profile ID or
its ARN. For a list of inference profile IDs, see Supported Regions and
models for cross-region inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html)
in the Amazon Bedrock User Guide.

=item *

If you use a provisioned model, specify the ARN of the Provisioned
Throughput. For more information, see Run inference using a Provisioned
Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html)
in the Amazon Bedrock User Guide.

=item *

If you use a custom model, first purchase Provisioned Throughput for
it. Then specify the ARN of the resulting provisioned model. For more
information, see Use a custom model in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html)
in the Amazon Bedrock User Guide.

=item *

If you use an imported model
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html),
specify the ARN of the imported model. You can get the model ARN from a
successful call to CreateModelImportJob
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html)
or from the Imported models page in the Amazon Bedrock console.

=back




=head2 PerformanceConfigLatency => Str

Model performance settings for the request.

Valid values are: C<"standard">, C<"optimized">

=head2 Trace => Str

Specifies whether to enable or disable the Bedrock trace. If enabled,
you can see the full Bedrock trace.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"ENABLED_FULL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeModel in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

