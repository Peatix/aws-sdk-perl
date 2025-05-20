
package Paws::EC2::DescribeCapacityReservationBillingRequests;
  use Moose;
  has CapacityReservationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'CapacityReservationId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityReservationBillingRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeCapacityReservationBillingRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityReservationBillingRequests - Arguments for method DescribeCapacityReservationBillingRequests on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityReservationBillingRequests on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeCapacityReservationBillingRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityReservationBillingRequests.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeCapacityReservationBillingRequestsResult =
      $ec2->DescribeCapacityReservationBillingRequests(
      Role                   => 'odcr-owner',
      CapacityReservationIds => [ 'MyCapacityReservationId', ... ],   # OPTIONAL
      DryRun                 => 1,                                    # OPTIONAL
      Filters                => [
        {
          Name   => 'MyString',                                       # OPTIONAL
          Values => [
            'MyString', ...                                           # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $CapacityReservationBillingRequests =
      $DescribeCapacityReservationBillingRequestsResult
      ->CapacityReservationBillingRequests;
    my $NextToken =
      $DescribeCapacityReservationBillingRequestsResult->NextToken;

# Returns a L<Paws::EC2::DescribeCapacityReservationBillingRequestsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeCapacityReservationBillingRequests>

=head1 ATTRIBUTES


=head2 CapacityReservationIds => ArrayRef[Str|Undef]

The ID of the Capacity Reservation.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<status> - The state of the request (C<pending> | C<accepted> |
C<rejected> | C<cancelled> | C<revoked> | C<expired>).

=item *

C<requested-by> - The account ID of the Capacity Reservation owner that
initiated the request. Not supported if you specify C<requested-by> for
B<Role>.

=item *

C<unused-reservation-billing-owner> - The ID of the consumer account to
which the request was sent. Not supported if you specify
C<unused-reservation-billing-owner> for B<Role>.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 B<REQUIRED> Role => Str

Specify one of the following:

=over

=item *

C<odcr-owner> - If you are the Capacity Reservation owner, specify this
value to view requests that you have initiated. Not supported with the
C<requested-by> filter.

=item *

C<unused-reservation-billing-owner> - If you are the consumer account,
specify this value to view requests that have been sent to you. Not
supported with the C<unused-reservation-billing-owner> filter.

=back


Valid values are: C<"odcr-owner">, C<"unused-reservation-billing-owner">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityReservationBillingRequests in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

