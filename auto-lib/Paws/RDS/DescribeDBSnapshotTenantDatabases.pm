
package Paws::RDS::DescribeDBSnapshotTenantDatabases;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotTenantDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBSnapshotTenantDatabasesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotTenantDatabasesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBSnapshotTenantDatabases - Arguments for method DescribeDBSnapshotTenantDatabases on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBSnapshotTenantDatabases on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBSnapshotTenantDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBSnapshotTenantDatabases.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBSnapshotTenantDatabasesMessage =
      $rds->DescribeDBSnapshotTenantDatabases(
      DBInstanceIdentifier => 'MyString',    # OPTIONAL
      DBSnapshotIdentifier => 'MyString',    # OPTIONAL
      DbiResourceId        => 'MyString',    # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                     # OPTIONAL
      Marker       => 'MyString',            # OPTIONAL
      MaxRecords   => 1,                     # OPTIONAL
      SnapshotType => 'MyString',            # OPTIONAL
      );

    # Results:
    my $DBSnapshotTenantDatabases =
      $DBSnapshotTenantDatabasesMessage->DBSnapshotTenantDatabases;
    my $Marker = $DBSnapshotTenantDatabasesMessage->Marker;

    # Returns a L<Paws::RDS::DBSnapshotTenantDatabasesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBSnapshotTenantDatabases>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The ID of the DB instance used to create the DB snapshots. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing C<DBInstance>.

=back




=head2 DbiResourceId => Str

A specific DB resource identifier to describe.



=head2 DBSnapshotIdentifier => Str

The ID of a DB snapshot that contains the tenant databases to describe.
This value is stored as a lowercase string.

Constraints:

=over

=item *

If you specify this parameter, the value must match the ID of an
existing DB snapshot.

=item *

If you specify an automatic snapshot, you must also specify
C<SnapshotType>.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more tenant databases to describe.

Supported filters:

=over

=item *

C<tenant-db-name> - Tenant database names. The results list only
includes information about the tenant databases that match these tenant
DB names.

=item *

C<tenant-database-resource-id> - Tenant database resource identifiers.
The results list only includes information about the tenant databases
contained within the DB snapshots.

=item *

C<dbi-resource-id> - DB instance resource identifiers. The results list
only includes information about snapshots containing tenant databases
contained within the DB instances identified by these resource
identifiers.

=item *

C<db-instance-id> - Accepts DB instance identifiers and DB instance
Amazon Resource Names (ARNs).

=item *

C<db-snapshot-id> - Accepts DB snapshot identifiers.

=item *

C<snapshot-type> - Accepts types of DB snapshots.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBSnapshotTenantDatabases> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.



=head2 SnapshotType => Str

The type of DB snapshots to be returned. You can specify one of the
following values:

=over

=item *

C<automated> E<ndash> All DB snapshots that have been automatically
taken by Amazon RDS for my Amazon Web Services account.

=item *

C<manual> E<ndash> All DB snapshots that have been taken by my Amazon
Web Services account.

=item *

C<shared> E<ndash> All manual DB snapshots that have been shared to my
Amazon Web Services account.

=item *

C<public> E<ndash> All DB snapshots that have been marked as public.

=item *

C<awsbackup> E<ndash> All DB snapshots managed by the Amazon Web
Services Backup service.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBSnapshotTenantDatabases in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

