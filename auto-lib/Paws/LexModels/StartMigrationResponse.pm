
package Paws::LexModels::StartMigrationResponse;
  use Moose;
  has MigrationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationId');
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

Paws::LexModels::StartMigrationResponse

=head1 ATTRIBUTES


=head2 MigrationId => Str

The unique identifier that Amazon Lex assigned to the migration.


=head2 MigrationStrategy => Str

The strategy used to conduct the migration.

Valid values are: C<"CREATE_NEW">, C<"UPDATE_EXISTING">
=head2 MigrationTimestamp => Str

The date and time that the migration started.


=head2 V1BotLocale => Str

The locale used for the Amazon Lex V1 bot.

Valid values are: C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-IN">, C<"en-US">, C<"es-419">, C<"es-ES">, C<"es-US">, C<"fr-FR">, C<"fr-CA">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">
=head2 V1BotName => Str

The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex
V2.


=head2 V1BotVersion => Str

The version of the bot to migrate to Amazon Lex V2.


=head2 V2BotId => Str

The unique identifier for the Amazon Lex V2 bot.


=head2 V2BotRole => Str

The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.


=head2 _request_id => Str


=cut

