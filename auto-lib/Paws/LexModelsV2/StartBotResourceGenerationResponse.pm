
package Paws::LexModelsV2::StartBotResourceGenerationResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has GenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationId');
  has GenerationInputPrompt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationInputPrompt');
  has GenerationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationStatus');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartBotResourceGenerationResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot for which the generation request was
made.


=head2 BotVersion => Str

The version of the bot for which the generation request was made.


=head2 CreationDateTime => Str

The date and time at which the generation request was made.


=head2 GenerationId => Str

The unique identifier of the generation request.


=head2 GenerationInputPrompt => Str

The prompt that was used generate intents and slot types for the bot
locale.


=head2 GenerationStatus => Str

The status of the generation request.

Valid values are: C<"Failed">, C<"Complete">, C<"InProgress">
=head2 LocaleId => Str

The locale of the bot for which the generation request was made.


=head2 _request_id => Str


=cut

