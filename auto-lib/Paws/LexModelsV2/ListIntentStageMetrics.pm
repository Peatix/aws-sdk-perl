
package Paws::LexModelsV2::ListIntentStageMetrics;
  use Moose;
  has BinBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsBinBySpecification]', traits => ['NameInRequest'], request_name => 'binBy');
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsIntentStageFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsIntentStageGroupBySpecification]', traits => ['NameInRequest'], request_name => 'groupBy');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsIntentStageMetric]', traits => ['NameInRequest'], request_name => 'metrics', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIntentStageMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/analytics/intentstagemetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListIntentStageMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListIntentStageMetrics - Arguments for method ListIntentStageMetrics on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIntentStageMetrics on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListIntentStageMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIntentStageMetrics.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListIntentStageMetricsResponse =
      $models - v2 -lex->ListIntentStageMetrics(
      BotId       => 'MyId',
      EndDateTime => '1970-01-01T01:00:00',
      Metrics     => [
        {
          Name      => 'Count', # values: Count, Success, Failed, Dropped, Retry
          Statistic => 'Sum',   # values: Sum, Avg, Max
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
          , # values: BotAliasId, BotVersion, LocaleId, Modality, Channel, SessionId, OriginatingRequestId, IntentName, IntentStageName
          Operator => 'EQ',                                 # values: EQ, GT, LT
          Values   => [ 'MyAnalyticsFilterValue', ... ],    # min: 1, max: 5

        },
        ...
      ],    # OPTIONAL
      GroupBy => [
        {
          Name => 'IntentStageName', # values: IntentStageName, SwitchedToIntent

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $BotId     = $ListIntentStageMetricsResponse->BotId;
    my $NextToken = $ListIntentStageMetricsResponse->NextToken;
    my $Results   = $ListIntentStageMetricsResponse->Results;

    # Returns a L<Paws::LexModelsV2::ListIntentStageMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListIntentStageMetrics>

=head1 ATTRIBUTES


=head2 BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]

A list of objects, each of which contains specifications for organizing
the results by time.



=head2 B<REQUIRED> BotId => Str

The identifier for the bot for which you want to retrieve intent stage
metrics.



=head2 B<REQUIRED> EndDateTime => Str

The date and time that marks the end of the range of time for which you
want to see intent stage metrics.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageFilter>]

A list of objects, each of which describes a condition by which you
want to filter the results.



=head2 GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageGroupBySpecification>]

A list of objects, each of which specifies how to group the results.
You can group by the following criteria:

=over

=item *

C<IntentStageName> E<ndash> The name of the intent stage.

=item *

C<SwitchedToIntent> E<ndash> The intent to which the conversation was
switched (if any).

=back




=head2 MaxResults => Int

The maximum number of results to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned.



=head2 B<REQUIRED> Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentStageMetric>]

A list of objects, each of which contains a metric you want to list,
the statistic for the metric you want to return, and the method by
which to organize the results.



=head2 NextToken => Str

If the response from the ListIntentStageMetrics operation contains more
results than specified in the maxResults parameter, a token is returned
in the response.

Use the returned token in the nextToken parameter of a
ListIntentStageMetrics request to return the next page of results. For
a complete set of results, call the ListIntentStageMetrics operation
until the nextToken returned in the response is null.



=head2 B<REQUIRED> StartDateTime => Str

The date and time that marks the beginning of the range of time for
which you want to see intent stage metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIntentStageMetrics in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

