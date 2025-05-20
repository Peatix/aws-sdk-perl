
package Paws::EC2::CreateCapacityReservationFleetResult;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest',]);
  has CapacityReservationFleetId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationFleetId', traits => ['NameInRequest',]);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest',]);
  has EndDate => (is => 'ro', isa => 'Str', request_name => 'endDate', traits => ['NameInRequest',]);
  has FleetCapacityReservations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetCapacityReservation]', request_name => 'fleetCapacityReservationSet', traits => ['NameInRequest',]);
  has InstanceMatchCriteria => (is => 'ro', isa => 'Str', request_name => 'instanceMatchCriteria', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest',]);
  has TotalFulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'totalFulfilledCapacity', traits => ['NameInRequest',]);
  has TotalTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'totalTargetCapacity', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservationFleetResult

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

The allocation strategy used by the Capacity Reservation Fleet.


=head2 CapacityReservationFleetId => Str

The ID of the Capacity Reservation Fleet.


=head2 CreateTime => Str

The date and time at which the Capacity Reservation Fleet was created.


=head2 EndDate => Str

The date and time at which the Capacity Reservation Fleet expires.


=head2 FleetCapacityReservations => ArrayRef[L<Paws::EC2::FleetCapacityReservation>]

Information about the individual Capacity Reservations in the Capacity
Reservation Fleet.


=head2 InstanceMatchCriteria => Str

The instance matching criteria for the Capacity Reservation Fleet.

Valid values are: C<"open">
=head2 State => Str

The status of the Capacity Reservation Fleet.

Valid values are: C<"submitted">, C<"modifying">, C<"active">, C<"partially_fulfilled">, C<"expiring">, C<"expired">, C<"cancelling">, C<"cancelled">, C<"failed">
=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the Capacity Reservation Fleet.


=head2 Tenancy => Str

Indicates the tenancy of Capacity Reservation Fleet.

Valid values are: C<"default">
=head2 TotalFulfilledCapacity => Num

The requested capacity units that have been successfully reserved.


=head2 TotalTargetCapacity => Int

The total number of capacity units for which the Capacity Reservation
Fleet reserves capacity.


=head2 _request_id => Str


=cut

