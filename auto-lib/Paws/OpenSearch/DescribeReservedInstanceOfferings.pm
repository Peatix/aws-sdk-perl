
package Paws::OpenSearch::DescribeReservedInstanceOfferings;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReservedInstanceOfferingId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'offeringId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstanceOfferings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/reservedInstanceOfferings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeReservedInstanceOfferingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeReservedInstanceOfferings - Arguments for method DescribeReservedInstanceOfferings on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstanceOfferings on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeReservedInstanceOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstanceOfferings.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeReservedInstanceOfferingsResponse =
      $es->DescribeReservedInstanceOfferings(
      MaxResults                 => 1,                # OPTIONAL
      NextToken                  => 'MyNextToken',    # OPTIONAL
      ReservedInstanceOfferingId => 'MyGUID',         # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReservedInstanceOfferingsResponse->NextToken;
    my $ReservedInstanceOfferings =
      $DescribeReservedInstanceOfferingsResponse->ReservedInstanceOfferings;

# Returns a L<Paws::OpenSearch::DescribeReservedInstanceOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<DescribeReservedInstanceOfferings> operation returns
a C<nextToken>, you can include the returned C<nextToken> in subsequent
C<DescribeReservedInstanceOfferings> operations, which returns results
in the next page.



=head2 ReservedInstanceOfferingId => Str

The Reserved Instance identifier filter value. Use this parameter to
show only the available instance types that match the specified
reservation identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstanceOfferings in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

