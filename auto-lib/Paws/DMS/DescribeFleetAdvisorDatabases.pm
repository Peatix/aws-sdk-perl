
package Paws::DMS::DescribeFleetAdvisorDatabases;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetAdvisorDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeFleetAdvisorDatabasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorDatabases - Arguments for method DescribeFleetAdvisorDatabases on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetAdvisorDatabases on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeFleetAdvisorDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetAdvisorDatabases.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeFleetAdvisorDatabasesResponse =
      $dms->DescribeFleetAdvisorDatabases(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Databases = $DescribeFleetAdvisorDatabasesResponse->Databases;
    my $NextToken = $DescribeFleetAdvisorDatabasesResponse->NextToken;

    # Returns a L<Paws::DMS::DescribeFleetAdvisorDatabasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeFleetAdvisorDatabases>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

If you specify any of the following filters, the output includes
information for only those databases that meet the filter criteria:

=over

=item *

C<database-id> E<ndash> The ID of the database.

=item *

C<database-name> E<ndash> The name of the database.

=item *

C<database-engine> E<ndash> The name of the database engine.

=item *

C<server-ip-address> E<ndash> The IP address of the database server.

=item *

C<database-ip-address> E<ndash> The IP address of the database.

=item *

C<collector-name> E<ndash> The name of the associated Fleet Advisor
collector.

=back

An example is: C<describe-fleet-advisor-databases --filter
Name="database-id",Values="45">



=head2 MaxRecords => Int

Sets the maximum number of records returned in the response.



=head2 NextToken => Str

If C<NextToken> is returned by a previous response, there are more
results available. The value of C<NextToken> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetAdvisorDatabases in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

