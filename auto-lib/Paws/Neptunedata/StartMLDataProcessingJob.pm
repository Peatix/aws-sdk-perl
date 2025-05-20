
package Paws::Neptunedata::StartMLDataProcessingJob;
  use Moose;
  has ConfigFileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configFileName');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has InputDataS3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputDataS3Location', required => 1);
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType');
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'neptuneIamRoleArn');
  has PreviousDataProcessingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previousDataProcessingJobId');
  has ProcessedDataS3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'processedDataS3Location', required => 1);
  has ProcessingInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'processingInstanceType');
  has ProcessingInstanceVolumeSizeInGB => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'processingInstanceVolumeSizeInGB');
  has ProcessingTimeOutInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'processingTimeOutInSeconds');
  has S3OutputEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3OutputEncryptionKMSKey');
  has SagemakerIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sagemakerIamRoleArn');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets');
  has VolumeEncryptionKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeEncryptionKMSKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMLDataProcessingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/dataprocessing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::StartMLDataProcessingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartMLDataProcessingJob - Arguments for method StartMLDataProcessingJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMLDataProcessingJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method StartMLDataProcessingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMLDataProcessingJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $StartMLDataProcessingJobOutput = $neptune -db->StartMLDataProcessingJob(
      InputDataS3Location              => 'MyString',
      ProcessedDataS3Location          => 'MyString',
      ConfigFileName                   => 'MyString',             # OPTIONAL
      Id                               => 'MyString',             # OPTIONAL
      ModelType                        => 'MyString',             # OPTIONAL
      NeptuneIamRoleArn                => 'MyString',             # OPTIONAL
      PreviousDataProcessingJobId      => 'MyString',             # OPTIONAL
      ProcessingInstanceType           => 'MyString',             # OPTIONAL
      ProcessingInstanceVolumeSizeInGB => 1,                      # OPTIONAL
      ProcessingTimeOutInSeconds       => 1,                      # OPTIONAL
      S3OutputEncryptionKMSKey         => 'MyString',             # OPTIONAL
      SagemakerIamRoleArn              => 'MyString',             # OPTIONAL
      SecurityGroupIds                 => [ 'MyString', ... ],    # OPTIONAL
      Subnets                          => [ 'MyString', ... ],    # OPTIONAL
      VolumeEncryptionKMSKey           => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Arn = $StartMLDataProcessingJobOutput->Arn;
    my $CreationTimeInMillis =
      $StartMLDataProcessingJobOutput->CreationTimeInMillis;
    my $Id = $StartMLDataProcessingJobOutput->Id;

    # Returns a L<Paws::Neptunedata::StartMLDataProcessingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/StartMLDataProcessingJob>

=head1 ATTRIBUTES


=head2 ConfigFileName => Str

A data specification file that describes how to load the exported graph
data for training. The file is automatically generated by the Neptune
export toolkit. The default is C<training-data-configuration.json>.



=head2 Id => Str

A unique identifier for the new job. The default is an autogenerated
UUID.



=head2 B<REQUIRED> InputDataS3Location => Str

The URI of the Amazon S3 location where you want SageMaker to download
the data needed to run the data processing job.



=head2 ModelType => Str

One of the two model types that Neptune ML currently supports:
heterogeneous graph models (C<heterogeneous>), and knowledge graph
(C<kge>). The default is none. If not specified, Neptune ML chooses the
model type automatically based on the data.



=head2 NeptuneIamRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that SageMaker can assume
to perform tasks on your behalf. This must be listed in your DB cluster
parameter group or an error will occur.



=head2 PreviousDataProcessingJobId => Str

The job ID of a completed data processing job run on an earlier version
of the data.



=head2 B<REQUIRED> ProcessedDataS3Location => Str

The URI of the Amazon S3 location where you want SageMaker to save the
results of a data processing job.



=head2 ProcessingInstanceType => Str

The type of ML instance used during data processing. Its memory should
be large enough to hold the processed dataset. The default is the
smallest ml.r5 type whose memory is ten times larger than the size of
the exported graph data on disk.



=head2 ProcessingInstanceVolumeSizeInGB => Int

The disk volume size of the processing instance. Both input data and
processed data are stored on disk, so the volume size must be large
enough to hold both data sets. The default is 0. If not specified or 0,
Neptune ML chooses the volume size automatically based on the data
size.



=head2 ProcessingTimeOutInSeconds => Int

Timeout in seconds for the data processing job. The default is 86,400
(1 day).



=head2 S3OutputEncryptionKMSKey => Str

The Amazon Key Management Service (Amazon KMS) key that SageMaker uses
to encrypt the output of the processing job. The default is none.



=head2 SagemakerIamRoleArn => Str

The ARN of an IAM role for SageMaker execution. This must be listed in
your DB cluster parameter group or an error will occur.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs. The default is None.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the subnets in the Neptune VPC. The default is None.



=head2 VolumeEncryptionKMSKey => Str

The Amazon Key Management Service (Amazon KMS) key that SageMaker uses
to encrypt data on the storage volume attached to the ML compute
instances that run the training job. The default is None.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMLDataProcessingJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

