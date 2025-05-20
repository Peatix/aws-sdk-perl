
package Paws::LexModelsV2::DescribeBotRecommendationResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationId');
  has BotRecommendationResults => (is => 'ro', isa => 'Paws::LexModelsV2::BotRecommendationResults', traits => ['NameInRequest'], request_name => 'botRecommendationResults');
  has BotRecommendationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has EncryptionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::EncryptionSetting', traits => ['NameInRequest'], request_name => 'encryptionSetting');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has TranscriptSourceSetting => (is => 'ro', isa => 'Paws::LexModelsV2::TranscriptSourceSetting', traits => ['NameInRequest'], request_name => 'transcriptSourceSetting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotRecommendationResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the bot recommendation.


=head2 BotRecommendationId => Str

The identifier of the bot recommendation being described.


=head2 BotRecommendationResults => L<Paws::LexModelsV2::BotRecommendationResults>

The object representing the URL of the bot definition, the URL of the
associated transcript and a statistical summary of the bot
recommendation results.


=head2 BotRecommendationStatus => Str

The status of the bot recommendation. If the status is Failed, then the
reasons for the failure are listed in the failureReasons field.

Valid values are: C<"Processing">, C<"Deleting">, C<"Deleted">, C<"Downloading">, C<"Updating">, C<"Available">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 BotVersion => Str

The version of the bot associated with the bot recommendation.


=head2 CreationDateTime => Str

The date and time that the bot recommendation was created.


=head2 EncryptionSetting => L<Paws::LexModelsV2::EncryptionSetting>

The object representing the passwords that were used to encrypt the
data related to the bot recommendation results, as well as the KMS key
ARN used to encrypt the associated metadata.


=head2 FailureReasons => ArrayRef[Str|Undef]

If botRecommendationStatus is Failed, Amazon Lex explains why.


=head2 LastUpdatedDateTime => Str

The date and time that the bot recommendation was last updated.


=head2 LocaleId => Str

The identifier of the language and locale of the bot recommendation to
describe.


=head2 TranscriptSourceSetting => L<Paws::LexModelsV2::TranscriptSourceSetting>

The object representing the Amazon S3 bucket containing the transcript,
as well as the associated metadata.


=head2 _request_id => Str


=cut

