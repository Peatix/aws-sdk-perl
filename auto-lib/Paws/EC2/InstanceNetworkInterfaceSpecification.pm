package Paws::EC2::InstanceNetworkInterfaceSpecification;
  use Moose;
  has AssociateCarrierIpAddress => (is => 'ro', isa => 'Bool');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associatePublicIpAddress', traits => ['NameInRequest']);
  has ConnectionTrackingSpecification => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecificationRequest');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceIndex => (is => 'ro', isa => 'Int', request_name => 'deviceIndex', traits => ['NameInRequest']);
  has EnaQueueCount => (is => 'ro', isa => 'Int');
  has EnaSrdSpecification => (is => 'ro', isa => 'Paws::EC2::EnaSrdSpecificationRequest');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str');
  has Ipv4PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecificationRequest]', request_name => 'Ipv4Prefix', traits => ['NameInRequest']);
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', request_name => 'ipv6AddressCount', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has Ipv6PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6PrefixSpecificationRequest]', request_name => 'Ipv6Prefix', traits => ['NameInRequest']);
  has NetworkCardIndex => (is => 'ro', isa => 'Int');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrimaryIpv6 => (is => 'ro', isa => 'Bool');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', request_name => 'secondaryPrivateIpAddressCount', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterfaceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterfaceSpecification object:

  $service_obj->Method(Att1 => { AssociateCarrierIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterfaceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociateCarrierIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociateCarrierIpAddress => Bool

Indicates whether to assign a carrier IP address to the network
interface.

You can only assign a carrier IP address to a network interface that is
in a subnet in a Wavelength Zone. For more information about carrier IP
addresses, see Carrier IP address
(https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip)
in the I<Amazon Web Services Wavelength Developer Guide>.


=head2 AssociatePublicIpAddress => Bool

Indicates whether to assign a public IPv4 address to an instance you
launch in a VPC. The public IP address can only be assigned to a
network interface for eth0, and can only be assigned to a new network
interface, not an existing one. You cannot specify more than one
network interface in the request. If launching into a default subnet,
the default value is C<true>.

Amazon Web Services charges for all public IPv4 addresses, including
public IPv4 addresses associated with running instances and Elastic IP
addresses. For more information, see the I<Public IPv4 Address> tab on
the Amazon VPC pricing page (http://aws.amazon.com/vpc/pricing/).


=head2 ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>

A security group connection tracking specification that enables you to
set the timeout for connection tracking on an Elastic network
interface. For more information, see Connection tracking timeouts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
in the I<Amazon EC2 User Guide>.


=head2 DeleteOnTermination => Bool

If set to C<true>, the interface is deleted when the instance is
terminated. You can specify C<true> only if creating a new network
interface when launching an instance.


=head2 Description => Str

The description of the network interface. Applies only if creating a
network interface when launching an instance.


=head2 DeviceIndex => Int

The position of the network interface in the attachment order. A
primary network interface has a device index of 0.

If you specify a network interface when launching an instance, you must
specify the device index.


=head2 EnaQueueCount => Int

The number of ENA queues to be created with the instance.


=head2 EnaSrdSpecification => L<Paws::EC2::EnaSrdSpecificationRequest>

Specifies the ENA Express settings for the network interface that's
attached to the instance.


=head2 Groups => ArrayRef[Str|Undef]

The IDs of the security groups for the network interface. Applies only
if creating a network interface when launching an instance.


=head2 InterfaceType => Str

The type of network interface.

If you specify C<efa-only>, do not assign any IP addresses to the
network interface. EFA-only network interfaces do not support IP
addresses.

Valid values: C<interface> | C<efa> | C<efa-only>


=head2 Ipv4PrefixCount => Int

The number of IPv4 delegated prefixes to be automatically assigned to
the network interface. You cannot use this option if you use the
C<Ipv4Prefix> option.


=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecificationRequest>]

The IPv4 delegated prefixes to be assigned to the network interface.
You cannot use this option if you use the C<Ipv4PrefixCount> option.


=head2 Ipv6AddressCount => Int

A number of IPv6 addresses to assign to the network interface. Amazon
EC2 chooses the IPv6 addresses from the range of the subnet. You cannot
specify this option and the option to assign specific IPv6 addresses in
the same request. You can specify this option if you've specified a
minimum number of instances to launch.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

The IPv6 addresses to assign to the network interface. You cannot
specify this option and the option to assign a number of IPv6 addresses
in the same request. You cannot specify this option if you've specified
a minimum number of instances to launch.


=head2 Ipv6PrefixCount => Int

The number of IPv6 delegated prefixes to be automatically assigned to
the network interface. You cannot use this option if you use the
C<Ipv6Prefix> option.


=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecificationRequest>]

The IPv6 delegated prefixes to be assigned to the network interface.
You cannot use this option if you use the C<Ipv6PrefixCount> option.


=head2 NetworkCardIndex => Int

The index of the network card. Some instance types support multiple
network cards. The primary network interface must be assigned to
network card index 0. The default is network card index 0.

If you are using RequestSpotInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html)
to create Spot Instances, omit this parameter because you canE<rsquo>t
specify the network card index when using this API. To specify the
network card index, use RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).


=head2 NetworkInterfaceId => Str

The ID of the network interface.

If you are creating a Spot Fleet, omit this parameter because you
canE<rsquo>t specify a network interface ID in a launch specification.


=head2 PrimaryIpv6 => Bool

The primary IPv6 address of the network interface. When you enable an
IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made
the primary IPv6 address until the instance is terminated or the
network interface is detached. For more information about primary IPv6
addresses, see RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).


=head2 PrivateIpAddress => Str

The private IPv4 address of the network interface. Applies only if
creating a network interface when launching an instance. You cannot
specify this option if you're launching more than one instance in a
RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
request.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

The private IPv4 addresses to assign to the network interface. Only one
private IPv4 address can be designated as primary. You cannot specify
this option if you're launching more than one instance in a
RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
request.


=head2 SecondaryPrivateIpAddressCount => Int

The number of secondary private IPv4 addresses. You canE<rsquo>t
specify this parameter and also specify a secondary private IP address
using the C<PrivateIpAddress> parameter.


=head2 SubnetId => Str

The ID of the subnet associated with the network interface. Applies
only if creating a network interface when launching an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
