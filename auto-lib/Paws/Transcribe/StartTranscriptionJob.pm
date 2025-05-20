
package Paws::Transcribe::StartTranscriptionJob;
  use Moose;
  has ContentRedaction => (is => 'ro', isa => 'Paws::Transcribe::ContentRedaction');
  has IdentifyLanguage => (is => 'ro', isa => 'Bool');
  has IdentifyMultipleLanguages => (is => 'ro', isa => 'Bool');
  has JobExecutionSettings => (is => 'ro', isa => 'Paws::Transcribe::JobExecutionSettings');
  has KMSEncryptionContext => (is => 'ro', isa => 'Paws::Transcribe::KMSEncryptionContextMap');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LanguageIdSettings => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettingsMap');
  has LanguageOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has ModelSettings => (is => 'ro', isa => 'Paws::Transcribe::ModelSettings');
  has OutputBucketName => (is => 'ro', isa => 'Str');
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::Settings');
  has Subtitles => (is => 'ro', isa => 'Paws::Transcribe::Subtitles');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');
  has ToxicityDetection => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::ToxicityDetectionSettings]');
  has TranscriptionJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTranscriptionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartTranscriptionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartTranscriptionJob - Arguments for method StartTranscriptionJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTranscriptionJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartTranscriptionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTranscriptionJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartTranscriptionJobResponse = $transcribe->StartTranscriptionJob(
      Media => {
        MediaFileUri         => 'MyUri',    # min: 1, max: 2000; OPTIONAL
        RedactedMediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      TranscriptionJobName => 'MyTranscriptionJobName',
      ContentRedaction     => {
        RedactionOutput =>
          'redacted',    # values: redacted, redacted_and_unredacted
        RedactionType  => 'PII',    # values: PII
        PiiEntityTypes => [
          'BANK_ACCOUNT_NUMBER',
          ... # values: BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
        ],    # max: 11; OPTIONAL
      },    # OPTIONAL
      IdentifyLanguage          => 1,    # OPTIONAL
      IdentifyMultipleLanguages => 1,    # OPTIONAL
      JobExecutionSettings      => {
        AllowDeferredExecution => 1,
        DataAccessRoleArn      =>
          'MyDataAccessRoleArn',         # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      KMSEncryptionContext => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 2000, value: min: 1, max: 2000
      },    # OPTIONAL
      LanguageCode       => 'af-ZA',    # OPTIONAL
      LanguageIdSettings => {
        'af-ZA' => {
          LanguageModelName    => 'MyModelName',    # min: 1, max: 200; OPTIONAL
          VocabularyFilterName =>
            'MyVocabularyFilterName',               # min: 1, max: 200; OPTIONAL
          VocabularyName => 'MyVocabularyName',     # min: 1, max: 200; OPTIONAL
        }, # key: values: af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE, ab-GE, ast-ES, az-AZ, ba-RU, be-BY, bg-BG, bn-IN, bs-BA, ca-ES, ckb-IQ, ckb-IR, cs-CZ, cy-WL, el-GR, et-ET, eu-ES, fi-FI, gl-ES, gu-IN, ha-NG, hr-HR, hu-HU, hy-AM, is-IS, ka-GE, kab-DZ, kk-KZ, kn-IN, ky-KG, lg-IN, lt-LT, lv-LV, mhr-RU, mi-NZ, mk-MK, ml-IN, mn-MN, mr-IN, mt-MT, no-NO, or-IN, pa-IN, pl-PL, ps-AF, ro-RO, rw-RW, si-LK, sk-SK, sl-SI, so-SO, sr-RS, su-ID, sw-BI, sw-KE, sw-RW, sw-TZ, sw-UG, tl-PH, tt-RU, ug-CN, uk-UA, uz-UZ, wo-SN, zh-HK, zu-ZA
      },    # OPTIONAL
      LanguageOptions => [
        'af-ZA',
        ... # values: af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE, ab-GE, ast-ES, az-AZ, ba-RU, be-BY, bg-BG, bn-IN, bs-BA, ca-ES, ckb-IQ, ckb-IR, cs-CZ, cy-WL, el-GR, et-ET, eu-ES, fi-FI, gl-ES, gu-IN, ha-NG, hr-HR, hu-HU, hy-AM, is-IS, ka-GE, kab-DZ, kk-KZ, kn-IN, ky-KG, lg-IN, lt-LT, lv-LV, mhr-RU, mi-NZ, mk-MK, ml-IN, mn-MN, mr-IN, mt-MT, no-NO, or-IN, pa-IN, pl-PL, ps-AF, ro-RO, rw-RW, si-LK, sk-SK, sl-SI, so-SO, sr-RS, su-ID, sw-BI, sw-KE, sw-RW, sw-TZ, sw-UG, tl-PH, tt-RU, ug-CN, uk-UA, uz-UZ, wo-SN, zh-HK, zu-ZA
      ],    # OPTIONAL
      MediaFormat          => 'mp3',    # OPTIONAL
      MediaSampleRateHertz => 1,        # OPTIONAL
      ModelSettings        => {
        LanguageModelName => 'MyModelName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      OutputBucketName         => 'MyOutputBucketName',    # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',            # OPTIONAL
      OutputKey                => 'MyOutputKey',           # OPTIONAL
      Settings                 => {
        ChannelIdentification  => 1,
        MaxAlternatives        => 1,    # min: 2, max: 10; OPTIONAL
        MaxSpeakerLabels       => 1,    # min: 2, max: 30; OPTIONAL
        ShowAlternatives       => 1,
        ShowSpeakerLabels      => 1,
        VocabularyFilterMethod =>
          'remove',                     # values: remove, mask, tag; OPTIONAL
        VocabularyFilterName =>
          'MyVocabularyFilterName',     # min: 1, max: 200; OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      Subtitles => {
        Formats => [
          'vtt', ...    # values: vtt, srt
        ],    # OPTIONAL
        OutputStartIndex => 1,    # max: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ToxicityDetection => [
        {
          ToxicityCategories => [
            'ALL', ...    # values: ALL
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TranscriptionJob = $StartTranscriptionJobResponse->TranscriptionJob;

    # Returns a L<Paws::Transcribe::StartTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartTranscriptionJob>

=head1 ATTRIBUTES


=head2 ContentRedaction => L<Paws::Transcribe::ContentRedaction>

Makes it possible to redact or flag specified personally identifiable
information (PII) in your transcript. If you use C<ContentRedaction>,
you must also include the sub-parameters: C<RedactionOutput> and
C<RedactionType>. You can optionally include C<PiiEntityTypes> to
choose which types of PII you want to redact. If you do not include
C<PiiEntityTypes> in your request, all PII is redacted.



=head2 IdentifyLanguage => Bool

Enables automatic language identification in your transcription job
request. Use this parameter if your media file contains only one
language. If your media contains multiple languages, use
C<IdentifyMultipleLanguages> instead.

If you include C<IdentifyLanguage>, you can optionally include a list
of language codes, using C<LanguageOptions>, that you think may be
present in your media file. Including C<LanguageOptions> restricts
C<IdentifyLanguage> to only the language options that you specify,
which can improve transcription accuracy.

If you want to apply a custom language model, a custom vocabulary, or a
custom vocabulary filter to your automatic language identification
request, include C<LanguageIdSettings> with the relevant sub-parameters
(C<VocabularyName>, C<LanguageModelName>, and C<VocabularyFilterName>).
If you include C<LanguageIdSettings>, also include C<LanguageOptions>.

Note that you must include one of C<LanguageCode>, C<IdentifyLanguage>,
or C<IdentifyMultipleLanguages> in your request. If you include more
than one of these parameters, your transcription job fails.



=head2 IdentifyMultipleLanguages => Bool

Enables automatic multi-language identification in your transcription
job request. Use this parameter if your media file contains more than
one language. If your media contains only one language, use
C<IdentifyLanguage> instead.

If you include C<IdentifyMultipleLanguages>, you can optionally include
a list of language codes, using C<LanguageOptions>, that you think may
be present in your media file. Including C<LanguageOptions> restricts
C<IdentifyLanguage> to only the language options that you specify,
which can improve transcription accuracy.

If you want to apply a custom vocabulary or a custom vocabulary filter
to your automatic language identification request, include
C<LanguageIdSettings> with the relevant sub-parameters
(C<VocabularyName> and C<VocabularyFilterName>). If you include
C<LanguageIdSettings>, also include C<LanguageOptions>.

Note that you must include one of C<LanguageCode>, C<IdentifyLanguage>,
or C<IdentifyMultipleLanguages> in your request. If you include more
than one of these parameters, your transcription job fails.



=head2 JobExecutionSettings => L<Paws::Transcribe::JobExecutionSettings>

Makes it possible to control how your transcription job is processed.
Currently, the only C<JobExecutionSettings> modification you can choose
is enabling job queueing using the C<AllowDeferredExecution>
sub-parameter.

If you include C<JobExecutionSettings> in your request, you must also
include the sub-parameters: C<AllowDeferredExecution> and
C<DataAccessRoleArn>.



=head2 KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>

A map of plain text, non-secret key:value pairs, known as encryption
context pairs, that provide an added layer of security for your data.
For more information, see KMS encryption context
(https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context)
and Asymmetric keys in KMS
(https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html).



=head2 LanguageCode => Str

The language code that represents the language spoken in the input
media file.

If you're unsure of the language spoken in your media file, consider
using C<IdentifyLanguage> or C<IdentifyMultipleLanguages> to enable
automatic language identification.

Note that you must include one of C<LanguageCode>, C<IdentifyLanguage>,
or C<IdentifyMultipleLanguages> in your request. If you include more
than one of these parameters, your transcription job fails.

For a list of supported languages and their associated language codes,
refer to the Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
table.

To transcribe speech in Modern Standard Arabic (C<ar-SA>) in Amazon Web
Services GovCloud (US) (US-West, us-gov-west-1), Amazon Web Services
GovCloud (US) (US-East, us-gov-east-1), Canada (Calgary, ca-west-1) and
Africa (Cape Town, af-south-1), your media file must be encoded at a
sample rate of 16,000 Hz or higher.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">, C<"zh-TW">, C<"th-TH">, C<"en-ZA">, C<"en-NZ">, C<"vi-VN">, C<"sv-SE">, C<"ab-GE">, C<"ast-ES">, C<"az-AZ">, C<"ba-RU">, C<"be-BY">, C<"bg-BG">, C<"bn-IN">, C<"bs-BA">, C<"ca-ES">, C<"ckb-IQ">, C<"ckb-IR">, C<"cs-CZ">, C<"cy-WL">, C<"el-GR">, C<"et-ET">, C<"eu-ES">, C<"fi-FI">, C<"gl-ES">, C<"gu-IN">, C<"ha-NG">, C<"hr-HR">, C<"hu-HU">, C<"hy-AM">, C<"is-IS">, C<"ka-GE">, C<"kab-DZ">, C<"kk-KZ">, C<"kn-IN">, C<"ky-KG">, C<"lg-IN">, C<"lt-LT">, C<"lv-LV">, C<"mhr-RU">, C<"mi-NZ">, C<"mk-MK">, C<"ml-IN">, C<"mn-MN">, C<"mr-IN">, C<"mt-MT">, C<"no-NO">, C<"or-IN">, C<"pa-IN">, C<"pl-PL">, C<"ps-AF">, C<"ro-RO">, C<"rw-RW">, C<"si-LK">, C<"sk-SK">, C<"sl-SI">, C<"so-SO">, C<"sr-RS">, C<"su-ID">, C<"sw-BI">, C<"sw-KE">, C<"sw-RW">, C<"sw-TZ">, C<"sw-UG">, C<"tl-PH">, C<"tt-RU">, C<"ug-CN">, C<"uk-UA">, C<"uz-UZ">, C<"wo-SN">, C<"zh-HK">, C<"zu-ZA">

=head2 LanguageIdSettings => L<Paws::Transcribe::LanguageIdSettingsMap>

If using automatic language identification in your request and you want
to apply a custom language model, a custom vocabulary, or a custom
vocabulary filter, include C<LanguageIdSettings> with the relevant
sub-parameters (C<VocabularyName>, C<LanguageModelName>, and
C<VocabularyFilterName>). Note that multi-language identification
(C<IdentifyMultipleLanguages>) doesn't support custom language models.

C<LanguageIdSettings> supports two to five language codes. Each
language code you include can have an associated custom language model,
custom vocabulary, and custom vocabulary filter. The language codes
that you specify must match the languages of the associated custom
language models, custom vocabularies, and custom vocabulary filters.

It's recommended that you include C<LanguageOptions> when using
C<LanguageIdSettings> to ensure that the correct language dialect is
identified. For example, if you specify a custom vocabulary that is in
C<en-US> but Amazon Transcribe determines that the language spoken in
your media is C<en-AU>, your custom vocabulary I<is not> applied to
your transcription. If you include C<LanguageOptions> and include
C<en-US> as the only English language dialect, your custom vocabulary
I<is> applied to your transcription.

If you want to include a custom language model with your request but
B<do not> want to use automatic language identification, use instead
the C< parameter with the C<LanguageModelName> sub-parameter. If you
want to include a custom vocabulary or a custom vocabulary filter (or
both) with your request but B<do not> want to use automatic language
identification, use instead the C< parameter with the C<VocabularyName>
or C<VocabularyFilterName> (or both) sub-parameter.>>



=head2 LanguageOptions => ArrayRef[Str|Undef]

You can specify two or more language codes that represent the languages
you think may be present in your media. Including more than five is not
recommended. If you're unsure what languages are present, do not
include this parameter.

If you include C<LanguageOptions> in your request, you must also
include C<IdentifyLanguage>.

For more information, refer to Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html).

To transcribe speech in Modern Standard Arabic (C<ar-SA>)in Amazon Web
Services GovCloud (US) (US-West, us-gov-west-1), Amazon Web Services
GovCloud (US) (US-East, us-gov-east-1), in Canada (Calgary) ca-west-1
and Africa (Cape Town) af-south-1, your media file must be encoded at a
sample rate of 16,000 Hz or higher.



=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>

Describes the Amazon S3 location of the media file you want to use in
your request.



=head2 MediaFormat => Str

Specify the format of your input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">, C<"ogg">, C<"amr">, C<"webm">, C<"m4a">

=head2 MediaSampleRateHertz => Int

The sample rate, in hertz, of the audio track in your input media file.

If you do not specify the media sample rate, Amazon Transcribe
determines it for you. If you specify the sample rate, it must match
the rate detected by Amazon Transcribe. If there's a mismatch between
the value that you specify and the value detected, your job fails. In
most cases, you can omit C<MediaSampleRateHertz> and let Amazon
Transcribe determine the sample rate.



=head2 ModelSettings => L<Paws::Transcribe::ModelSettings>

Specify the custom language model you want to include with your
transcription job. If you include C<ModelSettings> in your request, you
must include the C<LanguageModelName> sub-parameter.

For more information, see Custom language models
(https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html).



=head2 OutputBucketName => Str

The name of the Amazon S3 bucket where you want your transcription
output stored. Do not include the C<S3://> prefix of the specified
bucket.

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

If you do not specify C<OutputBucketName>, your transcript is placed in
a service-managed Amazon S3 bucket and you are provided with a URI to
access your transcript.



=head2 OutputEncryptionKMSKeyId => Str

The KMS key you want to use to encrypt your transcription output.

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
as the name you specified for your transcription job
(C<TranscriptionJobName>).

Here are some examples of how you can use C<OutputKey>:

=over

=item *

If you specify 'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName> and
'my-transcript.json' as the C<OutputKey>, your transcription output
path is C<s3://DOC-EXAMPLE-BUCKET/my-transcript.json>.

=item *

If you specify 'my-first-transcription' as the C<TranscriptionJobName>,
'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName>, and 'my-transcript' as
the C<OutputKey>, your transcription output path is
C<s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json>.

=item *

If you specify 'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName> and
'test-files/my-transcript.json' as the C<OutputKey>, your transcription
output path is
C<s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json>.

=item *

If you specify 'my-first-transcription' as the C<TranscriptionJobName>,
'DOC-EXAMPLE-BUCKET' as the C<OutputBucketName>, and
'test-files/my-transcript' as the C<OutputKey>, your transcription
output path is
C<s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json>.

=back

If you specify the name of an Amazon S3 bucket sub-folder that doesn't
exist, one is created for you.



=head2 Settings => L<Paws::Transcribe::Settings>

Specify additional optional settings in your request, including channel
identification, alternative transcriptions, speaker partitioning. You
can use that to apply custom vocabularies and vocabulary filters.

If you want to include a custom vocabulary or a custom vocabulary
filter (or both) with your request but B<do not> want to use automatic
language identification, use C<Settings> with the C<VocabularyName> or
C<VocabularyFilterName> (or both) sub-parameter.

If you're using automatic language identification with your request and
want to include a custom language model, a custom vocabulary, or a
custom vocabulary filter, use instead the C< parameter with the
C<LanguageModelName>, C<VocabularyName> or C<VocabularyFilterName>
sub-parameters.>



=head2 Subtitles => L<Paws::Transcribe::Subtitles>

Produces subtitle files for your input media. You can specify WebVTT
(*.vtt) and SubRip (*.srt) formats.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new transcription job at the time you start this new job.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).



=head2 ToxicityDetection => ArrayRef[L<Paws::Transcribe::ToxicityDetectionSettings>]

Enables toxic speech detection in your transcript. If you include
C<ToxicityDetection> in your request, you must also include
C<ToxicityCategories>.

For information on the types of toxic speech Amazon Transcribe can
detect, see Detecting toxic speech
(https://docs.aws.amazon.com/transcribe/latest/dg/toxic-language.html).



=head2 B<REQUIRED> TranscriptionJobName => Str

A unique name, chosen by you, for your transcription job. The name that
you specify is also used as the default name of your transcription
output file. If you want to specify a different name for your
transcription output, use the C<OutputKey> parameter.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new job
with the same name as an existing job, you get a C<ConflictException>
error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

