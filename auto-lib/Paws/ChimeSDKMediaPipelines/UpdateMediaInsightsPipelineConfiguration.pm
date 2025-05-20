
package Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfiguration;
  use Moose;
  has Elements => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationElement]', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has RealTimeAlertConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::RealTimeAlertConfiguration');
  has ResourceAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMediaInsightsPipelineConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipeline-configurations/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfiguration - Arguments for method UpdateMediaInsightsPipelineConfiguration on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMediaInsightsPipelineConfiguration on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method UpdateMediaInsightsPipelineConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMediaInsightsPipelineConfiguration.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $UpdateMediaInsightsPipelineConfigurationResponse =
      $media -pipelines-chime->UpdateMediaInsightsPipelineConfiguration(
      Elements => [
        {
          Type => 'AmazonTranscribeCallAnalyticsProcessor'
          , # values: AmazonTranscribeCallAnalyticsProcessor, VoiceAnalyticsProcessor, AmazonTranscribeProcessor, KinesisDataStreamSink, LambdaFunctionSink, SqsQueueSink, SnsTopicSink, S3RecordingSink, VoiceEnhancementSink
          AmazonTranscribeCallAnalyticsProcessorConfiguration => {
            LanguageCode => 'en-US'
            , # values: en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
            CallAnalyticsStreamCategories => [
              'MyCategoryName', ...    # min: 1, max: 200
            ],    # min: 1, max: 20; OPTIONAL
            ContentIdentificationType         => 'PII',  # values: PII; OPTIONAL
            ContentRedactionType              => 'PII',  # values: PII; OPTIONAL
            EnablePartialResultsStabilization => 1,      # OPTIONAL
            FilterPartialResults              => 1,      # OPTIONAL
            LanguageModelName => 'MyModelName',    # min: 1, max: 200; OPTIONAL
            PartialResultsStability =>
              'high',    # values: high, medium, low; OPTIONAL
            PiiEntityTypes => 'MyPiiEntityTypes',   # min: 1, max: 300; OPTIONAL
            PostCallAnalyticsSettings => {
              DataAccessRoleArn      => 'MyString',      # max: 4096
              OutputLocation         => 'MyString',      # max: 4096
              ContentRedactionOutput => 'redacted'
              ,    # values: redacted, redacted_and_unredacted; OPTIONAL
              OutputEncryptionKMSKeyId => 'MyString',    # max: 4096
            },    # OPTIONAL
            VocabularyFilterMethod =>
              'remove',    # values: remove, mask, tag; OPTIONAL
            VocabularyFilterName =>
              'MyVocabularyFilterName',    # min: 1, max: 200; OPTIONAL
            VocabularyName => 'MyVocabularyName',   # min: 1, max: 200; OPTIONAL
          },    # OPTIONAL
          AmazonTranscribeProcessorConfiguration => {
            ContentIdentificationType         => 'PII',  # values: PII; OPTIONAL
            ContentRedactionType              => 'PII',  # values: PII; OPTIONAL
            EnablePartialResultsStabilization => 1,      # OPTIONAL
            FilterPartialResults              => 1,      # OPTIONAL
            IdentifyLanguage                  => 1,      # OPTIONAL
            IdentifyMultipleLanguages         => 1,      # OPTIONAL
            LanguageCode                      => 'en-US'
            , # values: en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
            LanguageModelName => 'MyModelName',    # min: 1, max: 200; OPTIONAL
            LanguageOptions => 'MyLanguageOptions', # min: 1, max: 200; OPTIONAL
            PartialResultsStability =>
              'high',    # values: high, medium, low; OPTIONAL
            PiiEntityTypes => 'MyPiiEntityTypes',   # min: 1, max: 300; OPTIONAL
            PreferredLanguage => 'en-US'
            , # values: en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
            ShowSpeakerLabel       => 1,    # OPTIONAL
            VocabularyFilterMethod =>
              'remove',    # values: remove, mask, tag; OPTIONAL
            VocabularyFilterName =>
              'MyVocabularyFilterName',    # min: 1, max: 200; OPTIONAL
            VocabularyFilterNames =>
              'MyVocabularyFilterNames',    # min: 1, max: 3000; OPTIONAL
            VocabularyName  => 'MyVocabularyName',  # min: 1, max: 200; OPTIONAL
            VocabularyNames =>
              'MyVocabularyNames',    # min: 1, max: 3000; OPTIONAL
          },    # OPTIONAL
          KinesisDataStreamSinkConfiguration => {
            InsightsTarget => 'MyArn',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          LambdaFunctionSinkConfiguration => {
            InsightsTarget => 'MyArn',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          S3RecordingSinkConfiguration => {
            Destination         => 'MyArn',    # min: 1, max: 1024; OPTIONAL
            RecordingFileFormat => 'Wav',      # values: Wav, Opus; OPTIONAL
          },    # OPTIONAL
          SnsTopicSinkConfiguration => {
            InsightsTarget => 'MyArn',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          SqsQueueSinkConfiguration => {
            InsightsTarget => 'MyArn',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          VoiceAnalyticsProcessorConfiguration => {
            SpeakerSearchStatus =>
              'Enabled',    # values: Enabled, Disabled; OPTIONAL
            VoiceToneAnalysisStatus =>
              'Enabled',    # values: Enabled, Disabled; OPTIONAL
          },    # OPTIONAL
          VoiceEnhancementSinkConfiguration => {
            Disabled => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      Identifier                 => 'MyNonEmptyString',
      ResourceAccessRoleArn      => 'MyArn',
      RealTimeAlertConfiguration => {
        Disabled => 1,    # OPTIONAL
        Rules    => [
          {
            Type =>
              'KeywordMatch',  # values: KeywordMatch, Sentiment, IssueDetection
            IssueDetectionConfiguration => {
              RuleName => 'MyRuleName',    # min: 2, max: 64

            },    # OPTIONAL
            KeywordMatchConfiguration => {
              Keywords => [
                'MyKeyword', ...    # min: 1, max: 100
              ],    # min: 1, max: 10
              RuleName => 'MyRuleName',    # min: 2, max: 64
              Negate   => 1,               # OPTIONAL
            },    # OPTIONAL
            SentimentConfiguration => {
              RuleName      => 'MyRuleName',    # min: 2, max: 64
              SentimentType => 'NEGATIVE',      # values: NEGATIVE
              TimePeriod    => 1,               # min: 60, max: 1800

            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 3; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $MediaInsightsPipelineConfiguration =
      $UpdateMediaInsightsPipelineConfigurationResponse
      ->MediaInsightsPipelineConfiguration;

# Returns a L<Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/UpdateMediaInsightsPipelineConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Elements => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationElement>]

The elements in the request, such as a processor for Amazon Transcribe
or a sink for a Kinesis Data Stream..



=head2 B<REQUIRED> Identifier => Str

The unique identifier for the resource to be updated. Valid values
include the name and ARN of the media insights pipeline configuration.



=head2 RealTimeAlertConfiguration => L<Paws::ChimeSDKMediaPipelines::RealTimeAlertConfiguration>

The configuration settings for real-time alerts for the media insights
pipeline.



=head2 B<REQUIRED> ResourceAccessRoleArn => Str

The ARN of the role used by the service to access Amazon Web Services
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMediaInsightsPipelineConfiguration in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

