
package Paws::LexModelsV2::UpdateBotLocale;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GenerativeAISettings => (is => 'ro', isa => 'Paws::LexModelsV2::GenerativeAISettings', traits => ['NameInRequest'], request_name => 'generativeAISettings');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold', required => 1);
  has VoiceSettings => (is => 'ro', isa => 'Paws::LexModelsV2::VoiceSettings', traits => ['NameInRequest'], request_name => 'voiceSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBotLocale');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateBotLocaleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBotLocale - Arguments for method UpdateBotLocale on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBotLocale on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateBotLocale.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBotLocale.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateBotLocaleResponse = $models - v2 -lex->UpdateBotLocale(
      BotId                        => 'MyId',
      BotVersion                   => 'MyDraftBotVersion',
      LocaleId                     => 'MyLocaleId',
      NluIntentConfidenceThreshold => 1,
      Description                  => 'MyDescription',       # OPTIONAL
      GenerativeAISettings         => {
        BuildtimeSettings => {
          DescriptiveBotBuilder => {
            Enabled                   => 1,
            BedrockModelSpecification => {
              ModelArn     => 'MyBedrockModelArn',
              CustomPrompt =>
                'MyBedrockModelCustomPrompt',    # min: 1, max: 4000; OPTIONAL
              Guardrail => {
                Identifier =>
                  'MyBedrockGuardrailIdentifier',    # min: 1, max: 2048
                Version => 'MyBedrockGuardrailVersion',

              },    # OPTIONAL
              TraceStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SampleUtteranceGeneration => {
            Enabled                   => 1,
            BedrockModelSpecification => {
              ModelArn     => 'MyBedrockModelArn',
              CustomPrompt =>
                'MyBedrockModelCustomPrompt',    # min: 1, max: 4000; OPTIONAL
              Guardrail => {
                Identifier =>
                  'MyBedrockGuardrailIdentifier',    # min: 1, max: 2048
                Version => 'MyBedrockGuardrailVersion',

              },    # OPTIONAL
              TraceStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        RuntimeSettings => {
          SlotResolutionImprovement => {
            Enabled                   => 1,
            BedrockModelSpecification => {
              ModelArn     => 'MyBedrockModelArn',
              CustomPrompt =>
                'MyBedrockModelCustomPrompt',    # min: 1, max: 4000; OPTIONAL
              Guardrail => {
                Identifier =>
                  'MyBedrockGuardrailIdentifier',    # min: 1, max: 2048
                Version => 'MyBedrockGuardrailVersion',

              },    # OPTIONAL
              TraceStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      VoiceSettings => {
        VoiceId => 'MyVoiceId',
        Engine  => 'standard'
        ,    # values: standard, neural, long-form, generative; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $BotId                = $UpdateBotLocaleResponse->BotId;
    my $BotLocaleStatus      = $UpdateBotLocaleResponse->BotLocaleStatus;
    my $BotVersion           = $UpdateBotLocaleResponse->BotVersion;
    my $CreationDateTime     = $UpdateBotLocaleResponse->CreationDateTime;
    my $Description          = $UpdateBotLocaleResponse->Description;
    my $FailureReasons       = $UpdateBotLocaleResponse->FailureReasons;
    my $GenerativeAISettings = $UpdateBotLocaleResponse->GenerativeAISettings;
    my $LastUpdatedDateTime  = $UpdateBotLocaleResponse->LastUpdatedDateTime;
    my $LocaleId             = $UpdateBotLocaleResponse->LocaleId;
    my $LocaleName           = $UpdateBotLocaleResponse->LocaleName;
    my $NluIntentConfidenceThreshold =
      $UpdateBotLocaleResponse->NluIntentConfidenceThreshold;
    my $RecommendedActions = $UpdateBotLocaleResponse->RecommendedActions;
    my $VoiceSettings      = $UpdateBotLocaleResponse->VoiceSettings;

    # Returns a L<Paws::LexModelsV2::UpdateBotLocaleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateBotLocale>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that contains the locale.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the locale to be updated. The
version can only be the C<DRAFT> version.



=head2 Description => Str

The new description of the locale.



=head2 GenerativeAISettings => L<Paws::LexModelsV2::GenerativeAISettings>

Contains settings for generative AI features powered by Amazon Bedrock
for your bot locale. Use this object to turn generative AI features on
and off. Pricing may differ if you turn a feature on. For more
information, see LINK.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale to update. The string must
match one of the supported locales. For more information, see Supported
languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 B<REQUIRED> NluIntentConfidenceThreshold => Num

The new confidence threshold where Amazon Lex inserts the
C<AMAZON.FallbackIntent> and C<AMAZON.KendraSearchIntent> intents in
the list of possible intents for an utterance.



=head2 VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>

The new Amazon Polly voice Amazon Lex should use for voice interaction
with the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBotLocale in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

