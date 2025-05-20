
package Paws::Bedrock::CreateModelInvocationJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ModelInvocationJobInputDataConfig', traits => ['NameInRequest'], request_name => 'inputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ModelInvocationJobOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TimeoutDurationInHours => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutDurationInHours');
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelInvocationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-invocation-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateModelInvocationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateModelInvocationJob - Arguments for method CreateModelInvocationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelInvocationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateModelInvocationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelInvocationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateModelInvocationJobResponse = $bedrock->CreateModelInvocationJob(
      InputDataConfig => {
        S3InputDataConfig => {
          S3Uri         => 'MyS3Uri',        # min: 1, max: 1024
          S3BucketOwner => 'MyAccountId',    # OPTIONAL
          S3InputFormat => 'JSONL',          # values: JSONL; OPTIONAL
        },    # OPTIONAL
      },
      JobName          => 'MyModelInvocationJobName',
      ModelId          => 'MyModelId',
      OutputDataConfig => {
        S3OutputDataConfig => {
          S3Uri             => 'MyS3Uri',        # min: 1, max: 1024
          S3BucketOwner     => 'MyAccountId',    # OPTIONAL
          S3EncryptionKeyId => 'MyKmsKeyId',     # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      RoleArn            => 'MyRoleArn',
      ClientRequestToken => 'MyModelInvocationIdempotencyToken',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TimeoutDurationInHours => 1,    # OPTIONAL
      VpcConfig              => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        SubnetIds => [
          'MySubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateModelInvocationJobResponse->JobArn;

    # Returns a L<Paws::Bedrock::CreateModelInvocationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateModelInvocationJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> InputDataConfig => L<Paws::Bedrock::ModelInvocationJobInputDataConfig>

Details about the location of the input to the batch inference job.



=head2 B<REQUIRED> JobName => Str

A name to give the batch inference job.



=head2 B<REQUIRED> ModelId => Str

The unique identifier of the foundation model to use for the batch
inference job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::ModelInvocationJobOutputDataConfig>

Details about the location of the output of the batch inference job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the service role with permissions to
carry out and manage batch inference. You can use the console to create
a default service role or follow the steps at Create a service role for
batch inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).



=head2 Tags => ArrayRef[L<Paws::Bedrock::Tag>]

Any tags to associate with the batch inference job. For more
information, see Tagging Amazon Bedrock resources
(https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).



=head2 TimeoutDurationInHours => Int

The number of hours after which to force the batch inference job to
time out.



=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

The configuration of the Virtual Private Cloud (VPC) for the data in
the batch inference job. For more information, see Protect batch
inference jobs using a VPC
(https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelInvocationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

