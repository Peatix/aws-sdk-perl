package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest;
  use Moose;
  has AssociateCarrierIpAddress => (is => 'ro', isa => 'Bool');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has ConnectionTrackingSpecification => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecificationRequest');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has EnaQueueCount => (is => 'ro', isa => 'Int');
  has EnaSrdSpecification => (is => 'ro', isa => 'Paws::EC2::EnaSrdSpecificationRequest');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str');
  has Ipv4PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecificationRequest]', request_name => 'Ipv4Prefix', traits => ['NameInRequest']);
  has Ipv6AddressCount => (is => 'ro', isa => 'Int');
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6AddressRequest]');
  has Ipv6PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6PrefixSpecificationRequest]', request_name => 'Ipv6Prefix', traits => ['NameInRequest']);
  has NetworkCardIndex => (is => 'ro', isa => 'Int');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrimaryIpv6 => (is => 'ro', isa => 'Bool');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $service_obj->Method(Att1 => { AssociateCarrierIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociateCarrierIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociateCarrierIpAddress => Bool

Associates a Carrier IP address with eth0 for a new network interface.

Use this option when you launch an instance in a Wavelength Zone and
want to associate a Carrier IP address with the network interface. For
more information about Carrier IP addresses, see Carrier IP addresses
(https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip)
in the I<Wavelength Developer Guide>.


=head2 AssociatePublicIpAddress => Bool

Associates a public IPv4 address with eth0 for a new network interface.

Amazon Web Services charges for all public IPv4 addresses, including
public IPv4 addresses associated with running instances and Elastic IP
addresses. For more information, see the I<Public IPv4 Address> tab on
the Amazon VPC pricing page (http://aws.amazon.com/vpc/pricing/).


=head2 ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>

A security group connection tracking specification that enables you to
set the timeout for connection tracking on an Elastic network
interface. For more information, see Idle connection tracking timeout
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
in the I<Amazon EC2 User Guide>.


=head2 DeleteOnTermination => Bool

Indicates whether the network interface is deleted when the instance is
terminated.


=head2 Description => Str

A description for the network interface.


=head2 DeviceIndex => Int

The device index for the network interface attachment. The primary
network interface has a device index of 0. Each network interface is of
type C<interface>, you must specify a device index. If you create a
launch template that includes secondary network interfaces but not a
primary network interface, then you must add a primary network
interface as a launch parameter when you launch an instance from the
template.


=head2 EnaQueueCount => Int

The number of ENA queues to be created with the instance.


=head2 EnaSrdSpecification => L<Paws::EC2::EnaSrdSpecificationRequest>

Configure ENA Express settings for your launch template.


=head2 Groups => ArrayRef[Str|Undef]

The IDs of one or more security groups.


=head2 InterfaceType => Str

The type of network interface. To create an Elastic Fabric Adapter
(EFA), specify C<efa> or C<efa>. For more information, see Elastic
Fabric Adapter for AI/ML and HPC workloads on Amazon EC2
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html) in the
I<Amazon EC2 User Guide>.

If you are not creating an EFA, specify C<interface> or omit this
parameter.

If you specify C<efa-only>, do not assign any IP addresses to the
network interface. EFA-only network interfaces do not support IP
addresses.

Valid values: C<interface> | C<efa> | C<efa-only>


=head2 Ipv4PrefixCount => Int

The number of IPv4 prefixes to be automatically assigned to the network
interface. You cannot use this option if you use the C<Ipv4Prefix>
option.


=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecificationRequest>]

One or more IPv4 prefixes to be assigned to the network interface. You
cannot use this option if you use the C<Ipv4PrefixCount> option.


=head2 Ipv6AddressCount => Int

The number of IPv6 addresses to assign to a network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range. You
can't use this option if specifying specific IPv6 addresses.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6AddressRequest>]

One or more specific IPv6 addresses from the IPv6 CIDR block range of
your subnet. You can't use this option if you're specifying a number of
IPv6 addresses.


=head2 Ipv6PrefixCount => Int

The number of IPv6 prefixes to be automatically assigned to the network
interface. You cannot use this option if you use the C<Ipv6Prefix>
option.


=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecificationRequest>]

One or more IPv6 prefixes to be assigned to the network interface. You
cannot use this option if you use the C<Ipv6PrefixCount> option.


=head2 NetworkCardIndex => Int

The index of the network card. Some instance types support multiple
network cards. The primary network interface must be assigned to
network card index 0. The default is network card index 0.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 PrimaryIpv6 => Bool

The primary IPv6 address of the network interface. When you enable an
IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made
the primary IPv6 address until the instance is terminated or the
network interface is detached. For more information about primary IPv6
addresses, see RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).


=head2 PrivateIpAddress => Str

The primary private IPv4 address of the network interface.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

One or more private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

The number of secondary private IPv4 addresses to assign to a network
interface.


=head2 SubnetId => Str

The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
