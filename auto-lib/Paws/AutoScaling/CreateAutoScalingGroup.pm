
package Paws::AutoScaling::CreateAutoScalingGroup;
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
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceMaintenancePolicy => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMaintenancePolicy');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has LifecycleHookSpecificationList => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LifecycleHookSpecification]');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxInstanceLifetime => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has SkipZonalShiftValidation => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Tag]');
  has TargetGroupARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TrafficSources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TrafficSourceIdentifier]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateAutoScalingGroup - Arguments for method CreateAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CreateAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create an Auto Scaling group
    # This example creates an Auto Scaling group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'  => 'my-auto-scaling-group',
      'DefaultInstanceWarmup' => 120,
      'LaunchTemplate'        => {
        'LaunchTemplateName' => 'my-template-for-auto-scaling',
        'Version'            => '$Default'
      },
      'MaxInstanceLifetime' => 2592000,
      'MaxSize'             => 3,
      'MinSize'             => 1,
      'VPCZoneIdentifier'   => 'subnet-057fa0918fEXAMPLE'
    );

  # To create an Auto Scaling group with an attached target group
  # This example creates an Auto Scaling group and attaches the specified target
  # group.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName'   => 'my-auto-scaling-group',
      'HealthCheckGracePeriod' => 300,
      'HealthCheckType'        => 'ELB',
      'LaunchTemplate'         => {
        'LaunchTemplateName' => 'my-template-for-auto-scaling',
        'Version'            => '$Default'
      },
      'MaxSize'         => 3,
      'MinSize'         => 1,
      'TargetGroupARNs' => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067'
      ],
      'VPCZoneIdentifier' => 'subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE'
    );

 # To create an Auto Scaling group with a mixed instances policy
 # This example creates an Auto Scaling group with a mixed instances policy. It
 # specifies the c5.large, c5a.large, and c6g.large instance types and defines a
 # different launch template for the c6g.large instance type.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-asg',
      'DesiredCapacity'      => 3,
      'MaxSize'              => 5,
      'MinSize'              => 1,
      'MixedInstancesPolicy' => {
        'InstancesDistribution' => {
          'OnDemandBaseCapacity'                => 1,
          'OnDemandPercentageAboveBaseCapacity' => 50,
          'SpotAllocationStrategy'              => 'price-capacity-optimized'
        },
        'LaunchTemplate' => {
          'LaunchTemplateSpecification' => {
            'LaunchTemplateName' => 'my-launch-template-for-x86',
            'Version'            => '$Default'
          },
          'Overrides' => [

            {
              'InstanceType'                => 'c6g.large',
              'LaunchTemplateSpecification' => {
                'LaunchTemplateName' => 'my-launch-template-for-arm',
                'Version'            => '$Default'
              }
            },

            {
              'InstanceType' => 'c5.large'
            },

            {
              'InstanceType' => 'c5a.large'
            }
          ]
        }
      },
      'VPCZoneIdentifier' => 'subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE'
    );

# To create an Auto Scaling group using attribute-based instance type selection
# This example creates an Auto Scaling group using attribute-based instance type
# selection. It requires the instance types to have a minimum of four vCPUs and
# a maximum of eight vCPUs, a minimum of 16,384 MiB of memory, and an Intel
# manufactured CPU.
    $autoscaling->CreateAutoScalingGroup(
      'AutoScalingGroupName' => 'my-asg',
      'DesiredCapacity'      => 4,
      'DesiredCapacityType'  => 'units',
      'MaxSize'              => 100,
      'MinSize'              => 0,
      'MixedInstancesPolicy' => {
        'InstancesDistribution' => {
          'OnDemandPercentageAboveBaseCapacity' => 50,
          'SpotAllocationStrategy'              => 'price-capacity-optimized'
        },
        'LaunchTemplate' => {
          'LaunchTemplateSpecification' => {
            'LaunchTemplateName' => 'my-template-for-auto-scaling',
            'Version'            => '$Default'
          },
          'Overrides' => [

            {
              'InstanceRequirements' => {
                'CpuManufacturers' => ['intel'],
                'MemoryMiB'        => {
                  'Min' => 16384
                },
                'VCpuCount' => {
                  'Max' => 8,
                  'Min' => 4
                }
              }
            }
          ]
        }
      },
      'VPCZoneIdentifier' => 'subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group. This name must be unique per Region
per account.

The name can contain any ASCII character 33 to 126 including most
punctuation characters, digits, and upper and lowercased letters.

You cannot use a colon (:) in the name.



=head2 AvailabilityZoneDistribution => L<Paws::AutoScaling::AvailabilityZoneDistribution>

The instance capacity distribution across Availability Zones.



=head2 AvailabilityZoneImpairmentPolicy => L<Paws::AutoScaling::AvailabilityZoneImpairmentPolicy>

The policy for Availability Zone impairment.



=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones where instances in the Auto Scaling group
can be created. Used for launching into the default VPC subnet in each
Availability Zone when not using the C<VPCZoneIdentifier> property, or
for attaching a network interface when an existing network interface ID
is specified in a launch template.



=head2 CapacityRebalance => Bool

Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon EC2
notifies that a Spot Instance is at an elevated risk of interruption.
After launching a new instance, it then terminates an old instance. For
more information, see Use Capacity Rebalancing to handle Amazon EC2
Spot Interruptions
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html)
in the in the I<Amazon EC2 Auto Scaling User Guide>.



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

Default: C<300> seconds



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

Default: None



=head2 DesiredCapacity => Int

The desired capacity is the initial capacity of the Auto Scaling group
at the time of its creation and the capacity it attempts to maintain.
It can scale beyond this capacity if you configure auto scaling. This
number must be greater than or equal to the minimum size of the group
and less than or equal to the maximum size of the group. If you do not
specify a desired capacity, the default is the minimum size of the
group.



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

Default: C<0> seconds



=head2 HealthCheckType => Str

A comma-separated value string of one or more health check types.

The valid values are C<EC2>, C<EBS>, C<ELB>, and C<VPC_LATTICE>. C<EC2>
is the default health check and cannot be disabled. For more
information, see Health checks for instances in an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Only specify C<EC2> if you must clear a value that was previously set.



=head2 InstanceId => Str

The ID of the instance used to base the launch configuration on. If
specified, Amazon EC2 Auto Scaling uses the configuration values from
the specified instance to create a new launch configuration. To get the
instance ID, use the Amazon EC2 DescribeInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html)
API operation. For more information, see Create an Auto Scaling group
using parameters from an existing instance
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceMaintenancePolicy => L<Paws::AutoScaling::InstanceMaintenancePolicy>

An instance maintenance policy. For more information, see Set instance
maintenance policy
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LaunchConfigurationName => Str

The name of the launch configuration to use to launch instances.

Conditional: You must specify either a launch template
(C<LaunchTemplate> or C<MixedInstancesPolicy>) or a launch
configuration (C<LaunchConfigurationName> or C<InstanceId>).



=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

Information used to specify the launch template and version to use to
launch instances.

Conditional: You must specify either a launch template
(C<LaunchTemplate> or C<MixedInstancesPolicy>) or a launch
configuration (C<LaunchConfigurationName> or C<InstanceId>).

The launch template that is specified must be configured for use with
an Auto Scaling group. For more information, see Create a launch
template for an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 LifecycleHookSpecificationList => ArrayRef[L<Paws::AutoScaling::LifecycleHookSpecification>]

One or more lifecycle hooks to add to the Auto Scaling group before
instances are launched.



=head2 LoadBalancerNames => ArrayRef[Str|Undef]

A list of Classic Load Balancers associated with this Auto Scaling
group. For Application Load Balancers, Network Load Balancers, and
Gateway Load Balancers, specify the C<TargetGroupARNs> property
instead.



=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service. The default is null. If specified, the value must be either 0
or a number equal to or greater than 86,400 seconds (1 day). For more
information, see Replace Auto Scaling instances based on maximum
instance lifetime
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> MaxSize => Int

The maximum size of the group.

With a mixed instances policy that uses instance weighting, Amazon EC2
Auto Scaling may need to go above C<MaxSize> to meet your capacity
requirements. In this event, Amazon EC2 Auto Scaling will never go
above C<MaxSize> by more than your largest instance weight (weights
that define how many units each instance contributes to the desired
capacity of the group).



=head2 B<REQUIRED> MinSize => Int

The minimum size of the group.



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

The name of the placement group into which to launch your instances.
For more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

A I<cluster> placement group is a logical grouping of instances within
a single Availability Zone. You cannot specify multiple Availability
Zones and a cluster placement group.



=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other Amazon Web Services service on your
behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
named C<AWSServiceRoleForAutoScaling>, which it creates if it does not
exist. For more information, see Service-linked roles
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 SkipZonalShiftValidation => Bool

If you enable zonal shift with cross-zone disabled load balancers,
capacity could become imbalanced across Availability Zones. To skip the
validation, specify C<true>. For more information, see Auto Scaling
group zonal shift
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 Tags => ArrayRef[L<Paws::AutoScaling::Tag>]

One or more tags. You can tag your Auto Scaling group and propagate the
tags to the Amazon EC2 instances it launches. Tags are not propagated
to Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the
tags in a launch template but use caution. If the launch template
specifies an instance tag with a key that is also specified for the
Auto Scaling group, Amazon EC2 Auto Scaling overrides the value of that
instance tag with the value specified by the Auto Scaling group. For
more information, see Tag Auto Scaling groups and instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TargetGroupARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the Elastic Load Balancing target
groups to associate with the Auto Scaling group. Instances are
registered as targets with the target groups. The target groups receive
incoming traffic and route requests to one or more registered targets.
For more information, see Use Elastic Load Balancing to distribute
traffic across the instances in your Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TerminationPolicies => ArrayRef[Str|Undef]

A policy or a list of policies that are used to select the instance to
terminate. These policies are executed in the order that you list them.
For more information, see Configure termination policies for Amazon EC2
Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid values: C<Default> | C<AllocationStrategy> |
C<ClosestToNextInstanceHour> | C<NewestInstance> | C<OldestInstance> |
C<OldestLaunchConfiguration> | C<OldestLaunchTemplate> |
C<arn:aws:lambda:region:account-id:function:my-function:my-alias>



=head2 TrafficSources => ArrayRef[L<Paws::AutoScaling::TrafficSourceIdentifier>]

The list of traffic sources to attach to this Auto Scaling group. You
can use any of the following as traffic sources for an Auto Scaling
group: Classic Load Balancer, Application Load Balancer, Gateway Load
Balancer, Network Load Balancer, and VPC Lattice.



=head2 VPCZoneIdentifier => Str

A comma-separated list of subnet IDs for a virtual private cloud (VPC)
where instances in the Auto Scaling group can be created. If you
specify C<VPCZoneIdentifier> with C<AvailabilityZones>, the subnets
that you specify must reside in those Availability Zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

