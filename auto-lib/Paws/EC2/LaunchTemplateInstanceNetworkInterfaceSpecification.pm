package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification;
  use Moose;
  has AssociateCarrierIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associateCarrierIpAddress', traits => ['NameInRequest']);
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associatePublicIpAddress', traits => ['NameInRequest']);
  has ConnectionTrackingSpecification => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecification', request_name => 'connectionTrackingSpecification', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceIndex => (is => 'ro', isa => 'Int', request_name => 'deviceIndex', traits => ['NameInRequest']);
  has EnaQueueCount => (is => 'ro', isa => 'Int', request_name => 'enaQueueCount', traits => ['NameInRequest']);
  has EnaSrdSpecification => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateEnaSrdSpecification', request_name => 'enaSrdSpecification', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'groupSet', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str', request_name => 'interfaceType', traits => ['NameInRequest']);
  has Ipv4PrefixCount => (is => 'ro', isa => 'Int', request_name => 'ipv4PrefixCount', traits => ['NameInRequest']);
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecificationResponse]', request_name => 'ipv4PrefixSet', traits => ['NameInRequest']);
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', request_name => 'ipv6AddressCount', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has Ipv6PrefixCount => (is => 'ro', isa => 'Int', request_name => 'ipv6PrefixCount', traits => ['NameInRequest']);
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6PrefixSpecificationResponse]', request_name => 'ipv6PrefixSet', traits => ['NameInRequest']);
  has NetworkCardIndex => (is => 'ro', isa => 'Int', request_name => 'networkCardIndex', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrimaryIpv6 => (is => 'ro', isa => 'Bool', request_name => 'primaryIpv6', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', request_name => 'secondaryPrivateIpAddressCount', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $service_obj->Method(Att1 => { AssociateCarrierIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociateCarrierIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociateCarrierIpAddress => Bool

Indicates whether to associate a Carrier IP address with eth0 for a new
network interface.

Use this option when you launch an instance in a Wavelength Zone and
want to associate a Carrier IP address with the network interface. For
more information about Carrier IP addresses, see Carrier IP address
(https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip)
in the I<Wavelength Developer Guide>.


=head2 AssociatePublicIpAddress => Bool

Indicates whether to associate a public IPv4 address with eth0 for a
new network interface.

Amazon Web Services charges for all public IPv4 addresses, including
public IPv4 addresses associated with running instances and Elastic IP
addresses. For more information, see the I<Public IPv4 Address> tab on
the Amazon VPC pricing page (http://aws.amazon.com/vpc/pricing/).


=head2 ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecification>

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

The device index for the network interface attachment.


=head2 EnaQueueCount => Int

The number of ENA queues created with the instance.


=head2 EnaSrdSpecification => L<Paws::EC2::LaunchTemplateEnaSrdSpecification>

Contains the ENA Express settings for instances launched from your
launch template.


=head2 Groups => ArrayRef[Str|Undef]

The IDs of one or more security groups.


=head2 InterfaceType => Str

The type of network interface.


=head2 Ipv4PrefixCount => Int

The number of IPv4 prefixes that Amazon Web Services automatically
assigned to the network interface.


=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecificationResponse>]

One or more IPv4 prefixes assigned to the network interface.


=head2 Ipv6AddressCount => Int

The number of IPv6 addresses for the network interface.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

The IPv6 addresses for the network interface.


=head2 Ipv6PrefixCount => Int

The number of IPv6 prefixes that Amazon Web Services automatically
assigned to the network interface.


=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecificationResponse>]

One or more IPv6 prefixes assigned to the network interface.


=head2 NetworkCardIndex => Int

The index of the network card.


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

The number of secondary private IPv4 addresses for the network
interface.


=head2 SubnetId => Str

The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
