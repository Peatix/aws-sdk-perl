
package Paws::LexModelsV2::ListBotRecommendationsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotRecommendationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotRecommendationSummary]', traits => ['NameInRequest'], request_name => 'botRecommendationSummaries');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotRecommendationsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot that contains the bot recommendation
list.


=head2 BotRecommendationSummaries => ArrayRef[L<Paws::LexModelsV2::BotRecommendationSummary>]

Summary information for the bot recommendations that meet the filter
specified in this request. The length of the list is specified in the
maxResults parameter of the request. If there are more bot
recommendations available, the nextToken field contains a token to get
the next page of results.


=head2 BotVersion => Str

The version of the bot that contains the bot recommendation list.


=head2 LocaleId => Str

The identifier of the language and locale of the bot recommendation
list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the ListBotRecommendations operation. If the nextToken
field is present, you send the contents as the nextToken parameter of a
ListBotRecommendations operation request to get the next page of
results.


=head2 _request_id => Str


=cut

