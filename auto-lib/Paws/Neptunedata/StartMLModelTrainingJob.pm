
package Paws::Neptunedata::StartMLModelTrainingJob;
  use Moose;
  has BaseProcessingInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseProcessingInstanceType');
  has CustomModelTrainingParameters => (is => 'ro', isa => 'Paws::Neptunedata::CustomModelTrainingParameters', traits => ['NameInRequest'], request_name => 'customModelTrainingParameters');
  has DataProcessingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataProcessingJobId', required => 1);
  has EnableManagedSpotTraining => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableManagedSpotTraining');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MaxHPONumberOfTrainingJobs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxHPONumberOfTrainingJobs');
  has MaxHPOParallelTrainingJobs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxHPOParallelTrainingJobs');
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'neptuneIamRoleArn');
  has PreviousModelTrainingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previousModelTrainingJobId');
  has S3OutputEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3OutputEncryptionKMSKey');
  has SagemakerIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sagemakerIamRoleArn');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets');
  has TrainingInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingInstanceType');
  has TrainingInstanceVolumeSizeInGB => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'trainingInstanceVolumeSizeInGB');
  has TrainingTimeOutInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'trainingTimeOutInSeconds');
  has TrainModelS3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainModelS3Location', required => 1);
  has VolumeEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeEncryptionKMSKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMLModelTrainingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/modeltraining');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::StartMLModelTrainingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartMLModelTrainingJob - Arguments for method StartMLModelTrainingJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMLModelTrainingJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method StartMLModelTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMLModelTrainingJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $StartMLModelTrainingJobOutput = $neptune -db->StartMLModelTrainingJob(
      DataProcessingJobId           => 'MyString',
      TrainModelS3Location          => 'MyString',
      BaseProcessingInstanceType    => 'MyString',    # OPTIONAL
      CustomModelTrainingParameters => {
        SourceS3DirectoryPath     => 'MyString',
        TrainingEntryPointScript  => 'MyString',
        TransformEntryPointScript => 'MyString',
      },                                              # OPTIONAL
      EnableManagedSpotTraining      => 1,                      # OPTIONAL
      Id                             => 'MyString',             # OPTIONAL
      MaxHPONumberOfTrainingJobs     => 1,                      # OPTIONAL
      MaxHPOParallelTrainingJobs     => 1,                      # OPTIONAL
      NeptuneIamRoleArn              => 'MyString',             # OPTIONAL
      PreviousModelTrainingJobId     => 'MyString',             # OPTIONAL
      S3OutputEncryptionKMSKey       => 'MyString',             # OPTIONAL
      SagemakerIamRoleArn            => 'MyString',             # OPTIONAL
      SecurityGroupIds               => [ 'MyString', ... ],    # OPTIONAL
      Subnets                        => [ 'MyString', ... ],    # OPTIONAL
      TrainingInstanceType           => 'MyString',             # OPTIONAL
      TrainingInstanceVolumeSizeInGB => 1,                      # OPTIONAL
      TrainingTimeOutInSeconds       => 1,                      # OPTIONAL
      VolumeEncryptionKMSKey         => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Arn = $StartMLModelTrainingJobOutput->Arn;
    my $CreationTimeInMillis =
      $StartMLModelTrainingJobOutput->CreationTimeInMillis;
    my $Id = $StartMLModelTrainingJobOutput->Id;

    # Returns a L<Paws::Neptunedata::StartMLModelTrainingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/StartMLModelTrainingJob>

=head1 ATTRIBUTES


=head2 BaseProcessingInstanceType => Str

The type of ML instance used in preparing and managing training of ML
models. This is a CPU instance chosen based on memory requirements for
processing the training data and model.



=head2 CustomModelTrainingParameters => L<Paws::Neptunedata::CustomModelTrainingParameters>

The configuration for custom model training. This is a JSON object.



=head2 B<REQUIRED> DataProcessingJobId => Str

The job ID of the completed data-processing job that has created the
data that the training will work with.



=head2 EnableManagedSpotTraining => Bool

Optimizes the cost of training machine-learning models by using Amazon
Elastic Compute Cloud spot instances. The default is C<False>.



=head2 Id => Str

A unique identifier for the new job. The default is An autogenerated
UUID.



=head2 MaxHPONumberOfTrainingJobs => Int

Maximum total number of training jobs to start for the hyperparameter
tuning job. The default is 2. Neptune ML automatically tunes the
hyperparameters of the machine learning model. To obtain a model that
performs well, use at least 10 jobs (in other words, set
C<maxHPONumberOfTrainingJobs> to 10). In general, the more tuning runs,
the better the results.



=head2 MaxHPOParallelTrainingJobs => Int

Maximum number of parallel training jobs to start for the
hyperparameter tuning job. The default is 2. The number of parallel
jobs you can run is limited by the available resources on your training
instance.



=head2 NeptuneIamRoleArn => Str

The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.



=head2 PreviousModelTrainingJobId => Str

The job ID of a completed model-training job that you want to update
incrementally based on updated data.



=head2 S3OutputEncryptionKMSKey => Str

The Amazon Key Management Service (KMS) key that SageMaker uses to
encrypt the output of the processing job. The default is none.



=head2 SagemakerIamRoleArn => Str

The ARN of an IAM role for SageMaker execution.This must be listed in
your DB cluster parameter group or an error will occur.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs. The default is None.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the subnets in the Neptune VPC. The default is None.



=head2 TrainingInstanceType => Str

The type of ML instance used for model training. All Neptune ML models
support CPU, GPU, and multiGPU training. The default is
C<ml.p3.2xlarge>. Choosing the right instance type for training depends
on the task type, graph size, and your budget.



=head2 TrainingInstanceVolumeSizeInGB => Int

The disk volume size of the training instance. Both input data and the
output model are stored on disk, so the volume size must be large
enough to hold both data sets. The default is 0. If not specified or 0,
Neptune ML selects a disk volume size based on the recommendation
generated in the data processing step.



=head2 TrainingTimeOutInSeconds => Int

Timeout in seconds for the training job. The default is 86,400 (1 day).



=head2 B<REQUIRED> TrainModelS3Location => Str

The location in Amazon S3 where the model artifacts are to be stored.



=head2 VolumeEncryptionKMSKey => Str

The Amazon Key Management Service (KMS) key that SageMaker uses to
encrypt data on the storage volume attached to the ML compute instances
that run the training job. The default is None.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMLModelTrainingJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

