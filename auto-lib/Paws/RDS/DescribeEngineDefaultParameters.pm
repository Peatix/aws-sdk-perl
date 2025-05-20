
package Paws::RDS::DescribeEngineDefaultParameters;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeEngineDefaultParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEngineDefaultParameters - Arguments for method DescribeEngineDefaultParameters on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineDefaultParameters on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeEngineDefaultParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineDefaultParameters.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list default parameters for a DB engine
    # This example lists default parameters for the specified DB engine.
    my $DescribeEngineDefaultParametersResult =
      $rds->DescribeEngineDefaultParameters(
      'DBParameterGroupFamily' => 'mysql5.6' );

    # Results:
    my $EngineDefaults = $DescribeEngineDefaultParametersResult->EngineDefaults;

    # Returns a L<Paws::RDS::DescribeEngineDefaultParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEngineDefaultParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupFamily => Str

The name of the DB parameter group family.

Valid Values:

=over

=item *

C<aurora-mysql5.7>

=item *

C<aurora-mysql8.0>

=item *

C<aurora-postgresql10>

=item *

C<aurora-postgresql11>

=item *

C<aurora-postgresql12>

=item *

C<aurora-postgresql13>

=item *

C<aurora-postgresql14>

=item *

C<custom-oracle-ee-19>

=item *

C<custom-oracle-ee-cdb-19>

=item *

C<db2-ae>

=item *

C<db2-se>

=item *

C<mariadb10.2>

=item *

C<mariadb10.3>

=item *

C<mariadb10.4>

=item *

C<mariadb10.5>

=item *

C<mariadb10.6>

=item *

C<mysql5.7>

=item *

C<mysql8.0>

=item *

C<oracle-ee-19>

=item *

C<oracle-ee-cdb-19>

=item *

C<oracle-ee-cdb-21>

=item *

C<oracle-se2-19>

=item *

C<oracle-se2-cdb-19>

=item *

C<oracle-se2-cdb-21>

=item *

C<postgres10>

=item *

C<postgres11>

=item *

C<postgres12>

=item *

C<postgres13>

=item *

C<postgres14>

=item *

C<sqlserver-ee-11.0>

=item *

C<sqlserver-ee-12.0>

=item *

C<sqlserver-ee-13.0>

=item *

C<sqlserver-ee-14.0>

=item *

C<sqlserver-ee-15.0>

=item *

C<sqlserver-ex-11.0>

=item *

C<sqlserver-ex-12.0>

=item *

C<sqlserver-ex-13.0>

=item *

C<sqlserver-ex-14.0>

=item *

C<sqlserver-ex-15.0>

=item *

C<sqlserver-se-11.0>

=item *

C<sqlserver-se-12.0>

=item *

C<sqlserver-se-13.0>

=item *

C<sqlserver-se-14.0>

=item *

C<sqlserver-se-15.0>

=item *

C<sqlserver-web-11.0>

=item *

C<sqlserver-web-12.0>

=item *

C<sqlserver-web-13.0>

=item *

C<sqlserver-web-14.0>

=item *

C<sqlserver-web-15.0>

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more parameters to describe.

The only supported filter is C<parameter-name>. The results list only
includes information about the parameters with these names.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEngineDefaultParameters> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so you can retrieve
the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngineDefaultParameters in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

