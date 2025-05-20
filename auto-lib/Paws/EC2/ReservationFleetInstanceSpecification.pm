package Paws::EC2::ReservationFleetInstanceSpecification;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has InstancePlatform => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has Weight => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservationFleetInstanceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservationFleetInstanceSpecification object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservationFleetInstanceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the Capacity Reservation Fleet reserves
the capacity. A Capacity Reservation Fleet can't span Availability
Zones. All instance type specifications that you specify for the Fleet
must use the same Availability Zone.


=head2 AvailabilityZoneId => Str

The ID of the Availability Zone in which the Capacity Reservation Fleet
reserves the capacity. A Capacity Reservation Fleet can't span
Availability Zones. All instance type specifications that you specify
for the Fleet must use the same Availability Zone.


=head2 EbsOptimized => Bool

Indicates whether the Capacity Reservation Fleet supports EBS-optimized
instances types. This optimization provides dedicated throughput to
Amazon EBS and an optimized configuration stack to provide optimal I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using EBS-optimized instance types.


=head2 InstancePlatform => Str

The type of operating system for which the Capacity Reservation Fleet
reserves capacity.


=head2 InstanceType => Str

The instance type for which the Capacity Reservation Fleet reserves
capacity.


=head2 Priority => Int

The priority to assign to the instance type. This value is used to
determine which of the instance types specified for the Fleet should be
prioritized for use. A lower value indicates a high priority. For more
information, see Instance type priority
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority)
in the I<Amazon EC2 User Guide>.


=head2 Weight => Num

The number of capacity units provided by the specified instance type.
This value, together with the total target capacity that you specify
for the Fleet determine the number of instances for which the Fleet
reserves capacity. Both values are based on units that make sense for
your workload. For more information, see Total target capacity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity)
in the I<Amazon EC2 User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
