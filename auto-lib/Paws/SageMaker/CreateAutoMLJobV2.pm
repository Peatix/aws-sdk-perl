
package Paws::SageMaker::CreateAutoMLJobV2;
  use Moose;
  has AutoMLComputeConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLComputeConfig');
  has AutoMLJobInputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLJobChannel]', required => 1);
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has AutoMLProblemTypeConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLProblemTypeConfig', required => 1);
  has DataSplitConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLDataSplitConfig');
  has ModelDeployConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployConfig');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLSecurityConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoMLJobV2');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAutoMLJobV2Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJobV2 - Arguments for method CreateAutoMLJobV2 on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoMLJobV2 on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAutoMLJobV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoMLJobV2.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAutoMLJobV2Response = $api . sagemaker->CreateAutoMLJobV2(
      AutoMLJobInputDataConfig => [
        {
          ChannelType => 'training',    # values: training, validation; OPTIONAL
          CompressionType => 'None',             # values: None, Gzip; OPTIONAL
          ContentType     => 'MyContentType',    # max: 256; OPTIONAL
          DataSource      => {
            S3DataSource => {
              S3DataType => 'ManifestFile'
              ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
              S3Uri => 'MyS3Uri',    # max: 1024

            },

          },    # OPTIONAL
        },
        ...
      ],
      AutoMLJobName           => 'MyAutoMLJobName',
      AutoMLProblemTypeConfig => {
        ImageClassificationJobConfig => {
          CompletionCriteria => {
            MaxAutoMLJobRuntimeInSeconds      => 1, # min: 1; OPTIONAL
            MaxCandidates                     => 1, # min: 1, max: 750; OPTIONAL
            MaxRuntimePerTrainingJobInSeconds => 1, # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TabularJobConfig => {
          TargetAttributeName       => 'MyTargetAttributeName',    # min: 1
          CandidateGenerationConfig => {
            AlgorithmsConfig => [
              {
                AutoMLAlgorithms => [
                  'xgboost',
                  ... # values: xgboost, linear-learner, mlp, lightgbm, catboost, randomforest, extra-trees, nn-torch, fastai, cnn-qr, deepar, prophet, npts, arima, ets
                ],    # max: 11

              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          CompletionCriteria => {
            MaxAutoMLJobRuntimeInSeconds      => 1, # min: 1; OPTIONAL
            MaxCandidates                     => 1, # min: 1, max: 750; OPTIONAL
            MaxRuntimePerTrainingJobInSeconds => 1, # min: 1; OPTIONAL
          },    # OPTIONAL
          FeatureSpecificationS3Uri        => 'MyS3Uri',    # max: 1024
          GenerateCandidateDefinitionsOnly => 1,            # OPTIONAL
          Mode                             =>
            'AUTO',  # values: AUTO, ENSEMBLING, HYPERPARAMETER_TUNING; OPTIONAL
          ProblemType => 'BinaryClassification'
          , # values: BinaryClassification, MulticlassClassification, Regression; OPTIONAL
          SampleWeightAttributeName =>
            'MySampleWeightAttributeName',    # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        TextClassificationJobConfig => {
          ContentColumn      => 'MyContentColumn',        # min: 1, max: 256
          TargetLabelColumn  => 'MyTargetLabelColumn',    # min: 1, max: 256
          CompletionCriteria => {
            MaxAutoMLJobRuntimeInSeconds      => 1, # min: 1; OPTIONAL
            MaxCandidates                     => 1, # min: 1, max: 750; OPTIONAL
            MaxRuntimePerTrainingJobInSeconds => 1, # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TextGenerationJobConfig => {
          BaseModelName      => 'MyBaseModelName',  # min: 1, max: 256; OPTIONAL
          CompletionCriteria => {
            MaxAutoMLJobRuntimeInSeconds      => 1, # min: 1; OPTIONAL
            MaxCandidates                     => 1, # min: 1, max: 750; OPTIONAL
            MaxRuntimePerTrainingJobInSeconds => 1, # min: 1; OPTIONAL
          },    # OPTIONAL
          ModelAccessConfig => {
            AcceptEula => 1,

          },    # OPTIONAL
          TextGenerationHyperParameters => {
            'MyTextGenerationHyperParameterKey' =>
              'MyTextGenerationHyperParameterValue'
            ,    # key: max: 32, value: max: 16
          },    # max: 30; OPTIONAL
        },    # OPTIONAL
        TimeSeriesForecastingJobConfig => {
          ForecastFrequency => 'MyForecastFrequency',    # min: 1, max: 5
          ForecastHorizon   => 1,                        # min: 1
          TimeSeriesConfig  => {
            ItemIdentifierAttributeName =>
              'MyItemIdentifierAttributeName',           # min: 1, max: 256
            TargetAttributeName    => 'MyTargetAttributeName',    # min: 1
            TimestampAttributeName =>
              'MyTimestampAttributeName',    # min: 1, max: 256
            GroupingAttributeNames => [
              'MyGroupingAttributeName', ...    # min: 1, max: 256
            ],    # min: 1, max: 5; OPTIONAL
          },
          CandidateGenerationConfig => {
            AlgorithmsConfig => [
              {
                AutoMLAlgorithms => [
                  'xgboost',
                  ... # values: xgboost, linear-learner, mlp, lightgbm, catboost, randomforest, extra-trees, nn-torch, fastai, cnn-qr, deepar, prophet, npts, arima, ets
                ],    # max: 11

              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          CompletionCriteria => {
            MaxAutoMLJobRuntimeInSeconds      => 1, # min: 1; OPTIONAL
            MaxCandidates                     => 1, # min: 1, max: 750; OPTIONAL
            MaxRuntimePerTrainingJobInSeconds => 1, # min: 1; OPTIONAL
          },    # OPTIONAL
          FeatureSpecificationS3Uri => 'MyS3Uri',    # max: 1024
          ForecastQuantiles         => [
            'MyForecastQuantile', ...                # min: 2, max: 4
          ],    # min: 1, max: 5; OPTIONAL
          HolidayConfig => [
            {
              CountryCode => 'MyCountryCode',    # min: 2, max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 1; OPTIONAL
          Transformations => {
            Aggregation => {
              'MyTransformationAttributeName' => 'sum'
              , # key: min: 1, max: 256, value: values: sum, avg, first, min, max
            },    # min: 1, max: 50; OPTIONAL
            Filling => {
              'MyTransformationAttributeName' => {
                'frontfill' => 'MyFillingTransformationValue'
                , # key: values: frontfill, middlefill, backfill, futurefill, frontfill_value, middlefill_value, backfill_value, futurefill_value, value: min: 1, max: 256
              },    # key: min: 1, max: 256, value: min: 1, max: 6
            },    # min: 1, max: 50; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      OutputDataConfig => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn             => 'MyRoleArn',
      AutoMLComputeConfig => {
        EmrServerlessComputeConfig => {
          ExecutionRoleARN => 'MyRoleArn',    # min: 20, max: 2048

        },    # OPTIONAL
      },    # OPTIONAL
      AutoMLJobObjective => {
        MetricName => 'Accuracy'
        , # values: Accuracy, MSE, F1, F1macro, AUC, RMSE, BalancedAccuracy, R2, Recall, RecallMacro, Precision, PrecisionMacro, MAE, MAPE, MASE, WAPE, AverageWeightedQuantileLoss

      },    # OPTIONAL
      DataSplitConfig => {
        ValidationFraction => 1.0,    # max: 1; OPTIONAL
      },    # OPTIONAL
      ModelDeployConfig => {
        AutoGenerateEndpointName => 1,                   # OPTIONAL
        EndpointName             => 'MyEndpointName',    # max: 63; OPTIONAL
      },    # OPTIONAL
      SecurityConfig => {
        EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
        VolumeKmsKeyId => 'MyKmsKeyId',                # max: 2048; OPTIONAL
        VpcConfig      => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...                   # max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...    # max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
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
    my $AutoMLJobArn = $CreateAutoMLJobV2Response->AutoMLJobArn;

    # Returns a L<Paws::SageMaker::CreateAutoMLJobV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAutoMLJobV2>

=head1 ATTRIBUTES


=head2 AutoMLComputeConfig => L<Paws::SageMaker::AutoMLComputeConfig>

Specifies the compute configuration for the AutoML job V2.



=head2 B<REQUIRED> AutoMLJobInputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLJobChannel>]

An array of channel objects describing the input data and their
location. Each channel is a named input source. Similar to the
InputDataConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html#sagemaker-CreateAutoMLJob-request-InputDataConfig)
attribute in the C<CreateAutoMLJob> input parameters. The supported
formats depend on the problem type:

=over

=item *

For tabular problem types: C<S3Prefix>, C<ManifestFile>.

=item *

For image classification: C<S3Prefix>, C<ManifestFile>,
C<AugmentedManifestFile>.

=item *

For text classification: C<S3Prefix>.

=item *

For time-series forecasting: C<S3Prefix>.

=item *

For text generation (LLMs fine-tuning): C<S3Prefix>.

=back




=head2 B<REQUIRED> AutoMLJobName => Str

Identifies an Autopilot job. The name must be unique to your account
and is case insensitive.



=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Specifies a metric to minimize or maximize as the objective of a job.
If not specified, the default objective metric depends on the problem
type. For the list of default values per problem type, see
AutoMLJobObjective
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLJobObjective.html).

=over

=item *

For tabular problem types: You must either provide both the
C<AutoMLJobObjective> and indicate the type of supervised learning
problem in C<AutoMLProblemTypeConfig>
(C<TabularJobConfig.ProblemType>), or none at all.

=item *

For text generation problem types (LLMs fine-tuning): Fine-tuning
language models in Autopilot does not require setting the
C<AutoMLJobObjective> field. Autopilot fine-tunes LLMs without
requiring multiple candidates to be trained and evaluated. Instead,
using your dataset, Autopilot directly fine-tunes your target model to
enhance a default objective metric, the cross-entropy loss. After
fine-tuning a language model, you can evaluate the quality of its
generated text using different metrics. For a list of the available
metrics, see Metrics for fine-tuning LLMs in Autopilot
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-llms-finetuning-metrics.html).

=back




=head2 B<REQUIRED> AutoMLProblemTypeConfig => L<Paws::SageMaker::AutoMLProblemTypeConfig>

Defines the configuration settings of one of the supported problem
types.



=head2 DataSplitConfig => L<Paws::SageMaker::AutoMLDataSplitConfig>

This structure specifies how to split the data into train and
validation datasets.

The validation and training datasets must contain the same headers. For
jobs created by calling C<CreateAutoMLJob>, the validation dataset must
be less than 2 GB in size.

This attribute must not be set for the time-series forecasting problem
type, as Autopilot automatically splits the input dataset into training
and validation sets.



=head2 ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>

Specifies how to generate the endpoint name for an automatic one-click
Autopilot model deployment.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Provides information about encryption and the Amazon S3 output path
needed to store artifacts from an AutoML job.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that is used to access the data.



=head2 SecurityConfig => L<Paws::SageMaker::AutoMLSecurityConfig>

The security configuration for traffic encryption or Amazon VPC
settings.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, such as by purpose, owner, or
environment. For more information, see Tagging Amazon Web
ServicesResources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). Tag
keys must be unique per resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoMLJobV2 in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

