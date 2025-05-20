package Paws::EC2::LaunchTemplateOverrides;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has InstanceRequirements => (is => 'ro', isa => 'Paws::EC2::InstanceRequirements', request_name => 'instanceRequirements', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Num', request_name => 'priority', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has WeightedCapacity => (is => 'ro', isa => 'Num', request_name => 'weightedCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateOverrides object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which to launch the instances.


=head2 InstanceRequirements => L<Paws::EC2::InstanceRequirements>

The instance requirements. When you specify instance requirements,
Amazon EC2 will identify instance types with the provided requirements,
and then use your On-Demand and Spot allocation strategies to launch
instances from these instance types, in the same way as when you
specify a list of instance types.

If you specify C<InstanceRequirements>, you can't specify
C<InstanceType>.


=head2 InstanceType => Str

The instance type.


=head2 Priority => Num

The priority for the launch template override. The highest priority is
launched first.

If C<OnDemandAllocationStrategy> is set to C<prioritized>, Spot Fleet
uses priority to determine which launch template override to use first
in fulfilling On-Demand capacity.

If the Spot C<AllocationStrategy> is set to
C<capacityOptimizedPrioritized>, Spot Fleet uses priority on a
best-effort basis to determine which launch template override to use in
fulfilling Spot capacity, but optimizes for capacity first.

Valid values are whole numbers starting at C<0>. The lower the number,
the higher the priority. If no number is set, the launch template
override has the lowest priority. You can set the same priority for
different launch template overrides.


=head2 SpotPrice => Str

The maximum price per unit hour that you are willing to pay for a Spot
Instance. We do not recommend using this parameter because it can lead
to increased interruptions. If you do not specify this parameter, you
will pay the current Spot price.

If you specify a maximum price, your instances will be interrupted more
frequently than if you do not specify this parameter.


=head2 SubnetId => Str

The ID of the subnet in which to launch the instances.


=head2 WeightedCapacity => Num

The number of units provided by the specified instance type. These are
the same units that you chose to set the target capacity in terms of
instances, or a performance characteristic such as vCPUs, memory, or
I/O.

If the target capacity divided by this value is not a whole number,
Amazon EC2 rounds the number of instances to the next whole number. If
this value is not specified, the default is 1.

When specifying weights, the price used in the C<lowestPrice> and
C<priceCapacityOptimized> allocation strategies is per I<unit> hour
(where the instance price is divided by the specified weight). However,
if all the specified weights are above the requested C<TargetCapacity>,
resulting in only 1 instance being launched, the price used is per
I<instance> hour.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
