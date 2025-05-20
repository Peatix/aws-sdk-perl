
package Paws::LexModelsV2::ListUtteranceMetrics;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceAttribute]', traits => ['NameInRequest'], request_name => 'attributes');
  has BinBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsBinBySpecification]', traits => ['NameInRequest'], request_name => 'binBy');
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceGroupBySpecification]', traits => ['NameInRequest'], request_name => 'groupBy');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceMetric]', traits => ['NameInRequest'], request_name => 'metrics', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUtteranceMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/analytics/utterancemetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListUtteranceMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListUtteranceMetrics - Arguments for method ListUtteranceMetrics on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUtteranceMetrics on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListUtteranceMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUtteranceMetrics.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListUtteranceMetricsResponse = $models - v2 -lex->ListUtteranceMetrics(
      BotId       => 'MyId',
      EndDateTime => '1970-01-01T01:00:00',
      Metrics     => [
        {
          Name => 'Count', # values: Count, Missed, Detected, UtteranceTimestamp
          Statistic => 'Sum',          # values: Sum, Avg, Max
          Order     => 'Ascending',    # values: Ascending, Descending; OPTIONAL
        },
        ...
      ],
      StartDateTime => '1970-01-01T01:00:00',
      Attributes    => [
        {
          Name => 'LastUsedIntent',    # values: LastUsedIntent

        },
        ...
      ],    # OPTIONAL
      BinBy => [
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
          , # values: BotAliasId, BotVersion, LocaleId, Modality, Channel, SessionId, OriginatingRequestId, UtteranceState, UtteranceText
          Operator => 'EQ',                                 # values: EQ, GT, LT
          Values   => [ 'MyAnalyticsFilterValue', ... ],    # min: 1, max: 5

        },
        ...
      ],    # OPTIONAL
      GroupBy => [
        {
          Name => 'UtteranceText',    # values: UtteranceText, UtteranceState

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BotId     = $ListUtteranceMetricsResponse->BotId;
    my $NextToken = $ListUtteranceMetricsResponse->NextToken;
    my $Results   = $ListUtteranceMetricsResponse->Results;

    # Returns a L<Paws::LexModelsV2::ListUtteranceMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListUtteranceMetrics>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceAttribute>]

A list containing attributes related to the utterance that you want the
response to return. The following attributes are possible:

=over

=item *

C<LastUsedIntent> E<ndash> The last used intent at the time of the
utterance.

=back




=head2 BinBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinBySpecification>]

A list of objects, each of which contains specifications for organizing
the results by time.



=head2 B<REQUIRED> BotId => Str

The identifier for the bot for which you want to retrieve utterance
metrics.



=head2 B<REQUIRED> EndDateTime => Str

The date and time that marks the end of the range of time for which you
want to see utterance metrics.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceFilter>]

A list of objects, each of which describes a condition by which you
want to filter the results.



=head2 GroupBy => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceGroupBySpecification>]

A list of objects, each of which specifies how to group the results.
You can group by the following criteria:

=over

=item *

C<UtteranceText> E<ndash> The transcription of the utterance.

=item *

C<UtteranceState> E<ndash> The state of the utterance. The possible
states are detailed in Key definitions
(https://docs.aws.amazon.com/analytics-key-definitions-utterances) in
the user guide.

=back




=head2 MaxResults => Int

The maximum number of results to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned.



=head2 B<REQUIRED> Metrics => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceMetric>]

A list of objects, each of which contains a metric you want to list,
the statistic for the metric you want to return, and the method by
which to organize the results.



=head2 NextToken => Str

If the response from the ListUtteranceMetrics operation contains more
results than specified in the maxResults parameter, a token is returned
in the response.

Use the returned token in the nextToken parameter of a
ListUtteranceMetrics request to return the next page of results. For a
complete set of results, call the ListUtteranceMetrics operation until
the nextToken returned in the response is null.



=head2 B<REQUIRED> StartDateTime => Str

The date and time that marks the beginning of the range of time for
which you want to see utterance metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUtteranceMetrics in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

