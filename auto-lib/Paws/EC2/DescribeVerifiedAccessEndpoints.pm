
package Paws::EC2::DescribeVerifiedAccessEndpoints;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VerifiedAccessEndpointIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VerifiedAccessEndpointId' );
  has VerifiedAccessGroupId => (is => 'ro', isa => 'Str');
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVerifiedAccessEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVerifiedAccessEndpointsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVerifiedAccessEndpoints - Arguments for method DescribeVerifiedAccessEndpoints on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVerifiedAccessEndpoints on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVerifiedAccessEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVerifiedAccessEndpoints.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVerifiedAccessEndpointsResult =
      $ec2->DescribeVerifiedAccessEndpoints(
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
      MaxResults                => 1,                              # OPTIONAL
      NextToken                 => 'MyNextToken',                  # OPTIONAL
      VerifiedAccessEndpointIds => [ 'MyVerifiedAccessEndpointId', ... ]
      ,                                                            # OPTIONAL
      VerifiedAccessGroupId    => 'MyVerifiedAccessGroupId',       # OPTIONAL
      VerifiedAccessInstanceId => 'MyVerifiedAccessInstanceId',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeVerifiedAccessEndpointsResult->NextToken;
    my $VerifiedAccessEndpoints =
      $DescribeVerifiedAccessEndpointsResult->VerifiedAccessEndpoints;

    # Returns a L<Paws::EC2::DescribeVerifiedAccessEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVerifiedAccessEndpoints>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 VerifiedAccessEndpointIds => ArrayRef[Str|Undef]

The ID of the Verified Access endpoint.



=head2 VerifiedAccessGroupId => Str

The ID of the Verified Access group.



=head2 VerifiedAccessInstanceId => Str

The ID of the Verified Access instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVerifiedAccessEndpoints in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

