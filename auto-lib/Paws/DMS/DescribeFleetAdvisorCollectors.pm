
package Paws::DMS::DescribeFleetAdvisorCollectors;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetAdvisorCollectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeFleetAdvisorCollectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorCollectors - Arguments for method DescribeFleetAdvisorCollectors on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetAdvisorCollectors on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeFleetAdvisorCollectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetAdvisorCollectors.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeFleetAdvisorCollectorsResponse =
      $dms->DescribeFleetAdvisorCollectors(
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
    my $Collectors = $DescribeFleetAdvisorCollectorsResponse->Collectors;
    my $NextToken  = $DescribeFleetAdvisorCollectorsResponse->NextToken;

    # Returns a L<Paws::DMS::DescribeFleetAdvisorCollectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeFleetAdvisorCollectors>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

If you specify any of the following filters, the output includes
information for only those collectors that meet the filter criteria:

=over

=item *

C<collector-referenced-id> E<ndash> The ID of the collector agent, for
example C<d4610ac5-e323-4ad9-bc50-eaf7249dfe9d>.

=item *

C<collector-name> E<ndash> The name of the collector agent.

=back

An example is: C<describe-fleet-advisor-collectors --filter
Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d">



=head2 MaxRecords => Int

Sets the maximum number of records returned in the response.



=head2 NextToken => Str

If C<NextToken> is returned by a previous response, there are more
results available. The value of C<NextToken> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetAdvisorCollectors in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

