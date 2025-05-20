
package Paws::SageMaker::CreateProcessingJob;
  use Moose;
  has AppSpecification => (is => 'ro', isa => 'Paws::SageMaker::AppSpecification', required => 1);
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::ProcessingEnvironmentMap');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::NetworkConfig');
  has ProcessingInputs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProcessingInput]');
  has ProcessingJobName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::ProcessingOutputConfig');
  has ProcessingResources => (is => 'ro', isa => 'Paws::SageMaker::ProcessingResources', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::ProcessingStoppingCondition');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProcessingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateProcessingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateProcessingJob - Arguments for method CreateProcessingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProcessingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateProcessingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProcessingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateProcessingJobResponse = $api . sagemaker->CreateProcessingJob(
      AppSpecification => {
        ImageUri           => 'MyImageUri',    # max: 255
        ContainerArguments => [
          'MyContainerArgument', ...           # max: 256
        ],    # min: 1, max: 100; OPTIONAL
        ContainerEntrypoint => [
          'MyContainerEntrypointString', ...    # max: 256
        ],    # min: 1, max: 100; OPTIONAL
      },
      ProcessingJobName   => 'MyProcessingJobName',
      ProcessingResources => {
        ClusterConfig => {
          InstanceCount => 1,                # min: 1, max: 100
          InstanceType  => 'ml.t3.medium'
          , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge
          VolumeSizeInGB => 1,               # min: 1, max: 16384
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },

      },
      RoleArn     => 'MyRoleArn',
      Environment => {
        'MyProcessingEnvironmentKey' =>
          'MyProcessingEnvironmentValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      ExperimentConfig => {
        ExperimentName => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        RunName        => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        TrialComponentDisplayName =>
          'MyExperimentEntityName',                 # min: 1, max: 120; OPTIONAL
        TrialName => 'MyExperimentEntityName',      # min: 1, max: 120; OPTIONAL
      },    # OPTIONAL
      NetworkConfig => {
        EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
        EnableNetworkIsolation                => 1,    # OPTIONAL
        VpcConfig                             => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...                   # max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...    # max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },    # OPTIONAL
      ProcessingInputs => [
        {
          InputName         => 'MyString',
          AppManaged        => 1,            # OPTIONAL
          DatasetDefinition => {
            AthenaDatasetDefinition => {
              Catalog      => 'MyAthenaCatalog',     # min: 1, max: 256
              Database     => 'MyAthenaDatabase',    # min: 1, max: 255
              OutputFormat =>
                'PARQUET',    # values: PARQUET, ORC, AVRO, JSON, TEXTFILE
              OutputS3Uri       => 'MyS3Uri',              # max: 1024
              QueryString       => 'MyAthenaQueryString',  # min: 1, max: 4096
              KmsKeyId          => 'MyKmsKeyId',           # max: 2048; OPTIONAL
              OutputCompression =>
                'GZIP',    # values: GZIP, SNAPPY, ZLIB; OPTIONAL
              WorkGroup => 'MyAthenaWorkGroup',    # min: 1, max: 128; OPTIONAL
            },    # OPTIONAL
            DataDistributionType => 'FullyReplicated'
            ,     # values: FullyReplicated, ShardedByS3Key; OPTIONAL
            InputMode => 'Pipe',                  # values: Pipe, File; OPTIONAL
            LocalPath => 'MyProcessingLocalPath', # max: 256; OPTIONAL
            RedshiftDatasetDefinition => {
              ClusterId      => 'MyRedshiftClusterId',    # min: 1, max: 63
              ClusterRoleArn => 'MyRoleArn',              # min: 20, max: 2048
              Database       => 'MyRedshiftDatabase',     # min: 1, max: 64
              DbUser         => 'MyRedshiftUserName',     # min: 1, max: 128
              OutputFormat   => 'PARQUET',                # values: PARQUET, CSV
              OutputS3Uri    => 'MyS3Uri',                # max: 1024
              QueryString    => 'MyRedshiftQueryString',  # min: 1, max: 4096
              KmsKeyId       => 'MyKmsKeyId',             # max: 2048; OPTIONAL
              OutputCompression =>
                'None',    # values: None, GZIP, BZIP2, ZSTD, SNAPPY; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3Input => {
            S3DataType => 'ManifestFile',    # values: ManifestFile, S3Prefix
            S3Uri      => 'MyS3Uri',         # max: 1024
            LocalPath  => 'MyProcessingLocalPath',    # max: 256; OPTIONAL
            S3CompressionType      => 'None',    # values: None, Gzip; OPTIONAL
            S3DataDistributionType => 'FullyReplicated'
            ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
            S3InputMode => 'Pipe',    # values: Pipe, File; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ProcessingOutputConfig => {
        Outputs => [
          {
            OutputName         => 'MyString',
            AppManaged         => 1,            # OPTIONAL
            FeatureStoreOutput => {
              FeatureGroupName => 'MyFeatureGroupName',    # min: 1, max: 64

            },    # OPTIONAL
            S3Output => {
              S3UploadMode => 'Continuous',    # values: Continuous, EndOfJob
              S3Uri        => 'MyS3Uri',       # max: 1024
              LocalPath    => 'MyProcessingLocalPath',    # max: 256; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 10
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,    # min: 1, max: 777600

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProcessingJobArn = $CreateProcessingJobResponse->ProcessingJobArn;

    # Returns a L<Paws::SageMaker::CreateProcessingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateProcessingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppSpecification => L<Paws::SageMaker::AppSpecification>

Configures the processing job to run a specified Docker container
image.



=head2 Environment => L<Paws::SageMaker::ProcessingEnvironmentMap>

The environment variables to set in the Docker container. Up to 100 key
and values entries in the map are supported.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any environment fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by security-sensitive information included in the request
environment variable or plain text fields.



=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>





=head2 NetworkConfig => L<Paws::SageMaker::NetworkConfig>

Networking options for a processing job, such as whether to allow
inbound and outbound network calls to and from processing containers,
and the VPC subnets and security groups to use for VPC-enabled
processing jobs.



=head2 ProcessingInputs => ArrayRef[L<Paws::SageMaker::ProcessingInput>]

An array of inputs configuring the data to download into the processing
container.



=head2 B<REQUIRED> ProcessingJobName => Str

The name of the processing job. The name must be unique within an
Amazon Web Services Region in the Amazon Web Services account.



=head2 ProcessingOutputConfig => L<Paws::SageMaker::ProcessingOutputConfig>

Output configuration for the processing job.



=head2 B<REQUIRED> ProcessingResources => L<Paws::SageMaker::ProcessingResources>

Identifies the resources, ML compute instances, and ML storage volumes
to deploy for a processing job. In distributed training, you specify
more than one instance.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.



=head2 StoppingCondition => L<Paws::SageMaker::ProcessingStoppingCondition>

The time limit for how long the processing job is allowed to run.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

(Optional) An array of key-value pairs. For more information, see Using
Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL)
in the I<Amazon Web Services Billing and Cost Management User Guide>.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any tags. As part of the shared
responsibility model, you are responsible for any potential exposure,
unauthorized access, or compromise of your sensitive data if caused by
security-sensitive information included in the request tag variable or
plain text fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProcessingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

