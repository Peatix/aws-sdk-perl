
package Paws::LexModelsV2::ListBotResourceGenerationsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has GenerationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::GenerationSummary]', traits => ['NameInRequest'], request_name => 'generationSummaries');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotResourceGenerationsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot for which the generation requests were
made.


=head2 BotVersion => Str

The version of the bot for which the generation requests were made.


=head2 GenerationSummaries => ArrayRef[L<Paws::LexModelsV2::GenerationSummary>]

A list of objects, each containing information about a generation
request for the bot locale.


=head2 LocaleId => Str

The locale of the bot for which the generation requests were made.


=head2 NextToken => Str

If the total number of results is greater than the number specified in
the C<maxResults>, the response returns a token in the C<nextToken>
field. Use this token when making a request to return the next batch of
results.


=head2 _request_id => Str


=cut

