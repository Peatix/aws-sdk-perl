
package Paws::Transcribe::UpdateMedicalVocabulary;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyFileUri => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMedicalVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateMedicalVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateMedicalVocabulary - Arguments for method UpdateMedicalVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMedicalVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateMedicalVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMedicalVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateMedicalVocabularyResponse = $transcribe->UpdateMedicalVocabulary(
      LanguageCode      => 'af-ZA',
      VocabularyFileUri => 'MyUri',
      VocabularyName    => 'MyVocabularyName',

    );

    # Results:
    my $LanguageCode     = $UpdateMedicalVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $UpdateMedicalVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $UpdateMedicalVocabularyResponse->VocabularyName;
    my $VocabularyState  = $UpdateMedicalVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::UpdateMedicalVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateMedicalVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code that represents the language of the entries in the
custom vocabulary you want to update. US English (C<en-US>) is the only
language supported with Amazon Transcribe Medical.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">, C<"zh-TW">, C<"th-TH">, C<"en-ZA">, C<"en-NZ">, C<"vi-VN">, C<"sv-SE">, C<"ab-GE">, C<"ast-ES">, C<"az-AZ">, C<"ba-RU">, C<"be-BY">, C<"bg-BG">, C<"bn-IN">, C<"bs-BA">, C<"ca-ES">, C<"ckb-IQ">, C<"ckb-IR">, C<"cs-CZ">, C<"cy-WL">, C<"el-GR">, C<"et-ET">, C<"eu-ES">, C<"fi-FI">, C<"gl-ES">, C<"gu-IN">, C<"ha-NG">, C<"hr-HR">, C<"hu-HU">, C<"hy-AM">, C<"is-IS">, C<"ka-GE">, C<"kab-DZ">, C<"kk-KZ">, C<"kn-IN">, C<"ky-KG">, C<"lg-IN">, C<"lt-LT">, C<"lv-LV">, C<"mhr-RU">, C<"mi-NZ">, C<"mk-MK">, C<"ml-IN">, C<"mn-MN">, C<"mr-IN">, C<"mt-MT">, C<"no-NO">, C<"or-IN">, C<"pa-IN">, C<"pl-PL">, C<"ps-AF">, C<"ro-RO">, C<"rw-RW">, C<"si-LK">, C<"sk-SK">, C<"sl-SI">, C<"so-SO">, C<"sr-RS">, C<"su-ID">, C<"sw-BI">, C<"sw-KE">, C<"sw-RW">, C<"sw-TZ">, C<"sw-UG">, C<"tl-PH">, C<"tt-RU">, C<"ug-CN">, C<"uk-UA">, C<"uz-UZ">, C<"wo-SN">, C<"zh-HK">, C<"zu-ZA">

=head2 B<REQUIRED> VocabularyFileUri => Str

The Amazon S3 location of the text file that contains your custom
medical vocabulary. The URI must be located in the same Amazon Web
Services Region as the resource you're calling.

Here's an example URI path:
C<s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt>



=head2 B<REQUIRED> VocabularyName => Str

The name of the custom medical vocabulary you want to update. Custom
medical vocabulary names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMedicalVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

