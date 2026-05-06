
package Paws::OpenSearch::DescribeOutboundConnections;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOutboundConnections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/cc/outboundConnection/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeOutboundConnectionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeOutboundConnections - Arguments for method DescribeOutboundConnections on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOutboundConnections on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeOutboundConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOutboundConnections.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeOutboundConnectionsResponse = $es->DescribeOutboundConnections(
      Filters => [
        {
          Name   => 'MyNonEmptyString',    # min: 1, max: 100; OPTIONAL
          Values => [
            'MyNonEmptyString', ...        # min: 1, max: 100; OPTIONAL
          ],    # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Connections = $DescribeOutboundConnectionsResponse->Connections;
    my $NextToken   = $DescribeOutboundConnectionsResponse->NextToken;

    # Returns a L<Paws::OpenSearch::DescribeOutboundConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::OpenSearch::Filter>]

List of filter names and values that you can use for requests.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<DescribeOutboundConnections> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<DescribeOutboundConnections> operations, which returns results in the
next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOutboundConnections in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

