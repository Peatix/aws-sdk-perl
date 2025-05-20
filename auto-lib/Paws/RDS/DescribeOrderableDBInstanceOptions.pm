
package Paws::RDS::DescribeOrderableDBInstanceOptions;
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Vpc => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::OrderableDBInstanceOptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeOrderableDBInstanceOptions - Arguments for method DescribeOrderableDBInstanceOptions on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrderableDBInstanceOptions on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeOrderableDBInstanceOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrderableDBInstanceOptions.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
# To list information about orderable DB instance options
# This example lists information for all orderable DB instance options for the
# specified DB engine, engine version, DB instance class, license model, and VPC
# settings.
    my $OrderableDBInstanceOptionsMessage =
      $rds->DescribeOrderableDBInstanceOptions(
      'DBInstanceClass' => 'db.t2.micro',
      'Engine'          => 'mysql',
      'EngineVersion'   => '5.6.27',
      'LicenseModel'    => 'general-public-license',
      'Vpc'             => 1
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeOrderableDBInstanceOptions>

=head1 ATTRIBUTES


=head2 AvailabilityZoneGroup => Str

The Availability Zone group associated with a Local Zone. Specify this
parameter to retrieve available options for the Local Zones in the
group.

Omit this parameter to show the available options in the specified
Amazon Web Services Region.

This setting doesn't apply to RDS Custom DB instances.



=head2 DBInstanceClass => Str

A filter to include only the available options for the specified DB
instance class.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to describe DB instance options for.

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

A filter to include only the available options for the specified engine
version.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter isn't currently supported.



=head2 LicenseModel => Str

A filter to include only the available options for the specified
license model.

RDS Custom supports only the BYOL licensing model.



=head2 Marker => Str

An optional pagination token provided by a previous
DescribeOrderableDBInstanceOptions request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.

Default: 100

Constraints: Minimum 20, maximum 1000.



=head2 Vpc => Bool

Specifies whether to show only VPC or non-VPC offerings. RDS Custom
supports only VPC offerings.

RDS Custom supports only VPC offerings. If you describe non-VPC
offerings for RDS Custom, the output shows VPC offerings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrderableDBInstanceOptions in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

