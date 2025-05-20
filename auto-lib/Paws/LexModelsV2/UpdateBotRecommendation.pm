
package Paws::LexModelsV2::UpdateBotRecommendation;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botRecommendationId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has EncryptionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::EncryptionSetting', traits => ['NameInRequest'], request_name => 'encryptionSetting', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBotRecommendation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateBotRecommendationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBotRecommendation - Arguments for method UpdateBotRecommendation on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBotRecommendation on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateBotRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBotRecommendation.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateBotRecommendationResponse =
      $models - v2 -lex->UpdateBotRecommendation(
      BotId               => 'MyId',
      BotRecommendationId => 'MyId',
      BotVersion          => 'MyDraftBotVersion',
      EncryptionSetting   => {
        AssociatedTranscriptsPassword => 'MyFilePassword', # max: 1024; OPTIONAL
        BotLocaleExportPassword       => 'MyFilePassword', # max: 1024; OPTIONAL
        KmsKeyArn => 'MyKmsKeyArn',    # min: 20, max: 2048; OPTIONAL
      },
      LocaleId => 'MyLocaleId',

      );

    # Results:
    my $BotId = $UpdateBotRecommendationResponse->BotId;
    my $BotRecommendationId =
      $UpdateBotRecommendationResponse->BotRecommendationId;
    my $BotRecommendationStatus =
      $UpdateBotRecommendationResponse->BotRecommendationStatus;
    my $BotVersion        = $UpdateBotRecommendationResponse->BotVersion;
    my $CreationDateTime  = $UpdateBotRecommendationResponse->CreationDateTime;
    my $EncryptionSetting = $UpdateBotRecommendationResponse->EncryptionSetting;
    my $LastUpdatedDateTime =
      $UpdateBotRecommendationResponse->LastUpdatedDateTime;
    my $LocaleId = $UpdateBotRecommendationResponse->LocaleId;
    my $TranscriptSourceSetting =
      $UpdateBotRecommendationResponse->TranscriptSourceSetting;

    # Returns a L<Paws::LexModelsV2::UpdateBotRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateBotRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot containing the bot recommendation to
be updated.



=head2 B<REQUIRED> BotRecommendationId => Str

The unique identifier of the bot recommendation to be updated.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot containing the bot recommendation to be updated.



=head2 B<REQUIRED> EncryptionSetting => L<Paws::LexModelsV2::EncryptionSetting>

The object representing the passwords that will be used to encrypt the
data related to the bot recommendation results, as well as the KMS key
ARN used to encrypt the associated metadata.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the bot recommendation to
update. The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBotRecommendation in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

