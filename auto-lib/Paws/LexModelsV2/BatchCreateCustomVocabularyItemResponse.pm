
package Paws::LexModelsV2::BatchCreateCustomVocabularyItemResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::FailedCustomVocabularyItem]', traits => ['NameInRequest'], request_name => 'errors');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::CustomVocabularyItem]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BatchCreateCustomVocabularyItemResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with this custom vocabulary.


=head2 BotVersion => Str

The identifier of the version of the bot associated with this custom
vocabulary.


=head2 Errors => ArrayRef[L<Paws::LexModelsV2::FailedCustomVocabularyItem>]

A list of custom vocabulary items that failed to create during the
operation. The reason for the error is contained within each error
object.


=head2 LocaleId => Str

The identifier of the language and locale where this custom vocabulary
is used. The string must match one of the supported locales. For more
information, see Supported Languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).


=head2 Resources => ArrayRef[L<Paws::LexModelsV2::CustomVocabularyItem>]

A list of custom vocabulary items that were successfully created during
the operation.


=head2 _request_id => Str


=cut

