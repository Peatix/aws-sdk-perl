
package Paws::LexModelsV2::ListSessionAnalyticsData;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsSessionFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::SessionDataSortBy', traits => ['NameInRequest'], request_name => 'sortBy');
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSessionAnalyticsData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/analytics/sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListSessionAnalyticsDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListSessionAnalyticsData - Arguments for method ListSessionAnalyticsData on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSessionAnalyticsData on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListSessionAnalyticsData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSessionAnalyticsData.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListSessionAnalyticsDataResponse =
      $models - v2 -lex->ListSessionAnalyticsData(
      BotId         => 'MyId',
      EndDateTime   => '1970-01-01T01:00:00',
      StartDateTime => '1970-01-01T01:00:00',
      Filters       => [
        {
          Name => 'BotAliasId'
          , # values: BotAliasId, BotVersion, LocaleId, Modality, Channel, Duration, ConversationEndState, SessionId, OriginatingRequestId, IntentPath
          Operator => 'EQ',                                 # values: EQ, GT, LT
          Values   => [ 'MyAnalyticsFilterValue', ... ],    # min: 1, max: 5

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Name => 'ConversationStartTime'
        ,    # values: ConversationStartTime, NumberOfTurns, Duration
        Order => 'Ascending',    # values: Ascending, Descending

      },    # OPTIONAL
      );

    # Results:
    my $BotId     = $ListSessionAnalyticsDataResponse->BotId;
    my $NextToken = $ListSessionAnalyticsDataResponse->NextToken;
    my $Sessions  = $ListSessionAnalyticsDataResponse->Sessions;

    # Returns a L<Paws::LexModelsV2::ListSessionAnalyticsDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListSessionAnalyticsData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier for the bot for which you want to retrieve session
analytics.



=head2 B<REQUIRED> EndDateTime => Str

The date and time that marks the end of the range of time for which you
want to see session analytics.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsSessionFilter>]

A list of objects, each of which describes a condition by which you
want to filter the results.



=head2 MaxResults => Int

The maximum number of results to return in each page of results. If
there are fewer results than the maximum page size, only the actual
number of results are returned.



=head2 NextToken => Str

If the response from the ListSessionAnalyticsData operation contains
more results than specified in the maxResults parameter, a token is
returned in the response.

Use the returned token in the nextToken parameter of a
ListSessionAnalyticsData request to return the next page of results.
For a complete set of results, call the ListSessionAnalyticsData
operation until the nextToken returned in the response is null.



=head2 SortBy => L<Paws::LexModelsV2::SessionDataSortBy>

An object specifying the measure and method by which to sort the
session analytics data.



=head2 B<REQUIRED> StartDateTime => Str

The date and time that marks the beginning of the range of time for
which you want to see session analytics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSessionAnalyticsData in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

