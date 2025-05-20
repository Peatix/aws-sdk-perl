
package Paws::Neptunedata::StartMLModelTransformJob;
  use Moose;
  has BaseProcessingInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseProcessingInstanceType');
  has BaseProcessingInstanceVolumeSizeInGB => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'baseProcessingInstanceVolumeSizeInGB');
  has CustomModelTransformParameters => (is => 'ro', isa => 'Paws::Neptunedata::CustomModelTransformParameters', traits => ['NameInRequest'], request_name => 'customModelTransformParameters');
  has DataProcessingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataProcessingJobId');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MlModelTrainingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mlModelTrainingJobId');
  has ModelTransformOutputS3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelTransformOutputS3Location', required => 1);
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'neptuneIamRoleArn');
  has S3OutputEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3OutputEncryptionKMSKey');
  has SagemakerIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sagemakerIamRoleArn');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets');
  has TrainingJobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingJobName');
  has VolumeEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeEncryptionKMSKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMLModelTransformJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/modeltransform');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::StartMLModelTransformJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartMLModelTransformJob - Arguments for method StartMLModelTransformJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMLModelTransformJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method StartMLModelTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMLModelTransformJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $StartMLModelTransformJobOutput = $neptune -db->StartMLModelTransformJob(
      ModelTransformOutputS3Location       => 'MyString',
      BaseProcessingInstanceType           => 'MyString',    # OPTIONAL
      BaseProcessingInstanceVolumeSizeInGB => 1,             # OPTIONAL
      CustomModelTransformParameters       => {
        SourceS3DirectoryPath     => 'MyString',
        TransformEntryPointScript => 'MyString',
      },                                                     # OPTIONAL
      DataProcessingJobId      => 'MyString',                # OPTIONAL
      Id                       => 'MyString',                # OPTIONAL
      MlModelTrainingJobId     => 'MyString',                # OPTIONAL
      NeptuneIamRoleArn        => 'MyString',                # OPTIONAL
      S3OutputEncryptionKMSKey => 'MyString',                # OPTIONAL
      SagemakerIamRoleArn      => 'MyString',                # OPTIONAL
      SecurityGroupIds         => [ 'MyString', ... ],       # OPTIONAL
      Subnets                  => [ 'MyString', ... ],       # OPTIONAL
      TrainingJobName          => 'MyString',                # OPTIONAL
      VolumeEncryptionKMSKey   => 'MyString',                # OPTIONAL
    );

    # Results:
    my $Arn = $StartMLModelTransformJobOutput->Arn;
    my $CreationTimeInMillis =
      $StartMLModelTransformJobOutput->CreationTimeInMillis;
    my $Id = $StartMLModelTransformJobOutput->Id;

    # Returns a L<Paws::Neptunedata::StartMLModelTransformJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/StartMLModelTransformJob>

=head1 ATTRIBUTES


=head2 BaseProcessingInstanceType => Str

The type of ML instance used in preparing and managing training of ML
models. This is an ML compute instance chosen based on memory
requirements for processing the training data and model.



=head2 BaseProcessingInstanceVolumeSizeInGB => Int

The disk volume size of the training instance in gigabytes. The default
is 0. Both input data and the output model are stored on disk, so the
volume size must be large enough to hold both data sets. If not
specified or 0, Neptune ML selects a disk volume size based on the
recommendation generated in the data processing step.



=head2 CustomModelTransformParameters => L<Paws::Neptunedata::CustomModelTransformParameters>

Configuration information for a model transform using a custom model.
The C<customModelTransformParameters> object contains the following
fields, which must have values compatible with the saved model
parameters from the training job:



=head2 DataProcessingJobId => Str

The job ID of a completed data-processing job. You must include either
C<dataProcessingJobId> and a C<mlModelTrainingJobId>, or a
C<trainingJobName>.



=head2 Id => Str

A unique identifier for the new job. The default is an autogenerated
UUID.



=head2 MlModelTrainingJobId => Str

The job ID of a completed model-training job. You must include either
C<dataProcessingJobId> and a C<mlModelTrainingJobId>, or a
C<trainingJobName>.



=head2 B<REQUIRED> ModelTransformOutputS3Location => Str

The location in Amazon S3 where the model artifacts are to be stored.



=head2 NeptuneIamRoleArn => Str

The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.



=head2 S3OutputEncryptionKMSKey => Str

The Amazon Key Management Service (KMS) key that SageMaker uses to
encrypt the output of the processing job. The default is none.



=head2 SagemakerIamRoleArn => Str

The ARN of an IAM role for SageMaker execution. This must be listed in
your DB cluster parameter group or an error will occur.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs. The default is None.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the subnets in the Neptune VPC. The default is None.



=head2 TrainingJobName => Str

The name of a completed SageMaker training job. You must include either
C<dataProcessingJobId> and a C<mlModelTrainingJobId>, or a
C<trainingJobName>.



=head2 VolumeEncryptionKMSKey => Str

The Amazon Key Management Service (KMS) key that SageMaker uses to
encrypt data on the storage volume attached to the ML compute instances
that run the training job. The default is None.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMLModelTransformJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

