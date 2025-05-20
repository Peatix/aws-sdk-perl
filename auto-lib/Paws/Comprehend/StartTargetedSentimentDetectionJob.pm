
package Paws::Comprehend::StartTargetedSentimentDetectionJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTargetedSentimentDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StartTargetedSentimentDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartTargetedSentimentDetectionJob - Arguments for method StartTargetedSentimentDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTargetedSentimentDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StartTargetedSentimentDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTargetedSentimentDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StartTargetedSentimentDetectionJobResponse =
      $comprehend->StartTargetedSentimentDetectionJob(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        S3Uri                => 'MyS3Uri',    # max: 1024
        DocumentReaderConfig => {
          DocumentReadAction => 'TEXTRACT_DETECT_DOCUMENT_TEXT'
          ,   # values: TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
          DocumentReadMode => 'SERVICE_DEFAULT'
          ,    # values: SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION; OPTIONAL
          FeatureTypes => [
            'TABLES', ...    # values: TABLES, FORMS
          ],    # min: 1, max: 2; OPTIONAL
        },    # OPTIONAL
        InputFormat => 'ONE_DOC_PER_FILE'
        ,     # values: ONE_DOC_PER_FILE, ONE_DOC_PER_LINE; OPTIONAL
      },
      LanguageCode     => 'en',
      OutputDataConfig => {
        S3Uri    => 'MyS3Uri',       # max: 1024
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      JobName            => 'MyJobName',                     # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VolumeKmsKeyId => 'MyKmsKeyId',    # OPTIONAL
      VpcConfig      => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...       # min: 1, max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...    # min: 1, max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
      );

    # Results:
    my $JobArn    = $StartTargetedSentimentDetectionJobResponse->JobArn;
    my $JobId     = $StartTargetedSentimentDetectionJobResponse->JobId;
    my $JobStatus = $StartTargetedSentimentDetectionJobResponse->JobStatus;

# Returns a L<Paws::Comprehend::StartTargetedSentimentDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StartTargetedSentimentDetectionJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to your input data. For more information, see
Role-based permissions
(https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions).



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::InputDataConfig>





=head2 JobName => Str

The identifier of the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. Currently, English is the only
supported language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 B<REQUIRED> OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

Specifies where to send the output files.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to associate with the targeted sentiment detection job. A tag is a
key-value pair that adds metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added
to a resource to indicate its use by the sales department.



=head2 VolumeKmsKeyId => Str

ID for the KMS key that Amazon Comprehend uses to encrypt data on the
storage volume attached to the ML compute instance(s) that process the
analysis job. The VolumeKmsKeyId can be either of the following
formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 VpcConfig => L<Paws::Comprehend::VpcConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTargetedSentimentDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

