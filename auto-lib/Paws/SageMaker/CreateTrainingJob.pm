
package Paws::SageMaker::CreateTrainingJob;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmSpecification', required => 1);
  has CheckpointConfig => (is => 'ro', isa => 'Paws::SageMaker::CheckpointConfig');
  has DebugHookConfig => (is => 'ro', isa => 'Paws::SageMaker::DebugHookConfig');
  has DebugRuleConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DebugRuleConfiguration]');
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => 'Bool');
  has EnableManagedSpotTraining => (is => 'ro', isa => 'Bool');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TrainingEnvironmentMap');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InfraCheckConfig => (is => 'ro', isa => 'Paws::SageMaker::InfraCheckConfig');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig', required => 1);
  has ProfilerConfig => (is => 'ro', isa => 'Paws::SageMaker::ProfilerConfig');
  has ProfilerRuleConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProfilerRuleConfiguration]');
  has RemoteDebugConfig => (is => 'ro', isa => 'Paws::SageMaker::RemoteDebugConfig');
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has RetryStrategy => (is => 'ro', isa => 'Paws::SageMaker::RetryStrategy');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SessionChainingConfig => (is => 'ro', isa => 'Paws::SageMaker::SessionChainingConfig');
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TensorBoardOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::TensorBoardOutputConfig');
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrainingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTrainingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrainingJob - Arguments for method CreateTrainingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrainingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrainingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateTrainingJobResponse = $api . sagemaker->CreateTrainingJob(
      AlgorithmSpecification => {
        TrainingInputMode  => 'Pipe',           # values: Pipe, File, FastFile
        AlgorithmName      => 'MyArnOrName',    # min: 1, max: 170; OPTIONAL
        ContainerArguments => [
          'MyTrainingContainerArgument', ...    # max: 256
        ],    # min: 1, max: 100; OPTIONAL
        ContainerEntrypoint => [
          'MyTrainingContainerEntrypointString', ...    # max: 256
        ],    # min: 1, max: 100; OPTIONAL
        EnableSageMakerMetricsTimeSeries => 1,    # OPTIONAL
        MetricDefinitions                => [
          {
            Name  => 'MyMetricName',     # min: 1, max: 255
            Regex => 'MyMetricRegex',    # min: 1, max: 500

          },
          ...
        ],    # max: 40; OPTIONAL
        TrainingImage       => 'MyAlgorithmImage',    # max: 255; OPTIONAL
        TrainingImageConfig => {
          TrainingRepositoryAccessMode => 'Platform',    # values: Platform, Vpc
          TrainingRepositoryAuthConfig => {
            TrainingRepositoryCredentialsProviderArn =>
              'MyTrainingRepositoryCredentialsProviderArn',  # min: 1, max: 2048

          },    # OPTIONAL
        },    # OPTIONAL
      },
      OutputDataConfig => {
        S3OutputPath    => 'MyS3Uri',       # max: 1024
        CompressionType => 'GZIP',          # values: GZIP, NONE; OPTIONAL
        KmsKeyId        => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      ResourceConfig => {
        VolumeSizeInGB => 1,                # min: 1
        InstanceCount  => 1,                # OPTIONAL
        InstanceGroups => [
          {
            InstanceCount     => 1,                        # OPTIONAL
            InstanceGroupName => 'MyInstanceGroupName',    # min: 1, max: 64
            InstanceType      => 'ml.m4.xlarge'
            , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge

          },
          ...
        ],    # max: 5; OPTIONAL
        InstanceType => 'ml.m4.xlarge'
        , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
        KeepAlivePeriodInSeconds => 1,    # max: 3600; OPTIONAL
        TrainingPlanArn => 'MyTrainingPlanArn',   # min: 50, max: 2048; OPTIONAL
        VolumeKmsKeyId  => 'MyKmsKeyId',          # max: 2048; OPTIONAL
      },
      RoleArn           => 'MyRoleArn',
      StoppingCondition => {
        MaxPendingTimeInSeconds => 1,    # min: 7200, max: 2419200; OPTIONAL
        MaxRuntimeInSeconds     => 1,    # min: 1; OPTIONAL
        MaxWaitTimeInSeconds    => 1,    # min: 1; OPTIONAL
      },
      TrainingJobName  => 'MyTrainingJobName',
      CheckpointConfig => {
        S3Uri     => 'MyS3Uri',            # max: 1024
        LocalPath => 'MyDirectoryPath',    # max: 4096; OPTIONAL
      },    # OPTIONAL
      DebugHookConfig => {
        S3OutputPath             => 'MyS3Uri',    # max: 1024
        CollectionConfigurations => [
          {
            CollectionName => 'MyCollectionName',   # min: 1, max: 256; OPTIONAL
            CollectionParameters => {
              'MyConfigKey' =>
                'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
            },    # max: 20; OPTIONAL
          },
          ...
        ],    # max: 20; OPTIONAL
        HookParameters => {
          'MyConfigKey' =>
            'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
        },    # max: 20; OPTIONAL
        LocalPath => 'MyDirectoryPath',    # max: 4096; OPTIONAL
      },    # OPTIONAL
      DebugRuleConfigurations => [
        {
          RuleConfigurationName => 'MyRuleConfigurationName', # min: 1, max: 256
          RuleEvaluatorImage    => 'MyAlgorithmImage',    # max: 255; OPTIONAL
          InstanceType          => 'ml.t3.medium'
          , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge; OPTIONAL
          LocalPath      => 'MyDirectoryPath',    # max: 4096; OPTIONAL
          RuleParameters => {
            'MyConfigKey' =>
              'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
          },    # max: 100; OPTIONAL
          S3OutputPath   => 'MyS3Uri',    # max: 1024
          VolumeSizeInGB => 1,            # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
      EnableManagedSpotTraining             => 1,    # OPTIONAL
      EnableNetworkIsolation                => 1,    # OPTIONAL
      Environment                           => {
        'MyTrainingEnvironmentKey' =>
          'MyTrainingEnvironmentValue',    # key: max: 512, value: max: 512
      },    # OPTIONAL
      ExperimentConfig => {
        ExperimentName => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        RunName        => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        TrialComponentDisplayName =>
          'MyExperimentEntityName',                 # min: 1, max: 120; OPTIONAL
        TrialName => 'MyExperimentEntityName',      # min: 1, max: 120; OPTIONAL
      },    # OPTIONAL
      HyperParameters => {
        'MyHyperParameterKey' =>
          'MyHyperParameterValue',    # key: max: 256, value: max: 2500
      },    # OPTIONAL
      InfraCheckConfig => {
        EnableInfraCheck => 1,    # OPTIONAL
      },    # OPTIONAL
      InputDataConfig => [
        {
          ChannelName => 'MyChannelName',    # min: 1, max: 64
          DataSource  => {
            FileSystemDataSource => {
              DirectoryPath        => 'MyDirectoryPath',   # max: 4096; OPTIONAL
              FileSystemAccessMode => 'rw',                # values: rw, ro
              FileSystemId         => 'MyFileSystemId',    # min: 11, max: 21
              FileSystemType       => 'EFS',    # values: EFS, FSxLustre

            },    # OPTIONAL
            S3DataSource => {
              S3DataType => 'ManifestFile'
              ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
              S3Uri          => 'MyS3Uri',    # max: 1024
              AttributeNames => [
                'MyAttributeName', ...        # min: 1, max: 256
              ],    # max: 16; OPTIONAL
              HubAccessConfig => {
                HubContentArn => 'MyHubContentArn',    # max: 255

              },    # OPTIONAL
              InstanceGroupNames => [
                'MyInstanceGroupName', ...    # min: 1, max: 64
              ],    # max: 5; OPTIONAL
              ModelAccessConfig => {
                AcceptEula => 1,

              },    # OPTIONAL
              S3DataDistributionType => 'FullyReplicated'
              ,     # values: FullyReplicated, ShardedByS3Key; OPTIONAL
            },    # OPTIONAL
          },
          CompressionType   => 'None',            # values: None, Gzip; OPTIONAL
          ContentType       => 'MyContentType',   # max: 256; OPTIONAL
          InputMode         => 'Pipe',            # values: Pipe, File, FastFile
          RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
          ShuffleConfig     => {
            Seed => 1,

          },                              # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ProfilerConfig => {
        DisableProfiler                 => 1,    # OPTIONAL
        ProfilingIntervalInMilliseconds => 1,    # OPTIONAL
        ProfilingParameters             => {
          'MyConfigKey' =>
            'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
        },    # max: 20; OPTIONAL
        S3OutputPath => 'MyS3Uri',    # max: 1024
      },    # OPTIONAL
      ProfilerRuleConfigurations => [
        {
          RuleConfigurationName => 'MyRuleConfigurationName', # min: 1, max: 256
          RuleEvaluatorImage    => 'MyAlgorithmImage',    # max: 255; OPTIONAL
          InstanceType          => 'ml.t3.medium'
          , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge; OPTIONAL
          LocalPath      => 'MyDirectoryPath',    # max: 4096; OPTIONAL
          RuleParameters => {
            'MyConfigKey' =>
              'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
          },    # max: 100; OPTIONAL
          S3OutputPath   => 'MyS3Uri',    # max: 1024
          VolumeSizeInGB => 1,            # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RemoteDebugConfig => {
        EnableRemoteDebug => 1,    # OPTIONAL
      },    # OPTIONAL
      RetryStrategy => {
        MaximumRetryAttempts => 1,    # min: 1, max: 30

      },    # OPTIONAL
      SessionChainingConfig => {
        EnableSessionTagChaining => 1,    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TensorBoardOutputConfig => {
        S3OutputPath => 'MyS3Uri',            # max: 1024
        LocalPath    => 'MyDirectoryPath',    # max: 4096; OPTIONAL
      },    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $TrainingJobArn = $CreateTrainingJobResponse->TrainingJobArn;

    # Returns a L<Paws::SageMaker::CreateTrainingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateTrainingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

The registry path of the Docker image that contains the training
algorithm and algorithm-specific metadata, including the input mode.
For more information about algorithms provided by SageMaker, see
Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). For
information about providing your own algorithms, see Using Your Own
Algorithms with Amazon SageMaker
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).



=head2 CheckpointConfig => L<Paws::SageMaker::CheckpointConfig>

Contains information about the output location for managed spot
training checkpoint data.



=head2 DebugHookConfig => L<Paws::SageMaker::DebugHookConfig>





=head2 DebugRuleConfigurations => ArrayRef[L<Paws::SageMaker::DebugRuleConfiguration>]

Configuration information for Amazon SageMaker Debugger rules for
debugging output tensors.



=head2 EnableInterContainerTrafficEncryption => Bool

To encrypt all communications between ML compute instances in
distributed training, choose C<True>. Encryption provides greater
security for distributed training, but training might take longer. How
long it takes depends on the amount of communication between compute
instances, especially if you use a deep learning algorithm in
distributed training. For more information, see Protect Communications
Between ML Compute Instances in a Distributed Training Job
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html).



=head2 EnableManagedSpotTraining => Bool

To train models using managed spot training, choose C<True>. Managed
spot training provides a fully managed and scalable infrastructure for
training machine learning models. this option is useful when training
jobs can be interrupted and when there is flexibility when the training
job is run.

The complete and intermediate results of jobs are stored in an Amazon
S3 bucket, and can be used as a starting point to train models
incrementally. Amazon SageMaker provides metrics and logs in
CloudWatch. They can be used to see when managed spot training jobs are
running, interrupted, resumed, or completed.



=head2 EnableNetworkIsolation => Bool

Isolates the training container. No inbound or outbound network calls
can be made, except for calls between peers within a training cluster
for distributed training. If you enable network isolation for training
jobs that are configured to use a VPC, SageMaker downloads and uploads
customer data and model artifacts through the specified VPC, but the
training container does not have network access.



=head2 Environment => L<Paws::SageMaker::TrainingEnvironmentMap>

The environment variables to set in the Docker container.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any environment fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by security-sensitive information included in the request
environment variable or plain text fields.



=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>





=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

Algorithm-specific parameters that influence the quality of the model.
You set hyperparameters before you start the learning process. For a
list of hyperparameters for each training algorithm provided by
SageMaker, see Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

You can specify a maximum of 100 hyperparameters. Each hyperparameter
is a key-value pair. Each key and value is limited to 256 characters,
as specified by the C<Length Constraint>.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any hyperparameter fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by any security-sensitive information included in the request
hyperparameter variable or plain text fields.



=head2 InfraCheckConfig => L<Paws::SageMaker::InfraCheckConfig>

Contains information about the infrastructure health check
configuration for the training job.



=head2 InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

An array of C<Channel> objects. Each channel is a named input source.
C<InputDataConfig> describes the input data and its location.

Algorithms can accept input data from one or more channels. For
example, an algorithm might have two channels of input data,
C<training_data> and C<validation_data>. The configuration for each
channel provides the S3, EFS, or FSx location where the input data is
stored. It also provides information about the stored data: the MIME
type, compression method, and whether the data is wrapped in RecordIO
format.

Depending on the input mode that the algorithm supports, SageMaker
either copies input data files from an S3 bucket to a local directory
in the Docker container, or makes it available as input streams. For
example, if you specify an EFS location, input data files are available
as input streams. They do not need to be downloaded.

Your input must be in the same Amazon Web Services region as your
training job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

Specifies the path to the S3 location where you want to store model
artifacts. SageMaker creates subfolders for the artifacts.



=head2 ProfilerConfig => L<Paws::SageMaker::ProfilerConfig>





=head2 ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]

Configuration information for Amazon SageMaker Debugger rules for
profiling system and framework metrics.



=head2 RemoteDebugConfig => L<Paws::SageMaker::RemoteDebugConfig>

Configuration for remote debugging. To learn more about the remote
debugging functionality of SageMaker, see Access a training container
through Amazon Web Services Systems Manager (SSM) for remote debugging
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-remote-debugging.html).



=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

The resources, including the ML compute instances and ML storage
volumes, to use for model training.

ML storage volumes store model artifacts and incremental states.
Training algorithms might also use ML storage volumes for scratch
space. If you want SageMaker to use the ML storage volume to store the
training data, choose C<File> as the C<TrainingInputMode> in the
algorithm specification. For distributed training algorithms, specify
an instance count greater than 1.



=head2 RetryStrategy => L<Paws::SageMaker::RetryStrategy>

The number of times to retry the job when the job fails due to an
C<InternalServerError>.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that SageMaker can assume
to perform tasks on your behalf.

During model training, SageMaker needs your permission to read input
data from an S3 bucket, download a Docker image that contains training
code, write model artifacts to an S3 bucket, write logs to Amazon
CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant
permissions for all of these tasks to an IAM role. For more
information, see SageMaker Roles
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to SageMaker, the caller of this API must
have the C<iam:PassRole> permission.



=head2 SessionChainingConfig => L<Paws::SageMaker::SessionChainingConfig>

Contains information about attribute-based access control (ABAC) for
the training job.



=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

Specifies a limit to how long a model training job can run. It also
specifies how long a managed Spot training job has to complete. When
the job reaches the time limit, SageMaker ends the training job. Use
this API to cap model training costs.

To stop a job, SageMaker sends the algorithm the C<SIGTERM> signal,
which delays job termination for 120 seconds. Algorithms can use this
120-second window to save the model artifacts, so the results of
training are not lost.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any tags. As part of the shared
responsibility model, you are responsible for any potential exposure,
unauthorized access, or compromise of your sensitive data if caused by
any security-sensitive information included in the request tag variable
or plain text fields.



=head2 TensorBoardOutputConfig => L<Paws::SageMaker::TensorBoardOutputConfig>





=head2 B<REQUIRED> TrainingJobName => Str

The name of the training job. The name must be unique within an Amazon
Web Services Region in an Amazon Web Services account.



=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html)
object that specifies the VPC that you want your training job to
connect to. Control access to and from your training container by
configuring the VPC. For more information, see Protect Training Jobs by
Using an Amazon Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrainingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

