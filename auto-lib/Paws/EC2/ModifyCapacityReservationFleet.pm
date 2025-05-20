
package Paws::EC2::ModifyCapacityReservationFleet;
  use Moose;
  has CapacityReservationFleetId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndDate => (is => 'ro', isa => 'Str');
  has RemoveEndDate => (is => 'ro', isa => 'Bool');
  has TotalTargetCapacity => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCapacityReservationFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyCapacityReservationFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyCapacityReservationFleet - Arguments for method ModifyCapacityReservationFleet on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCapacityReservationFleet on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyCapacityReservationFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCapacityReservationFleet.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyCapacityReservationFleetResult =
      $ec2->ModifyCapacityReservationFleet(
      CapacityReservationFleetId => 'MyCapacityReservationFleetId',
      DryRun                     => 1,                                # OPTIONAL
      EndDate                    => '1970-01-01T01:00:00',            # OPTIONAL
      RemoveEndDate              => 1,                                # OPTIONAL
      TotalTargetCapacity        => 1,                                # OPTIONAL
      );

    # Results:
    my $Return = $ModifyCapacityReservationFleetResult->Return;

    # Returns a L<Paws::EC2::ModifyCapacityReservationFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyCapacityReservationFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationFleetId => Str

The ID of the Capacity Reservation Fleet to modify.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndDate => Str

The date and time at which the Capacity Reservation Fleet expires. When
the Capacity Reservation Fleet expires, its state changes to C<expired>
and all of the Capacity Reservations in the Fleet expire.

The Capacity Reservation Fleet expires within an hour after the
specified time. For example, if you specify C<5/31/2019>, C<13:30:55>,
the Capacity Reservation Fleet is guaranteed to expire between
C<13:30:55> and C<14:30:55> on C<5/31/2019>.

You can't specify B<EndDate> and B< RemoveEndDate> in the same request.



=head2 RemoveEndDate => Bool

Indicates whether to remove the end date from the Capacity Reservation
Fleet. If you remove the end date, the Capacity Reservation Fleet does
not expire and it remains active until you explicitly cancel it using
the B<CancelCapacityReservationFleet> action.

You can't specify B<RemoveEndDate> and B< EndDate> in the same request.



=head2 TotalTargetCapacity => Int

The total number of capacity units to be reserved by the Capacity
Reservation Fleet. This value, together with the instance type weights
that you assign to each instance type used by the Fleet determine the
number of instances for which the Fleet reserves capacity. Both values
are based on units that make sense for your workload. For more
information, see Total target capacity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity)
in the I<Amazon EC2 User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCapacityReservationFleet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

