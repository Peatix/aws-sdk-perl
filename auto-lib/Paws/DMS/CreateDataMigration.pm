
package Paws::DMS::CreateDataMigration;
  use Moose;
  has DataMigrationName => (is => 'ro', isa => 'Str');
  has DataMigrationType => (is => 'ro', isa => 'Str', required => 1);
  has EnableCloudwatchLogs => (is => 'ro', isa => 'Bool');
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfJobs => (is => 'ro', isa => 'Int');
  has SelectionRules => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceDataSettings => (is => 'ro', isa => 'ArrayRef[Paws::DMS::SourceDataSetting]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has TargetDataSettings => (is => 'ro', isa => 'ArrayRef[Paws::DMS::TargetDataSetting]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataMigration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateDataMigrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateDataMigration - Arguments for method CreateDataMigration on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataMigration on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateDataMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataMigration.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateDataMigrationResponse = $dms->CreateDataMigration(
      DataMigrationType          => 'full-load',
      MigrationProjectIdentifier => 'MyString',
      ServiceAccessRoleArn       => 'MyString',
      DataMigrationName          => 'MyString',          # OPTIONAL
      EnableCloudwatchLogs       => 1,                   # OPTIONAL
      NumberOfJobs               => 1,                   # OPTIONAL
      SelectionRules             => 'MySecretString',    # OPTIONAL
      SourceDataSettings         => [
        {
          CDCStartPosition => 'MyString',
          CDCStartTime     => '1970-01-01T01:00:00',    # OPTIONAL
          CDCStopTime      => '1970-01-01T01:00:00',    # OPTIONAL
          SlotName         => 'MyString',
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key         => 'MyString',
          ResourceArn => 'MyString',
          Value       => 'MyString',
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
    my $DataMigration = $CreateDataMigrationResponse->DataMigration;

    # Returns a L<Paws::DMS::CreateDataMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateDataMigration>

=head1 ATTRIBUTES


=head2 DataMigrationName => Str

A user-friendly name for the data migration. Data migration names have
the following constraints:

=over

=item *

Must begin with a letter, and can only contain ASCII letters, digits,
and hyphens.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=item *

Length must be from 1 to 255 characters.

=back




=head2 B<REQUIRED> DataMigrationType => Str

Specifies if the data migration is full-load only, change data capture
(CDC) only, or full-load and CDC.

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 EnableCloudwatchLogs => Bool

Specifies whether to enable CloudWatch logs for the data migration.



=head2 B<REQUIRED> MigrationProjectIdentifier => Str

An identifier for the migration project.



=head2 NumberOfJobs => Int

The number of parallel jobs that trigger parallel threads to unload the
tables from the source, and then load them to the target.



=head2 SelectionRules => Str

An optional JSON string specifying what tables, views, and schemas to
include or exclude from the migration.



=head2 B<REQUIRED> ServiceAccessRoleArn => Str

The Amazon Resource Name (ARN) for the service access role that you
want to use to create the data migration.



=head2 SourceDataSettings => ArrayRef[L<Paws::DMS::SourceDataSetting>]

Specifies information about the source data provider.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more tags to be assigned to the data migration.



=head2 TargetDataSettings => ArrayRef[L<Paws::DMS::TargetDataSetting>]

Specifies information about the target data provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataMigration in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

