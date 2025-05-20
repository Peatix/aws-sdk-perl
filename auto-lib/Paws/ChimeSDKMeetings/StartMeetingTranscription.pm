
package Paws::ChimeSDKMeetings::StartMeetingTranscription;
  use Moose;
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);
  has TranscriptionConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::TranscriptionConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMeetingTranscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/transcription?operation=start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::StartMeetingTranscription - Arguments for method StartMeetingTranscription on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMeetingTranscription on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method StartMeetingTranscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMeetingTranscription.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    $meetings -chime->StartMeetingTranscription(
      MeetingId                  => 'MyGuidString',
      TranscriptionConfiguration => {
        EngineTranscribeMedicalSettings => {
          LanguageCode => 'en-US',                   # values: en-US
          Specialty    => 'PRIMARYCARE'
          , # values: PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
          Type => 'CONVERSATION',    # values: CONVERSATION, DICTATION
          ContentIdentificationType => 'PHI',        # values: PHI; OPTIONAL
          Region                    => 'us-east-1'
          , # values: us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto; OPTIONAL
          VocabularyName => 'MyString',    # max: 4096; OPTIONAL
        },    # OPTIONAL
        EngineTranscribeSettings => {
          ContentIdentificationType         => 'PII',    # values: PII; OPTIONAL
          ContentRedactionType              => 'PII',    # values: PII; OPTIONAL
          EnablePartialResultsStabilization => 1,        # OPTIONAL
          IdentifyLanguage                  => 1,        # OPTIONAL
          LanguageCode                      => 'en-US'
          , # values: en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN; OPTIONAL
          LanguageModelName =>
            'MyTranscribeLanguageModelName',    # min: 1, max: 200; OPTIONAL
          LanguageOptions =>
            'MyTranscribeLanguageOptions',      # min: 1, max: 200; OPTIONAL
          PartialResultsStability =>
            'low',    # values: low, medium, high; OPTIONAL
          PiiEntityTypes =>
            'MyTranscribePiiEntityTypes',    # min: 1, max: 300; OPTIONAL
          PreferredLanguage => 'en-US'
          , # values: en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN; OPTIONAL
          Region => 'us-east-2'
          , # values: us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto, us-gov-west-1; OPTIONAL
          VocabularyFilterMethod =>
            'remove',    # values: remove, mask, tag; OPTIONAL
          VocabularyFilterName  => 'MyString',    # max: 4096; OPTIONAL
          VocabularyFilterNames =>
            'MyTranscribeVocabularyNamesOrFilterNamesString'
          ,                                       # min: 1, max: 3000; OPTIONAL
          VocabularyName  => 'MyString',          # max: 4096; OPTIONAL
          VocabularyNames => 'MyTranscribeVocabularyNamesOrFilterNamesString'
          ,                                       # min: 1, max: 3000; OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/StartMeetingTranscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeetingId => Str

The unique ID of the meeting being transcribed.



=head2 B<REQUIRED> TranscriptionConfiguration => L<Paws::ChimeSDKMeetings::TranscriptionConfiguration>

The configuration for the current transcription operation. Must contain
C<EngineTranscribeSettings> or C<EngineTranscribeMedicalSettings>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMeetingTranscription in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

