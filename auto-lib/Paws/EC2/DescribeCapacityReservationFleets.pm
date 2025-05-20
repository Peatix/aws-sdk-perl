
package Paws::EC2::DescribeCapacityReservationFleets;
  use Moose;
  has CapacityReservationFleetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'CapacityReservationFleetId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityReservationFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeCapacityReservationFleetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityReservationFleets - Arguments for method DescribeCapacityReservationFleets on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityReservationFleets on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeCapacityReservationFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityReservationFleets.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeCapacityReservationFleetsResult =
      $ec2->DescribeCapacityReservationFleets(
      CapacityReservationFleetIds => [ 'MyCapacityReservationFleetId', ... ]
      ,                # OPTIONAL
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
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $CapacityReservationFleets =
      $DescribeCapacityReservationFleetsResult->CapacityReservationFleets;
    my $NextToken = $DescribeCapacityReservationFleetsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeCapacityReservationFleetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeCapacityReservationFleets>

=head1 ATTRIBUTES


=head2 CapacityReservationFleetIds => ArrayRef[Str|Undef]

The IDs of the Capacity Reservation Fleets to describe.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<state> - The state of the Fleet (C<submitted> | C<modifying> |
C<active> | C<partially_fulfilled> | C<expiring> | C<expired> |
C<cancelling> | C<cancelled> | C<failed>).

=item *

C<instance-match-criteria> - The instance matching criteria for the
Fleet. Only C<open> is supported.

=item *

C<tenancy> - The tenancy of the Fleet (C<default> | C<dedicated>).

=item *

C<allocation-strategy> - The allocation strategy used by the Fleet.
Only C<prioritized> is supported.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityReservationFleets in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

