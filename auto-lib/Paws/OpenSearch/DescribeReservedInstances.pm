
package Paws::OpenSearch::DescribeReservedInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReservedInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'reservationId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/reservedInstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeReservedInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeReservedInstances - Arguments for method DescribeReservedInstances on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstances on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeReservedInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstances.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeReservedInstancesResponse = $es->DescribeReservedInstances(
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      ReservedInstanceId => 'MyGUID',         # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeReservedInstancesResponse->NextToken;
    my $ReservedInstances =
      $DescribeReservedInstancesResponse->ReservedInstances;

    # Returns a L<Paws::OpenSearch::DescribeReservedInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<DescribeReservedInstances> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<DescribeReservedInstances> operations, which returns results in the
next page.



=head2 ReservedInstanceId => Str

The reserved instance identifier filter value. Use this parameter to
show only the reservation that matches the specified reserved
OpenSearch instance ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstances in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

