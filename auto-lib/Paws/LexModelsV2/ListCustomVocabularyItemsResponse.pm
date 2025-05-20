
package Paws::LexModelsV2::ListCustomVocabularyItemsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CustomVocabularyItems => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::CustomVocabularyItem]', traits => ['NameInRequest'], request_name => 'customVocabularyItems');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListCustomVocabularyItemsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with this custom vocabulary.


=head2 BotVersion => Str

The identifier of the version of the bot associated with this custom
vocabulary.


=head2 CustomVocabularyItems => ArrayRef[L<Paws::LexModelsV2::CustomVocabularyItem>]

The custom vocabulary items from the list custom vocabulary response.


=head2 LocaleId => Str

The identifier of the language and locale where this custom vocabulary
is used. The string must match one of the supported locales. For more
information, see Supported Languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).


=head2 NextToken => Str

The nextToken identifier to the list custom vocabulary response.


=head2 _request_id => Str


=cut

