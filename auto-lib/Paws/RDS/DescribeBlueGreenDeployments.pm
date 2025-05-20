
package Paws::RDS::DescribeBlueGreenDeployments;
  use Moose;
  has BlueGreenDeploymentIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBlueGreenDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeBlueGreenDeploymentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBlueGreenDeploymentsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeBlueGreenDeployments - Arguments for method DescribeBlueGreenDeployments on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBlueGreenDeployments on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeBlueGreenDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBlueGreenDeployments.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DescribeBlueGreenDeploymentsResponse =
      $rds->DescribeBlueGreenDeployments(
      BlueGreenDeploymentIdentifier =>
        'MyBlueGreenDeploymentIdentifier',    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                      # OPTIONAL
      Marker     => 'MyString',               # OPTIONAL
      MaxRecords => 1,                        # OPTIONAL
      );

    # Results:
    my $BlueGreenDeployments =
      $DescribeBlueGreenDeploymentsResponse->BlueGreenDeployments;
    my $Marker = $DescribeBlueGreenDeploymentsResponse->Marker;

    # Returns a L<Paws::RDS::DescribeBlueGreenDeploymentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeBlueGreenDeployments>

=head1 ATTRIBUTES


=head2 BlueGreenDeploymentIdentifier => Str

The blue/green deployment identifier. If you specify this parameter,
the response only includes information about the specific blue/green
deployment. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match an existing blue/green deployment identifier.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more blue/green deployments to describe.

Valid Values:

=over

=item *

C<blue-green-deployment-identifier> - Accepts system-generated
identifiers for blue/green deployments. The results list only includes
information about the blue/green deployments with the specified
identifiers.

=item *

C<blue-green-deployment-name> - Accepts user-supplied names for
blue/green deployments. The results list only includes information
about the blue/green deployments with the specified names.

=item *

C<source> - Accepts source databases for a blue/green deployment. The
results list only includes information about the blue/green deployments
with the specified source databases.

=item *

C<target> - Accepts target databases for a blue/green deployment. The
results list only includes information about the blue/green deployments
with the specified target databases.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeBlueGreenDeployments> request. If you specify this parameter,
the response only includes records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so you can retrieve
the remaining results.

Default: 100

Constraints:

=over

=item *

Must be a minimum of 20.

=item *

Can't exceed 100.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBlueGreenDeployments in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

