
package Paws::LexModelsV2::DescribeBotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotMembers => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotMember]', traits => ['NameInRequest'], request_name => 'botMembers');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has BotType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botType');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ErrorLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ErrorLogSettings', traits => ['NameInRequest'], request_name => 'errorLogSettings');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot.


=head2 BotMembers => ArrayRef[L<Paws::LexModelsV2::BotMember>]

The list of bots in the network that was described.


=head2 BotName => Str

The name of the bot.


=head2 BotStatus => Str

The current status of the bot. When the status is C<Available> the bot
is ready to be used in conversations with users.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">, C<"Updating">
=head2 BotType => Str

The type of the bot that was described.

Valid values are: C<"Bot">, C<"BotNetwork">
=head2 CreationDateTime => Str

A timestamp of the date and time that the bot was created.


=head2 DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

Settings for managing data privacy of the bot and its conversations
with users.


=head2 Description => Str

The description of the bot.


=head2 ErrorLogSettings => L<Paws::LexModelsV2::ErrorLogSettings>

Contains the configuration for error logging that specifies where and
how bot errors are recorded, including destinations like CloudWatch
Logs.


=head2 FailureReasons => ArrayRef[Str|Undef]

If the C<botStatus> is C<Failed>, this contains a list of reasons that
the bot couldn't be built.


=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the bot was last updated.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permission to
access the bot.


=head2 _request_id => Str


=cut

