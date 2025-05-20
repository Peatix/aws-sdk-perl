
package Paws::LexModelsV2::DescribeCustomVocabularyMetadataResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has CustomVocabularyStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customVocabularyStatus');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeCustomVocabularyMetadataResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the custom vocabulary.


=head2 BotVersion => Str

The version of the bot that contains the custom vocabulary to describe.


=head2 CreationDateTime => Str

The date and time that the custom vocabulary was created.


=head2 CustomVocabularyStatus => Str

The status of the custom vocabulary. If the status is C<Ready> the
custom vocabulary is ready to use.

Valid values are: C<"Ready">, C<"Deleting">, C<"Exporting">, C<"Importing">, C<"Creating">
=head2 LastUpdatedDateTime => Str

The date and time that the custom vocabulary was last updated.


=head2 LocaleId => Str

The locale that contains the custom vocabulary to describe.


=head2 _request_id => Str


=cut

