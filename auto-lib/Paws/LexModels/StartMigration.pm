
package Paws::LexModels::StartMigration;
  use Moose;
  has MigrationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'migrationStrategy', required => 1);
  has V1BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v1BotName', required => 1);
  has V1BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v1BotVersion', required => 1);
  has V2BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v2BotName', required => 1);
  has V2BotRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'v2BotRole', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMigration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::StartMigrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::StartMigration - Arguments for method StartMigration on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMigration on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method StartMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMigration.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $StartMigrationResponse = $models . lex->StartMigration(
      MigrationStrategy => 'CREATE_NEW',
      V1BotName         => 'MyBotName',
      V1BotVersion      => 'MyVersion',
      V2BotName         => 'MyV2BotName',
      V2BotRole         => 'MyIamRoleArn',

    );

    # Results:
    my $MigrationId        = $StartMigrationResponse->MigrationId;
    my $MigrationStrategy  = $StartMigrationResponse->MigrationStrategy;
    my $MigrationTimestamp = $StartMigrationResponse->MigrationTimestamp;
    my $V1BotLocale        = $StartMigrationResponse->V1BotLocale;
    my $V1BotName          = $StartMigrationResponse->V1BotName;
    my $V1BotVersion       = $StartMigrationResponse->V1BotVersion;
    my $V2BotId            = $StartMigrationResponse->V2BotId;
    my $V2BotRole          = $StartMigrationResponse->V2BotRole;

    # Returns a L<Paws::LexModels::StartMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/StartMigration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationStrategy => Str

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

=head2 B<REQUIRED> V1BotName => Str

The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex
V2.



=head2 B<REQUIRED> V1BotVersion => Str

The version of the bot to migrate to Amazon Lex V2. You can migrate the
C<$LATEST> version as well as any numbered version.



=head2 B<REQUIRED> V2BotName => Str

The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex
V1 bot to.

=over

=item *

If the Amazon Lex V2 bot doesn't exist, you must use the C<CREATE_NEW>
migration strategy.

=item *

If the Amazon Lex V2 bot exists, you must use the C<UPDATE_EXISTING>
migration strategy to change the contents of the Amazon Lex V2 bot.

=back




=head2 B<REQUIRED> V2BotRole => Str

The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMigration in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

