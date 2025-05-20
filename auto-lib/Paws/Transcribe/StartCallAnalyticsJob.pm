
package Paws::Transcribe::StartCallAnalyticsJob;
  use Moose;
  has CallAnalyticsJobName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::ChannelDefinition]');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::CallAnalyticsJobSettings');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCallAnalyticsJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartCallAnalyticsJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartCallAnalyticsJob - Arguments for method StartCallAnalyticsJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCallAnalyticsJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartCallAnalyticsJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCallAnalyticsJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartCallAnalyticsJobResponse = $transcribe->StartCallAnalyticsJob(
      CallAnalyticsJobName => 'MyCallAnalyticsJobName',
      Media                => {
        MediaFileUri         => 'MyUri',    # min: 1, max: 2000; OPTIONAL
        RedactedMediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      ChannelDefinitions => [
        {
          ChannelId       => 1,             # max: 1; OPTIONAL
          ParticipantRole => 'AGENT',       # values: AGENT, CUSTOMER; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DataAccessRoleArn        => 'MyDataAccessRoleArn',    # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',             # OPTIONAL
      OutputLocation           => 'MyUri',                  # OPTIONAL
      Settings                 => {
        ContentRedaction => {
          RedactionOutput =>
            'redacted',    # values: redacted, redacted_and_unredacted
          RedactionType  => 'PII',    # values: PII
          PiiEntityTypes => [
            'BANK_ACCOUNT_NUMBER',
            ... # values: BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
          ],    # max: 11; OPTIONAL
        },    # OPTIONAL
        LanguageIdSettings => {
          'af-ZA' => {
            LanguageModelName    => 'MyModelName',  # min: 1, max: 200; OPTIONAL
            VocabularyFilterName =>
              'MyVocabularyFilterName',             # min: 1, max: 200; OPTIONAL
            VocabularyName => 'MyVocabularyName',   # min: 1, max: 200; OPTIONAL
          }, # key: values: af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE, ab-GE, ast-ES, az-AZ, ba-RU, be-BY, bg-BG, bn-IN, bs-BA, ca-ES, ckb-IQ, ckb-IR, cs-CZ, cy-WL, el-GR, et-ET, eu-ES, fi-FI, gl-ES, gu-IN, ha-NG, hr-HR, hu-HU, hy-AM, is-IS, ka-GE, kab-DZ, kk-KZ, kn-IN, ky-KG, lg-IN, lt-LT, lv-LV, mhr-RU, mi-NZ, mk-MK, ml-IN, mn-MN, mr-IN, mt-MT, no-NO, or-IN, pa-IN, pl-PL, ps-AF, ro-RO, rw-RW, si-LK, sk-SK, sl-SI, so-SO, sr-RS, su-ID, sw-BI, sw-KE, sw-RW, sw-TZ, sw-UG, tl-PH, tt-RU, ug-CN, uk-UA, uz-UZ, wo-SN, zh-HK, zu-ZA
        },    # min: 1, max: 5; OPTIONAL
        LanguageModelName => 'MyModelName',    # min: 1, max: 200; OPTIONAL
        LanguageOptions   => [
          'af-ZA',
          ... # values: af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE, ab-GE, ast-ES, az-AZ, ba-RU, be-BY, bg-BG, bn-IN, bs-BA, ca-ES, ckb-IQ, ckb-IR, cs-CZ, cy-WL, el-GR, et-ET, eu-ES, fi-FI, gl-ES, gu-IN, ha-NG, hr-HR, hu-HU, hy-AM, is-IS, ka-GE, kab-DZ, kk-KZ, kn-IN, ky-KG, lg-IN, lt-LT, lv-LV, mhr-RU, mi-NZ, mk-MK, ml-IN, mn-MN, mr-IN, mt-MT, no-NO, or-IN, pa-IN, pl-PL, ps-AF, ro-RO, rw-RW, si-LK, sk-SK, sl-SI, so-SO, sr-RS, su-ID, sw-BI, sw-KE, sw-RW, sw-TZ, sw-UG, tl-PH, tt-RU, ug-CN, uk-UA, uz-UZ, wo-SN, zh-HK, zu-ZA
        ],    # min: 1; OPTIONAL
        Summarization => {
          GenerateAbstractiveSummary => 1,

        },    # OPTIONAL
        VocabularyFilterMethod =>
          'remove',    # values: remove, mask, tag; OPTIONAL
        VocabularyFilterName =>
          'MyVocabularyFilterName',    # min: 1, max: 200; OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
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
    my $CallAnalyticsJob = $StartCallAnalyticsJobResponse->CallAnalyticsJob;

    # Returns a L<Paws::Transcribe::StartCallAnalyticsJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartCallAnalyticsJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallAnalyticsJobName => Str

A unique name, chosen by you, for your Call Analytics job.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new job
with the same name as an existing job, you get a C<ConflictException>
error.



=head2 ChannelDefinitions => ArrayRef[L<Paws::Transcribe::ChannelDefinition>]

Makes it possible to specify which speaker is on which channel. For
example, if your agent is the first participant to speak, you would set
C<ChannelId> to C<0> (to indicate the first channel) and
C<ParticipantRole> to C<AGENT> (to indicate that it's the agent
speaking).



=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permissions to
access the Amazon S3 bucket that contains your input files. If the role
that you specify doesnE<rsquo>t have the appropriate permissions to
access the specified Amazon S3 location, your request fails.

IAM role ARNs have the format
C<arn:partition:iam::account:role/role-name-with-path>. For example:
C<arn:aws:iam::111122223333:role/Admin>.

For more information, see IAM ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).



=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>

Describes the Amazon S3 location of the media file you want to use in
your Call Analytics request.



=head2 OutputEncryptionKMSKeyId => Str

The KMS key you want to use to encrypt your Call Analytics output.

If using a key located in the B<current> Amazon Web Services account,
you can specify your KMS key in one of four ways:

=over

=item 1.

Use the KMS key ID itself. For example,
C<1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 2.

Use an alias for the KMS key ID. For example, C<alias/ExampleAlias>.

=item 3.

Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
C<arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 4.

Use the ARN for the KMS key alias. For example,
C<arn:aws:kms:region:account-ID:alias/ExampleAlias>.

=back

If using a key located in a B<different> Amazon Web Services account
than the current Amazon Web Services account, you can specify your KMS
key in one of two ways:

=over

=item 1.

Use the ARN for the KMS key ID. For example,
C<arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 2.

Use the ARN for the KMS key alias. For example,
C<arn:aws:kms:region:account-ID:alias/ExampleAlias>.

=back

If you do not specify an encryption key, your output is encrypted with
the default Amazon S3 key (SSE-S3).

If you specify a KMS key to encrypt your output, you must also specify
an output location using the C<OutputLocation> parameter.

Note that the role making the request must have permission to use the
specified KMS key.



=head2 OutputLocation => Str

The Amazon S3 location where you want your Call Analytics transcription
output stored. You can use any of the following formats to specify the
output location:

=over

=item 1.

s3://DOC-EXAMPLE-BUCKET

=item 2.

s3://DOC-EXAMPLE-BUCKET/my-output-folder/

=item 3.

s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json

=back

Unless you specify a file name (option 3), the name of your output file
has a default value that matches the name you specified for your
transcription job using the C<CallAnalyticsJobName> parameter.

You can specify a KMS key to encrypt your output using the
C<OutputEncryptionKMSKeyId> parameter. If you do not specify a KMS key,
Amazon Transcribe uses the default Amazon S3 key for server-side
encryption.

If you do not specify C<OutputLocation>, your transcript is placed in a
service-managed Amazon S3 bucket and you are provided with a URI to
access your transcript.



=head2 Settings => L<Paws::Transcribe::CallAnalyticsJobSettings>

Specify additional optional settings in your request, including content
redaction; allows you to apply custom language models, vocabulary
filters, and custom vocabularies to your Call Analytics job.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new call analytics job at the time you start this new job.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCallAnalyticsJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

