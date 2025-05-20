
package Paws::LexModelsV2::ListBotResourceGenerations;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::GenerationSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotResourceGenerations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotResourceGenerationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotResourceGenerations - Arguments for method ListBotResourceGenerations on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotResourceGenerations on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotResourceGenerations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotResourceGenerations.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotResourceGenerationsResponse =
      $models - v2 -lex->ListBotResourceGenerations(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute =>
          'creationStartTime',    # values: creationStartTime, lastUpdatedTime
        Order => 'Ascending',     # values: Ascending, Descending

      },    # OPTIONAL
      );

    # Results:
    my $BotId      = $ListBotResourceGenerationsResponse->BotId;
    my $BotVersion = $ListBotResourceGenerationsResponse->BotVersion;
    my $GenerationSummaries =
      $ListBotResourceGenerationsResponse->GenerationSummaries;
    my $LocaleId  = $ListBotResourceGenerationsResponse->LocaleId;
    my $NextToken = $ListBotResourceGenerationsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBotResourceGenerationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotResourceGenerations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot whose generation requests you want to
view.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot whose generation requests you want to view.



=head2 B<REQUIRED> LocaleId => Str

The locale of the bot whose generation requests you want to view.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

If the total number of results is greater than the number specified in
the C<maxResults>, the response returns a token in the C<nextToken>
field. Use this token when making a request to return the next batch of
results.



=head2 SortBy => L<Paws::LexModelsV2::GenerationSortBy>

An object containing information about the attribute and the method by
which to sort the results




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotResourceGenerations in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

