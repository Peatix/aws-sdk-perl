
package Paws::Transcribe::StartMedicalTranscriptionJob;
  use Moose;
  has ContentIdentificationType => (is => 'ro', isa => 'Str');
  has KMSEncryptionContext => (is => 'ro', isa => 'Paws::Transcribe::KMSEncryptionContextMap');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has MedicalTranscriptionJobName => (is => 'ro', isa => 'Str', required => 1);
  has OutputBucketName => (is => 'ro', isa => 'Str', required => 1);
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionSetting');
  has Specialty => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMedicalTranscriptionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartMedicalTranscriptionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartMedicalTranscriptionJob - Arguments for method StartMedicalTranscriptionJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMedicalTranscriptionJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartMedicalTranscriptionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMedicalTranscriptionJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartMedicalTranscriptionJobResponse =
      $transcribe->StartMedicalTranscriptionJob(
      LanguageCode => 'af-ZA',
      Media        => {
        MediaFileUri         => 'MyUri',    # min: 1, max: 2000; OPTIONAL
        RedactedMediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      MedicalTranscriptionJobName => 'MyTranscriptionJobName',
      OutputBucketName            => 'MyOutputBucketName',
      Specialty                   => 'PRIMARYCARE',
      Type                        => 'CONVERSATION',
      ContentIdentificationType   => 'PHI',                      # OPTIONAL
      KMSEncryptionContext        => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 2000, value: min: 1, max: 2000
      },    # OPTIONAL
      MediaFormat              => 'mp3',            # OPTIONAL
      MediaSampleRateHertz     => 1,                # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',     # OPTIONAL
      OutputKey                => 'MyOutputKey',    # OPTIONAL
      Settings                 => {
        ChannelIdentification => 1,              # OPTIONAL
        MaxAlternatives       => 1,              # min: 2, max: 10; OPTIONAL
        MaxSpeakerLabels      => 1,              # min: 2, max: 30; OPTIONAL
        ShowAlternatives      => 1,              # OPTIONAL
        ShowSpeakerLabels     => 1,              # OPTIONAL
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
    my $MedicalTranscriptionJob =
      $StartMedicalTranscriptionJobResponse->MedicalTranscriptionJob;

   # Returns a L<Paws::Transcribe::StartMedicalTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartMedicalTranscriptionJob>

=head1 ATTRIBUTES


=head2 ContentIdentificationType => Str

Labels all personal health information (PHI) identified in your
transcript. For more information, see Identifying personal health
information (PHI) in a transcription
(https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html).

Valid values are: C<"PHI">

=head2 KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>

A map of plain text, non-secret key:value pairs, known as encryption
context pairs, that provide an added layer of security for your data.
For more information, see KMS encryption context
(https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context)
and Asymmetric keys in KMS
(https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html).



=head2 B<REQUIRED> LanguageCode => Str

The language code that represents the language spoken in the input
media file. US English (C<en-US>) is the only valid value for medical
transcription jobs. Any other value you enter for language code results
in a C<BadRequestException> error.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">, C<"zh-TW">, C<"th-TH">, C<"en-ZA">, C<"en-NZ">, C<"vi-VN">, C<"sv-SE">, C<"ab-GE">, C<"ast-ES">, C<"az-AZ">, C<"ba-RU">, C<"be-BY">, C<"bg-BG">, C<"bn-IN">, C<"bs-BA">, C<"ca-ES">, C<"ckb-IQ">, C<"ckb-IR">, C<"cs-CZ">, C<"cy-WL">, C<"el-GR">, C<"et-ET">, C<"eu-ES">, C<"fi-FI">, C<"gl-ES">, C<"gu-IN">, C<"ha-NG">, C<"hr-HR">, C<"hu-HU">, C<"hy-AM">, C<"is-IS">, C<"ka-GE">, C<"kab-DZ">, C<"kk-KZ">, C<"kn-IN">, C<"ky-KG">, C<"lg-IN">, C<"lt-LT">, C<"lv-LV">, C<"mhr-RU">, C<"mi-NZ">, C<"mk-MK">, C<"ml-IN">, C<"mn-MN">, C<"mr-IN">, C<"mt-MT">, C<"no-NO">, C<"or-IN">, C<"pa-IN">, C<"pl-PL">, C<"ps-AF">, C<"ro-RO">, C<"rw-RW">, C<"si-LK">, C<"sk-SK">, C<"sl-SI">, C<"so-SO">, C<"sr-RS">, C<"su-ID">, C<"sw-BI">, C<"sw-KE">, C<"sw-RW">, C<"sw-TZ">, C<"sw-UG">, C<"tl-PH">, C<"tt-RU">, C<"ug-CN">, C<"uk-UA">, C<"uz-UZ">, C<"wo-SN">, C<"zh-HK">, C<"zu-ZA">

=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>





=head2 MediaFormat => Str

Specify the format of your input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">, C<"ogg">, C<"amr">, C<"webm">, C<"m4a">

=head2 MediaSampleRateHertz => Int

The sample rate, in hertz, of the audio track in your input media file.

If you do not specify the media sample rate, Amazon Transcribe Medical
determines it for you. If you specify the sample rate, it must match
the rate detected by Amazon Transcribe Medical; if there's a mismatch
between the value that you specify and the value detected, your job
fails. Therefore, in most cases, it's advised to omit
C<MediaSampleRateHertz> and let Amazon Transcribe Medical determine the
sample rate.



=head2 B<REQUIRED> MedicalTranscriptionJobName => Str

A unique name, chosen by you, for your medical transcription job. The
name that you specify is also used as the default name of your
transcription output file. If you want to specify a different name for
your transcription output, use the C<OutputKey> parameter.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new job
with the same name as an existing job, you get a C<ConflictException>
error.



=head2 B<REQUIRED> OutputBucketName => Str

The name of the Amazon S3 bucket where you want your medical
transcription output stored. Do not include the C<S3://> prefix of the
specified bucket.

If you want your output to go to a sub-folder of this bucket, specify
it using the C<OutputKey> parameter; C<OutputBucketName> only accepts
the name of a bucket.

For example, if you want your output stored in
C<S3://DOC-EXAMPLE-BUCKET>, set C<OutputBucketName> to
C<DOC-EXAMPLE-BUCKET>. However, if you want your output stored in
C<S3://DOC-EXAMPLE-BUCKET/test-files/>, set C<OutputBucketName> to
C<DOC-EXAMPLE-BUCKET> and C<OutputKey> to C<test-files/>.

Note that Amazon Transcribe must have permission to use the specified
location. You can change Amazon S3 permissions using the Amazon Web
Services Management Console (https://console.aws.amazon.com/s3). See
also Permissions Required for IAM User Roles
(https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user).



=head2 OutputEncryptionKMSKeyId => Str

The KMS key you want to use to encrypt your medical transcription
output.

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



=head2 OutputKey => Str

Use in combination with C<OutputBucketName> to specify the output
location of your transcript and, optionally, a unique name for your
output file. The default name for your transcription output is the same
as the name you specified for your medical transcription job
(C<MedicalTranscriptionJobName>).

Here are some examples of how you can use C<OutputKey>:

=over

=item *

If you specify 'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName> and
'my-transcript.json' as the C<OutputKey>, your transcription output
path is C<s3://DOC-EXAMPLE-BUCKET/my-transcript.json>.

=item *

If you specify 'my-first-transcription' as the
C<MedicalTranscriptionJobName>, 'DOC-EXAMPLE-BUCKET' as the
C<OutputBucketName>, and 'my-transcript' as the C<OutputKey>, your
transcription output path is
C<s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json>.

=item *

If you specify 'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName> and
'test-files/my-transcript.json' as the C<OutputKey>, your transcription
output path is
C<s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json>.

=item *

If you specify 'my-first-transcription' as the
C<MedicalTranscriptionJobName>, 'DOC-EXAMPLE-BUCKET' as the
C<OutputBucketName>, and 'test-files/my-transcript' as the
C<OutputKey>, your transcription output path is
C<s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json>.

=back

If you specify the name of an Amazon S3 bucket sub-folder that doesn't
exist, one is created for you.



=head2 Settings => L<Paws::Transcribe::MedicalTranscriptionSetting>

Specify additional optional settings in your request, including channel
identification, alternative transcriptions, and speaker partitioning.
You can use that to apply custom vocabularies to your transcription
job.



=head2 B<REQUIRED> Specialty => Str

Specify the predominant medical specialty represented in your media.
For batch transcriptions, C<PRIMARYCARE> is the only valid value. If
you require additional specialties, refer to .

Valid values are: C<"PRIMARYCARE">

=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new medical transcription job at the time you start this new job.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).



=head2 B<REQUIRED> Type => Str

Specify whether your input media contains only one person
(C<DICTATION>) or contains a conversation between two people
(C<CONVERSATION>).

For example, C<DICTATION> could be used for a medical professional
wanting to transcribe voice memos; C<CONVERSATION> could be used for
transcribing the doctor-patient dialogue during the patient's office
visit.

Valid values are: C<"CONVERSATION">, C<"DICTATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMedicalTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

