
package Paws::Rekognition::StartMediaAnalysisJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Input => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisInput', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OperationsConfig => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisOperationsConfig', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisOutputConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMediaAnalysisJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartMediaAnalysisJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartMediaAnalysisJob - Arguments for method StartMediaAnalysisJob on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMediaAnalysisJob on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartMediaAnalysisJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMediaAnalysisJob.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartMediaAnalysisJobResponse = $rekognition->StartMediaAnalysisJob(
      Input => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },

      },
      OperationsConfig => {
        DetectModerationLabels => {
          MinConfidence  => 1.0,                  # max: 100; OPTIONAL
          ProjectVersion => 'MyProjectVersionId', # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      OutputConfig => {
        S3Bucket    => 'MyS3Bucket',    # min: 3, max: 255; OPTIONAL
        S3KeyPrefix => 'MyMediaAnalysisS3KeyPrefix',    # max: 800; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',      # OPTIONAL
      JobName            => 'MyMediaAnalysisJobName',    # OPTIONAL
      KmsKeyId           => 'MyKmsKeyId',                # OPTIONAL
    );

    # Results:
    my $JobId = $StartMediaAnalysisJobResponse->JobId;

    # Returns a L<Paws::Rekognition::StartMediaAnalysisJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartMediaAnalysisJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotency token used to prevent the accidental creation of duplicate
versions. If you use the same token with multiple
C<StartMediaAnalysisJobRequest> requests, the same response is
returned. Use C<ClientRequestToken> to prevent the same request from
being processed more than once.



=head2 B<REQUIRED> Input => L<Paws::Rekognition::MediaAnalysisInput>

Input data to be analyzed by the job.



=head2 JobName => Str

The name of the job. Does not have to be unique.



=head2 KmsKeyId => Str

The identifier of customer managed AWS KMS key (name or ARN). The key
is used to encrypt images copied into the service. The key is also used
to encrypt results and manifest files written to the output Amazon S3
bucket.



=head2 B<REQUIRED> OperationsConfig => L<Paws::Rekognition::MediaAnalysisOperationsConfig>

Configuration options for the media analysis job to be created.



=head2 B<REQUIRED> OutputConfig => L<Paws::Rekognition::MediaAnalysisOutputConfig>

The Amazon S3 bucket location to store the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMediaAnalysisJob in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

