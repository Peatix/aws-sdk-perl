
package Paws::LexModelsV2::ListAggregatedUtterancesResponse;
  use Moose;
  has AggregatedUtterancesSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AggregatedUtterancesSummary]', traits => ['NameInRequest'], request_name => 'aggregatedUtterancesSummaries');
  has AggregationDuration => (is => 'ro', isa => 'Paws::LexModelsV2::UtteranceAggregationDuration', traits => ['NameInRequest'], request_name => 'aggregationDuration');
  has AggregationLastRefreshedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationLastRefreshedDateTime');
  has AggregationWindowEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationWindowEndTime');
  has AggregationWindowStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationWindowStartTime');
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListAggregatedUtterancesResponse

=head1 ATTRIBUTES


=head2 AggregatedUtterancesSummaries => ArrayRef[L<Paws::LexModelsV2::AggregatedUtterancesSummary>]

Summaries of the aggregated utterance data. Each response contains
information about the number of times that the utterance was seen
during the time period, whether it was detected or missed, and when it
was seen during the time period.


=head2 AggregationDuration => L<Paws::LexModelsV2::UtteranceAggregationDuration>

The time period used to aggregate the utterance data.


=head2 AggregationLastRefreshedDateTime => Str

The last date and time that the aggregated data was collected. The time
period depends on the length of the aggregation window.

=over

=item *

B<Hours> - for 1 hour time window, every half hour; otherwise every
hour.

=item *

B<Days> - every 6 hours

=item *

B<Weeks> - for a one week time window, every 12 hours; otherwise, every
day

=back



=head2 AggregationWindowEndTime => Str

The date and time that the aggregation window ends. Only data collected
between the start time and the end time are returned in the results.


=head2 AggregationWindowStartTime => Str

The date and time that the aggregation window begins. Only data
collected after this time is returned in the results.


=head2 BotAliasId => Str

The identifier of the bot alias that contains the utterances. If you
specified the bot version, the bot alias ID isn't returned.


=head2 BotId => Str

The identifier of the bot that contains the utterances.


=head2 BotVersion => Str

The identifier of the bot version that contains the utterances. If you
specified the bot alias, the bot version isn't returned.


=head2 LocaleId => Str

The identifier of the language and locale that the utterances are in.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListAggregatedUtterances> operation. If the
C<nextToken> field is present, you send the contents as the
C<nextToken> parameter of a C<ListAggregatedUtterances> operation
request to get the next page of results.


=head2 _request_id => Str


=cut

