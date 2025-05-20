package Paws::EC2::FleetLaunchTemplateOverridesRequest;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetBlockDeviceMappingRequest]', request_name => 'BlockDeviceMapping', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceRequirements => (is => 'ro', isa => 'Paws::EC2::InstanceRequirementsRequest');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement');
  has Priority => (is => 'ro', isa => 'Num');
  has SubnetId => (is => 'ro', isa => 'Str');
  has WeightedCapacity => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetLaunchTemplateOverridesRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetLaunchTemplateOverridesRequest object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetLaunchTemplateOverridesRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which to launch the instances.


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::FleetBlockDeviceMappingRequest>]

The block device mappings, which define the EBS volumes and instance
store volumes to attach to the instance at launch.

Supported only for fleets of type C<instant>.

For more information, see Block device mappings for volumes on Amazon
EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html)
in the I<Amazon EC2 User Guide>.


=head2 ImageId => Str

The ID of the AMI in the format C<ami-17characters00000>.

Alternatively, you can specify a Systems Manager parameter, using one
of the following formats. The Systems Manager parameter will resolve to
an AMI ID on launch.

To reference a public parameter:

=over

=item *

C<resolve:ssm:I<public-parameter>>

=back

To reference a parameter stored in the same account:

=over

=item *

C<resolve:ssm:I<parameter-name>>

=item *

C<resolve:ssm:I<parameter-name:version-number>>

=item *

C<resolve:ssm:I<parameter-name:label>>

=back

To reference a parameter shared from another Amazon Web Services
account:

=over

=item *

C<resolve:ssm:I<parameter-ARN>>

=item *

C<resolve:ssm:I<parameter-ARN:version-number>>

=item *

C<resolve:ssm:I<parameter-ARN:label>>

=back

For more information, see Use a Systems Manager parameter instead of an
AMI ID
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id)
in the I<Amazon EC2 User Guide>.

This parameter is only available for fleets of type C<instant>. For
fleets of type C<maintain> and C<request>, you must specify the AMI ID
in the launch template.


=head2 InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>

The attributes for the instance types. When you specify instance
attributes, Amazon EC2 will identify instance types with those
attributes.

If you specify C<InstanceRequirements>, you can't specify
C<InstanceType>.


=head2 InstanceType => Str

The instance type.

C<mac1.metal> is not supported as a launch template override.

If you specify C<InstanceType>, you can't specify
C<InstanceRequirements>.


=head2 MaxPrice => Str

The maximum price per unit hour that you are willing to pay for a Spot
Instance. We do not recommend using this parameter because it can lead
to increased interruptions. If you do not specify this parameter, you
will pay the current Spot price.

If you specify a maximum price, your instances will be interrupted more
frequently than if you do not specify this parameter.

If you specify a maximum price, it must be more than USD $0.001.
Specifying a value below USD $0.001 will result in an
C<InvalidParameterValue> error message.


=head2 Placement => L<Paws::EC2::Placement>

The location where the instance launched, if applicable.


=head2 Priority => Num

The priority for the launch template override. The highest priority is
launched first.

If the On-Demand C<AllocationStrategy> is set to C<prioritized>, EC2
Fleet uses priority to determine which launch template override to use
first in fulfilling On-Demand capacity.

If the Spot C<AllocationStrategy> is set to
C<capacity-optimized-prioritized>, EC2 Fleet uses priority on a
best-effort basis to determine which launch template override to use in
fulfilling Spot capacity, but optimizes for capacity first.

Valid values are whole numbers starting at C<0>. The lower the number,
the higher the priority. If no number is set, the launch template
override has the lowest priority. You can set the same priority for
different launch template overrides.


=head2 SubnetId => Str

The IDs of the subnets in which to launch the instances. Separate
multiple subnet IDs using commas (for example,
C<subnet-1234abcdeexample1, subnet-0987cdef6example2>). A request of
type C<instant> can have only one subnet ID.


=head2 WeightedCapacity => Num

The number of units provided by the specified instance type. These are
the same units that you chose to set the target capacity in terms of
instances, or a performance characteristic such as vCPUs, memory, or
I/O.

If the target capacity divided by this value is not a whole number,
Amazon EC2 rounds the number of instances to the next whole number. If
this value is not specified, the default is 1.

When specifying weights, the price used in the C<lowest-price> and
C<price-capacity-optimized> allocation strategies is per I<unit> hour
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
