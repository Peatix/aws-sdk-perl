package Paws::EC2::CapacityReservationFleet;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has CapacityReservationFleetArn => (is => 'ro', isa => 'Str', request_name => 'capacityReservationFleetArn', traits => ['NameInRequest']);
  has CapacityReservationFleetId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationFleetId', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has EndDate => (is => 'ro', isa => 'Str', request_name => 'endDate', traits => ['NameInRequest']);
  has InstanceMatchCriteria => (is => 'ro', isa => 'Str', request_name => 'instanceMatchCriteria', traits => ['NameInRequest']);
  has InstanceTypeSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetCapacityReservation]', request_name => 'instanceTypeSpecificationSet', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
  has TotalFulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'totalFulfilledCapacity', traits => ['NameInRequest']);
  has TotalTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'totalTargetCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationFleet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationFleet object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., TotalTargetCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationFleet object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

The strategy used by the Capacity Reservation Fleet to determine which
of the specified instance types to use. For more information, see For
more information, see Allocation strategy
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy)
in the I<Amazon EC2 User Guide>.


=head2 CapacityReservationFleetArn => Str

The ARN of the Capacity Reservation Fleet.


=head2 CapacityReservationFleetId => Str

The ID of the Capacity Reservation Fleet.


=head2 CreateTime => Str

The date and time at which the Capacity Reservation Fleet was created.


=head2 EndDate => Str

The date and time at which the Capacity Reservation Fleet expires.


=head2 InstanceMatchCriteria => Str

Indicates the type of instance launches that the Capacity Reservation
Fleet accepts. All Capacity Reservations in the Fleet inherit this
instance matching criteria.

Currently, Capacity Reservation Fleets support C<open> instance
matching criteria only. This means that instances that have matching
attributes (instance type, platform, and Availability Zone) run in the
Capacity Reservations automatically. Instances do not need to
explicitly target a Capacity Reservation Fleet to use its reserved
capacity.


=head2 InstanceTypeSpecifications => ArrayRef[L<Paws::EC2::FleetCapacityReservation>]

Information about the instance types for which to reserve the capacity.


=head2 State => Str

The state of the Capacity Reservation Fleet. Possible states include:

=over

=item *

C<submitted> - The Capacity Reservation Fleet request has been
submitted and Amazon Elastic Compute Cloud is preparing to create the
Capacity Reservations.

=item *

C<modifying> - The Capacity Reservation Fleet is being modified. The
Fleet remains in this state until the modification is complete.

=item *

C<active> - The Capacity Reservation Fleet has fulfilled its total
target capacity and it is attempting to maintain this capacity. The
Fleet remains in this state until it is modified or deleted.

=item *

C<partially_fulfilled> - The Capacity Reservation Fleet has partially
fulfilled its total target capacity. There is insufficient Amazon EC2
to fulfill the total target capacity. The Fleet is attempting to
asynchronously fulfill its total target capacity.

=item *

C<expiring> - The Capacity Reservation Fleet has reach its end date and
it is in the process of expiring. One or more of its Capacity
reservations might still be active.

=item *

C<expired> - The Capacity Reservation Fleet has reach its end date. The
Fleet and its Capacity Reservations are expired. The Fleet can't create
new Capacity Reservations.

=item *

C<cancelling> - The Capacity Reservation Fleet is in the process of
being cancelled. One or more of its Capacity reservations might still
be active.

=item *

C<cancelled> - The Capacity Reservation Fleet has been manually
cancelled. The Fleet and its Capacity Reservations are cancelled and
the Fleet can't create new Capacity Reservations.

=item *

C<failed> - The Capacity Reservation Fleet failed to reserve capacity
for the specified instance types.

=back



=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the Capacity Reservation Fleet.


=head2 Tenancy => Str

The tenancy of the Capacity Reservation Fleet. Tenancies include:

=over

=item *

C<default> - The Capacity Reservation Fleet is created on hardware that
is shared with other Amazon Web Services accounts.

=item *

C<dedicated> - The Capacity Reservation Fleet is created on
single-tenant hardware that is dedicated to a single Amazon Web
Services account.

=back



=head2 TotalFulfilledCapacity => Num

The capacity units that have been fulfilled.


=head2 TotalTargetCapacity => Int

The total number of capacity units for which the Capacity Reservation
Fleet reserves capacity. For more information, see Total target
capacity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity)
in the I<Amazon EC2 User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
