
package Paws::LexModelsV2::ListSessionMetrics;
  use Moose;
  has BinBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsBinBySpecification]', traits => ['NameInRequest'], request_name => 'binBy');
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsSessionFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsSessionGroupBySpecification]', traits => ['NameInRequest'], request_name => 'groupBy');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsSessionMetric]', traits => ['NameInRequest'], request_name => 'metrics', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSessionMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/analytics/sessionmetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListSessionMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSessionMetrics - Arguments for method ListSessionMetrics on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSessionMetrics on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListSessionMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSessionMetrics.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListSessionMetricsResponse = $models - v2 -lex->ListSessionMetrics(
      BotId       => 'MyId',
      EndDateTime => '1970-01-01T01:00:00',
      Metrics     => [
        {
          Name => 'Count'
          , # values: Count, Success, Failure, Dropped, Duration, TurnsPerConversation, Concurrency
          Statistic => 'Sum',          # values: Sum, Avg, Max
          Order     => 'Ascending',    # values: Ascending, Descending; OPTIONAL
        },
        ...
      ],
      StartDateTime => '1970-01-01T01:00:00',
      BinBy         => [
        {
          Interval => 'OneHour',                # values: OneHour, OneDay
          Name     => 'ConversationStartTime'
          ,    # values: ConversationStartTime, UtteranceTimestamp
          Order => 'Ascending',    # values: Ascending, Descending; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Filters => [
        {
          Name => 'BotAliasId'
          , # values: BotAliasId, BotVersion, LocaleId, Modality, Channel, Duration, ConversationEndState, SessionId, OriginatingRequestId, IntentPath
          Operator => 'EQ',                                 # values: EQ, GT, LT
          Values   => [ 'MyAnalyticsFilterValue', ... ],    # min: 1, max: 5

        },
        ...
      ],    # OPTIONAL
      GroupBy => [
        {
          Name =>
            'ConversationEndState',    # values: ConversationEndState, LocaleId

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BotId     = $ListSessionMetricsResponse->BotId;
    my $NextToken = $ListSessionMetricsResponse->NextToken;
    my $Results   = $ListSessionMetricsResponse->Results;

    # Returns a L<Paws::LexModelsV2::ListSessionMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListSessionMetrics>

=head1 ATTRIBUTES


=head2 BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]

A list of objects, each of which contains specifications for organizing
the results by time.



=head2 B<REQUIRED> BotId => Str

The identifier for the bot for which you want to retrieve session
metrics.



=head2 B<REQUIRED> EndDateTime => Str

The date and time that marks the end of the range of time for which you
want to see session metrics.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionFilter>]

A list of objects, each of which describes a condition by which you
want to filter the results.



=head2 GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionGroupBySpecification>]

A list of objects, each of which specifies how to group the results.
You can group by the following criteria:

=over

=item *

C<ConversationEndState> E<ndash> The final state of the conversation.
The possible end states are detailed in Key definitions
(https://docs.aws.amazon.com/analytics-key-definitions-conversations)
in the user guide.

=item *

C<LocaleId> E<ndash> The unique identifier of the bot locale.

=back




=head2 MaxResults => Int

The maximum number of results to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned.



=head2 B<REQUIRED> Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionMetric>]

A list of objects, each of which contains a metric you want to list,
the statistic for the metric you want to return, and the method by
which to organize the results.



=head2 NextToken => Str

If the response from the ListSessionMetrics operation contains more
results than specified in the maxResults parameter, a token is returned
in the response.

Use the returned token in the nextToken parameter of a
ListSessionMetrics request to return the next page of results. For a
complete set of results, call the ListSessionMetrics operation until
the nextToken returned in the response is null.



=head2 B<REQUIRED> StartDateTime => Str

The date and time that marks the beginning of the range of time for
which you want to see session metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSessionMetrics in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

