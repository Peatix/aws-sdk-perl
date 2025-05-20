
package Paws::VoiceID::StartSpeakerEnrollmentJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has EnrollmentConfig => (is => 'ro', isa => 'Paws::VoiceID::EnrollmentConfig');
  has InputDataConfig => (is => 'ro', isa => 'Paws::VoiceID::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::VoiceID::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSpeakerEnrollmentJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::StartSpeakerEnrollmentJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::StartSpeakerEnrollmentJob - Arguments for method StartSpeakerEnrollmentJob on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSpeakerEnrollmentJob on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method StartSpeakerEnrollmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSpeakerEnrollmentJob.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $StartSpeakerEnrollmentJobResponse = $voiceid->StartSpeakerEnrollmentJob(
      DataAccessRoleArn => 'MyIamRoleArn',
      DomainId          => 'MyDomainId',
      InputDataConfig   => {
        S3Uri => 'MyS3Uri',    # max: 1024

      },
      OutputDataConfig => {
        S3Uri    => 'MyS3Uri',       # max: 1024
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
      },
      ClientToken      => 'MyClientTokenString',    # OPTIONAL
      EnrollmentConfig => {
        ExistingEnrollmentAction => 'SKIP',  # values: SKIP, OVERWRITE; OPTIONAL
        FraudDetectionConfig     => {
          FraudDetectionAction => 'IGNORE',    # values: IGNORE, FAIL; OPTIONAL
          RiskThreshold        => 1,           # max: 100; OPTIONAL
          WatchlistIds         => [
            'MyWatchlistId', ...               # min: 22, max: 22
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      JobName => 'MyJobName',    # OPTIONAL
    );

    # Results:
    my $Job = $StartSpeakerEnrollmentJobResponse->Job;

    # Returns a L<Paws::VoiceID::StartSpeakerEnrollmentJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/StartSpeakerEnrollmentJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> DataAccessRoleArn => Str

The IAM role Amazon Resource Name (ARN) that grants Voice ID
permissions to access customer's buckets to read the input manifest
file and write the job output file. Refer to Batch enrollment using
audio data from prior calls
(https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html)
for the permissions needed in this role.



=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the speaker enrollment job
and in which the speakers are enrolled.



=head2 EnrollmentConfig => L<Paws::VoiceID::EnrollmentConfig>

The enrollment config that contains details such as the action to take
when a speaker is already enrolled in Voice ID or when a speaker is
identified as a fraudster.



=head2 B<REQUIRED> InputDataConfig => L<Paws::VoiceID::InputDataConfig>

The input data config containing the S3 location for the input manifest
file that contains the list of speaker enrollment requests.



=head2 JobName => Str

A name for your speaker enrollment job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::VoiceID::OutputDataConfig>

The output data config containing the S3 location where Voice ID writes
the job output file; you must also include a KMS key ID to encrypt the
file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSpeakerEnrollmentJob in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

