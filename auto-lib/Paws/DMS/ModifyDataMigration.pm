
package Paws::DMS::ModifyDataMigration;
  use Moose;
  has DataMigrationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DataMigrationName => (is => 'ro', isa => 'Str');
  has DataMigrationType => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogs => (is => 'ro', isa => 'Bool');
  has NumberOfJobs => (is => 'ro', isa => 'Int');
  has SelectionRules => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has SourceDataSettings => (is => 'ro', isa => 'ArrayRef[Paws::DMS::SourceDataSetting]');
  has TargetDataSettings => (is => 'ro', isa => 'ArrayRef[Paws::DMS::TargetDataSetting]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDataMigration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyDataMigrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyDataMigration - Arguments for method ModifyDataMigration on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDataMigration on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyDataMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDataMigration.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyDataMigrationResponse = $dms->ModifyDataMigration(
      DataMigrationIdentifier => 'MyString',
      DataMigrationName       => 'MyString',          # OPTIONAL
      DataMigrationType       => 'full-load',         # OPTIONAL
      EnableCloudwatchLogs    => 1,                   # OPTIONAL
      NumberOfJobs            => 1,                   # OPTIONAL
      SelectionRules          => 'MySecretString',    # OPTIONAL
      ServiceAccessRoleArn    => 'MyString',          # OPTIONAL
      SourceDataSettings      => [
        {
          CDCStartPosition => 'MyString',
          CDCStartTime     => '1970-01-01T01:00:00',    # OPTIONAL
          CDCStopTime      => '1970-01-01T01:00:00',    # OPTIONAL
          SlotName         => 'MyString',
        },
        ...
      ],    # OPTIONAL
      TargetDataSettings => [
        {
          TablePreparationMode => 'do-nothing'
          ,    # values: do-nothing, truncate, drop-tables-on-target; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataMigration = $ModifyDataMigrationResponse->DataMigration;

    # Returns a L<Paws::DMS::ModifyDataMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyDataMigration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataMigrationIdentifier => Str

The identifier (name or ARN) of the data migration to modify.



=head2 DataMigrationName => Str

The new name for the data migration.



=head2 DataMigrationType => Str

The new migration type for the data migration.

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 EnableCloudwatchLogs => Bool

Whether to enable Cloudwatch logs for the data migration.



=head2 NumberOfJobs => Int

The number of parallel jobs that trigger parallel threads to unload the
tables from the source, and then load them to the target.



=head2 SelectionRules => Str

A JSON-formatted string that defines what objects to include and
exclude from the migration.



=head2 ServiceAccessRoleArn => Str

The new service access role ARN for the data migration.



=head2 SourceDataSettings => ArrayRef[L<Paws::DMS::SourceDataSetting>]

The new information about the source data provider for the data
migration.



=head2 TargetDataSettings => ArrayRef[L<Paws::DMS::TargetDataSetting>]

The new information about the target data provider for the data
migration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDataMigration in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

