
package Paws::LexModelsV2::ListAggregatedUtterances;
  use Moose;
  has AggregationDuration => (is => 'ro', isa => 'Paws::LexModelsV2::UtteranceAggregationDuration', traits => ['NameInRequest'], request_name => 'aggregationDuration', required => 1);
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AggregatedUtterancesFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::AggregatedUtterancesSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAggregatedUtterances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/aggregatedutterances/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListAggregatedUtterancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListAggregatedUtterances - Arguments for method ListAggregatedUtterances on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAggregatedUtterances on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListAggregatedUtterances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAggregatedUtterances.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListAggregatedUtterancesResponse =
      $models - v2 -lex->ListAggregatedUtterances(
      AggregationDuration => {
        RelativeAggregationDuration => {
          TimeDimension => 'Hours',    # values: Hours, Days, Weeks
          TimeValue     => 1,          # min: 1, max: 24

        },

      },
      BotId      => 'MyId',
      LocaleId   => 'MyLocaleId',
      BotAliasId => 'MyBotAliasId',    # OPTIONAL
      BotVersion => 'MyBotVersion',    # OPTIONAL
      Filters    => [
        {
          Name     => 'Utterance',    # values: Utterance
          Operator => 'CO',           # values: CO, EQ
          Values   => [
            'MyFilterValue', ...      # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'HitCount',      # values: HitCount, MissedCount
        Order     => 'Ascending',     # values: Ascending, Descending

      },    # OPTIONAL
      );

    # Results:
    my $AggregatedUtterancesSummaries =
      $ListAggregatedUtterancesResponse->AggregatedUtterancesSummaries;
    my $AggregationDuration =
      $ListAggregatedUtterancesResponse->AggregationDuration;
    my $AggregationLastRefreshedDateTime =
      $ListAggregatedUtterancesResponse->AggregationLastRefreshedDateTime;
    my $AggregationWindowEndTime =
      $ListAggregatedUtterancesResponse->AggregationWindowEndTime;
    my $AggregationWindowStartTime =
      $ListAggregatedUtterancesResponse->AggregationWindowStartTime;
    my $BotAliasId = $ListAggregatedUtterancesResponse->BotAliasId;
    my $BotId      = $ListAggregatedUtterancesResponse->BotId;
    my $BotVersion = $ListAggregatedUtterancesResponse->BotVersion;
    my $LocaleId   = $ListAggregatedUtterancesResponse->LocaleId;
    my $NextToken  = $ListAggregatedUtterancesResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListAggregatedUtterancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListAggregatedUtterances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationDuration => L<Paws::LexModelsV2::UtteranceAggregationDuration>

The time window for aggregating the utterance information. You can
specify a time between one hour and two weeks.



=head2 BotAliasId => Str

The identifier of the bot alias associated with this request. If you
specify the bot alias, you can't specify the bot version.



=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot associated with this request.



=head2 BotVersion => Str

The identifier of the bot version associated with this request. If you
specify the bot version, you can't specify the bot alias.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AggregatedUtterancesFilter>]

Provides the specification of a filter used to limit the utterances in
the response to only those that match the filter specification. You can
only specify one filter and one string to filter on.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where the utterances were
collected. For more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of utterances to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned. If you don't specify the C<maxResults>
parameter, 1,000 results are returned.



=head2 NextToken => Str

If the response from the C<ListAggregatedUtterances> operation contains
more results that specified in the C<maxResults> parameter, a token is
returned in the response. Use that token in the C<nextToken> parameter
to return the next page of results.



=head2 SortBy => L<Paws::LexModelsV2::AggregatedUtterancesSortBy>

Specifies sorting parameters for the list of utterances. You can sort
by the hit count, the missed count, or the number of distinct sessions
the utterance appeared in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAggregatedUtterances in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

