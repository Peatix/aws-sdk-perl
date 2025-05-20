
package Paws::LexModelsV2::DeleteCustomVocabularyResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CustomVocabularyStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customVocabularyStatus');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteCustomVocabularyResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that the custom vocabulary was removed from.


=head2 BotVersion => Str

The version of the bot that the custom vocabulary was removed from.


=head2 CustomVocabularyStatus => Str

The status of removing the custom vocabulary.

Valid values are: C<"Ready">, C<"Deleting">, C<"Exporting">, C<"Importing">, C<"Creating">
=head2 LocaleId => Str

The locale identifier for the locale that the custom vocabulary was
removed from.


=head2 _request_id => Str


=cut

