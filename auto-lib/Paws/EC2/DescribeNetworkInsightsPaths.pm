
package Paws::EC2::DescribeNetworkInsightsPaths;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NetworkInsightsPathIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkInsightsPathId' );
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInsightsPaths');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkInsightsPathsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInsightsPaths - Arguments for method DescribeNetworkInsightsPaths on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkInsightsPaths on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkInsightsPaths.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkInsightsPaths.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeNetworkInsightsPathsResult = $ec2->DescribeNetworkInsightsPaths(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults             => 1,                                    # OPTIONAL
      NetworkInsightsPathIds => [ 'MyNetworkInsightsPathId', ... ],   # OPTIONAL
      NextToken              => 'MyNextToken',                        # OPTIONAL
    );

    # Results:
    my $NetworkInsightsPaths =
      $DescribeNetworkInsightsPathsResult->NetworkInsightsPaths;
    my $NextToken = $DescribeNetworkInsightsPathsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeNetworkInsightsPathsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkInsightsPaths>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters. The following are the possible values:

=over

=item *

destination - The ID of the resource.

=item *

filter-at-source.source-address - The source IPv4 address at the
source.

=item *

filter-at-source.source-port-range - The source port range at the
source.

=item *

filter-at-source.destination-address - The destination IPv4 address at
the source.

=item *

filter-at-source.destination-port-range - The destination port range at
the source.

=item *

filter-at-destination.source-address - The source IPv4 address at the
destination.

=item *

filter-at-destination.source-port-range - The source port range at the
destination.

=item *

filter-at-destination.destination-address - The destination IPv4
address at the destination.

=item *

filter-at-destination.destination-port-range - The destination port
range at the destination.

=item *

protocol - The protocol.

=item *

source - The ID of the resource.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NetworkInsightsPathIds => ArrayRef[Str|Undef]

The IDs of the paths.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkInsightsPaths in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

