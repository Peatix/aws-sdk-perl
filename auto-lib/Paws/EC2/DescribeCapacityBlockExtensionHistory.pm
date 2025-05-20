
package Paws::EC2::DescribeCapacityBlockExtensionHistory;
  use Moose;
  has CapacityReservationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'CapacityReservationId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityBlockExtensionHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeCapacityBlockExtensionHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityBlockExtensionHistory - Arguments for method DescribeCapacityBlockExtensionHistory on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityBlockExtensionHistory on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeCapacityBlockExtensionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityBlockExtensionHistory.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeCapacityBlockExtensionHistoryResult =
      $ec2->DescribeCapacityBlockExtensionHistory(
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
    my $CapacityBlockExtensions =
      $DescribeCapacityBlockExtensionHistoryResult->CapacityBlockExtensions;
    my $NextToken = $DescribeCapacityBlockExtensionHistoryResult->NextToken;

   # Returns a L<Paws::EC2::DescribeCapacityBlockExtensionHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeCapacityBlockExtensionHistory>

=head1 ATTRIBUTES


=head2 CapacityReservationIds => ArrayRef[Str|Undef]

The IDs of Capacity Block reservations that you want to display the
history for.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters

=over

=item *

C<availability-zone> - The Availability Zone of the extension.

=item *

C<availability-zone-id> - The Availability Zone ID of the extension.

=item *

C<capacity-block-extension-offering-id> - The ID of the extension
offering.

=item *

C<capacity-block-extension-status> - The status of the extension
(C<payment-pending> | C<payment-failed> | C<payment-succeeded>).

=item *

C<capacity-reservation-id> - The reservation ID of the extension.

=item *

C<instance-type> - The instance type of the extension.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityBlockExtensionHistory in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

