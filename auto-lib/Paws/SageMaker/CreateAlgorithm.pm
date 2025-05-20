
package Paws::SageMaker::CreateAlgorithm;
  use Moose;
  has AlgorithmDescription => (is => 'ro', isa => 'Str');
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingSpecification => (is => 'ro', isa => 'Paws::SageMaker::TrainingSpecification', required => 1);
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmValidationSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlgorithm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAlgorithmOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAlgorithm - Arguments for method CreateAlgorithm on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlgorithm on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAlgorithm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlgorithm.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAlgorithmOutput = $api . sagemaker->CreateAlgorithm(
      AlgorithmName         => 'MyEntityName',
      TrainingSpecification => {
        SupportedTrainingInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
        ],
        TrainingChannels => [
          {
            Name                  => 'MyChannelName',    # min: 1, max: 64
            SupportedContentTypes => [
              'MyContentType', ...                       # max: 256
            ],
            SupportedInputModes => [
              'Pipe', ...    # values: Pipe, File, FastFile
            ],    # min: 1
            Description => 'MyEntityDescription',    # max: 1024; OPTIONAL
            IsRequired  => 1,                        # OPTIONAL
            SupportedCompressionTypes => [
              'None', ...                            # values: None, Gzip
            ],    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 8
        TrainingImage          => 'MyContainerImage',    # max: 255
        AdditionalS3DataSource => {
          S3DataType      => 'S3Object',    # values: S3Object, S3Prefix
          S3Uri           => 'MyS3Uri',     # max: 1024
          CompressionType => 'None',        # values: None, Gzip
          ETag            => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        MetricDefinitions => [
          {
            Name  => 'MyMetricName',     # min: 1, max: 255
            Regex => 'MyMetricRegex',    # min: 1, max: 500

          },
          ...
        ],    # max: 40; OPTIONAL
        SupportedHyperParameters => [
          {
            Name => 'MyParameterName',    # max: 256
            Type =>
              'Integer',    # values: Integer, Continuous, Categorical, FreeText
            DefaultValue => 'MyHyperParameterValue',    # max: 2500; OPTIONAL
            Description  => 'MyEntityDescription',      # max: 1024; OPTIONAL
            IsRequired   => 1,                          # OPTIONAL
            IsTunable    => 1,                          # OPTIONAL
            Range        => {
              CategoricalParameterRangeSpecification => {
                Values => [
                  'MyParameterValue', ...    # max: 256
                ],    # min: 1, max: 30

              },    # OPTIONAL
              ContinuousParameterRangeSpecification => {
                MaxValue => 'MyParameterValue',    # max: 256
                MinValue => 'MyParameterValue',    # max: 256

              },    # OPTIONAL
              IntegerParameterRangeSpecification => {
                MaxValue => 'MyParameterValue',    # max: 256
                MinValue => 'MyParameterValue',    # max: 256

              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        SupportedTuningJobObjectiveMetrics => [
          {
            MetricName => 'MyMetricName',    # min: 1, max: 255
            Type       => 'Maximize',        # values: Maximize, Minimize

          },
          ...
        ],    # OPTIONAL
        SupportsDistributedTraining => 1,                  # OPTIONAL
        TrainingImageDigest         => 'MyImageDigest',    # max: 72; OPTIONAL
      },
      AlgorithmDescription   => 'MyEntityDescription',     # OPTIONAL
      CertifyForMarketplace  => 1,                         # OPTIONAL
      InferenceSpecification => {
        Containers => [
          {
            Image                  => 'MyContainerImage',    # max: 255
            AdditionalS3DataSource => {
              S3DataType      => 'S3Object',    # values: S3Object, S3Prefix
              S3Uri           => 'MyS3Uri',     # max: 1024
              CompressionType => 'None',        # values: None, Gzip
              ETag            => 'MyString',    # OPTIONAL
            },    # OPTIONAL
            ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
            Environment       => {
              'MyEnvironmentKey' =>
                'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
            },    # max: 100; OPTIONAL
            Framework        => 'MyString',        # OPTIONAL
            FrameworkVersion =>
              'MyModelPackageFrameworkVersion',    # min: 3, max: 10; OPTIONAL
            ImageDigest     => 'MyImageDigest',    # max: 72; OPTIONAL
            ModelDataETag   => 'MyString',         # OPTIONAL
            ModelDataSource => {
              S3DataSource => {
                CompressionType => 'None',          # values: None, Gzip
                S3DataType      => 'S3Prefix',      # values: S3Prefix, S3Object
                S3Uri           => 'MyS3ModelUri',  # max: 1024
                ETag            => 'MyString',      # OPTIONAL
                HubAccessConfig => {
                  HubContentArn => 'MyHubContentArn',    # max: 255

                },    # OPTIONAL
                ManifestEtag      => 'MyString',        # OPTIONAL
                ManifestS3Uri     => 'MyS3ModelUri',    # max: 1024
                ModelAccessConfig => {
                  AcceptEula => 1,

                },                                      # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            ModelDataUrl => 'MyUrl',    # max: 1024; OPTIONAL
            ModelInput   => {
              DataInputConfig => 'MyDataInputConfig',    # min: 1, max: 16384

            },    # OPTIONAL
            NearestModelName => 'MyString',       # OPTIONAL
            ProductId        => 'MyProductId',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 15
        SupportedContentTypes => [
          'MyContentType', ...    # max: 256
        ],
        SupportedRealtimeInferenceInstanceTypes => [
          'ml.t2.medium',
          ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge
        ],    # OPTIONAL
        SupportedResponseMIMETypes => [
          'MyResponseMIMEType', ...    # max: 1024
        ],    # OPTIONAL
        SupportedTransformInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ValidationSpecification => {
        ValidationProfiles => [
          {
            ProfileName           => 'MyEntityName',    # min: 1, max: 63
            TrainingJobDefinition => {
              InputDataConfig => [
                {
                  ChannelName => 'MyChannelName',    # min: 1, max: 64
                  DataSource  => {
                    FileSystemDataSource => {
                      DirectoryPath        => 'MyDirectoryPath',    # max: 4096
                      FileSystemAccessMode => 'rw',    # values: rw, ro
                      FileSystemId   => 'MyFileSystemId',    # min: 11, max: 21
                      FileSystemType => 'EFS',    # values: EFS, FSxLustre

                    },    # OPTIONAL
                    S3DataSource => {
                      S3DataType => 'ManifestFile'
                      ,  # values: ManifestFile, S3Prefix, AugmentedManifestFile
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
                  CompressionType   => 'None',             # values: None, Gzip
                  ContentType       => 'MyContentType',    # max: 256
                  InputMode         => 'Pipe',    # values: Pipe, File, FastFile
                  RecordWrapperType =>
                    'None',    # values: None, RecordIO; OPTIONAL
                  ShuffleConfig => {
                    Seed => 1,

                  },           # OPTIONAL
                },
                ...
              ],    # min: 1, max: 20
              OutputDataConfig => {
                S3OutputPath    => 'MyS3Uri',     # max: 1024
                CompressionType => 'GZIP',        # values: GZIP, NONE; OPTIONAL
                KmsKeyId        => 'MyKmsKeyId',  # max: 2048; OPTIONAL
              },
              ResourceConfig => {
                VolumeSizeInGB => 1,              # min: 1
                InstanceCount  => 1,              # OPTIONAL
                InstanceGroups => [
                  {
                    InstanceCount     => 1,     # OPTIONAL
                    InstanceGroupName =>
                      'MyInstanceGroupName',    # min: 1, max: 64
                    InstanceType => 'ml.m4.xlarge'
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
              },
              StoppingCondition => {
                MaxPendingTimeInSeconds =>
                  1,    # min: 7200, max: 2419200; OPTIONAL
                MaxRuntimeInSeconds  => 1,    # min: 1; OPTIONAL
                MaxWaitTimeInSeconds => 1,    # min: 1; OPTIONAL
              },
              TrainingInputMode => 'Pipe',    # values: Pipe, File, FastFile
              HyperParameters   => {
                'MyHyperParameterKey' => 'MyHyperParameterValue'
                ,    # key: max: 256, value: max: 2500; OPTIONAL
              },    # max: 100; OPTIONAL
            },
            TransformJobDefinition => {
              TransformInput => {
                DataSource => {
                  S3DataSource => {
                    S3DataType => 'ManifestFile'
                    ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
                    S3Uri => 'MyS3Uri',    # max: 1024

                  },

                },
                CompressionType => 'None',             # values: None, Gzip
                ContentType     => 'MyContentType',    # max: 256
                SplitType       =>
                  'None',    # values: None, Line, RecordIO, TFRecord; OPTIONAL
              },
              TransformOutput => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                Accept       => 'MyAccept',      # max: 256; OPTIONAL
                AssembleWith => 'None',          # values: None, Line; OPTIONAL
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              TransformResources => {
                InstanceCount => 1,               # min: 1
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
                TransformAmiVersion =>
                  'MyTransformAmiVersion',    # min: 1, max: 63; OPTIONAL
                VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              BatchStrategy =>
                'MultiRecord',    # values: MultiRecord, SingleRecord; OPTIONAL
              Environment => {
                'MyTransformEnvironmentKey' => 'MyTransformEnvironmentValue'
                ,                 # key: max: 1024, value: max: 10240
              },    # max: 16; OPTIONAL
              MaxConcurrentTransforms => 1,    # OPTIONAL
              MaxPayloadInMB          => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 1
        ValidationRole => 'MyRoleArn',    # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $AlgorithmArn = $CreateAlgorithmOutput->AlgorithmArn;

    # Returns a L<Paws::SageMaker::CreateAlgorithmOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAlgorithm>

=head1 ATTRIBUTES


=head2 AlgorithmDescription => Str

A description of the algorithm.



=head2 B<REQUIRED> AlgorithmName => Str

The name of the algorithm.



=head2 CertifyForMarketplace => Bool

Whether to certify the algorithm so that it can be listed in Amazon Web
Services Marketplace.



=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Specifies details about inference jobs that the algorithm runs,
including the following:

=over

=item *

The Amazon ECR paths of containers that contain the inference code and
model artifacts.

=item *

The instance types that the algorithm supports for transform jobs and
real-time endpoints used for inference.

=item *

The input and output content formats that the algorithm supports for
inference.

=back




=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 B<REQUIRED> TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

Specifies details about training jobs run by this algorithm, including
the following:

=over

=item *

The Amazon ECR path of the container and the version digest of the
algorithm.

=item *

The hyperparameters that the algorithm supports.

=item *

The instance types that the algorithm supports for training.

=item *

Whether the algorithm supports distributed training.

=item *

The metrics that the algorithm emits to Amazon CloudWatch.

=item *

Which metrics that the algorithm emits can be used as the objective
metric for hyperparameter tuning jobs.

=item *

The input channels that the algorithm supports for training data. For
example, an algorithm might support C<train>, C<validation>, and
C<test> channels.

=back




=head2 ValidationSpecification => L<Paws::SageMaker::AlgorithmValidationSpecification>

Specifies configurations for one or more training jobs and that
SageMaker runs to test the algorithm's training code and, optionally,
one or more batch transform jobs that SageMaker runs to test the
algorithm's inference code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlgorithm in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

