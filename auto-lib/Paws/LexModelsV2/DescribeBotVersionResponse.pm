
package Paws::LexModelsV2::DescribeBotVersionResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotMembers => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotMember]', traits => ['NameInRequest'], request_name => 'botMembers');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has BotType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botType');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has ParentBotNetworks => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ParentBotNetwork]', traits => ['NameInRequest'], request_name => 'parentBotNetworks');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotVersionResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the version.


=head2 BotMembers => ArrayRef[L<Paws::LexModelsV2::BotMember>]

The members of bot network in the version that was described.


=head2 BotName => Str

The name of the bot that contains the version.


=head2 BotStatus => Str

The current status of the bot. When the status is C<Available>, the bot
version is ready for use.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">, C<"Updating">
=head2 BotType => Str

The type of the bot in the version that was described.

Valid values are: C<"Bot">, C<"BotNetwork">
=head2 BotVersion => Str

The version of the bot that was described.


=head2 CreationDateTime => Str

A timestamp of the date and time that the bot version was created.


=head2 DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

Data privacy settings for the bot version.


=head2 Description => Str

The description specified for the bot.


=head2 FailureReasons => ArrayRef[Str|Undef]

If the C<botStatus> is C<Failed>, this contains a list of reasons that
the version couldn't be built.


=head2 IdleSessionTTLInSeconds => Int

The number of seconds that a session with the bot remains active before
it is discarded by Amazon Lex.


=head2 ParentBotNetworks => ArrayRef[L<Paws::LexModelsV2::ParentBotNetwork>]

A list of the networks to which the bot version you described belongs.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permission to
access the bot version.


=head2 _request_id => Str


=cut

