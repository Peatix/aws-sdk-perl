
package Paws::LexModelsV2::StopBotRecommendationResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationId');
  has BotRecommendationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StopBotRecommendationResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot containing the bot recommendation that
is being stopped.


=head2 BotRecommendationId => Str

The unique identifier of the bot recommendation that is being stopped.


=head2 BotRecommendationStatus => Str

The status of the bot recommendation. If the status is Failed, then the
reasons for the failure are listed in the failureReasons field.

Valid values are: C<"Processing">, C<"Deleting">, C<"Deleted">, C<"Downloading">, C<"Updating">, C<"Available">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 BotVersion => Str

The version of the bot containing the recommendation that is being
stopped.


=head2 LocaleId => Str

The identifier of the language and locale of the bot response to stop.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)


=head2 _request_id => Str


=cut

