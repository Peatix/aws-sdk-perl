
package Paws::EC2::RunInstances;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'additionalInfo' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::CapacityReservationSpecification');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has CpuOptions => (is => 'ro', isa => 'Paws::EC2::CpuOptionsRequest');
  has CreditSpecification => (is => 'ro', isa => 'Paws::EC2::CreditSpecificationRequest');
  has DisableApiStop => (is => 'ro', isa => 'Bool');
  has DisableApiTermination => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableApiTermination' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ebsOptimized' );
  has ElasticGpuSpecification => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuSpecification]');
  has ElasticInferenceAccelerators => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticInferenceAccelerator]', traits => ['NameInRequest'], request_name => 'ElasticInferenceAccelerator' );
  has EnablePrimaryIpv6 => (is => 'ro', isa => 'Bool');
  has EnclaveOptions => (is => 'ro', isa => 'Paws::EC2::EnclaveOptionsRequest');
  has HibernationOptions => (is => 'ro', isa => 'Paws::EC2::HibernationOptionsRequest');
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfileSpecification', traits => ['NameInRequest'], request_name => 'iamInstanceProfile' );
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceInitiatedShutdownBehavior' );
  has InstanceMarketOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMarketOptionsRequest');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Ipv6AddressCount => (is => 'ro', isa => 'Int');
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', traits => ['NameInRequest'], request_name => 'Ipv6Address' );
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateSpecification');
  has LicenseSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LicenseConfigurationRequest]', traits => ['NameInRequest'], request_name => 'LicenseSpecification' );
  has MaintenanceOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMaintenanceOptionsRequest');
  has MaxCount => (is => 'ro', isa => 'Int', required => 1);
  has MetadataOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMetadataOptionsRequest');
  has MinCount => (is => 'ro', isa => 'Int', required => 1);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::RunInstancesMonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['NameInRequest'], request_name => 'networkInterface' );
  has NetworkPerformanceOptions => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkPerformanceOptionsRequest');
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorRequest');
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement');
  has PrivateDnsNameOptions => (is => 'ro', isa => 'Paws::EC2::PrivateDnsNameOptionsRequest');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroup' );
  has SubnetId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::Reservation');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunInstances - Arguments for method RunInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RunInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To launch an instance
    # This example launches an instance using the specified AMI, instance type,
    # security group, subnet, block device mapping, and tags.
    my $Reservation = $ec2->RunInstances(
      'BlockDeviceMappings' => [

        {
          'DeviceName' => '/dev/sdh',
          'Ebs'        => {
            'VolumeSize' => 100
          }
        }
      ],
      'ImageId'           => 'ami-abc12345',
      'InstanceType'      => 't2.micro',
      'KeyName'           => 'my-key-pair',
      'MaxCount'          => 1,
      'MinCount'          => 1,
      'SecurityGroupIds'  => ['sg-1a2b3c4d'],
      'SubnetId'          => 'subnet-6e7f829e',
      'TagSpecifications' => [

        {
          'ResourceType' => 'instance',
          'Tags'         => [

            {
              'Key'   => 'Purpose',
              'Value' => 'test'
            }
          ]
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RunInstances>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

The block device mapping, which defines the EBS volumes and instance
store volumes to attach to the instance at launch. For more
information, see Block device mappings
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html)
in the I<Amazon EC2 User Guide>.



=head2 CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>

Information about the Capacity Reservation targeting option. If you do
not specify this parameter, the instance's Capacity Reservation
preference defaults to C<open>, which enables it to run in any open
Capacity Reservation that has matching attributes (instance type,
platform, Availability Zone, and tenancy).



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, a randomly
generated token is used for the request to ensure idempotency.

For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraints: Maximum 64 ASCII characters



=head2 CpuOptions => L<Paws::EC2::CpuOptionsRequest>

The CPU options for the instance. For more information, see Optimize
CPU options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)
in the I<Amazon EC2 User Guide>.



=head2 CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>

The credit option for CPU usage of the burstable performance instance.
Valid values are C<standard> and C<unlimited>. To change this attribute
after launch, use ModifyInstanceCreditSpecification
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html).
For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.

Default: C<standard> (T2 instances) or C<unlimited> (T3/T3a/T4g
instances)

For T3 instances with C<host> tenancy, only C<standard> is supported.



=head2 DisableApiStop => Bool

Indicates whether an instance is enabled for stop protection. For more
information, see Stop protection
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).



=head2 DisableApiTermination => Bool

Indicates whether termination protection is enabled for the instance.
The default is C<false>, which means that you can terminate the
instance using the Amazon EC2 console, command line tools, or API. You
can enable termination protection when you launch an instance, while
the instance is running, or while the instance is stopped.



=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.

Default: C<false>



=head2 ElasticGpuSpecification => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]

An elastic GPU to associate with the instance.

Amazon Elastic Graphics reached end of life on January 8, 2024.



=head2 ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::ElasticInferenceAccelerator>]

An elastic inference accelerator to associate with the instance.

Amazon Elastic Inference is no longer available.



=head2 EnablePrimaryIpv6 => Bool

If youE<rsquo>re launching an instance into a dual-stack or IPv6-only
subnet, you can enable assigning a primary IPv6 address. A primary IPv6
address is an IPv6 GUA address associated with an ENI that you have
enabled to use a primary IPv6 address. Use this option if an instance
relies on its IPv6 address not changing. When you launch the instance,
Amazon Web Services will automatically assign an IPv6 address
associated with the ENI attached to your instance to be the primary
IPv6 address. Once you enable an IPv6 GUA address to be a primary IPv6,
you cannot disable it. When you enable an IPv6 GUA address to be a
primary IPv6, the first IPv6 GUA will be made the primary IPv6 address
until the instance is terminated or the network interface is detached.
If you have multiple IPv6 addresses associated with an ENI attached to
your instance and you enable a primary IPv6 address, the first IPv6 GUA
address associated with the ENI becomes the primary IPv6 address.



=head2 EnclaveOptions => L<Paws::EC2::EnclaveOptionsRequest>

Indicates whether the instance is enabled for Amazon Web Services Nitro
Enclaves. For more information, see What is Amazon Web Services Nitro
Enclaves?
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html)
in the I<Amazon Web Services Nitro Enclaves User Guide>.

You can't enable Amazon Web Services Nitro Enclaves and hibernation on
the same instance.



=head2 HibernationOptions => L<Paws::EC2::HibernationOptionsRequest>

Indicates whether an instance is enabled for hibernation. This
parameter is valid only if the instance meets the hibernation
prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
For more information, see Hibernate your Amazon EC2 instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon EC2 User Guide>.

You can't enable hibernation and Amazon Web Services Nitro Enclaves on
the same instance.



=head2 IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

The name or Amazon Resource Name (ARN) of an IAM instance profile.



=head2 ImageId => Str

The ID of the AMI. An AMI ID is required to launch an instance and must
be specified here or in a launch template.



=head2 InstanceInitiatedShutdownBehavior => Str

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).

Default: C<stop>

Valid values are: C<"stop">, C<"terminate">

=head2 InstanceMarketOptions => L<Paws::EC2::InstanceMarketOptionsRequest>

The market (purchasing) option for the instances.

For RunInstances, persistent Spot Instance requests are only supported
when B<InstanceInterruptionBehavior> is set to either C<hibernate> or
C<stop>.



=head2 InstanceType => Str

The instance type. For more information, see Amazon EC2 instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"a1.medium">, C<"a1.large">, C<"a1.xlarge">, C<"a1.2xlarge">, C<"a1.4xlarge">, C<"a1.metal">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5.metal">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"c5ad.large">, C<"c5ad.xlarge">, C<"c5ad.2xlarge">, C<"c5ad.4xlarge">, C<"c5ad.8xlarge">, C<"c5ad.12xlarge">, C<"c5ad.16xlarge">, C<"c5ad.24xlarge">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.12xlarge">, C<"c5d.18xlarge">, C<"c5d.24xlarge">, C<"c5d.metal">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"c5n.metal">, C<"c6g.medium">, C<"c6g.large">, C<"c6g.xlarge">, C<"c6g.2xlarge">, C<"c6g.4xlarge">, C<"c6g.8xlarge">, C<"c6g.12xlarge">, C<"c6g.16xlarge">, C<"c6g.metal">, C<"c6gd.medium">, C<"c6gd.large">, C<"c6gd.xlarge">, C<"c6gd.2xlarge">, C<"c6gd.4xlarge">, C<"c6gd.8xlarge">, C<"c6gd.12xlarge">, C<"c6gd.16xlarge">, C<"c6gd.metal">, C<"c6gn.medium">, C<"c6gn.large">, C<"c6gn.xlarge">, C<"c6gn.2xlarge">, C<"c6gn.4xlarge">, C<"c6gn.8xlarge">, C<"c6gn.12xlarge">, C<"c6gn.16xlarge">, C<"c6i.large">, C<"c6i.xlarge">, C<"c6i.2xlarge">, C<"c6i.4xlarge">, C<"c6i.8xlarge">, C<"c6i.12xlarge">, C<"c6i.16xlarge">, C<"c6i.24xlarge">, C<"c6i.32xlarge">, C<"c6i.metal">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"cg1.4xlarge">, C<"cr1.8xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">, C<"d3.xlarge">, C<"d3.2xlarge">, C<"d3.4xlarge">, C<"d3.8xlarge">, C<"d3en.xlarge">, C<"d3en.2xlarge">, C<"d3en.4xlarge">, C<"d3en.6xlarge">, C<"d3en.8xlarge">, C<"d3en.12xlarge">, C<"dl1.24xlarge">, C<"f1.2xlarge">, C<"f1.4xlarge">, C<"f1.16xlarge">, C<"g2.2xlarge">, C<"g2.8xlarge">, C<"g3.4xlarge">, C<"g3.8xlarge">, C<"g3.16xlarge">, C<"g3s.xlarge">, C<"g4ad.xlarge">, C<"g4ad.2xlarge">, C<"g4ad.4xlarge">, C<"g4ad.8xlarge">, C<"g4ad.16xlarge">, C<"g4dn.xlarge">, C<"g4dn.2xlarge">, C<"g4dn.4xlarge">, C<"g4dn.8xlarge">, C<"g4dn.12xlarge">, C<"g4dn.16xlarge">, C<"g4dn.metal">, C<"g5.xlarge">, C<"g5.2xlarge">, C<"g5.4xlarge">, C<"g5.8xlarge">, C<"g5.12xlarge">, C<"g5.16xlarge">, C<"g5.24xlarge">, C<"g5.48xlarge">, C<"g5g.xlarge">, C<"g5g.2xlarge">, C<"g5g.4xlarge">, C<"g5g.8xlarge">, C<"g5g.16xlarge">, C<"g5g.metal">, C<"hi1.4xlarge">, C<"hpc6a.48xlarge">, C<"hs1.8xlarge">, C<"h1.2xlarge">, C<"h1.4xlarge">, C<"h1.8xlarge">, C<"h1.16xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"i3.large">, C<"i3.xlarge">, C<"i3.2xlarge">, C<"i3.4xlarge">, C<"i3.8xlarge">, C<"i3.16xlarge">, C<"i3.metal">, C<"i3en.large">, C<"i3en.xlarge">, C<"i3en.2xlarge">, C<"i3en.3xlarge">, C<"i3en.6xlarge">, C<"i3en.12xlarge">, C<"i3en.24xlarge">, C<"i3en.metal">, C<"im4gn.large">, C<"im4gn.xlarge">, C<"im4gn.2xlarge">, C<"im4gn.4xlarge">, C<"im4gn.8xlarge">, C<"im4gn.16xlarge">, C<"inf1.xlarge">, C<"inf1.2xlarge">, C<"inf1.6xlarge">, C<"inf1.24xlarge">, C<"is4gen.medium">, C<"is4gen.large">, C<"is4gen.xlarge">, C<"is4gen.2xlarge">, C<"is4gen.4xlarge">, C<"is4gen.8xlarge">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m4.16xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5.metal">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5d.metal">, C<"m5dn.large">, C<"m5dn.xlarge">, C<"m5dn.2xlarge">, C<"m5dn.4xlarge">, C<"m5dn.8xlarge">, C<"m5dn.12xlarge">, C<"m5dn.16xlarge">, C<"m5dn.24xlarge">, C<"m5dn.metal">, C<"m5n.large">, C<"m5n.xlarge">, C<"m5n.2xlarge">, C<"m5n.4xlarge">, C<"m5n.8xlarge">, C<"m5n.12xlarge">, C<"m5n.16xlarge">, C<"m5n.24xlarge">, C<"m5n.metal">, C<"m5zn.large">, C<"m5zn.xlarge">, C<"m5zn.2xlarge">, C<"m5zn.3xlarge">, C<"m5zn.6xlarge">, C<"m5zn.12xlarge">, C<"m5zn.metal">, C<"m6a.large">, C<"m6a.xlarge">, C<"m6a.2xlarge">, C<"m6a.4xlarge">, C<"m6a.8xlarge">, C<"m6a.12xlarge">, C<"m6a.16xlarge">, C<"m6a.24xlarge">, C<"m6a.32xlarge">, C<"m6a.48xlarge">, C<"m6g.metal">, C<"m6g.medium">, C<"m6g.large">, C<"m6g.xlarge">, C<"m6g.2xlarge">, C<"m6g.4xlarge">, C<"m6g.8xlarge">, C<"m6g.12xlarge">, C<"m6g.16xlarge">, C<"m6gd.metal">, C<"m6gd.medium">, C<"m6gd.large">, C<"m6gd.xlarge">, C<"m6gd.2xlarge">, C<"m6gd.4xlarge">, C<"m6gd.8xlarge">, C<"m6gd.12xlarge">, C<"m6gd.16xlarge">, C<"m6i.large">, C<"m6i.xlarge">, C<"m6i.2xlarge">, C<"m6i.4xlarge">, C<"m6i.8xlarge">, C<"m6i.12xlarge">, C<"m6i.16xlarge">, C<"m6i.24xlarge">, C<"m6i.32xlarge">, C<"m6i.metal">, C<"mac1.metal">, C<"p2.xlarge">, C<"p2.8xlarge">, C<"p2.16xlarge">, C<"p3.2xlarge">, C<"p3.8xlarge">, C<"p3.16xlarge">, C<"p3dn.24xlarge">, C<"p4d.24xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5.metal">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"r5b.large">, C<"r5b.xlarge">, C<"r5b.2xlarge">, C<"r5b.4xlarge">, C<"r5b.8xlarge">, C<"r5b.12xlarge">, C<"r5b.16xlarge">, C<"r5b.24xlarge">, C<"r5b.metal">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"r5d.metal">, C<"r5dn.large">, C<"r5dn.xlarge">, C<"r5dn.2xlarge">, C<"r5dn.4xlarge">, C<"r5dn.8xlarge">, C<"r5dn.12xlarge">, C<"r5dn.16xlarge">, C<"r5dn.24xlarge">, C<"r5dn.metal">, C<"r5n.large">, C<"r5n.xlarge">, C<"r5n.2xlarge">, C<"r5n.4xlarge">, C<"r5n.8xlarge">, C<"r5n.12xlarge">, C<"r5n.16xlarge">, C<"r5n.24xlarge">, C<"r5n.metal">, C<"r6g.medium">, C<"r6g.large">, C<"r6g.xlarge">, C<"r6g.2xlarge">, C<"r6g.4xlarge">, C<"r6g.8xlarge">, C<"r6g.12xlarge">, C<"r6g.16xlarge">, C<"r6g.metal">, C<"r6gd.medium">, C<"r6gd.large">, C<"r6gd.xlarge">, C<"r6gd.2xlarge">, C<"r6gd.4xlarge">, C<"r6gd.8xlarge">, C<"r6gd.12xlarge">, C<"r6gd.16xlarge">, C<"r6gd.metal">, C<"r6i.large">, C<"r6i.xlarge">, C<"r6i.2xlarge">, C<"r6i.4xlarge">, C<"r6i.8xlarge">, C<"r6i.12xlarge">, C<"r6i.16xlarge">, C<"r6i.24xlarge">, C<"r6i.32xlarge">, C<"r6i.metal">, C<"t1.micro">, C<"t2.nano">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"t2.xlarge">, C<"t2.2xlarge">, C<"t3.nano">, C<"t3.micro">, C<"t3.small">, C<"t3.medium">, C<"t3.large">, C<"t3.xlarge">, C<"t3.2xlarge">, C<"t3a.nano">, C<"t3a.micro">, C<"t3a.small">, C<"t3a.medium">, C<"t3a.large">, C<"t3a.xlarge">, C<"t3a.2xlarge">, C<"t4g.nano">, C<"t4g.micro">, C<"t4g.small">, C<"t4g.medium">, C<"t4g.large">, C<"t4g.xlarge">, C<"t4g.2xlarge">, C<"u-6tb1.56xlarge">, C<"u-6tb1.112xlarge">, C<"u-9tb1.112xlarge">, C<"u-12tb1.112xlarge">, C<"u-6tb1.metal">, C<"u-9tb1.metal">, C<"u-12tb1.metal">, C<"u-18tb1.metal">, C<"u-24tb1.metal">, C<"vt1.3xlarge">, C<"vt1.6xlarge">, C<"vt1.24xlarge">, C<"x1.16xlarge">, C<"x1.32xlarge">, C<"x1e.xlarge">, C<"x1e.2xlarge">, C<"x1e.4xlarge">, C<"x1e.8xlarge">, C<"x1e.16xlarge">, C<"x1e.32xlarge">, C<"x2iezn.2xlarge">, C<"x2iezn.4xlarge">, C<"x2iezn.6xlarge">, C<"x2iezn.8xlarge">, C<"x2iezn.12xlarge">, C<"x2iezn.metal">, C<"x2gd.medium">, C<"x2gd.large">, C<"x2gd.xlarge">, C<"x2gd.2xlarge">, C<"x2gd.4xlarge">, C<"x2gd.8xlarge">, C<"x2gd.12xlarge">, C<"x2gd.16xlarge">, C<"x2gd.metal">, C<"z1d.large">, C<"z1d.xlarge">, C<"z1d.2xlarge">, C<"z1d.3xlarge">, C<"z1d.6xlarge">, C<"z1d.12xlarge">, C<"z1d.metal">, C<"x2idn.16xlarge">, C<"x2idn.24xlarge">, C<"x2idn.32xlarge">, C<"x2iedn.xlarge">, C<"x2iedn.2xlarge">, C<"x2iedn.4xlarge">, C<"x2iedn.8xlarge">, C<"x2iedn.16xlarge">, C<"x2iedn.24xlarge">, C<"x2iedn.32xlarge">, C<"c6a.large">, C<"c6a.xlarge">, C<"c6a.2xlarge">, C<"c6a.4xlarge">, C<"c6a.8xlarge">, C<"c6a.12xlarge">, C<"c6a.16xlarge">, C<"c6a.24xlarge">, C<"c6a.32xlarge">, C<"c6a.48xlarge">, C<"c6a.metal">, C<"m6a.metal">, C<"i4i.large">, C<"i4i.xlarge">, C<"i4i.2xlarge">, C<"i4i.4xlarge">, C<"i4i.8xlarge">, C<"i4i.16xlarge">, C<"i4i.32xlarge">, C<"i4i.metal">, C<"x2idn.metal">, C<"x2iedn.metal">, C<"c7g.medium">, C<"c7g.large">, C<"c7g.xlarge">, C<"c7g.2xlarge">, C<"c7g.4xlarge">, C<"c7g.8xlarge">, C<"c7g.12xlarge">, C<"c7g.16xlarge">, C<"mac2.metal">, C<"c6id.large">, C<"c6id.xlarge">, C<"c6id.2xlarge">, C<"c6id.4xlarge">, C<"c6id.8xlarge">, C<"c6id.12xlarge">, C<"c6id.16xlarge">, C<"c6id.24xlarge">, C<"c6id.32xlarge">, C<"c6id.metal">, C<"m6id.large">, C<"m6id.xlarge">, C<"m6id.2xlarge">, C<"m6id.4xlarge">, C<"m6id.8xlarge">, C<"m6id.12xlarge">, C<"m6id.16xlarge">, C<"m6id.24xlarge">, C<"m6id.32xlarge">, C<"m6id.metal">, C<"r6id.large">, C<"r6id.xlarge">, C<"r6id.2xlarge">, C<"r6id.4xlarge">, C<"r6id.8xlarge">, C<"r6id.12xlarge">, C<"r6id.16xlarge">, C<"r6id.24xlarge">, C<"r6id.32xlarge">, C<"r6id.metal">, C<"r6a.large">, C<"r6a.xlarge">, C<"r6a.2xlarge">, C<"r6a.4xlarge">, C<"r6a.8xlarge">, C<"r6a.12xlarge">, C<"r6a.16xlarge">, C<"r6a.24xlarge">, C<"r6a.32xlarge">, C<"r6a.48xlarge">, C<"r6a.metal">, C<"p4de.24xlarge">, C<"u-3tb1.56xlarge">, C<"u-18tb1.112xlarge">, C<"u-24tb1.112xlarge">, C<"trn1.2xlarge">, C<"trn1.32xlarge">, C<"hpc6id.32xlarge">, C<"c6in.large">, C<"c6in.xlarge">, C<"c6in.2xlarge">, C<"c6in.4xlarge">, C<"c6in.8xlarge">, C<"c6in.12xlarge">, C<"c6in.16xlarge">, C<"c6in.24xlarge">, C<"c6in.32xlarge">, C<"m6in.large">, C<"m6in.xlarge">, C<"m6in.2xlarge">, C<"m6in.4xlarge">, C<"m6in.8xlarge">, C<"m6in.12xlarge">, C<"m6in.16xlarge">, C<"m6in.24xlarge">, C<"m6in.32xlarge">, C<"m6idn.large">, C<"m6idn.xlarge">, C<"m6idn.2xlarge">, C<"m6idn.4xlarge">, C<"m6idn.8xlarge">, C<"m6idn.12xlarge">, C<"m6idn.16xlarge">, C<"m6idn.24xlarge">, C<"m6idn.32xlarge">, C<"r6in.large">, C<"r6in.xlarge">, C<"r6in.2xlarge">, C<"r6in.4xlarge">, C<"r6in.8xlarge">, C<"r6in.12xlarge">, C<"r6in.16xlarge">, C<"r6in.24xlarge">, C<"r6in.32xlarge">, C<"r6idn.large">, C<"r6idn.xlarge">, C<"r6idn.2xlarge">, C<"r6idn.4xlarge">, C<"r6idn.8xlarge">, C<"r6idn.12xlarge">, C<"r6idn.16xlarge">, C<"r6idn.24xlarge">, C<"r6idn.32xlarge">, C<"c7g.metal">, C<"m7g.medium">, C<"m7g.large">, C<"m7g.xlarge">, C<"m7g.2xlarge">, C<"m7g.4xlarge">, C<"m7g.8xlarge">, C<"m7g.12xlarge">, C<"m7g.16xlarge">, C<"m7g.metal">, C<"r7g.medium">, C<"r7g.large">, C<"r7g.xlarge">, C<"r7g.2xlarge">, C<"r7g.4xlarge">, C<"r7g.8xlarge">, C<"r7g.12xlarge">, C<"r7g.16xlarge">, C<"r7g.metal">, C<"c6in.metal">, C<"m6in.metal">, C<"m6idn.metal">, C<"r6in.metal">, C<"r6idn.metal">, C<"inf2.xlarge">, C<"inf2.8xlarge">, C<"inf2.24xlarge">, C<"inf2.48xlarge">, C<"trn1n.32xlarge">, C<"i4g.large">, C<"i4g.xlarge">, C<"i4g.2xlarge">, C<"i4g.4xlarge">, C<"i4g.8xlarge">, C<"i4g.16xlarge">, C<"hpc7g.4xlarge">, C<"hpc7g.8xlarge">, C<"hpc7g.16xlarge">, C<"c7gn.medium">, C<"c7gn.large">, C<"c7gn.xlarge">, C<"c7gn.2xlarge">, C<"c7gn.4xlarge">, C<"c7gn.8xlarge">, C<"c7gn.12xlarge">, C<"c7gn.16xlarge">, C<"p5.48xlarge">, C<"m7i.large">, C<"m7i.xlarge">, C<"m7i.2xlarge">, C<"m7i.4xlarge">, C<"m7i.8xlarge">, C<"m7i.12xlarge">, C<"m7i.16xlarge">, C<"m7i.24xlarge">, C<"m7i.48xlarge">, C<"m7i-flex.large">, C<"m7i-flex.xlarge">, C<"m7i-flex.2xlarge">, C<"m7i-flex.4xlarge">, C<"m7i-flex.8xlarge">, C<"m7a.medium">, C<"m7a.large">, C<"m7a.xlarge">, C<"m7a.2xlarge">, C<"m7a.4xlarge">, C<"m7a.8xlarge">, C<"m7a.12xlarge">, C<"m7a.16xlarge">, C<"m7a.24xlarge">, C<"m7a.32xlarge">, C<"m7a.48xlarge">, C<"m7a.metal-48xl">, C<"hpc7a.12xlarge">, C<"hpc7a.24xlarge">, C<"hpc7a.48xlarge">, C<"hpc7a.96xlarge">, C<"c7gd.medium">, C<"c7gd.large">, C<"c7gd.xlarge">, C<"c7gd.2xlarge">, C<"c7gd.4xlarge">, C<"c7gd.8xlarge">, C<"c7gd.12xlarge">, C<"c7gd.16xlarge">, C<"m7gd.medium">, C<"m7gd.large">, C<"m7gd.xlarge">, C<"m7gd.2xlarge">, C<"m7gd.4xlarge">, C<"m7gd.8xlarge">, C<"m7gd.12xlarge">, C<"m7gd.16xlarge">, C<"r7gd.medium">, C<"r7gd.large">, C<"r7gd.xlarge">, C<"r7gd.2xlarge">, C<"r7gd.4xlarge">, C<"r7gd.8xlarge">, C<"r7gd.12xlarge">, C<"r7gd.16xlarge">, C<"r7a.medium">, C<"r7a.large">, C<"r7a.xlarge">, C<"r7a.2xlarge">, C<"r7a.4xlarge">, C<"r7a.8xlarge">, C<"r7a.12xlarge">, C<"r7a.16xlarge">, C<"r7a.24xlarge">, C<"r7a.32xlarge">, C<"r7a.48xlarge">, C<"c7i.large">, C<"c7i.xlarge">, C<"c7i.2xlarge">, C<"c7i.4xlarge">, C<"c7i.8xlarge">, C<"c7i.12xlarge">, C<"c7i.16xlarge">, C<"c7i.24xlarge">, C<"c7i.48xlarge">, C<"mac2-m2pro.metal">, C<"r7iz.large">, C<"r7iz.xlarge">, C<"r7iz.2xlarge">, C<"r7iz.4xlarge">, C<"r7iz.8xlarge">, C<"r7iz.12xlarge">, C<"r7iz.16xlarge">, C<"r7iz.32xlarge">, C<"c7a.medium">, C<"c7a.large">, C<"c7a.xlarge">, C<"c7a.2xlarge">, C<"c7a.4xlarge">, C<"c7a.8xlarge">, C<"c7a.12xlarge">, C<"c7a.16xlarge">, C<"c7a.24xlarge">, C<"c7a.32xlarge">, C<"c7a.48xlarge">, C<"c7a.metal-48xl">, C<"r7a.metal-48xl">, C<"r7i.large">, C<"r7i.xlarge">, C<"r7i.2xlarge">, C<"r7i.4xlarge">, C<"r7i.8xlarge">, C<"r7i.12xlarge">, C<"r7i.16xlarge">, C<"r7i.24xlarge">, C<"r7i.48xlarge">, C<"dl2q.24xlarge">, C<"mac2-m2.metal">, C<"i4i.12xlarge">, C<"i4i.24xlarge">, C<"c7i.metal-24xl">, C<"c7i.metal-48xl">, C<"m7i.metal-24xl">, C<"m7i.metal-48xl">, C<"r7i.metal-24xl">, C<"r7i.metal-48xl">, C<"r7iz.metal-16xl">, C<"r7iz.metal-32xl">, C<"c7gd.metal">, C<"m7gd.metal">, C<"r7gd.metal">, C<"g6.xlarge">, C<"g6.2xlarge">, C<"g6.4xlarge">, C<"g6.8xlarge">, C<"g6.12xlarge">, C<"g6.16xlarge">, C<"g6.24xlarge">, C<"g6.48xlarge">, C<"gr6.4xlarge">, C<"gr6.8xlarge">, C<"c7i-flex.large">, C<"c7i-flex.xlarge">, C<"c7i-flex.2xlarge">, C<"c7i-flex.4xlarge">, C<"c7i-flex.8xlarge">, C<"u7i-12tb.224xlarge">, C<"u7in-16tb.224xlarge">, C<"u7in-24tb.224xlarge">, C<"u7in-32tb.224xlarge">, C<"u7ib-12tb.224xlarge">, C<"c7gn.metal">, C<"r8g.medium">, C<"r8g.large">, C<"r8g.xlarge">, C<"r8g.2xlarge">, C<"r8g.4xlarge">, C<"r8g.8xlarge">, C<"r8g.12xlarge">, C<"r8g.16xlarge">, C<"r8g.24xlarge">, C<"r8g.48xlarge">, C<"r8g.metal-24xl">, C<"r8g.metal-48xl">, C<"mac2-m1ultra.metal">, C<"g6e.xlarge">, C<"g6e.2xlarge">, C<"g6e.4xlarge">, C<"g6e.8xlarge">, C<"g6e.12xlarge">, C<"g6e.16xlarge">, C<"g6e.24xlarge">, C<"g6e.48xlarge">, C<"c8g.medium">, C<"c8g.large">, C<"c8g.xlarge">, C<"c8g.2xlarge">, C<"c8g.4xlarge">, C<"c8g.8xlarge">, C<"c8g.12xlarge">, C<"c8g.16xlarge">, C<"c8g.24xlarge">, C<"c8g.48xlarge">, C<"c8g.metal-24xl">, C<"c8g.metal-48xl">, C<"m8g.medium">, C<"m8g.large">, C<"m8g.xlarge">, C<"m8g.2xlarge">, C<"m8g.4xlarge">, C<"m8g.8xlarge">, C<"m8g.12xlarge">, C<"m8g.16xlarge">, C<"m8g.24xlarge">, C<"m8g.48xlarge">, C<"m8g.metal-24xl">, C<"m8g.metal-48xl">, C<"x8g.medium">, C<"x8g.large">, C<"x8g.xlarge">, C<"x8g.2xlarge">, C<"x8g.4xlarge">, C<"x8g.8xlarge">, C<"x8g.12xlarge">, C<"x8g.16xlarge">, C<"x8g.24xlarge">, C<"x8g.48xlarge">, C<"x8g.metal-24xl">, C<"x8g.metal-48xl">, C<"i7ie.large">, C<"i7ie.xlarge">, C<"i7ie.2xlarge">, C<"i7ie.3xlarge">, C<"i7ie.6xlarge">, C<"i7ie.12xlarge">, C<"i7ie.18xlarge">, C<"i7ie.24xlarge">, C<"i7ie.48xlarge">, C<"i8g.large">, C<"i8g.xlarge">, C<"i8g.2xlarge">, C<"i8g.4xlarge">, C<"i8g.8xlarge">, C<"i8g.12xlarge">, C<"i8g.16xlarge">, C<"i8g.24xlarge">, C<"i8g.metal-24xl">, C<"u7i-6tb.112xlarge">, C<"u7i-8tb.112xlarge">, C<"u7inh-32tb.480xlarge">, C<"p5e.48xlarge">, C<"p5en.48xlarge">, C<"f2.12xlarge">, C<"f2.48xlarge">, C<"trn2.48xlarge">

=head2 Ipv6AddressCount => Int

The number of IPv6 addresses to associate with the primary network
interface. Amazon EC2 chooses the IPv6 addresses from the range of your
subnet. You cannot specify this option and the option to assign
specific IPv6 addresses in the same request. You can specify this
option if you've specified a minimum number of instances to launch.

You cannot specify this option and the network interfaces option in the
same request.



=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

The IPv6 addresses from the range of the subnet to associate with the
primary network interface. You cannot specify this option and the
option to assign a number of IPv6 addresses in the same request. You
cannot specify this option if you've specified a minimum number of
instances to launch.

You cannot specify this option and the network interfaces option in the
same request.



=head2 KernelId => Str

The ID of the kernel.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon EC2 User Guide>.



=head2 KeyName => Str

The name of the key pair. You can create a key pair using CreateKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html)
or ImportKeyPair
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).

If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.



=head2 LaunchTemplate => L<Paws::EC2::LaunchTemplateSpecification>

The launch template. Any additional parameters that you specify for the
new instance overwrite the corresponding parameters included in the
launch template.



=head2 LicenseSpecifications => ArrayRef[L<Paws::EC2::LicenseConfigurationRequest>]

The license configurations.



=head2 MaintenanceOptions => L<Paws::EC2::InstanceMaintenanceOptionsRequest>

The maintenance and recovery options for the instance.



=head2 B<REQUIRED> MaxCount => Int

The maximum number of instances to launch. If you specify a value that
is more capacity than Amazon EC2 can launch in the target Availability
Zone, Amazon EC2 launches the largest possible number of instances
above the specified minimum count.

Constraints: Between 1 and the quota for the specified instance type
for your account for this Region. For more information, see Amazon EC2
instance type quotas
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-instance-quotas.html).



=head2 MetadataOptions => L<Paws::EC2::InstanceMetadataOptionsRequest>

The metadata options for the instance. For more information, see
Instance metadata and user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).



=head2 B<REQUIRED> MinCount => Int

The minimum number of instances to launch. If you specify a value that
is more capacity than Amazon EC2 can provide in the target Availability
Zone, Amazon EC2 does not launch any instances.

Constraints: Between 1 and the quota for the specified instance type
for your account for this Region. For more information, see Amazon EC2
instance type quotas
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-instance-quotas.html).



=head2 Monitoring => L<Paws::EC2::RunInstancesMonitoringEnabled>

Specifies whether detailed monitoring is enabled for the instance.



=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>]

The network interfaces to associate with the instance.



=head2 NetworkPerformanceOptions => L<Paws::EC2::InstanceNetworkPerformanceOptionsRequest>

Contains settings for the network performance options for the instance.



=head2 Operator => L<Paws::EC2::OperatorRequest>

Reserved for internal use.



=head2 Placement => L<Paws::EC2::Placement>

The placement for the instance.



=head2 PrivateDnsNameOptions => L<Paws::EC2::PrivateDnsNameOptionsRequest>

The options for the instance hostname. The default values are inherited
from the subnet. Applies only if creating a network interface, not
attaching an existing one.



=head2 PrivateIpAddress => Str

The primary IPv4 address. You must specify a value from the IPv4
address range of the subnet.

Only one private IP address can be designated as primary. You can't
specify this option if you've specified the option to designate a
private IP address as the primary IP address in a network interface
specification. You cannot specify this option if you're launching more
than one instance in the request.

You cannot specify this option and the network interfaces option in the
same request.



=head2 RamdiskId => Str

The ID of the RAM disk to select. Some kernels require additional
drivers at launch. Check the kernel requirements for information about
whether you need to specify a RAM disk. To find kernel requirements, go
to the Amazon Web Services Resource Center and search for the kernel
ID.

We recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)
in the I<Amazon EC2 User Guide>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups. You can create a security group using
CreateSecurityGroup
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html).

If you specify a network interface, you must specify any security
groups as part of the network interface instead of using this
parameter.



=head2 SecurityGroups => ArrayRef[Str|Undef]

[Default VPC] The names of the security groups.

If you specify a network interface, you must specify any security
groups as part of the network interface instead of using this
parameter.

Default: Amazon EC2 uses the default security group.



=head2 SubnetId => Str

The ID of the subnet to launch the instance into.

If you specify a network interface, you must specify any subnets as
part of the network interface instead of using this parameter.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the resources that are created during instance
launch.

You can specify tags for the following resources only:

=over

=item *

Instances

=item *

Volumes

=item *

Spot Instance requests

=item *

Network interfaces

=back

To tag a resource after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).



=head2 UserData => Str

The user data to make available to the instance. User data must be
base64-encoded. Depending on the tool or SDK that you're using, the
base64-encoding might be performed for you. For more information, see
Work with instance user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-add-user-data.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

