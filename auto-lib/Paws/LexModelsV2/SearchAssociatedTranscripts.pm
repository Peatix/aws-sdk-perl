
package Paws::LexModelsV2::SearchAssociatedTranscripts;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botRecommendationId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AssociatedTranscriptFilter]', traits => ['NameInRequest'], request_name => 'filters', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextIndex => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextIndex');
  has SearchOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAssociatedTranscripts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::SearchAssociatedTranscriptsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::SearchAssociatedTranscripts - Arguments for method SearchAssociatedTranscripts on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAssociatedTranscripts on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method SearchAssociatedTranscripts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAssociatedTranscripts.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $SearchAssociatedTranscriptsResponse =
      $models - v2 -lex->SearchAssociatedTranscripts(
      BotId               => 'MyId',
      BotRecommendationId => 'MyId',
      BotVersion          => 'MyBotVersion',
      Filters             => [
        {
          Name   => 'IntentId',    # values: IntentId, SlotTypeId
          Values => [
            'MyFilterValue', ...    # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],
      LocaleId    => 'MyLocaleId',
      MaxResults  => 1,              # OPTIONAL
      NextIndex   => 1,              # OPTIONAL
      SearchOrder => 'Ascending',    # OPTIONAL
      );

    # Results:
    my $AssociatedTranscripts =
      $SearchAssociatedTranscriptsResponse->AssociatedTranscripts;
    my $BotId = $SearchAssociatedTranscriptsResponse->BotId;
    my $BotRecommendationId =
      $SearchAssociatedTranscriptsResponse->BotRecommendationId;
    my $BotVersion   = $SearchAssociatedTranscriptsResponse->BotVersion;
    my $LocaleId     = $SearchAssociatedTranscriptsResponse->LocaleId;
    my $NextIndex    = $SearchAssociatedTranscriptsResponse->NextIndex;
    my $TotalResults = $SearchAssociatedTranscriptsResponse->TotalResults;

   # Returns a L<Paws::LexModelsV2::SearchAssociatedTranscriptsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/SearchAssociatedTranscripts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot associated with the transcripts that
you are searching.



=head2 B<REQUIRED> BotRecommendationId => Str

The unique identifier of the bot recommendation associated with the
transcripts to search.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot containing the transcripts that you are
searching.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::LexModelsV2::AssociatedTranscriptFilter>]

A list of filter objects.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the transcripts to search.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)



=head2 MaxResults => Int

The maximum number of bot recommendations to return in each page of
results. If there are fewer results than the max page size, only the
actual number of results are returned.



=head2 NextIndex => Int

If the response from the SearchAssociatedTranscriptsRequest operation
contains more results than specified in the maxResults parameter, an
index is returned in the response. Use that index in the nextIndex
parameter to return the next page of results.



=head2 SearchOrder => Str

How SearchResults are ordered. Valid values are Ascending or
Descending. The default is Descending.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAssociatedTranscripts in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

