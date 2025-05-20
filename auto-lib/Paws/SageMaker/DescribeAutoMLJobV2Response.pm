
package Paws::SageMaker::DescribeAutoMLJobV2Response;
  use Moose;
  has AutoMLComputeConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLComputeConfig');
  has AutoMLJobArn => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobArtifacts => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobArtifacts');
  has AutoMLJobInputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLJobChannel]', required => 1);
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has AutoMLJobSecondaryStatus => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLProblemTypeConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLProblemTypeConfig');
  has AutoMLProblemTypeConfigName => (is => 'ro', isa => 'Str');
  has BestCandidate => (is => 'ro', isa => 'Paws::SageMaker::AutoMLCandidate');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DataSplitConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLDataSplitConfig');
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelDeployConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployConfig');
  has ModelDeployResult => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployResult');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has PartialFailureReasons => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLPartialFailureReason]');
  has ResolvedAttributes => (is => 'ro', isa => 'Paws::SageMaker::AutoMLResolvedAttributes');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLSecurityConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAutoMLJobV2Response

=head1 ATTRIBUTES


=head2 AutoMLComputeConfig => L<Paws::SageMaker::AutoMLComputeConfig>

The compute configuration used for the AutoML job V2.


=head2 B<REQUIRED> AutoMLJobArn => Str

Returns the Amazon Resource Name (ARN) of the AutoML job V2.


=head2 AutoMLJobArtifacts => L<Paws::SageMaker::AutoMLJobArtifacts>




=head2 B<REQUIRED> AutoMLJobInputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLJobChannel>]

Returns an array of channel objects describing the input data and their
location.


=head2 B<REQUIRED> AutoMLJobName => Str

Returns the name of the AutoML job V2.


=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Returns the job's objective.


=head2 B<REQUIRED> AutoMLJobSecondaryStatus => Str

Returns the secondary status of the AutoML job V2.

Valid values are: C<"Starting">, C<"MaxCandidatesReached">, C<"Failed">, C<"Stopped">, C<"MaxAutoMLJobRuntimeReached">, C<"Stopping">, C<"CandidateDefinitionsGenerated">, C<"Completed">, C<"ExplainabilityError">, C<"DeployingModel">, C<"ModelDeploymentError">, C<"GeneratingModelInsightsReport">, C<"ModelInsightsError">, C<"AnalyzingData">, C<"FeatureEngineering">, C<"ModelTuning">, C<"GeneratingExplainabilityReport">, C<"TrainingModels">, C<"PreTraining">
=head2 B<REQUIRED> AutoMLJobStatus => Str

Returns the status of the AutoML job V2.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">
=head2 AutoMLProblemTypeConfig => L<Paws::SageMaker::AutoMLProblemTypeConfig>

Returns the configuration settings of the problem type set for the
AutoML job V2.


=head2 AutoMLProblemTypeConfigName => Str

Returns the name of the problem type configuration set for the AutoML
job V2.

Valid values are: C<"ImageClassification">, C<"TextClassification">, C<"TimeSeriesForecasting">, C<"Tabular">, C<"TextGeneration">
=head2 BestCandidate => L<Paws::SageMaker::AutoMLCandidate>

Information about the candidate produced by an AutoML training job V2,
including its status, steps, and other properties.


=head2 B<REQUIRED> CreationTime => Str

Returns the creation time of the AutoML job V2.


=head2 DataSplitConfig => L<Paws::SageMaker::AutoMLDataSplitConfig>

Returns the configuration settings of how the data are split into train
and validation datasets.


=head2 EndTime => Str

Returns the end time of the AutoML job V2.


=head2 FailureReason => Str

Returns the reason for the failure of the AutoML job V2, when
applicable.


=head2 B<REQUIRED> LastModifiedTime => Str

Returns the job's last modified time.


=head2 ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>

Indicates whether the model was deployed automatically to an endpoint
and the name of that endpoint if deployed automatically.


=head2 ModelDeployResult => L<Paws::SageMaker::ModelDeployResult>

Provides information about endpoint for the model deployment.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Returns the job's output data config.


=head2 PartialFailureReasons => ArrayRef[L<Paws::SageMaker::AutoMLPartialFailureReason>]

Returns a list of reasons for partial failures within an AutoML job V2.


=head2 ResolvedAttributes => L<Paws::SageMaker::AutoMLResolvedAttributes>

Returns the resolved attributes used by the AutoML job V2.


=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that has read permission to the input data
location and write permission to the output data location in Amazon S3.


=head2 SecurityConfig => L<Paws::SageMaker::AutoMLSecurityConfig>

Returns the security configuration for traffic encryption or Amazon VPC
settings.


=head2 _request_id => Str


=cut

1;