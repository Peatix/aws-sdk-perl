
package Paws::SageMaker::CreateAutoMLJob;
  use Moose;
  has AutoMLJobConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobConfig');
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has GenerateCandidateDefinitionsOnly => (is => 'ro', isa => 'Bool');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLChannel]', required => 1);
  has ModelDeployConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployConfig');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has ProblemType => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAutoMLJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJob - Arguments for method CreateAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAutoMLJobResponse = $api . sagemaker->CreateAutoMLJob(
      AutoMLJobName   => 'MyAutoMLJobName',
      InputDataConfig => [
        {
          TargetAttributeName => 'MyTargetAttributeName',    # min: 1
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
          SampleWeightAttributeName =>
            'MySampleWeightAttributeName',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],
      OutputDataConfig => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn         => 'MyRoleArn',
      AutoMLJobConfig => {
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
          FeatureSpecificationS3Uri => 'MyS3Uri',    # max: 1024
        },    # OPTIONAL
        CompletionCriteria => {
          MaxAutoMLJobRuntimeInSeconds      => 1,   # min: 1; OPTIONAL
          MaxCandidates                     => 1,   # min: 1, max: 750; OPTIONAL
          MaxRuntimePerTrainingJobInSeconds => 1,   # min: 1; OPTIONAL
        },    # OPTIONAL
        DataSplitConfig => {
          ValidationFraction => 1.0,    # max: 1; OPTIONAL
        },    # OPTIONAL
        Mode =>
          'AUTO',    # values: AUTO, ENSEMBLING, HYPERPARAMETER_TUNING; OPTIONAL
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
      },    # OPTIONAL
      AutoMLJobObjective => {
        MetricName => 'Accuracy'
        , # values: Accuracy, MSE, F1, F1macro, AUC, RMSE, BalancedAccuracy, R2, Recall, RecallMacro, Precision, PrecisionMacro, MAE, MAPE, MASE, WAPE, AverageWeightedQuantileLoss

      },    # OPTIONAL
      GenerateCandidateDefinitionsOnly => 1,    # OPTIONAL
      ModelDeployConfig                => {
        AutoGenerateEndpointName => 1,                   # OPTIONAL
        EndpointName             => 'MyEndpointName',    # max: 63; OPTIONAL
      },    # OPTIONAL
      ProblemType => 'BinaryClassification',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AutoMLJobArn = $CreateAutoMLJobResponse->AutoMLJobArn;

    # Returns a L<Paws::SageMaker::CreateAutoMLJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAutoMLJob>

=head1 ATTRIBUTES


=head2 AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>

A collection of settings used to configure an AutoML job.



=head2 B<REQUIRED> AutoMLJobName => Str

Identifies an Autopilot job. The name must be unique to your account
and is case insensitive.



=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Specifies a metric to minimize or maximize as the objective of a job.
If not specified, the default objective metric depends on the problem
type. See AutoMLJobObjective
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLJobObjective.html)
for the default values.



=head2 GenerateCandidateDefinitionsOnly => Bool

Generates possible candidates without training the models. A candidate
is a combination of data preprocessors, algorithms, and algorithm
parameter settings.



=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

An array of channel objects that describes the input data and its
location. Each channel is a named input source. Similar to
C<InputDataConfig> supported by HyperParameterTrainingJobDefinition
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html).
Format(s) supported: CSV, Parquet. A minimum of 500 rows is required
for the training dataset. There is not a minimum number of rows
required for the validation dataset.



=head2 ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>

Specifies how to generate the endpoint name for an automatic one-click
Autopilot model deployment.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Provides information about encryption and the Amazon S3 output path
needed to store artifacts from an AutoML job. Format(s) supported: CSV.



=head2 ProblemType => Str

Defines the type of supervised learning problem available for the
candidates. For more information, see SageMaker Autopilot problem types
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-datasets-problem-types.html#autopilot-problem-types).

Valid values are: C<"BinaryClassification">, C<"MulticlassClassification">, C<"Regression">

=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that is used to access the data.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
ServicesResources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). Tag
keys must be unique per resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

