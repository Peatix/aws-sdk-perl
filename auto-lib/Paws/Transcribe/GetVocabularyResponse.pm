
package Paws::Transcribe::GetVocabularyResponse;
  use Moose;
  has DownloadUri => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str');
  has VocabularyState => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetVocabularyResponse

=head1 ATTRIBUTES


=head2 DownloadUri => Str

The Amazon S3 location where the custom vocabulary is stored; use this
URI to view or download the custom vocabulary.


=head2 FailureReason => Str

If C<VocabularyState> is C<FAILED>, C<FailureReason> contains
information about why the custom vocabulary request failed. See also:
Common Errors
(https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html).


=head2 LanguageCode => Str

The language code you selected for your custom vocabulary.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">, C<"zh-TW">, C<"th-TH">, C<"en-ZA">, C<"en-NZ">, C<"vi-VN">, C<"sv-SE">, C<"ab-GE">, C<"ast-ES">, C<"az-AZ">, C<"ba-RU">, C<"be-BY">, C<"bg-BG">, C<"bn-IN">, C<"bs-BA">, C<"ca-ES">, C<"ckb-IQ">, C<"ckb-IR">, C<"cs-CZ">, C<"cy-WL">, C<"el-GR">, C<"et-ET">, C<"eu-ES">, C<"fi-FI">, C<"gl-ES">, C<"gu-IN">, C<"ha-NG">, C<"hr-HR">, C<"hu-HU">, C<"hy-AM">, C<"is-IS">, C<"ka-GE">, C<"kab-DZ">, C<"kk-KZ">, C<"kn-IN">, C<"ky-KG">, C<"lg-IN">, C<"lt-LT">, C<"lv-LV">, C<"mhr-RU">, C<"mi-NZ">, C<"mk-MK">, C<"ml-IN">, C<"mn-MN">, C<"mr-IN">, C<"mt-MT">, C<"no-NO">, C<"or-IN">, C<"pa-IN">, C<"pl-PL">, C<"ps-AF">, C<"ro-RO">, C<"rw-RW">, C<"si-LK">, C<"sk-SK">, C<"sl-SI">, C<"so-SO">, C<"sr-RS">, C<"su-ID">, C<"sw-BI">, C<"sw-KE">, C<"sw-RW">, C<"sw-TZ">, C<"sw-UG">, C<"tl-PH">, C<"tt-RU">, C<"ug-CN">, C<"uk-UA">, C<"uz-UZ">, C<"wo-SN">, C<"zh-HK">, C<"zu-ZA">
=head2 LastModifiedTime => Str

The date and time the specified custom vocabulary was last modified.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:32:58.761000-07:00> represents 12:32 PM UTC-7
on May 4, 2022.


=head2 VocabularyName => Str

The name of the custom vocabulary you requested information about.


=head2 VocabularyState => Str

The processing state of your custom vocabulary. If the state is
C<READY>, you can use the custom vocabulary in a
C<StartTranscriptionJob> request.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 _request_id => Str


=cut

1;