
package Paws::Bedrock::CreateProvisionedModelThroughput;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CommitmentDuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitmentDuration');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId', required => 1);
  has ModelUnits => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'modelUnits', required => 1);
  has ProvisionedModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisionedModelName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisionedModelThroughput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioned-model-throughput');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateProvisionedModelThroughputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateProvisionedModelThroughput - Arguments for method CreateProvisionedModelThroughput on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisionedModelThroughput on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateProvisionedModelThroughput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisionedModelThroughput.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateProvisionedModelThroughputResponse =
      $bedrock->CreateProvisionedModelThroughput(
      ModelId              => 'MyModelIdentifier',
      ModelUnits           => 1,
      ProvisionedModelName => 'MyProvisionedModelName',
      ClientRequestToken   => 'MyIdempotencyToken',       # OPTIONAL
      CommitmentDuration   => 'OneMonth',                 # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ProvisionedModelArn =
      $CreateProvisionedModelThroughputResponse->ProvisionedModelArn;

  # Returns a L<Paws::Bedrock::CreateProvisionedModelThroughputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateProvisionedModelThroughput>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the Amazon S3 User Guide.



=head2 CommitmentDuration => Str

The commitment duration requested for the Provisioned Throughput.
Billing occurs hourly and is discounted for longer commitment terms. To
request a no-commit Provisioned Throughput, omit this field.

Custom models support all levels of commitment. To see which base
models support no commitment, see Supported regions and models for
Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/pt-supported.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)

Valid values are: C<"OneMonth">, C<"SixMonths">

=head2 B<REQUIRED> ModelId => Str

The Amazon Resource Name (ARN) or name of the model to associate with
this Provisioned Throughput. For a list of models for which you can
purchase Provisioned Throughput, see Amazon Bedrock model IDs for
purchasing Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#prov-throughput-models)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).



=head2 B<REQUIRED> ModelUnits => Int

Number of model units to allocate. A model unit delivers a specific
throughput level for the specified model. The throughput level of a
model unit specifies the total number of input and output tokens that
it can process and generate within a span of one minute. By default,
your account has no model units for purchasing Provisioned Throughputs
with commitment. You must first visit the Amazon Web Services support
center
(https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase)
to request MUs.

For model unit quotas, see Provisioned Throughput quotas
(https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html#prov-thru-quotas)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).

For more information about what an MU specifies, contact your Amazon
Web Services account manager.



=head2 B<REQUIRED> ProvisionedModelName => Str

The name for this Provisioned Throughput.



=head2 Tags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to associate with this Provisioned Throughput.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisionedModelThroughput in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

