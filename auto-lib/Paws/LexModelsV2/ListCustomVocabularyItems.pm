
package Paws::LexModelsV2::ListCustomVocabularyItems;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomVocabularyItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListCustomVocabularyItemsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListCustomVocabularyItems - Arguments for method ListCustomVocabularyItems on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomVocabularyItems on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListCustomVocabularyItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomVocabularyItems.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListCustomVocabularyItemsResponse =
      $models - v2 -lex->ListCustomVocabularyItems(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $BotId      = $ListCustomVocabularyItemsResponse->BotId;
    my $BotVersion = $ListCustomVocabularyItemsResponse->BotVersion;
    my $CustomVocabularyItems =
      $ListCustomVocabularyItemsResponse->CustomVocabularyItems;
    my $LocaleId  = $ListCustomVocabularyItemsResponse->LocaleId;
    my $NextToken = $ListCustomVocabularyItemsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListCustomVocabularyItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListCustomVocabularyItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the version of the bot associated with this custom
vocabulary.



=head2 B<REQUIRED> BotVersion => Str

The bot version of the bot to the list custom vocabulary request.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where this custom vocabulary
is used. The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 MaxResults => Int

The maximum number of items returned by the list operation.



=head2 NextToken => Str

The nextToken identifier to the list custom vocabulary request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomVocabularyItems in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

