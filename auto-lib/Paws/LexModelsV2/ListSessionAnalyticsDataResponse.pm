
package Paws::LexModelsV2::ListSessionAnalyticsDataResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SessionSpecification]', traits => ['NameInRequest'], request_name => 'sessions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSessionAnalyticsDataResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot that the sessions belong to.


=head2 NextToken => Str

If the response from the ListSessionAnalyticsData operation contains
more results than specified in the maxResults parameter, a token is
returned in the response.

Use the returned token in the nextToken parameter of a
ListSessionAnalyticsData request to return the next page of results.
For a complete set of results, call the ListSessionAnalyticsData
operation until the nextToken returned in the response is null.


=head2 Sessions => ArrayRef[L<Paws::LexModelsV2::SessionSpecification>]

A list of objects, each of which contains information about a session
with the bot.


=head2 _request_id => Str


=cut

