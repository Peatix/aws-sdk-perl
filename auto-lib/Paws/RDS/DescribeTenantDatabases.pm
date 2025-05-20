
package Paws::RDS::DescribeTenantDatabases;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TenantDBName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTenantDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::TenantDatabasesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTenantDatabasesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeTenantDatabases - Arguments for method DescribeTenantDatabases on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTenantDatabases on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeTenantDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTenantDatabases.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $TenantDatabasesMessage = $rds->DescribeTenantDatabases(
      DBInstanceIdentifier => 'MyString',    # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                     # OPTIONAL
      Marker       => 'MyString',            # OPTIONAL
      MaxRecords   => 1,                     # OPTIONAL
      TenantDBName => 'MyString',            # OPTIONAL
    );

    # Results:
    my $Marker          = $TenantDatabasesMessage->Marker;
    my $TenantDatabases = $TenantDatabasesMessage->TenantDatabases;

    # Returns a L<Paws::RDS::TenantDatabasesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeTenantDatabases>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The user-supplied DB instance identifier, which must match the
identifier of an existing instance owned by the Amazon Web Services
account. This parameter isn't case-sensitive.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more database tenants to describe.

Supported filters:

=over

=item *

C<tenant-db-name> - Tenant database names. The results list only
includes information about the tenant databases that match these tenant
DB names.

=item *

C<tenant-database-resource-id> - Tenant database resource identifiers.

=item *

C<dbi-resource-id> - DB instance resource identifiers. The results list
only includes information about the tenants contained within the DB
instances identified by these resource identifiers.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeTenantDatabases> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.



=head2 TenantDBName => Str

The user-supplied tenant database name, which must match the name of an
existing tenant database on the specified DB instance owned by your
Amazon Web Services account. This parameter isnE<rsquo>t
case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTenantDatabases in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

