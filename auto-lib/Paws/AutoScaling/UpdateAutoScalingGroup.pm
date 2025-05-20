
package Paws::AutoScaling::UpdateAutoScalingGroup;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZoneDistribution => (is => 'ro', isa => 'Paws::AutoScaling::AvailabilityZoneDistribution');
  has AvailabilityZoneImpairmentPolicy => (is => 'ro', isa => 'Paws::AutoScaling::AvailabilityZoneImpairmentPolicy');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CapacityRebalance => (is => 'ro', isa => 'Bool');
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::AutoScaling::CapacityReservationSpecification');
  has Context => (is => 'ro', isa => 'Str');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DefaultInstanceWarmup => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has DesiredCapacityType => (is => 'ro', isa => 'Str');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has InstanceMaintenancePolicy => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMaintenancePolicy');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has MaxInstanceLifetime => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has SkipZonalShiftValidation => (is => 'ro', isa => 'Bool');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::UpdateAutoScalingGroup - Arguments for method UpdateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method UpdateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To update an Auto Scaling group
    # This example updates multiple properties at the same time.
    $autoscaling->UpdateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'LaunchTemplate'       => {
        'LaunchTemplateName' => 'my-template-for-auto-scaling',
        'Version'            => 2
      },
      'MaxSize'                          => 5,
      'MinSize'                          => 1,
      'NewInstancesProtectedFromScaleIn' => 1
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/UpdateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 AvailabilityZoneDistribution => L<Paws::AutoScaling::AvailabilityZoneDistribution>

The instance capacity distribution across Availability Zones.



=head2 AvailabilityZoneImpairmentPolicy => L<Paws::AutoScaling::AvailabilityZoneImpairmentPolicy>

The policy for Availability Zone impairment.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group.



=head2 CapacityRebalance => Bool

Enables or disables Capacity Rebalancing. If Capacity Rebalancing is
disabled, proactive replacement of at-risk Spot Instances does not
occur. For more information, see Capacity Rebalancing in Auto Scaling
to replace at-risk Spot Instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

To suspend rebalancing across Availability Zones, use the
SuspendProcesses
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendedProcess.html)
API.



=head2 CapacityReservationSpecification => L<Paws::AutoScaling::CapacityReservationSpecification>

The capacity reservation specification for the Auto Scaling group.



=head2 Context => Str

Reserved.



=head2 DefaultCooldown => Int

I<Only needed if you use simple scaling policies.>

The amount of time, in seconds, between one scaling activity ending and
another one starting due to simple scaling policies. For more
information, see Scaling cooldowns for Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 DefaultInstanceWarmup => Int

The amount of time, in seconds, until a new instance is considered to
have finished initializing and resource consumption to become stable
after it enters the C<InService> state.

During an instance refresh, Amazon EC2 Auto Scaling waits for the
warm-up period after it replaces an instance before it moves on to
replacing the next instance. Amazon EC2 Auto Scaling also waits for the
warm-up period before aggregating the metrics for new instances with
existing instances in the Amazon CloudWatch metrics that are used for
scaling, resulting in more reliable usage data. For more information,
see Set the default instance warmup for an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

To manage various warm-up settings at the group level, we recommend
that you set the default instance warmup, I<even if it is set to 0
seconds>. To remove a value that you previously set, include the
property but specify C<-1> for the value. However, we strongly
recommend keeping the default instance warmup enabled by specifying a
value of C<0> or other nominal value.



=head2 DesiredCapacity => Int

The desired capacity is the initial capacity of the Auto Scaling group
after this operation completes and the capacity it attempts to
maintain. This number must be greater than or equal to the minimum size
of the group and less than or equal to the maximum size of the group.



=head2 DesiredCapacityType => Str

The unit of measurement for the value specified for desired capacity.
Amazon EC2 Auto Scaling supports C<DesiredCapacityType> for
attribute-based instance type selection only. For more information, see
Create a mixed instances group using attribute-based instance type
selection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

By default, Amazon EC2 Auto Scaling specifies C<units>, which
translates into number of instances.

Valid values: C<units> | C<vcpu> | C<memory-mib>



=head2 HealthCheckGracePeriod => Int

The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
before checking the health status of an EC2 instance that has come into
service and marking it unhealthy due to a failed health check. This is
useful if your instances do not immediately pass their health checks
after they enter the C<InService> state. For more information, see Set
the health check grace period for an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 HealthCheckType => Str

A comma-separated value string of one or more health check types.

The valid values are C<EC2>, C<EBS>, C<ELB>, and C<VPC_LATTICE>. C<EC2>
is the default health check and cannot be disabled. For more
information, see Health checks for instances in an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Only specify C<EC2> if you must clear a value that was previously set.



=head2 InstanceMaintenancePolicy => L<Paws::AutoScaling::InstanceMaintenancePolicy>

An instance maintenance policy. For more information, see Set instance
maintenance policy
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration. If you specify
C<LaunchConfigurationName> in your update request, you can't specify
C<LaunchTemplate> or C<MixedInstancesPolicy>.



=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

The launch template and version to use to specify the updates. If you
specify C<LaunchTemplate> in your update request, you can't specify
C<LaunchConfigurationName> or C<MixedInstancesPolicy>.



=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service. The default is null. If specified, the value must be either 0
or a number equal to or greater than 86,400 seconds (1 day). To clear a
previously set value, specify a new value of 0. For more information,
see Replacing Auto Scaling instances based on maximum instance lifetime
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.

With a mixed instances policy that uses instance weighting, Amazon EC2
Auto Scaling may need to go above C<MaxSize> to meet your capacity
requirements. In this event, Amazon EC2 Auto Scaling will never go
above C<MaxSize> by more than your largest instance weight (weights
that define how many units each instance contributes to the desired
capacity of the group).



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

The mixed instances policy. For more information, see Auto Scaling
groups with multiple instance types and purchase options
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in. For more
information about preventing instances from terminating on scale in,
see Use instance scale-in protection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 PlacementGroup => Str

The name of an existing placement group into which to launch your
instances. To remove the placement group setting, pass an empty string
for C<placement-group>. For more information about placement groups,
see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

A I<cluster> placement group is a logical grouping of instances within
a single Availability Zone. You cannot specify multiple Availability
Zones and a cluster placement group.



=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other Amazon Web Services on your behalf.
For more information, see Service-linked roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 SkipZonalShiftValidation => Bool

If you enable zonal shift with cross-zone disabled load balancers,
capacity could become imbalanced across Availability Zones. To skip the
validation, specify C<true>. For more information, see Auto Scaling
group zonal shift
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A policy or a list of policies that are used to select the instances to
terminate. The policies are executed in the order that you list them.
For more information, see Configure termination policies for Amazon EC2
Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid values: C<Default> | C<AllocationStrategy> |
C<ClosestToNextInstanceHour> | C<NewestInstance> | C<OldestInstance> |
C<OldestLaunchConfiguration> | C<OldestLaunchTemplate> |
C<arn:aws:lambda:region:account-id:function:my-function:my-alias>



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for a virtual private cloud (VPC).
If you specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the
subnets that you specify must reside in those Availability Zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

