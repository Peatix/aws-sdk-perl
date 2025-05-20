
package Paws::EC2::GetGroupsForCapacityReservation;
  use Moose;
  has CapacityReservationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupsForCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetGroupsForCapacityReservationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetGroupsForCapacityReservation - Arguments for method GetGroupsForCapacityReservation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupsForCapacityReservation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetGroupsForCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupsForCapacityReservation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetGroupsForCapacityReservationResult =
      $ec2->GetGroupsForCapacityReservation(
      CapacityReservationId => 'MyCapacityReservationId',
      DryRun                => 1,                           # OPTIONAL
      MaxResults            => 1,                           # OPTIONAL
      NextToken             => 'MyString',                  # OPTIONAL
      );

    # Results:
    my $CapacityReservationGroups =
      $GetGroupsForCapacityReservationResult->CapacityReservationGroups;
    my $NextToken = $GetGroupsForCapacityReservationResult->NextToken;

    # Returns a L<Paws::EC2::GetGroupsForCapacityReservationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetGroupsForCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationId => Str

The ID of the Capacity Reservation. If you specify a Capacity
Reservation that is shared with you, the operation returns only
Capacity Reservation groups that you own.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupsForCapacityReservation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

