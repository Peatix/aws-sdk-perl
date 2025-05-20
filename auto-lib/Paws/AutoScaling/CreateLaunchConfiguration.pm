
package Paws::AutoScaling::CreateLaunchConfiguration;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::BlockDeviceMapping]');
  has ClassicLinkVPCId => (is => 'ro', isa => 'Str');
  has ClassicLinkVPCSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceMonitoring => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has MetadataOptions => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMetadataOptions');
  has PlacementTenancy => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateLaunchConfiguration - Arguments for method CreateLaunchConfiguration on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchConfiguration on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CreateLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchConfiguration.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create a launch configuration
    # This example creates a launch configuration.
    $autoscaling->CreateLaunchConfiguration(
      'IamInstanceProfile'      => 'my-iam-role',
      'ImageId'                 => 'ami-12345678',
      'InstanceType'            => 'm3.medium',
      'LaunchConfigurationName' => 'my-launch-config',
      'SecurityGroups'          => ['sg-eb2af88e']
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

Specifies whether to assign a public IPv4 address to the group's
instances. If the instance is launched into a default subnet, the
default is to assign a public IPv4 address, unless you disabled the
option to assign a public IPv4 address on the subnet. If the instance
is launched into a nondefault subnet, the default is not to assign a
public IPv4 address, unless you enabled the option to assign a public
IPv4 address on the subnet.

If you specify C<true>, each instance in the Auto Scaling group
receives a unique public IPv4 address. For more information, see
Provide network connectivity for your Auto Scaling instances using
Amazon VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

If you specify this property, you must specify at least one subnet for
C<VPCZoneIdentifier> when you create your group.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::AutoScaling::BlockDeviceMapping>]

The block device mapping entries that define the block devices to
attach to the instances at launch. By default, the block devices
specified in the block device mapping for the AMI are used. For more
information, see Block device mappings
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 ClassicLinkVPCId => Str

Available for backward compatibility.



=head2 ClassicLinkVPCSecurityGroups => ArrayRef[Str|Undef]

Available for backward compatibility.



=head2 EbsOptimized => Bool

Specifies whether the launch configuration is optimized for EBS I/O
(C<true>) or not (C<false>). The optimization provides dedicated
throughput to Amazon EBS and an optimized configuration stack to
provide optimal I/O performance. This optimization is not available
with all instance types. Additional fees are incurred when you enable
EBS optimization for an instance type that is not EBS-optimized by
default. For more information, see Amazon EBS-optimized instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

The default value is C<false>.



=head2 IamInstanceProfile => Str

The name or the Amazon Resource Name (ARN) of the instance profile
associated with the IAM role for the instance. The instance profile
contains the IAM role. For more information, see IAM role for
applications that run on Amazon EC2 instances
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI) that was assigned during
registration. For more information, see Find a Linux AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

If you specify C<InstanceId>, an C<ImageId> is not required.



=head2 InstanceId => Str

The ID of the instance to use to create the launch configuration. The
new launch configuration derives attributes from the instance, except
for the block device mapping.

To create a launch configuration with a block device mapping or
override any other instance attributes, specify them as part of the
same request.

For more information, see Create a launch configuration
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceMonitoring => L<Paws::AutoScaling::InstanceMonitoring>

Controls whether instances in this group are launched with detailed
(C<true>) or basic (C<false>) monitoring.

The default value is C<true> (enabled).

When detailed monitoring is enabled, Amazon CloudWatch generates
metrics every minute and your account is charged a fee. When you
disable detailed monitoring, CloudWatch generates metrics every 5
minutes. For more information, see Configure monitoring for Auto
Scaling instances
(https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 InstanceType => Str

Specifies the instance type of the EC2 instance. For information about
available instance types, see Available instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes)
in the I<Amazon EC2 User Guide for Linux Instances>.

If you specify C<InstanceId>, an C<InstanceType> is not required.



=head2 KernelId => Str

The ID of the kernel associated with the AMI.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User provided kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 KeyName => Str

The name of the key pair. For more information, see Amazon EC2 key
pairs and Amazon EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 B<REQUIRED> LaunchConfigurationName => Str

The name of the launch configuration. This name must be unique per
Region per account.



=head2 MetadataOptions => L<Paws::AutoScaling::InstanceMetadataOptions>

The metadata options for the instances. For more information, see
Configure the instance metadata options
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 PlacementTenancy => Str

The tenancy of the instance, either C<default> or C<dedicated>. An
instance with C<dedicated> tenancy runs on isolated, single-tenant
hardware and can only be launched into a VPC. To launch dedicated
instances into a shared tenancy VPC (a VPC with the instance placement
tenancy attribute set to C<default>), you must set the value of this
property to C<dedicated>.

If you specify C<PlacementTenancy>, you must specify at least one
subnet for C<VPCZoneIdentifier> when you create your group.

Valid values: C<default> | C<dedicated>



=head2 RamdiskId => Str

The ID of the RAM disk to select.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User provided kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 SecurityGroups => ArrayRef[Str|Undef]

A list that contains the security group IDs to assign to the instances
in the Auto Scaling group. For more information, see Control traffic to
your Amazon Web Services resources using security groups
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
in the I<Amazon Virtual Private Cloud User Guide>.



=head2 SpotPrice => Str

The maximum hourly price to be paid for any Spot Instance launched to
fulfill the request. Spot Instances are launched when the price you
specify exceeds the current Spot price. For more information, see
Request Spot Instances for fault-tolerant and flexible applications
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid Range: Minimum value of 0.001

When you change your maximum price by creating a new launch
configuration, running instances will continue to run as long as the
maximum price for those running instances is higher than the current
Spot price.



=head2 UserData => Str

The user data to make available to the launched EC2 instances. For more
information, see Instance metadata and user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
(Linux) and Instance metadata and user data
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html)
(Windows). If you are using a command line tool, base64-encoding is
performed for you, and you can load the text from a file. Otherwise,
you must provide base64-encoded text. User data is limited to 16 KB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchConfiguration in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

