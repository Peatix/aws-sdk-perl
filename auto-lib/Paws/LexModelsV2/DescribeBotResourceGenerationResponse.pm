
package Paws::LexModelsV2::DescribeBotResourceGenerationResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has GeneratedBotLocaleUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generatedBotLocaleUrl');
  has GenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationId');
  has GenerationInputPrompt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationInputPrompt');
  has GenerationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationStatus');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has ModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotResourceGenerationResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot for which the generation request was
made.


=head2 BotVersion => Str

The version of the bot for which the generation request was made.


=head2 CreationDateTime => Str

The date and time at which the item was generated.


=head2 FailureReasons => ArrayRef[Str|Undef]

A list of reasons why the generation of bot resources through natural
language description failed.


=head2 GeneratedBotLocaleUrl => Str

The Amazon S3 location of the generated bot locale configuration.


=head2 GenerationId => Str

The generation ID for which to return the generation details.


=head2 GenerationInputPrompt => Str

The prompt used in the generation request.


=head2 GenerationStatus => Str

The status of the generation request.

Valid values are: C<"Failed">, C<"Complete">, C<"InProgress">
=head2 LastUpdatedDateTime => Str

The date and time at which the generated item was updated.


=head2 LocaleId => Str

The locale of the bot for which the generation request was made.


=head2 ModelArn => Str

The ARN of the model used to generate the bot resources.


=head2 _request_id => Str


=cut

