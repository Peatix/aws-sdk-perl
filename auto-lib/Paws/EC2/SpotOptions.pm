package Paws::EC2::SpotOptions;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has InstancePoolsToUseCount => (is => 'ro', isa => 'Int', request_name => 'instancePoolsToUseCount', traits => ['NameInRequest']);
  has MaintenanceStrategies => (is => 'ro', isa => 'Paws::EC2::FleetSpotMaintenanceStrategies', request_name => 'maintenanceStrategies', traits => ['NameInRequest']);
  has MaxTotalPrice => (is => 'ro', isa => 'Str', request_name => 'maxTotalPrice', traits => ['NameInRequest']);
  has MinTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'minTargetCapacity', traits => ['NameInRequest']);
  has SingleAvailabilityZone => (is => 'ro', isa => 'Bool', request_name => 'singleAvailabilityZone', traits => ['NameInRequest']);
  has SingleInstanceType => (is => 'ro', isa => 'Bool', request_name => 'singleInstanceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotOptions object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., SingleInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

The strategy that determines how to allocate the target Spot Instance
capacity across the Spot Instance pools specified by the EC2 Fleet
launch configuration. For more information, see Allocation strategies
for Spot Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html)
in the I<Amazon EC2 User Guide>.

=over

=item price-capacity-optimized (recommended)

EC2 Fleet identifies the pools with the highest capacity availability
for the number of instances that are launching. This means that we will
request Spot Instances from the pools that we believe have the lowest
chance of interruption in the near term. EC2 Fleet then requests Spot
Instances from the lowest priced of these pools.

=item capacity-optimized

EC2 Fleet identifies the pools with the highest capacity availability
for the number of instances that are launching. This means that we will
request Spot Instances from the pools that we believe have the lowest
chance of interruption in the near term. To give certain instance types
a higher chance of launching first, use
C<capacity-optimized-prioritized>. Set a priority for each instance
type by using the C<Priority> parameter for C<LaunchTemplateOverrides>.
You can assign the same priority to different
C<LaunchTemplateOverrides>. EC2 implements the priorities on a
best-effort basis, but optimizes for capacity first.
C<capacity-optimized-prioritized> is supported only if your EC2 Fleet
uses a launch template. Note that if the On-Demand
C<AllocationStrategy> is set to C<prioritized>, the same priority is
applied when fulfilling On-Demand capacity.

=item diversified

EC2 Fleet requests instances from all of the Spot Instance pools that
you specify.

=item lowest-price (not recommended)

We don't recommend the C<lowest-price> allocation strategy because it
has the highest risk of interruption for your Spot Instances.

EC2 Fleet requests instances from the lowest priced Spot Instance pool
that has available capacity. If the lowest priced pool doesn't have
available capacity, the Spot Instances come from the next lowest priced
pool that has available capacity. If a pool runs out of capacity before
fulfilling your desired capacity, EC2 Fleet will continue to fulfill
your request by drawing from the next lowest priced pool. To ensure
that your desired capacity is met, you might receive Spot Instances
from several pools. Because this strategy only considers instance price
and not capacity availability, it might lead to high interruption
rates.

=back

Default: C<lowest-price>


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted.

Default: C<terminate>


=head2 InstancePoolsToUseCount => Int

The number of Spot pools across which to allocate your target Spot
capacity. Supported only when C<AllocationStrategy> is set to
C<lowest-price>. EC2 Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.

Note that EC2 Fleet attempts to draw Spot Instances from the number of
pools that you specify on a best effort basis. If a pool runs out of
Spot capacity before fulfilling your target capacity, EC2 Fleet will
continue to fulfill your request by drawing from the next cheapest
pool. To ensure that your target capacity is met, you might receive
Spot Instances from more than the number of pools that you specified.
Similarly, if most of the pools have no Spot capacity, you might
receive your full target capacity from fewer than the number of pools
that you specified.


=head2 MaintenanceStrategies => L<Paws::EC2::FleetSpotMaintenanceStrategies>

The strategies for managing your workloads on your Spot Instances that
will be interrupted. Currently only the capacity rebalance strategy is
available.


=head2 MaxTotalPrice => Str

The maximum amount per hour for Spot Instances that you're willing to
pay. We do not recommend using this parameter because it can lead to
increased interruptions. If you do not specify this parameter, you will
pay the current Spot price.

If you specify a maximum price, your Spot Instances will be interrupted
more frequently than if you do not specify this parameter.

If your fleet includes T instances that are configured as C<unlimited>,
and if their average CPU usage exceeds the baseline utilization, you
will incur a charge for surplus credits. The C<maxTotalPrice> does not
account for surplus credits, and, if you use surplus credits, your
final cost might be higher than what you specified for
C<maxTotalPrice>. For more information, see Surplus credits can incur
charges
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances-unlimited-mode-concepts.html#unlimited-mode-surplus-credits)
in the I<Amazon EC2 User Guide>.


=head2 MinTargetCapacity => Int

The minimum target capacity for Spot Instances in the fleet. If this
minimum capacity isn't reached, no instances are launched.

Constraints: Maximum value of C<1000>. Supported only for fleets of
type C<instant>.

At least one of the following must be specified:
C<SingleAvailabilityZone> | C<SingleInstanceType>


=head2 SingleAvailabilityZone => Bool

Indicates that the fleet launches all Spot Instances into a single
Availability Zone.

Supported only for fleets of type C<instant>.


=head2 SingleInstanceType => Bool

Indicates that the fleet uses a single instance type to launch all Spot
Instances in the fleet.

Supported only for fleets of type C<instant>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
