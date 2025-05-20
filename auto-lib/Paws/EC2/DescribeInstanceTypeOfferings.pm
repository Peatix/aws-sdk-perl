
package Paws::EC2::DescribeInstanceTypeOfferings;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LocationType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceTypeOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceTypeOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTypeOfferings - Arguments for method DescribeInstanceTypeOfferings on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceTypeOfferings on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceTypeOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceTypeOfferings.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceTypeOfferingsResult =
      $ec2->DescribeInstanceTypeOfferings(
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
      LocationType => 'region',         # OPTIONAL
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $InstanceTypeOfferings =
      $DescribeInstanceTypeOfferingsResult->InstanceTypeOfferings;
    my $NextToken = $DescribeInstanceTypeOfferingsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceTypeOfferingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceTypeOfferings>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.

=over

=item *

C<instance-type> - The instance type. For a list of possible values,
see Instance
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Instance.html).

=item *

C<location> - The location. For a list of possible identifiers, see
Regions and Zones
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html).

=back




=head2 LocationType => Str

The location type.

=over

=item *

C<availability-zone> - The Availability Zone. When you specify a
location filter, it must be an Availability Zone for the current
Region.

=item *

C<availability-zone-id> - The AZ ID. When you specify a location
filter, it must be an AZ ID for the current Region.

=item *

C<outpost> - The Outpost ARN. When you specify a location filter, it
must be an Outpost ARN for the current Region.

=item *

C<region> - The current Region. If you specify a location filter, it
must match the current Region.

=back


Valid values are: C<"region">, C<"availability-zone">, C<"availability-zone-id">, C<"outpost">

=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceTypeOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

