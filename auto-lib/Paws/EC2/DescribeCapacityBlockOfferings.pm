
package Paws::EC2::DescribeCapacityBlockOfferings;
  use Moose;
  has CapacityDurationHours => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndDateRange => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDateRange => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityBlockOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeCapacityBlockOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityBlockOfferings - Arguments for method DescribeCapacityBlockOfferings on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityBlockOfferings on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeCapacityBlockOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityBlockOfferings.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeCapacityBlockOfferingsResult =
      $ec2->DescribeCapacityBlockOfferings(
      CapacityDurationHours => 1,
      DryRun                => 1,                        # OPTIONAL
      EndDateRange          => '1970-01-01T01:00:00',    # OPTIONAL
      InstanceCount         => 1,                        # OPTIONAL
      InstanceType          => 'MyString',               # OPTIONAL
      MaxResults            => 1,                        # OPTIONAL
      NextToken             => 'MyString',               # OPTIONAL
      StartDateRange        => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $CapacityBlockOfferings =
      $DescribeCapacityBlockOfferingsResult->CapacityBlockOfferings;
    my $NextToken = $DescribeCapacityBlockOfferingsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeCapacityBlockOfferingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeCapacityBlockOfferings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityDurationHours => Int

The reservation duration for the Capacity Block, in hours. You must
specify the duration in 1-day increments up 14 days, and in 7-day
increments up to 182 days.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndDateRange => Str

The latest end date for the Capacity Block offering.



=head2 InstanceCount => Int

The number of instances for which to reserve capacity. Each Capacity
Block can have up to 64 instances, and you can have up to 256 instances
across Capacity Blocks.



=head2 InstanceType => Str

The type of instance for which the Capacity Block offering reserves
capacity.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 StartDateRange => Str

The earliest start date for the Capacity Block offering.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityBlockOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

