
package Paws::RDS::DescribeDBEngineVersions;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IncludeAll => (is => 'ro', isa => 'Bool');
  has ListSupportedCharacterSets => (is => 'ro', isa => 'Bool');
  has ListSupportedTimezones => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBEngineVersionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBEngineVersions - Arguments for method DescribeDBEngineVersions on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBEngineVersions on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBEngineVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBEngineVersions.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB engine version settings
    # This example lists settings for the specified DB engine version.
    my $DBEngineVersionMessage = $rds->DescribeDBEngineVersions(
      'DBParameterGroupFamily'     => 'mysql5.6',
      'DefaultOnly'                => 1,
      'Engine'                     => 'mysql',
      'EngineVersion'              => 5.6,
      'ListSupportedCharacterSets' => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBEngineVersions>

=head1 ATTRIBUTES


=head2 DBParameterGroupFamily => Str

The name of a specific DB parameter group family to return details for.

Constraints:

=over

=item *

If supplied, must match an existing DB parameter group family.

=back




=head2 DefaultOnly => Bool

Specifies whether to return only the default version of the specified
engine or the engine and major version combination.



=head2 Engine => Str

The database engine to return version details for.

Valid Values:

=over

=item *

C<aurora-mysql>

=item *

C<aurora-postgresql>

=item *

C<custom-oracle-ee>

=item *

C<custom-oracle-ee-cdb>

=item *

C<custom-oracle-se2>

=item *

C<custom-oracle-se2-cdb>

=item *

C<db2-ae>

=item *

C<db2-se>

=item *

C<mariadb>

=item *

C<mysql>

=item *

C<oracle-ee>

=item *

C<oracle-ee-cdb>

=item *

C<oracle-se2>

=item *

C<oracle-se2-cdb>

=item *

C<postgres>

=item *

C<sqlserver-ee>

=item *

C<sqlserver-se>

=item *

C<sqlserver-ex>

=item *

C<sqlserver-web>

=back




=head2 EngineVersion => Str

A specific database engine version to return details for.

Example: C<5.1.49>



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB engine versions to describe.

Supported filters:

=over

=item *

C<db-parameter-group-family> - Accepts parameter groups family names.
The results list only includes information about the DB engine versions
for these parameter group families.

=item *

C<engine> - Accepts engine names. The results list only includes
information about the DB engine versions for these engines.

=item *

C<engine-mode> - Accepts DB engine modes. The results list only
includes information about the DB engine versions for these engine
modes. Valid DB engine modes are the following:

=over

=item *

C<global>

=item *

C<multimaster>

=item *

C<parallelquery>

=item *

C<provisioned>

=item *

C<serverless>

=back

=item *

C<engine-version> - Accepts engine versions. The results list only
includes information about the DB engine versions for these engine
versions.

=item *

C<status> - Accepts engine version statuses. The results list only
includes information about the DB engine versions for these statuses.
Valid statuses are the following:

=over

=item *

C<available>

=item *

C<deprecated>

=back

=back




=head2 IncludeAll => Bool

Specifies whether to also list the engine versions that aren't
available. The default is to list only available engine versions.



=head2 ListSupportedCharacterSets => Bool

Specifies whether to list the supported character sets for each engine
version.

If this parameter is enabled and the requested engine supports the
C<CharacterSetName> parameter for C<CreateDBInstance>, the response
includes a list of supported character sets for each engine version.

For RDS Custom, the default is not to list supported character sets. If
you enable this parameter, RDS Custom returns no results.



=head2 ListSupportedTimezones => Bool

Specifies whether to list the supported time zones for each engine
version.

If this parameter is enabled and the requested engine supports the
C<TimeZone> parameter for C<CreateDBInstance>, the response includes a
list of supported time zones for each engine version.

For RDS Custom, the default is not to list supported time zones. If you
enable this parameter, RDS Custom returns no results.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more than
the C<MaxRecords> value is available, a pagination token called a
marker is included in the response so you can retrieve the remaining
results.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBEngineVersions in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

