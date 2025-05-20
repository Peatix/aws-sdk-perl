package Paws::EC2::FleetCapacityReservation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest']);
  has CreateDate => (is => 'ro', isa => 'Str', request_name => 'createDate', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', request_name => 'ebsOptimized', traits => ['NameInRequest']);
  has FulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'fulfilledCapacity', traits => ['NameInRequest']);
  has InstancePlatform => (is => 'ro', isa => 'Str', request_name => 'instancePlatform', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest']);
  has TotalInstanceCount => (is => 'ro', isa => 'Int', request_name => 'totalInstanceCount', traits => ['NameInRequest']);
  has Weight => (is => 'ro', isa => 'Num', request_name => 'weight', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetCapacityReservation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetCapacityReservation object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetCapacityReservation object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the Capacity Reservation reserves
capacity.


=head2 AvailabilityZoneId => Str

The ID of the Availability Zone in which the Capacity Reservation
reserves capacity.


=head2 CapacityReservationId => Str

The ID of the Capacity Reservation.


=head2 CreateDate => Str

The date and time at which the Capacity Reservation was created.


=head2 EbsOptimized => Bool

Indicates whether the Capacity Reservation reserves capacity for
EBS-optimized instance types.


=head2 FulfilledCapacity => Num

The number of capacity units fulfilled by the Capacity Reservation. For
more information, see Total target capacity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity)
in the I<Amazon EC2 User Guide>.


=head2 InstancePlatform => Str

The type of operating system for which the Capacity Reservation
reserves capacity.


=head2 InstanceType => Str

The instance type for which the Capacity Reservation reserves capacity.


=head2 Priority => Int

The priority of the instance type in the Capacity Reservation Fleet.
For more information, see Instance type priority
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority)
in the I<Amazon EC2 User Guide>.


=head2 TotalInstanceCount => Int

The total number of instances for which the Capacity Reservation
reserves capacity.


=head2 Weight => Num

The weight of the instance type in the Capacity Reservation Fleet. For
more information, see Instance type weight
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight)
in the I<Amazon EC2 User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
