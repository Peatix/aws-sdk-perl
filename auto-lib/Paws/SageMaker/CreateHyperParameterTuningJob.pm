
package Paws::SageMaker::CreateHyperParameterTuningJob;
  use Moose;
  has Autotune => (is => 'ro', isa => 'Paws::SageMaker::Autotune');
  has HyperParameterTuningJobConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobConfig', required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition');
  has TrainingJobDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HyperParameterTrainingJobDefinition]');
  has WarmStartConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobWarmStartConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHyperParameterTuningJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHyperParameterTuningJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHyperParameterTuningJob - Arguments for method CreateHyperParameterTuningJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHyperParameterTuningJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHyperParameterTuningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHyperParameterTuningJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateHyperParameterTuningJobResponse =
      $api . sagemaker->CreateHyperParameterTuningJob(
      HyperParameterTuningJobConfig => {
        ResourceLimits => {
          MaxParallelTrainingJobs => 1,    # min: 1
          MaxNumberOfTrainingJobs => 1,    # min: 1; OPTIONAL
          MaxRuntimeInSeconds     => 1,    # min: 120, max: 15768000; OPTIONAL
        },
        Strategy => 'Bayesian',    # values: Bayesian, Random, Hyperband, Grid
        HyperParameterTuningJobObjective => {
          MetricName => 'MyMetricName',    # min: 1, max: 255
          Type       => 'Maximize',        # values: Maximize, Minimize

        },    # OPTIONAL
        ParameterRanges => {
          AutoParameters => [
            {
              Name      => 'MyParameterKey',      # max: 256
              ValueHint => 'MyParameterValue',    # max: 256

            },
            ...
          ],    # max: 100; OPTIONAL
          CategoricalParameterRanges => [
            {
              Name   => 'MyParameterKey',    # max: 256
              Values => [
                'MyParameterValue', ...      # max: 256
              ],    # min: 1, max: 30

            },
            ...
          ],    # max: 30; OPTIONAL
          ContinuousParameterRanges => [
            {
              MaxValue    => 'MyParameterValue',    # max: 256
              MinValue    => 'MyParameterValue',    # max: 256
              Name        => 'MyParameterKey',      # max: 256
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # max: 30; OPTIONAL
          IntegerParameterRanges => [
            {
              MaxValue    => 'MyParameterValue',    # max: 256
              MinValue    => 'MyParameterValue',    # max: 256
              Name        => 'MyParameterKey',      # max: 256
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # max: 30; OPTIONAL
        },    # OPTIONAL
        RandomSeed     => 1,    # OPTIONAL
        StrategyConfig => {
          HyperbandStrategyConfig => {
            MaxResource => 1,    # min: 1; OPTIONAL
            MinResource => 1,    # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TrainingJobEarlyStoppingType => 'Off',    # values: Off, Auto; OPTIONAL
        TuningJobCompletionCriteria  => {
          BestObjectiveNotImproving => {
            MaxNumberOfTrainingJobsNotImproving => 1,    # min: 3; OPTIONAL
          },    # OPTIONAL
          ConvergenceDetected => {
            CompleteOnConvergence =>
              'Disabled',    # values: Disabled, Enabled; OPTIONAL
          },    # OPTIONAL
          TargetObjectiveMetricValue => 1.0,    # OPTIONAL
        },    # OPTIONAL
      },
      HyperParameterTuningJobName => 'MyHyperParameterTuningJobName',
      Autotune                    => {
        Mode => 'Enabled',    # values: Enabled

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TrainingJobDefinition => {
        AlgorithmSpecification => {
          TrainingInputMode => 'Pipe',           # values: Pipe, File, FastFile
          AlgorithmName     => 'MyArnOrName',    # min: 1, max: 170; OPTIONAL
          MetricDefinitions => [
            {
              Name  => 'MyMetricName',     # min: 1, max: 255
              Regex => 'MyMetricRegex',    # min: 1, max: 500

            },
            ...
          ],    # max: 40; OPTIONAL
          TrainingImage => 'MyAlgorithmImage',    # max: 255; OPTIONAL
        },
        OutputDataConfig => {
          S3OutputPath    => 'MyS3Uri',           # max: 1024
          CompressionType => 'GZIP',              # values: GZIP, NONE; OPTIONAL
          KmsKeyId        => 'MyKmsKeyId',        # max: 2048; OPTIONAL
        },
        RoleArn           => 'MyRoleArn',         # min: 20, max: 2048
        StoppingCondition => {
          MaxPendingTimeInSeconds => 1,    # min: 7200, max: 2419200; OPTIONAL
          MaxRuntimeInSeconds     => 1,    # min: 1; OPTIONAL
          MaxWaitTimeInSeconds    => 1,    # min: 1; OPTIONAL
        },
        CheckpointConfig => {
          S3Uri     => 'MyS3Uri',            # max: 1024
          LocalPath => 'MyDirectoryPath',    # max: 4096; OPTIONAL
        },    # OPTIONAL
        DefinitionName => 'MyHyperParameterTrainingJobDefinitionName'
        ,     # min: 1, max: 64; OPTIONAL
        EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
        EnableManagedSpotTraining             => 1,    # OPTIONAL
        EnableNetworkIsolation                => 1,    # OPTIONAL
        Environment                           => {
          'MyHyperParameterTrainingJobEnvironmentKey' =>
            'MyHyperParameterTrainingJobEnvironmentValue'
          ,    # key: max: 512, value: max: 512
        },    # max: 48; OPTIONAL
        HyperParameterRanges => {
          AutoParameters => [
            {
              Name      => 'MyParameterKey',      # max: 256
              ValueHint => 'MyParameterValue',    # max: 256

            },
            ...
          ],    # max: 100; OPTIONAL
          CategoricalParameterRanges => [
            {
              Name   => 'MyParameterKey',    # max: 256
              Values => [
                'MyParameterValue', ...      # max: 256
              ],    # min: 1, max: 30

            },
            ...
          ],    # max: 30; OPTIONAL
          ContinuousParameterRanges => [
            {
              MaxValue    => 'MyParameterValue',    # max: 256
              MinValue    => 'MyParameterValue',    # max: 256
              Name        => 'MyParameterKey',      # max: 256
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # max: 30; OPTIONAL
          IntegerParameterRanges => [
            {
              MaxValue    => 'MyParameterValue',    # max: 256
              MinValue    => 'MyParameterValue',    # max: 256
              Name        => 'MyParameterKey',      # max: 256
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # max: 30; OPTIONAL
        },    # OPTIONAL
        HyperParameterTuningResourceConfig => {
          AllocationStrategy => 'Prioritized',   # values: Prioritized; OPTIONAL
          InstanceConfigs    => [
            {
              InstanceCount => 1,
              InstanceType  => 'ml.m4.xlarge'
              , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
              VolumeSizeInGB => 1,    # min: 1

            },
            ...
          ],    # min: 1, max: 6; OPTIONAL
          InstanceCount => 1,
          InstanceType  => 'ml.m4.xlarge'
          , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          VolumeSizeInGB => 1,               # OPTIONAL
        },    # OPTIONAL
        InputDataConfig => [
          {
            ChannelName => 'MyChannelName',    # min: 1, max: 64
            DataSource  => {
              FileSystemDataSource => {
                DirectoryPath        => 'MyDirectoryPath', # max: 4096; OPTIONAL
                FileSystemAccessMode => 'rw',              # values: rw, ro
                FileSystemId         => 'MyFileSystemId',  # min: 11, max: 21
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
            CompressionType   => 'None',          # values: None, Gzip; OPTIONAL
            ContentType       => 'MyContentType', # max: 256; OPTIONAL
            InputMode         => 'Pipe',          # values: Pipe, File, FastFile
            RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
            ShuffleConfig     => {
              Seed => 1,

            },                              # OPTIONAL
          },
          ...
        ],    # min: 1, max: 20; OPTIONAL
        ResourceConfig => {
          VolumeSizeInGB => 1,    # min: 1
          InstanceCount  => 1,
          InstanceGroups => [
            {
              InstanceCount     => 1,
              InstanceGroupName => 'MyInstanceGroupName',    # min: 1, max: 64
              InstanceType      => 'ml.m4.xlarge'
              , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge

            },
            ...
          ],    # max: 5; OPTIONAL
          InstanceType => 'ml.m4.xlarge'
          , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
          KeepAlivePeriodInSeconds => 1,    # max: 3600; OPTIONAL
          TrainingPlanArn => 'MyTrainingPlanArn', # min: 50, max: 2048; OPTIONAL
          VolumeKmsKeyId  => 'MyKmsKeyId',        # max: 2048; OPTIONAL
        },    # OPTIONAL
        RetryStrategy => {
          MaximumRetryAttempts => 1,    # min: 1, max: 30

        },    # OPTIONAL
        StaticHyperParameters => {
          'MyHyperParameterKey' =>
            'MyHyperParameterValue',    # key: max: 256, value: max: 2500
        },    # max: 100; OPTIONAL
        TuningObjective => {
          MetricName => 'MyMetricName',    # min: 1, max: 255
          Type       => 'Maximize',        # values: Maximize, Minimize

        },    # OPTIONAL
        VpcConfig => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...    # max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...    # max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },    # OPTIONAL
      TrainingJobDefinitions => [
        {
          AlgorithmSpecification => {
            TrainingInputMode => 'Pipe',          # values: Pipe, File, FastFile
            AlgorithmName     => 'MyArnOrName',   # min: 1, max: 170; OPTIONAL
            MetricDefinitions => [
              {
                Name  => 'MyMetricName',     # min: 1, max: 255
                Regex => 'MyMetricRegex',    # min: 1, max: 500

              },
              ...
            ],    # max: 40; OPTIONAL
            TrainingImage => 'MyAlgorithmImage',    # max: 255; OPTIONAL
          },
          OutputDataConfig => {
            S3OutputPath    => 'MyS3Uri',       # max: 1024
            CompressionType => 'GZIP',          # values: GZIP, NONE; OPTIONAL
            KmsKeyId        => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          },
          RoleArn           => 'MyRoleArn',     # min: 20, max: 2048
          StoppingCondition => {
            MaxPendingTimeInSeconds => 1,    # min: 7200, max: 2419200; OPTIONAL
            MaxRuntimeInSeconds     => 1,    # min: 1; OPTIONAL
            MaxWaitTimeInSeconds    => 1,    # min: 1; OPTIONAL
          },
          CheckpointConfig => {
            S3Uri     => 'MyS3Uri',            # max: 1024
            LocalPath => 'MyDirectoryPath',    # max: 4096; OPTIONAL
          },    # OPTIONAL
          DefinitionName => 'MyHyperParameterTrainingJobDefinitionName'
          ,     # min: 1, max: 64; OPTIONAL
          EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
          EnableManagedSpotTraining             => 1,    # OPTIONAL
          EnableNetworkIsolation                => 1,    # OPTIONAL
          Environment                           => {
            'MyHyperParameterTrainingJobEnvironmentKey' =>
              'MyHyperParameterTrainingJobEnvironmentValue'
            ,    # key: max: 512, value: max: 512
          },    # max: 48; OPTIONAL
          HyperParameterRanges => {
            AutoParameters => [
              {
                Name      => 'MyParameterKey',      # max: 256
                ValueHint => 'MyParameterValue',    # max: 256

              },
              ...
            ],    # max: 100; OPTIONAL
            CategoricalParameterRanges => [
              {
                Name   => 'MyParameterKey',    # max: 256
                Values => [
                  'MyParameterValue', ...      # max: 256
                ],    # min: 1, max: 30

              },
              ...
            ],    # max: 30; OPTIONAL
            ContinuousParameterRanges => [
              {
                MaxValue    => 'MyParameterValue',    # max: 256
                MinValue    => 'MyParameterValue',    # max: 256
                Name        => 'MyParameterKey',      # max: 256
                ScalingType => 'Auto'
                , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
              },
              ...
            ],    # max: 30; OPTIONAL
            IntegerParameterRanges => [
              {
                MaxValue    => 'MyParameterValue',    # max: 256
                MinValue    => 'MyParameterValue',    # max: 256
                Name        => 'MyParameterKey',      # max: 256
                ScalingType => 'Auto'
                , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
              },
              ...
            ],    # max: 30; OPTIONAL
          },    # OPTIONAL
          HyperParameterTuningResourceConfig => {
            AllocationStrategy => 'Prioritized', # values: Prioritized; OPTIONAL
            InstanceConfigs    => [
              {
                InstanceCount => 1,
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
                VolumeSizeInGB => 1,    # min: 1

              },
              ...
            ],    # min: 1, max: 6; OPTIONAL
            InstanceCount => 1,
            InstanceType  => 'ml.m4.xlarge'
            , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
            VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
            VolumeSizeInGB => 1,               # OPTIONAL
          },    # OPTIONAL
          InputDataConfig => [
            {
              ChannelName => 'MyChannelName',    # min: 1, max: 64
              DataSource  => {
                FileSystemDataSource => {
                  DirectoryPath => 'MyDirectoryPath',    # max: 4096; OPTIONAL
                  FileSystemAccessMode => 'rw',               # values: rw, ro
                  FileSystemId         => 'MyFileSystemId',   # min: 11, max: 21
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
              CompressionType => 'None',          # values: None, Gzip; OPTIONAL
              ContentType     => 'MyContentType', # max: 256; OPTIONAL
              InputMode       => 'Pipe',          # values: Pipe, File, FastFile
              RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
              ShuffleConfig     => {
                Seed => 1,

              },                              # OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
          ResourceConfig => {
            VolumeSizeInGB => 1,    # min: 1
            InstanceCount  => 1,
            InstanceGroups => [
              {
                InstanceCount     => 1,
                InstanceGroupName => 'MyInstanceGroupName',    # min: 1, max: 64
                InstanceType      => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge

              },
              ...
            ],    # max: 5; OPTIONAL
            InstanceType => 'ml.m4.xlarge'
            , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
            KeepAlivePeriodInSeconds => 1,    # max: 3600; OPTIONAL
            TrainingPlanArn          =>
              'MyTrainingPlanArn',            # min: 50, max: 2048; OPTIONAL
            VolumeKmsKeyId => 'MyKmsKeyId',   # max: 2048; OPTIONAL
          },    # OPTIONAL
          RetryStrategy => {
            MaximumRetryAttempts => 1,    # min: 1, max: 30

          },    # OPTIONAL
          StaticHyperParameters => {
            'MyHyperParameterKey' =>
              'MyHyperParameterValue',    # key: max: 256, value: max: 2500
          },    # max: 100; OPTIONAL
          TuningObjective => {
            MetricName => 'MyMetricName',    # min: 1, max: 255
            Type       => 'Maximize',        # values: Maximize, Minimize

          },    # OPTIONAL
          VpcConfig => {
            SecurityGroupIds => [
              'MySecurityGroupId', ...    # max: 32
            ],    # min: 1, max: 5
            Subnets => [
              'MySubnetId', ...    # max: 32
            ],    # min: 1, max: 16

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      WarmStartConfig => {
        ParentHyperParameterTuningJobs => [
          {
            HyperParameterTuningJobName =>
              'MyHyperParameterTuningJobName',    # min: 1, max: 32
          },
          ...
        ],    # min: 1, max: 5
        WarmStartType => 'IdenticalDataAndAlgorithm'
        ,     # values: IdenticalDataAndAlgorithm, TransferLearning

      },    # OPTIONAL
      );

    # Results:
    my $HyperParameterTuningJobArn =
      $CreateHyperParameterTuningJobResponse->HyperParameterTuningJobArn;

   # Returns a L<Paws::SageMaker::CreateHyperParameterTuningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateHyperParameterTuningJob>

=head1 ATTRIBUTES


=head2 Autotune => L<Paws::SageMaker::Autotune>

Configures SageMaker Automatic model tuning (AMT) to automatically find
optimal parameters for the following fields:

=over

=item *

ParameterRanges
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-ParameterRanges):
The names and ranges of parameters that a hyperparameter tuning job can
optimize.

=item *

ResourceLimits
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ResourceLimits.html):
The maximum resources that can be used for a training job. These
resources include the maximum number of training jobs, the maximum
runtime of a tuning job, and the maximum number of training jobs to run
at the same time.

=item *

TrainingJobEarlyStoppingType
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-TrainingJobEarlyStoppingType):
A flag that specifies whether or not to use early stopping for training
jobs launched by a hyperparameter tuning job.

=item *

RetryStrategy
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html#sagemaker-Type-HyperParameterTrainingJobDefinition-RetryStrategy):
The number of times to retry a training job.

=item *

Strategy
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html):
Specifies how hyperparameter tuning chooses the combinations of
hyperparameter values to use for the training jobs that it launches.

=item *

ConvergenceDetected
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ConvergenceDetected.html):
A flag to indicate that Automatic model tuning (AMT) has detected model
convergence.

=back




=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The HyperParameterTuningJobConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html)
object that describes the tuning job, including the search strategy,
the objective metric used to evaluate training jobs, ranges of
parameters to search, and resource limits for the tuning job. For more
information, see How Hyperparameter Tuning Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html).



=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job. This name is the prefix for the names of
all training jobs that this tuning job launches. The name must be
unique within the same Amazon Web Services account and Amazon Web
Services Region. The name must have 1 to 32 characters. Valid
characters are a-z, A-Z, 0-9, and : + = @ _ % - (hyphen). The name is
not case sensitive.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).

Tags that you specify for the tuning job are also added to all training
jobs that the tuning job launches.



=head2 TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The HyperParameterTrainingJobDefinition
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html)
object that describes the training jobs that this tuning job launches,
including static hyperparameters, input data configuration, output data
configuration, resource configuration, and stopping condition.



=head2 TrainingJobDefinitions => ArrayRef[L<Paws::SageMaker::HyperParameterTrainingJobDefinition>]

A list of the HyperParameterTrainingJobDefinition
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html)
objects launched for this tuning job.



=head2 WarmStartConfig => L<Paws::SageMaker::HyperParameterTuningJobWarmStartConfig>

Specifies the configuration for starting the hyperparameter tuning job
using one or more previous tuning jobs as a starting point. The results
of previous tuning jobs are used to inform which combinations of
hyperparameters to search over in the new tuning job.

All training jobs launched by the new hyperparameter tuning job are
evaluated by using the objective metric. If you specify
C<IDENTICAL_DATA_AND_ALGORITHM> as the C<WarmStartType> value for the
warm start configuration, the training job that performs the best in
the new tuning job is compared to the best training jobs from the
parent tuning jobs. From these, the training job that performs the best
as measured by the objective metric is returned as the overall best
training job.

All training jobs launched by parent hyperparameter tuning jobs and the
new hyperparameter tuning jobs count against the limit of training jobs
for the tuning job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

