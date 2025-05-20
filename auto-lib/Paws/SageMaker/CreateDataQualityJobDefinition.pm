
package Paws::SageMaker::CreateDataQualityJobDefinition;
  use Moose;
  has DataQualityAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::DataQualityAppSpecification', required => 1);
  has DataQualityBaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::DataQualityBaselineConfig');
  has DataQualityJobInput => (is => 'ro', isa => 'Paws::SageMaker::DataQualityJobInput', required => 1);
  has DataQualityJobOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has JobResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringNetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataQualityJobDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateDataQualityJobDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateDataQualityJobDefinition - Arguments for method CreateDataQualityJobDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataQualityJobDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateDataQualityJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataQualityJobDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateDataQualityJobDefinitionResponse =
      $api . sagemaker->CreateDataQualityJobDefinition(
      DataQualityAppSpecification => {
        ImageUri           => 'MyImageUri',    # max: 255
        ContainerArguments => [
          'MyContainerArgument', ...           # max: 256
        ],    # min: 1, max: 50; OPTIONAL
        ContainerEntrypoint => [
          'MyContainerEntrypointString', ...    # max: 256
        ],    # min: 1, max: 100; OPTIONAL
        Environment => {
          'MyProcessingEnvironmentKey' =>
            'MyProcessingEnvironmentValue',    # key: max: 256, value: max: 256
        },    # max: 50; OPTIONAL
        PostAnalyticsProcessorSourceUri => 'MyS3Uri',    # max: 1024; OPTIONAL
        RecordPreprocessorSourceUri     => 'MyS3Uri',    # max: 1024; OPTIONAL
      },
      DataQualityJobInput => {
        BatchTransformInput => {
          DataCapturedDestinationS3Uri => 'MyDestinationS3Uri',    # max: 512
          DatasetFormat                => {
            Csv => {
              Header => 1,                                         # OPTIONAL
            },    # OPTIONAL
            Json => {
              Line => 1,    # OPTIONAL
            },    # OPTIONAL
            Parquet => {

            },    # OPTIONAL
          },
          LocalPath     => 'MyProcessingLocalPath',    # max: 256
          EndTimeOffset =>
            'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
          ExcludeFeaturesAttribute =>
            'MyExcludeFeaturesAttribute',      # max: 100; OPTIONAL
          FeaturesAttribute             => 'MyString',         # OPTIONAL
          InferenceAttribute            => 'MyString',         # OPTIONAL
          ProbabilityAttribute          => 'MyString',         # OPTIONAL
          ProbabilityThresholdAttribute => 1,                  # OPTIONAL
          S3DataDistributionType        => 'FullyReplicated'
          ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
          S3InputMode     => 'Pipe',    # values: Pipe, File; OPTIONAL
          StartTimeOffset =>
            'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
        },    # OPTIONAL
        EndpointInput => {
          EndpointName  => 'MyEndpointName',           # max: 63
          LocalPath     => 'MyProcessingLocalPath',    # max: 256
          EndTimeOffset =>
            'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
          ExcludeFeaturesAttribute =>
            'MyExcludeFeaturesAttribute',      # max: 100; OPTIONAL
          FeaturesAttribute             => 'MyString',         # OPTIONAL
          InferenceAttribute            => 'MyString',         # OPTIONAL
          ProbabilityAttribute          => 'MyString',         # OPTIONAL
          ProbabilityThresholdAttribute => 1,                  # OPTIONAL
          S3DataDistributionType        => 'FullyReplicated'
          ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
          S3InputMode     => 'Pipe',    # values: Pipe, File; OPTIONAL
          StartTimeOffset =>
            'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
        },    # OPTIONAL
      },
      DataQualityJobOutputConfig => {
        MonitoringOutputs => [
          {
            S3Output => {
              LocalPath    => 'MyProcessingLocalPath',    # max: 256
              S3Uri        => 'MyMonitoringS3Uri',        # max: 512
              S3UploadMode =>
                'Continuous',    # values: Continuous, EndOfJob; OPTIONAL
            },

          },
          ...
        ],    # min: 1, max: 1
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      JobDefinitionName => 'MyMonitoringJobDefinitionName',
      JobResources      => {
        ClusterConfig => {
          InstanceCount => 1,                # min: 1, max: 100
          InstanceType  => 'ml.t3.medium'
          , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge
          VolumeSizeInGB => 1,               # min: 1, max: 16384
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },

      },
      RoleArn                   => 'MyRoleArn',
      DataQualityBaselineConfig => {
        BaseliningJobName => 'MyProcessingJobName',  # min: 1, max: 63; OPTIONAL
        ConstraintsResource => {
          S3Uri => 'MyS3Uri',                        # max: 1024; OPTIONAL
        },    # OPTIONAL
        StatisticsResource => {
          S3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL
        },    # OPTIONAL
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
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,    # min: 1, max: 86400

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
    my $JobDefinitionArn =
      $CreateDataQualityJobDefinitionResponse->JobDefinitionArn;

  # Returns a L<Paws::SageMaker::CreateDataQualityJobDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateDataQualityJobDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataQualityAppSpecification => L<Paws::SageMaker::DataQualityAppSpecification>

Specifies the container that runs the monitoring job.



=head2 DataQualityBaselineConfig => L<Paws::SageMaker::DataQualityBaselineConfig>

Configures the constraints and baselines for the monitoring job.



=head2 B<REQUIRED> DataQualityJobInput => L<Paws::SageMaker::DataQualityJobInput>

A list of inputs for the monitoring job. Currently endpoints are
supported as monitoring inputs.



=head2 B<REQUIRED> DataQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>





=head2 B<REQUIRED> JobDefinitionName => Str

The name for the monitoring job definition.



=head2 B<REQUIRED> JobResources => L<Paws::SageMaker::MonitoringResources>





=head2 NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>

Specifies networking configuration for the monitoring job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI
can assume to perform tasks on your behalf.



=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>





=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

(Optional) An array of key-value pairs. For more information, see Using
Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL)
in the I<Amazon Web Services Billing and Cost Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataQualityJobDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

