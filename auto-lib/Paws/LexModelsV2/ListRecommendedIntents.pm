
package Paws::LexModelsV2::ListRecommendedIntents;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botRecommendationId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendedIntents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListRecommendedIntentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListRecommendedIntents - Arguments for method ListRecommendedIntents on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendedIntents on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListRecommendedIntents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendedIntents.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListRecommendedIntentsResponse =
      $models - v2 -lex->ListRecommendedIntents(
      BotId               => 'MyId',
      BotRecommendationId => 'MyId',
      BotVersion          => 'MyDraftBotVersion',
      LocaleId            => 'MyLocaleId',
      MaxResults          => 1,                     # OPTIONAL
      NextToken           => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $BotId = $ListRecommendedIntentsResponse->BotId;
    my $BotRecommendationId =
      $ListRecommendedIntentsResponse->BotRecommendationId;
    my $BotVersion  = $ListRecommendedIntentsResponse->BotVersion;
    my $LocaleId    = $ListRecommendedIntentsResponse->LocaleId;
    my $NextToken   = $ListRecommendedIntentsResponse->NextToken;
    my $SummaryList = $ListRecommendedIntentsResponse->SummaryList;

    # Returns a L<Paws::LexModelsV2::ListRecommendedIntentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListRecommendedIntents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot associated with the recommended
intents.



=head2 B<REQUIRED> BotRecommendationId => Str

The identifier of the bot recommendation that contains the recommended
intents.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the recommended intents.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the recommended intents.



=head2 MaxResults => Int

The maximum number of bot recommendations to return in each page of
results. If there are fewer results than the max page size, only the
actual number of results are returned.



=head2 NextToken => Str

If the response from the ListRecommendedIntents operation contains more
results than specified in the maxResults parameter, a token is returned
in the response. Use that token in the nextToken parameter to return
the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendedIntents in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

