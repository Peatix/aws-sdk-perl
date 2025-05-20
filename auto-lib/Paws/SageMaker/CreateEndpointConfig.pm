
package Paws::SageMaker::CreateEndpointConfig;
  use Moose;
  has AsyncInferenceConfig => (is => 'ro', isa => 'Paws::SageMaker::AsyncInferenceConfig');
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::DataCaptureConfig');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has ExplainerConfig => (is => 'ro', isa => 'Paws::SageMaker::ExplainerConfig');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]', required => 1);
  has ShadowProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpointConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateEndpointConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpointConfig - Arguments for method CreateEndpointConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpointConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateEndpointConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpointConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateEndpointConfigOutput = $api . sagemaker->CreateEndpointConfig(
      EndpointConfigName => 'MyEndpointConfigName',
      ProductionVariants => [
        {
          VariantName     => 'MyVariantName',    # max: 63
          AcceleratorType => 'ml.eia1.medium'
          , # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge; OPTIONAL
          ContainerStartupHealthCheckTimeoutInSeconds =>
            1,    # min: 60, max: 3600; OPTIONAL
          CoreDumpConfig => {
            DestinationS3Uri => 'MyDestinationS3Uri',    # max: 512
            KmsKeyId         => 'MyKmsKeyId',            # max: 2048; OPTIONAL
          },    # OPTIONAL
          EnableSSMAccess     => 1,                                   # OPTIONAL
          InferenceAmiVersion => 'al2-ami-sagemaker-inference-gpu-2'
          , # values: al2-ami-sagemaker-inference-gpu-2, al2-ami-sagemaker-inference-gpu-2-1, al2-ami-sagemaker-inference-gpu-3-1, al2-ami-sagemaker-inference-neuron-2; OPTIONAL
          InitialInstanceCount => 1,               # min: 1; OPTIONAL
          InitialVariantWeight => 1.0,             # OPTIONAL
          InstanceType         => 'ml.t2.medium'
          , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge; OPTIONAL
          ManagedInstanceScaling => {
            MaxInstanceCount => 1,         # min: 1; OPTIONAL
            MinInstanceCount => 1,         # OPTIONAL
            Status           => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          ModelDataDownloadTimeoutInSeconds => 1, # min: 60, max: 3600; OPTIONAL
          ModelName     => 'MyModelName',         # max: 63; OPTIONAL
          RoutingConfig => {
            RoutingStrategy => 'LEAST_OUTSTANDING_REQUESTS'
            ,    # values: LEAST_OUTSTANDING_REQUESTS, RANDOM

          },    # OPTIONAL
          ServerlessConfig => {
            MaxConcurrency         => 1,    # min: 1, max: 200
            MemorySizeInMB         => 1,    # min: 1024, max: 6144
            ProvisionedConcurrency => 1,    # min: 1, max: 200; OPTIONAL
          },    # OPTIONAL
          VolumeSizeInGB => 1,    # min: 1, max: 512; OPTIONAL
        },
        ...
      ],
      AsyncInferenceConfig => {
        OutputConfig => {
          KmsKeyId           => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          NotificationConfig => {
            ErrorTopic                 => 'MySnsTopicArn', # max: 2048; OPTIONAL
            IncludeInferenceResponseIn => [
              'SUCCESS_NOTIFICATION_TOPIC',
              ... # values: SUCCESS_NOTIFICATION_TOPIC, ERROR_NOTIFICATION_TOPIC
            ],    # max: 2; OPTIONAL
            SuccessTopic => 'MySnsTopicArn',    # max: 2048; OPTIONAL
          },    # OPTIONAL
          S3FailurePath => 'MyDestinationS3Uri',    # max: 512
          S3OutputPath  => 'MyDestinationS3Uri',    # max: 512
        },
        ClientConfig => {
          MaxConcurrentInvocationsPerInstance =>
            1,    # min: 1, max: 1000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DataCaptureConfig => {
        CaptureOptions => [
          {
            CaptureMode => 'Input',    # values: Input, Output, InputAndOutput

          },
          ...
        ],    # min: 1, max: 32
        DestinationS3Uri          => 'MyDestinationS3Uri',    # max: 512
        InitialSamplingPercentage => 1,                       # max: 100
        CaptureContentTypeHeader  => {
          CsvContentTypes => [
            'MyCsvContentType', ...                           # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
          JsonContentTypes => [
            'MyJsonContentType', ...    # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        EnableCapture => 1,               # OPTIONAL
        KmsKeyId      => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      EnableNetworkIsolation => 1,              # OPTIONAL
      ExecutionRoleArn       => 'MyRoleArn',    # OPTIONAL
      ExplainerConfig        => {
        ClarifyExplainerConfig => {
          ShapConfig => {
            ShapBaselineConfig => {
              MimeType     => 'MyClarifyMimeType',    # max: 255; OPTIONAL
              ShapBaseline =>
                'MyClarifyShapBaseline',    # min: 1, max: 4096; OPTIONAL
              ShapBaselineUri => 'MyUrl',   # max: 1024; OPTIONAL
            },
            NumberOfSamples => 1,           # min: 1; OPTIONAL
            Seed            => 1,           # OPTIONAL
            TextConfig      => {
              Granularity => 'token',       # values: token, sentence, paragraph
              Language    => 'af'
              , # values: af, sq, ar, hy, eu, bn, bg, ca, zh, hr, cs, da, nl, en, et, fi, fr, de, el, gu, he, hi, hu, is, id, ga, it, kn, ky, lv, lt, lb, mk, ml, mr, ne, nb, fa, pl, pt, ro, ru, sa, sr, tn, si, sk, sl, es, sv, tl, ta, tt, te, tr, uk, ur, yo, lij, xx

            },    # OPTIONAL
            UseLogit => 1,    # OPTIONAL
          },
          EnableExplanations =>
            'MyClarifyEnableExplanations',    # min: 1, max: 64; OPTIONAL
          InferenceConfig => {
            ContentTemplate =>
              'MyClarifyContentTemplate',     # min: 1, max: 64; OPTIONAL
            FeatureHeaders => [
              'MyClarifyHeader', ...          # min: 1, max: 64
            ],    # min: 1, max: 256; OPTIONAL
            FeatureTypes => [
              'numerical', ...    # values: numerical, categorical, text
            ],    # min: 1, max: 256; OPTIONAL
            FeaturesAttribute =>
              'MyClarifyFeaturesAttribute',    # min: 1, max: 64; OPTIONAL
            LabelAttribute =>
              'MyClarifyLabelAttribute',       # min: 1, max: 64; OPTIONAL
            LabelHeaders => [
              'MyClarifyHeader', ...           # min: 1, max: 64
            ],    # min: 1, max: 16; OPTIONAL
            LabelIndex           => 1,            # OPTIONAL
            MaxPayloadInMB       => 1,            # min: 1, max: 25; OPTIONAL
            MaxRecordCount       => 1,            # min: 1; OPTIONAL
            ProbabilityAttribute =>
              'MyClarifyProbabilityAttribute',    # min: 1, max: 64; OPTIONAL
            ProbabilityIndex => 1,                # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      KmsKeyId                 => 'MyKmsKeyId',    # OPTIONAL
      ShadowProductionVariants => [
        {
          VariantName     => 'MyVariantName',    # max: 63
          AcceleratorType => 'ml.eia1.medium'
          , # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge; OPTIONAL
          ContainerStartupHealthCheckTimeoutInSeconds =>
            1,    # min: 60, max: 3600; OPTIONAL
          CoreDumpConfig => {
            DestinationS3Uri => 'MyDestinationS3Uri',    # max: 512
            KmsKeyId         => 'MyKmsKeyId',            # max: 2048; OPTIONAL
          },    # OPTIONAL
          EnableSSMAccess     => 1,                                   # OPTIONAL
          InferenceAmiVersion => 'al2-ami-sagemaker-inference-gpu-2'
          , # values: al2-ami-sagemaker-inference-gpu-2, al2-ami-sagemaker-inference-gpu-2-1, al2-ami-sagemaker-inference-gpu-3-1, al2-ami-sagemaker-inference-neuron-2; OPTIONAL
          InitialInstanceCount => 1,               # min: 1; OPTIONAL
          InitialVariantWeight => 1.0,             # OPTIONAL
          InstanceType         => 'ml.t2.medium'
          , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.dl1.24xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.r8g.medium, ml.r8g.large, ml.r8g.xlarge, ml.r8g.2xlarge, ml.r8g.4xlarge, ml.r8g.8xlarge, ml.r8g.12xlarge, ml.r8g.16xlarge, ml.r8g.24xlarge, ml.r8g.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p4d.24xlarge, ml.c7g.large, ml.c7g.xlarge, ml.c7g.2xlarge, ml.c7g.4xlarge, ml.c7g.8xlarge, ml.c7g.12xlarge, ml.c7g.16xlarge, ml.m6g.large, ml.m6g.xlarge, ml.m6g.2xlarge, ml.m6g.4xlarge, ml.m6g.8xlarge, ml.m6g.12xlarge, ml.m6g.16xlarge, ml.m6gd.large, ml.m6gd.xlarge, ml.m6gd.2xlarge, ml.m6gd.4xlarge, ml.m6gd.8xlarge, ml.m6gd.12xlarge, ml.m6gd.16xlarge, ml.c6g.large, ml.c6g.xlarge, ml.c6g.2xlarge, ml.c6g.4xlarge, ml.c6g.8xlarge, ml.c6g.12xlarge, ml.c6g.16xlarge, ml.c6gd.large, ml.c6gd.xlarge, ml.c6gd.2xlarge, ml.c6gd.4xlarge, ml.c6gd.8xlarge, ml.c6gd.12xlarge, ml.c6gd.16xlarge, ml.c6gn.large, ml.c6gn.xlarge, ml.c6gn.2xlarge, ml.c6gn.4xlarge, ml.c6gn.8xlarge, ml.c6gn.12xlarge, ml.c6gn.16xlarge, ml.r6g.large, ml.r6g.xlarge, ml.r6g.2xlarge, ml.r6g.4xlarge, ml.r6g.8xlarge, ml.r6g.12xlarge, ml.r6g.16xlarge, ml.r6gd.large, ml.r6gd.xlarge, ml.r6gd.2xlarge, ml.r6gd.4xlarge, ml.r6gd.8xlarge, ml.r6gd.12xlarge, ml.r6gd.16xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.trn2.48xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p5.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge; OPTIONAL
          ManagedInstanceScaling => {
            MaxInstanceCount => 1,         # min: 1; OPTIONAL
            MinInstanceCount => 1,         # OPTIONAL
            Status           => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          ModelDataDownloadTimeoutInSeconds => 1, # min: 60, max: 3600; OPTIONAL
          ModelName     => 'MyModelName',         # max: 63; OPTIONAL
          RoutingConfig => {
            RoutingStrategy => 'LEAST_OUTSTANDING_REQUESTS'
            ,    # values: LEAST_OUTSTANDING_REQUESTS, RANDOM

          },    # OPTIONAL
          ServerlessConfig => {
            MaxConcurrency         => 1,    # min: 1, max: 200
            MemorySizeInMB         => 1,    # min: 1024, max: 6144
            ProvisionedConcurrency => 1,    # min: 1, max: 200; OPTIONAL
          },    # OPTIONAL
          VolumeSizeInGB => 1,    # min: 1, max: 512; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
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
    my $EndpointConfigArn = $CreateEndpointConfigOutput->EndpointConfigArn;

    # Returns a L<Paws::SageMaker::CreateEndpointConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateEndpointConfig>

=head1 ATTRIBUTES


=head2 AsyncInferenceConfig => L<Paws::SageMaker::AsyncInferenceConfig>

Specifies configuration for how an endpoint performs asynchronous
inference. This is a required field in order for your Endpoint to be
invoked using InvokeEndpointAsync
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpointAsync.html).



=head2 DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfig>





=head2 EnableNetworkIsolation => Bool

Sets whether all model containers deployed to the endpoint are
isolated. If they are, no inbound or outbound network calls can be made
to or from the model containers.



=head2 B<REQUIRED> EndpointConfigName => Str

The name of the endpoint configuration. You specify this name in a
CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
request.



=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI
can assume to perform actions on your behalf. For more information, see
SageMaker AI Roles
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker AI, the caller of this
action must have the C<iam:PassRole> permission.



=head2 ExplainerConfig => L<Paws::SageMaker::ExplainerConfig>

A member of C<CreateEndpointConfig> that enables explainers.



=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of a Amazon Web Services Key Management
Service key that SageMaker uses to encrypt data on the storage volume
attached to the ML compute instance that hosts the endpoint.

The KmsKeyId can be any of the following formats:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias name ARN:
C<arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias>

=back

The KMS key policy must grant permission to the IAM role that you
specify in your C<CreateEndpoint>, C<UpdateEndpoint> requests. For more
information, refer to the Amazon Web Services Key Management Service
section Using Key Policies in Amazon Web Services KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)

Certain Nitro-based instances include local storage, dependent on the
instance type. Local storage volumes are encrypted using a hardware
module on the instance. You can't request a C<KmsKeyId> when using an
instance type with local storage. If any of the models that you specify
in the C<ProductionVariants> parameter use nitro-based instances with
local storage, do not specify a value for the C<KmsKeyId> parameter. If
you specify a value for C<KmsKeyId> when using any nitro-based
instances with local storage, the call to C<CreateEndpointConfig>
fails.

For a list of instance types that support local instance storage, see
Instance Store Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes).

For more information about local instance storage encryption, see SSD
Instance Store Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html).



=head2 B<REQUIRED> ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint.



=head2 ShadowProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint in shadow mode with production traffic
replicated from the model specified on C<ProductionVariants>. If you
use this field, you can only specify one variant for
C<ProductionVariants> and one variant for C<ShadowProductionVariants>.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpointConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

