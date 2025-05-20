
package Paws::LexModelsV2::ListUtteranceAnalyticsDataResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Utterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::UtteranceSpecification]', traits => ['NameInRequest'], request_name => 'utterances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListUtteranceAnalyticsDataResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot that the utterances belong to.


=head2 NextToken => Str

If the response from the ListUtteranceAnalyticsData operation contains
more results than specified in the maxResults parameter, a token is
returned in the response.

Use the returned token in the nextToken parameter of a
ListUtteranceAnalyticsData request to return the next page of results.
For a complete set of results, call the ListUtteranceAnalyticsData
operation until the nextToken returned in the response is null.


=head2 Utterances => ArrayRef[L<Paws::LexModelsV2::UtteranceSpecification>]

A list of objects, each of which contains information about an
utterance in a user session with your bot.


=head2 _request_id => Str


=cut

