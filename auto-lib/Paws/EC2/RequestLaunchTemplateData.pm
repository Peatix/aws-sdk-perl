package Paws::EC2::RequestLaunchTemplateData;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateBlockDeviceMappingRequest]', request_name => 'BlockDeviceMapping', traits => ['NameInRequest']);
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCapacityReservationSpecificationRequest');
  has CpuOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateCpuOptionsRequest');
  has CreditSpecification => (is => 'ro', isa => 'Paws::EC2::CreditSpecificationRequest');
  has DisableApiStop => (is => 'ro', isa => 'Bool');
  has DisableApiTermination => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has ElasticGpuSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuSpecification]', request_name => 'ElasticGpuSpecification', traits => ['NameInRequest']);
  has ElasticInferenceAccelerators => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateElasticInferenceAccelerator]', request_name => 'ElasticInferenceAccelerator', traits => ['NameInRequest']);
  has EnclaveOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateEnclaveOptionsRequest');
  has HibernationOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateHibernationOptionsRequest');
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateIamInstanceProfileSpecificationRequest');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceMarketOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateInstanceMarketOptionsRequest');
  has InstanceRequirements => (is => 'ro', isa => 'Paws::EC2::InstanceRequirementsRequest');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LicenseSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateLicenseConfigurationRequest]', request_name => 'LicenseSpecification', traits => ['NameInRequest']);
  has MaintenanceOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateInstanceMaintenanceOptionsRequest');
  has MetadataOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateInstanceMetadataOptionsRequest');
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatesMonitoringRequest');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]', request_name => 'NetworkInterface', traits => ['NameInRequest']);
  has NetworkPerformanceOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateNetworkPerformanceOptionsRequest');
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorRequest');
  has Placement => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatePlacementRequest');
  has PrivateDnsNameOptions => (is => 'ro', isa => 'Paws::EC2::LaunchTemplatePrivateDnsNameOptionsRequest');
  has RamDiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroup', traits => ['NameInRequest']);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateTagSpecificationRequest]', request_name => 'TagSpecification', traits => ['NameInRequest']);
  has UserData => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestLaunchTemplateData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RequestLaunchTemplateData object:

  $service_obj->Method(Att1 => { BlockDeviceMappings => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RequestLaunchTemplateData object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDeviceMappings

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::LaunchTemplateBlockDeviceMappingRequest>]

The block device mapping.


=head2 CapacityReservationSpecification => L<Paws::EC2::LaunchTemplateCapacityReservationSpecificationRequest>

The Capacity Reservation targeting option. If you do not specify this
parameter, the instance's Capacity Reservation preference defaults to
C<open>, which enables it to run in any open Capacity Reservation that
has matching attributes (instance type, platform, Availability Zone).


=head2 CpuOptions => L<Paws::EC2::LaunchTemplateCpuOptionsRequest>

The CPU options for the instance. For more information, see CPU options
for Amazon EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon EC2 User Guide>.


=head2 CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>

The credit option for CPU usage of the instance. Valid only for T
instances.


=head2 DisableApiStop => Bool

Indicates whether to enable the instance for stop protection. For more
information, see Enable stop protection for your EC2 instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html)
in the I<Amazon EC2 User Guide>.


=head2 DisableApiTermination => Bool

Indicates whether termination protection is enabled for the instance.
The default is C<false>, which means that you can terminate the
instance using the Amazon EC2 console, command line tools, or API. You
can enable termination protection when you launch an instance, while
the instance is running, or while the instance is stopped.


=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.


=head2 ElasticGpuSpecifications => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]

Deprecated.

Amazon Elastic Graphics reached end of life on January 8, 2024.


=head2 ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::LaunchTemplateElasticInferenceAccelerator>]

Amazon Elastic Inference is no longer available.

An elastic inference accelerator to associate with the instance.
Elastic inference accelerators are a resource you can attach to your
Amazon EC2 instances to accelerate your Deep Learning (DL) inference
workloads.

You cannot specify accelerators from different generations in the same
request.


=head2 EnclaveOptions => L<Paws::EC2::LaunchTemplateEnclaveOptionsRequest>

Indicates whether the instance is enabled for Amazon Web Services Nitro
Enclaves. For more information, see What is Nitro Enclaves?
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html)
in the I<Amazon Web Services Nitro Enclaves User Guide>.

You can't enable Amazon Web Services Nitro Enclaves and hibernation on
the same instance.


=head2 HibernationOptions => L<Paws::EC2::LaunchTemplateHibernationOptionsRequest>

Indicates whether an instance is enabled for hibernation. This
parameter is valid only if the instance meets the hibernation
prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
For more information, see Hibernate your Amazon EC2 instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon EC2 User Guide>.


=head2 IamInstanceProfile => L<Paws::EC2::LaunchTemplateIamInstanceProfileSpecificationRequest>

The name or Amazon Resource Name (ARN) of an IAM instance profile.


=head2 ImageId => Str

The ID of the AMI in the format C<ami-0ac394d6a3example>.

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

If the launch template will be used for an EC2 Fleet or Spot Fleet,
note the following:

=over

=item *

Only EC2 Fleets of type C<instant> support specifying a Systems Manager
parameter.

=item *

For EC2 Fleets of type C<maintain> or C<request>, or for Spot Fleets,
you must specify the AMI ID.

=back



=head2 InstanceInitiatedShutdownBehavior => Str

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>


=head2 InstanceMarketOptions => L<Paws::EC2::LaunchTemplateInstanceMarketOptionsRequest>

The market (purchasing) option for the instances.


=head2 InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>

The attributes for the instance types. When you specify instance
attributes, Amazon EC2 will identify instance types with these
attributes.

You must specify C<VCpuCount> and C<MemoryMiB>. All other attributes
are optional. Any unspecified optional attribute is set to its default.

When you specify multiple attributes, you get instance types that
satisfy all of the specified attributes. If you specify multiple values
for an attribute, you get instance types that satisfy any of the
specified values.

To limit the list of instance types from which Amazon EC2 can identify
matching instance types, you can use one of the following parameters,
but not both in the same request:

=over

=item *

C<AllowedInstanceTypes> - The instance types to include in the list.
All other instance types are ignored, even if they match your specified
attributes.

=item *

C<ExcludedInstanceTypes> - The instance types to exclude from the list,
even if they match your specified attributes.

=back

If you specify C<InstanceRequirements>, you can't specify
C<InstanceType>.

Attribute-based instance type selection is only supported when using
Auto Scaling groups, EC2 Fleet, and Spot Fleet to launch instances. If
you plan to use the launch template in the launch instance wizard
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-instance-wizard.html),
or with the RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
API or AWS::EC2::Instance
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html)
Amazon Web Services CloudFormation resource, you can't specify
C<InstanceRequirements>.

For more information, see Specify attributes for instance type
selection for EC2 Fleet or Spot Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html)
and Spot placement score
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
in the I<Amazon EC2 User Guide>.


=head2 InstanceType => Str

The instance type. For more information, see Amazon EC2 instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.

If you specify C<InstanceType>, you can't specify
C<InstanceRequirements>.


=head2 KernelId => Str

The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User provided kernels
(https://docs.aws.amazon.com/linux/al2/ug/UserProvidedKernels.html) in
the I<Amazon Linux 2 User Guide>.


=head2 KeyName => Str

The name of the key pair. You can create a key pair using CreateKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html)
or ImportKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.


=head2 LicenseSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateLicenseConfigurationRequest>]

The license configurations.


=head2 MaintenanceOptions => L<Paws::EC2::LaunchTemplateInstanceMaintenanceOptionsRequest>

The maintenance options for the instance.


=head2 MetadataOptions => L<Paws::EC2::LaunchTemplateInstanceMetadataOptionsRequest>

The metadata options for the instance. For more information, see
Configure the Instance Metadata Service options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html)
in the I<Amazon EC2 User Guide>.


=head2 Monitoring => L<Paws::EC2::LaunchTemplatesMonitoringRequest>

The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>]

The network interfaces for the instance.


=head2 NetworkPerformanceOptions => L<Paws::EC2::LaunchTemplateNetworkPerformanceOptionsRequest>

Contains launch template settings to boost network performance for the
type of workload that runs on your instance.


=head2 Operator => L<Paws::EC2::OperatorRequest>

The entity that manages the launch template.


=head2 Placement => L<Paws::EC2::LaunchTemplatePlacementRequest>

The placement for the instance.


=head2 PrivateDnsNameOptions => L<Paws::EC2::LaunchTemplatePrivateDnsNameOptionsRequest>

The options for the instance hostname. The default values are inherited
from the subnet.


=head2 RamDiskId => Str

The ID of the RAM disk.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see User provided kernels
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon EC2 User Guide>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups.

If you specify a network interface, you must specify any security
groups as part of the network interface instead of using this
parameter.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The names of the security groups. For a nondefault VPC, you must use
security group IDs instead.

If you specify a network interface, you must specify any security
groups as part of the network interface instead of using this
parameter.


=head2 TagSpecifications => ArrayRef[L<Paws::EC2::LaunchTemplateTagSpecificationRequest>]

The tags to apply to the resources that are created during instance
launch. These tags are not applied to the launch template.


=head2 UserData => Str

The user data to make available to the instance. You must provide
base64-encoded text. User data is limited to 16 KB. For more
information, see Run commands when you launch an EC2 instance with user
data input
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) in
the I<Amazon EC2 User Guide>.

If you are creating the launch template for use with Batch, the user
data must be provided in the MIME multi-part archive format
(https://cloudinit.readthedocs.io/en/latest/topics/format.html#mime-multi-part-archive).
For more information, see Amazon EC2 user data in launch templates
(https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html#lt-user-data)
in the I<Batch User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
