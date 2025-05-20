
package Paws::LexModelsV2::ListSessionMetricsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsSessionResult]', traits => ['NameInRequest'], request_name => 'results');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSessionMetricsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier for the bot for which you retrieved session metrics.


=head2 NextToken => Str

If the response from the ListSessionMetrics operation contains more
results than specified in the maxResults parameter, a token is returned
in the response.

Use the returned token in the nextToken parameter of a
ListSessionMetrics request to return the next page of results. For a
complete set of results, call the ListSessionMetrics operation until
the nextToken returned in the response is null.


=head2 Results => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionResult>]

The results for the session metrics.


=head2 _request_id => Str


=cut

