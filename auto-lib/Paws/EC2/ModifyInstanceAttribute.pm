
package Paws::EC2::ModifyInstanceAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attribute' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMappingSpecification]', traits => ['NameInRequest'], request_name => 'blockDeviceMapping' );
  has DisableApiStop => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has DisableApiTermination => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'disableApiTermination' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EbsOptimized => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'ebsOptimized' );
  has EnaSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'enaSupport' );
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'instanceInitiatedShutdownBehavior' );
  has InstanceType => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'instanceType' );
  has Kernel => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'kernel' );
  has Ramdisk => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'ramdisk' );
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'sriovNetSupport' );
  has UserData => (is => 'ro', isa => 'Paws::EC2::BlobAttributeValue', traits => ['NameInRequest'], request_name => 'userData' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceAttribute - Arguments for method ModifyInstanceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify the instance type
    # This example modifies the instance type of the specified stopped instance.
    $ec2->ModifyInstanceAttribute(
      'InstanceId'   => 'i-1234567890abcdef0',
      'InstanceType' => {
        'Value' => 'm5.large'
      }
    );

  # To enable enhanced networking
  # This example enables enhanced networking for the specified stopped instance.
    $ec2->ModifyInstanceAttribute(
      'EnaSupport' => {
        'Value' => 1
      },
      'InstanceId' => 'i-1234567890abcdef0'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The name of the attribute to modify.

When changing the instance type: If the original instance type is
configured for configurable bandwidth, and the desired instance type
doesn't support configurable bandwidth, first set the existing
bandwidth configuration to C<default> using the
ModifyInstanceNetworkPerformanceOptions operation.

You can modify the following attributes only: C<disableApiTermination>
| C<instanceType> | C<kernel> | C<ramdisk> |
C<instanceInitiatedShutdownBehavior> | C<blockDeviceMapping> |
C<userData> | C<sourceDestCheck> | C<groupSet> | C<ebsOptimized> |
C<sriovNetSupport> | C<enaSupport> | C<nvmeSupport> | C<disableApiStop>
| C<enclaveOptions>

Valid values are: C<"instanceType">, C<"kernel">, C<"ramdisk">, C<"userData">, C<"disableApiTermination">, C<"instanceInitiatedShutdownBehavior">, C<"rootDeviceName">, C<"blockDeviceMapping">, C<"productCodes">, C<"sourceDestCheck">, C<"groupSet">, C<"ebsOptimized">, C<"sriovNetSupport">, C<"enaSupport">, C<"enclaveOptions">, C<"disableApiStop">

=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMappingSpecification>]

Modifies the C<DeleteOnTermination> attribute for volumes that are
currently attached. The volume must be owned by the caller. If no value
is specified for C<DeleteOnTermination>, the default is C<true> and the
volume is deleted when the instance is terminated. You can't modify the
C<DeleteOnTermination> attribute for volumes that are attached to
Fargate tasks.

To add instance store volumes to an Amazon EBS-backed instance, you
must add them when you launch the instance. For more information, see
Update the block device mapping when launching an instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM)
in the I<Amazon EC2 User Guide>.



=head2 DisableApiStop => L<Paws::EC2::AttributeBooleanValue>

Indicates whether an instance is enabled for stop protection. For more
information, see Enable stop protection for your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).



=head2 DisableApiTermination => L<Paws::EC2::AttributeBooleanValue>

Enable or disable termination protection for the instance. If the value
is C<true>, you can't terminate the instance using the Amazon EC2
console, command line interface, or API. You can't enable termination
protection for Spot Instances.



=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => L<Paws::EC2::AttributeBooleanValue>

Specifies whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS Optimized instance.



=head2 EnaSupport => L<Paws::EC2::AttributeBooleanValue>

Set to C<true> to enable enhanced networking with ENA for the instance.

This option is supported only for HVM instances. Specifying this option
with a PV instance can make it unreachable.



=head2 Groups => ArrayRef[Str|Undef]

Replaces the security groups of the instance with the specified
security groups. You must specify the ID of at least one security
group, even if it's just the default security group for the VPC.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 InstanceInitiatedShutdownBehavior => L<Paws::EC2::AttributeValue>

Specifies whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).



=head2 InstanceType => L<Paws::EC2::AttributeValue>

Changes the instance type to the specified value. For more information,
see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>. If the instance type is not valid, the
error returned is C<InvalidInstanceAttributeValue>.



=head2 Kernel => L<Paws::EC2::AttributeValue>

Changes the instance's kernel to the specified value. We recommend that
you use PV-GRUB instead of kernels and RAM disks. For more information,
see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).



=head2 Ramdisk => L<Paws::EC2::AttributeValue>

Changes the instance's RAM disk to the specified value. We recommend
that you use PV-GRUB instead of kernels and RAM disks. For more
information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).



=head2 SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>

Enable or disable source/destination checks, which ensure that the
instance is either the source or the destination of any traffic that it
receives. If the value is C<true>, source/destination checks are
enabled; otherwise, they are disabled. The default value is C<true>.
You must disable source/destination checks if the instance runs
services such as network address translation, routing, or firewalls.



=head2 SriovNetSupport => L<Paws::EC2::AttributeValue>

Set to C<simple> to enable enhanced networking with the Intel 82599
Virtual Function interface for the instance.

There is no way to disable enhanced networking with the Intel 82599
Virtual Function interface at this time.

This option is supported only for HVM instances. Specifying this option
with a PV instance can make it unreachable.



=head2 UserData => L<Paws::EC2::BlobAttributeValue>

Changes the instance's user data to the specified value. User data must
be base64-encoded. Depending on the tool or SDK that you're using, the
base64-encoding might be performed for you. For more information, see
Work with instance user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-add-user-data.html).



=head2 Value => Str

A new value for the attribute. Use only with the C<kernel>, C<ramdisk>,
C<userData>, C<disableApiTermination>, or
C<instanceInitiatedShutdownBehavior> attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

