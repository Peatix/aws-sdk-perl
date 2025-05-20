
package Paws::LexModels::GetMigration;
  use Moose;
  has MigrationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'migrationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMigration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrations/{migrationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetMigrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetMigration - Arguments for method GetMigration on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMigration on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMigration.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetMigrationResponse = $models . lex->GetMigration(
      MigrationId => 'MyMigrationId',

    );

    # Results:
    my $Alerts             = $GetMigrationResponse->Alerts;
    my $MigrationId        = $GetMigrationResponse->MigrationId;
    my $MigrationStatus    = $GetMigrationResponse->MigrationStatus;
    my $MigrationStrategy  = $GetMigrationResponse->MigrationStrategy;
    my $MigrationTimestamp = $GetMigrationResponse->MigrationTimestamp;
    my $V1BotLocale        = $GetMigrationResponse->V1BotLocale;
    my $V1BotName          = $GetMigrationResponse->V1BotName;
    my $V1BotVersion       = $GetMigrationResponse->V1BotVersion;
    my $V2BotId            = $GetMigrationResponse->V2BotId;
    my $V2BotRole          = $GetMigrationResponse->V2BotRole;

    # Returns a L<Paws::LexModels::GetMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetMigration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationId => Str

The unique identifier of the migration to view. The C<migrationID> is
returned by the operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMigration in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

