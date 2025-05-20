
package Paws::LexModelsV2::GenerateBotElementResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SampleUtterance]', traits => ['NameInRequest'], request_name => 'sampleUtterances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::GenerateBotElementResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique bot Id for the bot which received the response.


=head2 BotVersion => Str

The unique bot version for the bot which received the response.


=head2 IntentId => Str

The unique intent Id for the bot which received the response.


=head2 LocaleId => Str

The unique locale Id for the bot which received the response.


=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

The sample utterances for the bot which received the response.


=head2 _request_id => Str


=cut

