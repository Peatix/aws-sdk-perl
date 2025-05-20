
package Paws::LexModelsV2::ListRecommendedIntentsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::RecommendedIntentSummary]', traits => ['NameInRequest'], request_name => 'summaryList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListRecommendedIntentsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot associated with the recommended
intent.


=head2 BotRecommendationId => Str

The identifier of the bot recommendation that contains the recommended
intent.


=head2 BotVersion => Str

The version of the bot that contains the intent.


=head2 LocaleId => Str

The identifier of the language and locale of the intents to list. The
string must match one of the supported locales. For more information,
see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the ListRecommendedIntents operation. If the nextToken
field is present, you send the contents as the nextToken parameter of a
ListRecommendedIntents operation request to get the next page of
results.


=head2 SummaryList => ArrayRef[L<Paws::LexModelsV2::RecommendedIntentSummary>]

Summary information for the intents that meet the filter criteria
specified in the request. The length of the list is specified in the
maxResults parameter of the request. If there are more intents
available, the nextToken field contains a token to get the next page of
results.


=head2 _request_id => Str


=cut

