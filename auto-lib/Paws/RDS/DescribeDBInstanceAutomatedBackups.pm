
package Paws::RDS::DescribeDBInstanceAutomatedBackups;
  use Moose;
  has DBInstanceAutomatedBackupsArn => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstanceAutomatedBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBInstanceAutomatedBackupMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstanceAutomatedBackupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBInstanceAutomatedBackups - Arguments for method DescribeDBInstanceAutomatedBackups on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBInstanceAutomatedBackups on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBInstanceAutomatedBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBInstanceAutomatedBackups.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBInstanceAutomatedBackupMessage =
      $rds->DescribeDBInstanceAutomatedBackups(
      DBInstanceAutomatedBackupsArn => 'MyString',    # OPTIONAL
      DBInstanceIdentifier          => 'MyString',    # OPTIONAL
      DbiResourceId                 => 'MyString',    # OPTIONAL
      Filters                       => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                              # OPTIONAL
      Marker     => 'MyString',                       # OPTIONAL
      MaxRecords => 1,                                # OPTIONAL
      );

    # Results:
    my $DBInstanceAutomatedBackups =
      $DBInstanceAutomatedBackupMessage->DBInstanceAutomatedBackups;
    my $Marker = $DBInstanceAutomatedBackupMessage->Marker;

    # Returns a L<Paws::RDS::DBInstanceAutomatedBackupMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBInstanceAutomatedBackups>

=head1 ATTRIBUTES


=head2 DBInstanceAutomatedBackupsArn => Str

The Amazon Resource Name (ARN) of the replicated automated backups, for
example,
C<arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE>.

This setting doesn't apply to RDS Custom.



=head2 DBInstanceIdentifier => Str

(Optional) The user-supplied instance identifier. If this parameter is
specified, it must match the identifier of an existing DB instance. It
returns information from the specific DB instance's automated backup.
This parameter isn't case-sensitive.



=head2 DbiResourceId => Str

The resource ID of the DB instance that is the source of the automated
backup. This parameter isn't case-sensitive.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies which resources to return based on status.

Supported filters are the following:

=over

=item *

C<status>

=over

=item *

C<active> - Automated backups for current instances.

=item *

C<creating> - Automated backups that are waiting for the first
automated snapshot to be available.

=item *

C<retained> - Automated backups for deleted instances and after backup
replication is stopped.

=back

=item *

C<db-instance-id> - Accepts DB instance identifiers and Amazon Resource
Names (ARNs). The results list includes only information about the DB
instance automated backups identified by these ARNs.

=item *

C<dbi-resource-id> - Accepts DB resource identifiers and Amazon
Resource Names (ARNs). The results list includes only information about
the DB instance resources identified by these ARNs.

=back

Returns all resources by default. The status for each resource is
specified in the response.



=head2 Marker => Str

The pagination token provided in the previous request. If this
parameter is specified the response includes only records beyond the
marker, up to C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBInstanceAutomatedBackups in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

