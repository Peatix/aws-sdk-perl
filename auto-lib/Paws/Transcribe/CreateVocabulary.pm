
package Paws::Transcribe::CreateVocabulary;
  use Moose;
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Phrases => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');
  has VocabularyFileUri => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateVocabulary - Arguments for method CreateVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateVocabularyResponse = $transcribe->CreateVocabulary(
      LanguageCode      => 'af-ZA',
      VocabularyName    => 'MyVocabularyName',
      DataAccessRoleArn => 'MyDataAccessRoleArn',    # OPTIONAL
      Phrases           => [
        'MyPhrase', ...                              # max: 256
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VocabularyFileUri => 'MyUri',    # OPTIONAL
    );

    # Results:
    my $FailureReason    = $CreateVocabularyResponse->FailureReason;
    my $LanguageCode     = $CreateVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $CreateVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $CreateVocabularyResponse->VocabularyName;
    my $VocabularyState  = $CreateVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::CreateVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateVocabulary>

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permissions to
access the Amazon S3 bucket that contains your input files (in this
case, your custom vocabulary). If the role that you specify
doesnE<rsquo>t have the appropriate permissions to access the specified
Amazon S3 location, your request fails.

IAM role ARNs have the format
C<arn:partition:iam::account:role/role-name-with-path>. For example:
C<arn:aws:iam::111122223333:role/Admin>.

For more information, see IAM ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).



=head2 B<REQUIRED> LanguageCode => Str

The language code that represents the language of the entries in your
custom vocabulary. Each custom vocabulary must contain terms in only
one language.

A custom vocabulary can only be used to transcribe files in the same
language as the custom vocabulary. For example, if you create a custom
vocabulary using US English (C<en-US>), you can only apply this custom
vocabulary to files that contain English audio.

For a list of supported languages and their associated language codes,
refer to the Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
table.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">, C<"zh-TW">, C<"th-TH">, C<"en-ZA">, C<"en-NZ">, C<"vi-VN">, C<"sv-SE">, C<"ab-GE">, C<"ast-ES">, C<"az-AZ">, C<"ba-RU">, C<"be-BY">, C<"bg-BG">, C<"bn-IN">, C<"bs-BA">, C<"ca-ES">, C<"ckb-IQ">, C<"ckb-IR">, C<"cs-CZ">, C<"cy-WL">, C<"el-GR">, C<"et-ET">, C<"eu-ES">, C<"fi-FI">, C<"gl-ES">, C<"gu-IN">, C<"ha-NG">, C<"hr-HR">, C<"hu-HU">, C<"hy-AM">, C<"is-IS">, C<"ka-GE">, C<"kab-DZ">, C<"kk-KZ">, C<"kn-IN">, C<"ky-KG">, C<"lg-IN">, C<"lt-LT">, C<"lv-LV">, C<"mhr-RU">, C<"mi-NZ">, C<"mk-MK">, C<"ml-IN">, C<"mn-MN">, C<"mr-IN">, C<"mt-MT">, C<"no-NO">, C<"or-IN">, C<"pa-IN">, C<"pl-PL">, C<"ps-AF">, C<"ro-RO">, C<"rw-RW">, C<"si-LK">, C<"sk-SK">, C<"sl-SI">, C<"so-SO">, C<"sr-RS">, C<"su-ID">, C<"sw-BI">, C<"sw-KE">, C<"sw-RW">, C<"sw-TZ">, C<"sw-UG">, C<"tl-PH">, C<"tt-RU">, C<"ug-CN">, C<"uk-UA">, C<"uz-UZ">, C<"wo-SN">, C<"zh-HK">, C<"zu-ZA">

=head2 Phrases => ArrayRef[Str|Undef]

Use this parameter if you want to create your custom vocabulary by
including all desired terms, as comma-separated values, within your
request. The other option for creating your custom vocabulary is to
save your entries in a text file and upload them to an Amazon S3
bucket, then specify the location of your file using the
C<VocabularyFileUri> parameter.

Note that if you include C<Phrases> in your request, you cannot use
C<VocabularyFileUri>; you must choose one or the other.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary filter request fails. Refer to Character Sets for
Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to get
the character set for your language.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new custom vocabulary at the time you create this new custom
vocabulary.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).



=head2 VocabularyFileUri => Str

The Amazon S3 location of the text file that contains your custom
vocabulary. The URI must be located in the same Amazon Web Services
Region as the resource you're calling.

Here's an example URI path:
C<s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt>

Note that if you include C<VocabularyFileUri> in your request, you
cannot use the C<Phrases> flag; you must choose one or the other.



=head2 B<REQUIRED> VocabularyName => Str

A unique name, chosen by you, for your new custom vocabulary.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new
custom vocabulary with the same name as an existing custom vocabulary,
you get a C<ConflictException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

