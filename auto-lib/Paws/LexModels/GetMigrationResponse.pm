
package Paws::LexModels::GetMigrationResponse;
  use Moose;
  has Alerts => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::MigrationAlert]', traits => ['NameInRequest'], request_name => 'alerts');
  has MigrationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationId');
  has MigrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationStatus');
  has MigrationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationStrategy');
  has MigrationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationTimestamp');
  has V1BotLocale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v1BotLocale');
  has V1BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v1BotName');
  has V1BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v1BotVersion');
  has V2BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v2BotId');
  has V2BotRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v2BotRole');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetMigrationResponse

=head1 ATTRIBUTES


=head2 Alerts => ArrayRef[L<Paws::LexModels::MigrationAlert>]

A list of alerts and warnings that indicate issues with the migration
for the Amazon Lex V1 bot to Amazon Lex V2. You receive a warning when
an Amazon Lex V1 feature has a different implementation if Amazon Lex
V2.

For more information, see Migrating a bot
(https://docs.aws.amazon.com/lexv2/latest/dg/migrate.html) in the
I<Amazon Lex V2 developer guide>.


=head2 MigrationId => Str

The unique identifier of the migration. This is the same as the
identifier used when calling the C<GetMigration> operation.


=head2 MigrationStatus => Str

Indicates the status of the migration. When the status is C<COMPLETE>
the migration is finished and the bot is available in Amazon Lex V2.
There may be alerts and warnings that need to be resolved to complete
the migration.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 MigrationStrategy => Str

The strategy used to conduct the migration.

=over

=item *

C<CREATE_NEW> - Creates a new Amazon Lex V2 bot and migrates the Amazon
Lex V1 bot to the new bot.

=item *

C<UPDATE_EXISTING> - Overwrites the existing Amazon Lex V2 bot metadata
and the locale being migrated. It doesn't change any other locales in
the Amazon Lex V2 bot. If the locale doesn't exist, a new locale is
created in the Amazon Lex V2 bot.

=back


Valid values are: C<"CREATE_NEW">, C<"UPDATE_EXISTING">
=head2 MigrationTimestamp => Str

The date and time that the migration started.


=head2 V1BotLocale => Str

The locale of the Amazon Lex V1 bot migrated to Amazon Lex V2.

Valid values are: C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-IN">, C<"en-US">, C<"es-419">, C<"es-ES">, C<"es-US">, C<"fr-FR">, C<"fr-CA">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">
=head2 V1BotName => Str

The name of the Amazon Lex V1 bot migrated to Amazon Lex V2.


=head2 V1BotVersion => Str

The version of the Amazon Lex V1 bot migrated to Amazon Lex V2.


=head2 V2BotId => Str

The unique identifier of the Amazon Lex V2 bot that the Amazon Lex V1
is being migrated to.


=head2 V2BotRole => Str

The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.


=head2 _request_id => Str


=cut

