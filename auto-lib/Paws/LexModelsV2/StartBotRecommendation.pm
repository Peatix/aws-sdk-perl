
package Paws::LexModelsV2::StartBotRecommendation;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has EncryptionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::EncryptionSetting', traits => ['NameInRequest'], request_name => 'encryptionSetting');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has TranscriptSourceSetting => (is => 'ro', isa => 'Paws::LexModelsV2::TranscriptSourceSetting', traits => ['NameInRequest'], request_name => 'transcriptSourceSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBotRecommendation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::StartBotRecommendationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartBotRecommendation - Arguments for method StartBotRecommendation on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBotRecommendation on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method StartBotRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBotRecommendation.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $StartBotRecommendationResponse =
      $models - v2 -lex->StartBotRecommendation(
      BotId                   => 'MyId',
      BotVersion              => 'MyDraftBotVersion',
      LocaleId                => 'MyLocaleId',
      TranscriptSourceSetting => {
        S3BucketTranscriptSource => {
          S3BucketName     => 'MyS3BucketName',   # min: 3, max: 63
          TranscriptFormat => 'Lex',              # values: Lex
          KmsKeyArn        => 'MyKmsKeyArn',      # min: 20, max: 2048; OPTIONAL
          PathFormat       => {
            ObjectPrefixes => [
              'MyObjectPrefix', ...               # min: 1
            ],    # min: 1, max: 2; OPTIONAL
          },    # OPTIONAL
          TranscriptFilter => {
            LexTranscriptFilter => {
              DateRangeFilter => {
                EndDateTime   => '1970-01-01T01:00:00',
                StartDateTime => '1970-01-01T01:00:00',

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      EncryptionSetting => {
        AssociatedTranscriptsPassword => 'MyFilePassword', # max: 1024; OPTIONAL
        BotLocaleExportPassword       => 'MyFilePassword', # max: 1024; OPTIONAL
        KmsKeyArn => 'MyKmsKeyArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $BotId = $StartBotRecommendationResponse->BotId;
    my $BotRecommendationId =
      $StartBotRecommendationResponse->BotRecommendationId;
    my $BotRecommendationStatus =
      $StartBotRecommendationResponse->BotRecommendationStatus;
    my $BotVersion        = $StartBotRecommendationResponse->BotVersion;
    my $CreationDateTime  = $StartBotRecommendationResponse->CreationDateTime;
    my $EncryptionSetting = $StartBotRecommendationResponse->EncryptionSetting;
    my $LocaleId          = $StartBotRecommendationResponse->LocaleId;
    my $TranscriptSourceSetting =
      $StartBotRecommendationResponse->TranscriptSourceSetting;

    # Returns a L<Paws::LexModelsV2::StartBotRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/StartBotRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot containing the bot recommendation.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot containing the bot recommendation.



=head2 EncryptionSetting => L<Paws::LexModelsV2::EncryptionSetting>

The object representing the passwords that will be used to encrypt the
data related to the bot recommendation results, as well as the KMS key
ARN used to encrypt the associated metadata.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the bot recommendation to
start. The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)



=head2 B<REQUIRED> TranscriptSourceSetting => L<Paws::LexModelsV2::TranscriptSourceSetting>

The object representing the Amazon S3 bucket containing the transcript,
as well as the associated metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBotRecommendation in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

