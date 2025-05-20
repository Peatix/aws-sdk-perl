
package Paws::Comprehend::StartPiiEntitiesDetectionJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Mode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig', required => 1);
  has RedactionConfig => (is => 'ro', isa => 'Paws::Comprehend::RedactionConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPiiEntitiesDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StartPiiEntitiesDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartPiiEntitiesDetectionJob - Arguments for method StartPiiEntitiesDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPiiEntitiesDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StartPiiEntitiesDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPiiEntitiesDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StartPiiEntitiesDetectionJobResponse =
      $comprehend->StartPiiEntitiesDetectionJob(
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
      Mode             => 'ONLY_REDACTION',
      OutputDataConfig => {
        S3Uri    => 'MyS3Uri',       # max: 1024
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      JobName            => 'MyJobName',                     # OPTIONAL
      RedactionConfig    => {
        MaskCharacter => 'MyMaskCharacter',    # min: 1, max: 1; OPTIONAL
        MaskMode      =>
          'MASK',    # values: MASK, REPLACE_WITH_PII_ENTITY_TYPE; OPTIONAL
        PiiEntityTypes => [
          'BANK_ACCOUNT_NUMBER',
          ... # values: BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, DATE_TIME, PASSPORT_NUMBER, DRIVER_ID, URL, AGE, USERNAME, PASSWORD, AWS_ACCESS_KEY, AWS_SECRET_KEY, IP_ADDRESS, MAC_ADDRESS, ALL, LICENSE_PLATE, VEHICLE_IDENTIFICATION_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, IN_PERMANENT_ACCOUNT_NUMBER, IN_NREGA, INTERNATIONAL_BANK_ACCOUNT_NUMBER, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, CA_HEALTH_NUMBER, IN_AADHAAR, IN_VOTER_NUMBER
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $JobArn    = $StartPiiEntitiesDetectionJobResponse->JobArn;
    my $JobId     = $StartPiiEntitiesDetectionJobResponse->JobId;
    my $JobStatus = $StartPiiEntitiesDetectionJobResponse->JobStatus;

   # Returns a L<Paws::Comprehend::StartPiiEntitiesDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StartPiiEntitiesDetectionJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to your input data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::InputDataConfig>

The input properties for a PII entities detection job.



=head2 JobName => Str

The identifier of the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. Enter the language code for
English (en) or Spanish (es).

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 B<REQUIRED> Mode => Str

Specifies whether the output provides the locations (offsets) of PII
entities or a file in which PII entities are redacted.

Valid values are: C<"ONLY_REDACTION">, C<"ONLY_OFFSETS">

=head2 B<REQUIRED> OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

Provides conguration parameters for the output of PII entity detection
jobs.



=head2 RedactionConfig => L<Paws::Comprehend::RedactionConfig>

Provides configuration parameters for PII entity redaction.

This parameter is required if you set the C<Mode> parameter to
C<ONLY_REDACTION>. In that case, you must provide a C<RedactionConfig>
definition that includes the C<PiiEntityTypes> parameter.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to associate with the PII entities detection job. A tag is a
key-value pair that adds metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added
to a resource to indicate its use by the sales department.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPiiEntitiesDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

