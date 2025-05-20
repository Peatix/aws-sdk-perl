
package Paws::DMS::DescribeFleetAdvisorSchemaObjectSummary;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetAdvisorSchemaObjectSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeFleetAdvisorSchemaObjectSummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorSchemaObjectSummary - Arguments for method DescribeFleetAdvisorSchemaObjectSummary on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetAdvisorSchemaObjectSummary on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeFleetAdvisorSchemaObjectSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetAdvisorSchemaObjectSummary.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeFleetAdvisorSchemaObjectSummaryResponse =
      $dms->DescribeFleetAdvisorSchemaObjectSummary(
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
    my $FleetAdvisorSchemaObjects =
      $DescribeFleetAdvisorSchemaObjectSummaryResponse
      ->FleetAdvisorSchemaObjects;
    my $NextToken = $DescribeFleetAdvisorSchemaObjectSummaryResponse->NextToken;

# Returns a L<Paws::DMS::DescribeFleetAdvisorSchemaObjectSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeFleetAdvisorSchemaObjectSummary>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

If you specify any of the following filters, the output includes
information for only those schema objects that meet the filter
criteria:

=over

=item *

C<schema-id> E<ndash> The ID of the schema, for example
C<d4610ac5-e323-4ad9-bc50-eaf7249dfe9d>.

=back

Example: C<describe-fleet-advisor-schema-object-summary --filter
Name="schema-id",Values="50">



=head2 MaxRecords => Int

Sets the maximum number of records returned in the response.



=head2 NextToken => Str

If C<NextToken> is returned by a previous response, there are more
results available. The value of C<NextToken> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetAdvisorSchemaObjectSummary in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

