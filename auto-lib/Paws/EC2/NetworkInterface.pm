package Paws::EC2::NetworkInterface;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAssociation', request_name => 'association', traits => ['NameInRequest']);
  has Attachment => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAttachment', request_name => 'attachment', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has ConnectionTrackingConfiguration => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingConfiguration', request_name => 'connectionTrackingConfiguration', traits => ['NameInRequest']);
  has DenyAllIgwTraffic => (is => 'ro', isa => 'Bool', request_name => 'denyAllIgwTraffic', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str', request_name => 'interfaceType', traits => ['NameInRequest']);
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecification]', request_name => 'ipv4PrefixSet', traits => ['NameInRequest']);
  has Ipv6Address => (is => 'ro', isa => 'Str', request_name => 'ipv6Address', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterfaceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has Ipv6Native => (is => 'ro', isa => 'Bool', request_name => 'ipv6Native', traits => ['NameInRequest']);
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6PrefixSpecification]', request_name => 'ipv6PrefixSet', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorResponse', request_name => 'operator', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterfacePrivateIpAddress]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has RequesterId => (is => 'ro', isa => 'Str', request_name => 'requesterId', traits => ['NameInRequest']);
  has RequesterManaged => (is => 'ro', isa => 'Bool', request_name => 'requesterManaged', traits => ['NameInRequest']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', request_name => 'sourceDestCheck', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::NetworkInterfaceAssociation>

The association information for an Elastic IP address (IPv4) associated
with the network interface.


=head2 Attachment => L<Paws::EC2::NetworkInterfaceAttachment>

The network interface attachment.


=head2 AvailabilityZone => Str

The Availability Zone.


=head2 ConnectionTrackingConfiguration => L<Paws::EC2::ConnectionTrackingConfiguration>

A security group connection tracking configuration that enables you to
set the timeout for connection tracking on an Elastic network
interface. For more information, see Connection tracking timeouts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
in the I<Amazon EC2 User Guide>.


=head2 DenyAllIgwTraffic => Bool

Indicates whether a network interface with an IPv6 address is
unreachable from the public internet. If the value is C<true>, inbound
traffic from the internet is dropped and you cannot assign an elastic
IP address to the network interface. The network interface is reachable
from peered VPCs and resources connected through a transit gateway,
including on-premises networks.


=head2 Description => Str

A description.


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

Any security groups for the network interface.


=head2 InterfaceType => Str

The type of network interface.


=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecification>]

The IPv4 prefixes that are assigned to the network interface.


=head2 Ipv6Address => Str

The IPv6 globally unique address associated with the network interface.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::NetworkInterfaceIpv6Address>]

The IPv6 addresses associated with the network interface.


=head2 Ipv6Native => Bool

Indicates whether this is an IPv6 only network interface.


=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecification>]

The IPv6 prefixes that are assigned to the network interface.


=head2 MacAddress => Str

The MAC address.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 Operator => L<Paws::EC2::OperatorResponse>

The service provider that manages the network interface.


=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost.


=head2 OwnerId => Str

The Amazon Web Services account ID of the owner of the network
interface.


=head2 PrivateDnsName => Str

The private DNS name.


=head2 PrivateIpAddress => Str

The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::NetworkInterfacePrivateIpAddress>]

The private IPv4 addresses associated with the network interface.


=head2 RequesterId => Str

The alias or Amazon Web Services account ID of the principal or service
that created the network interface.


=head2 RequesterManaged => Bool

Indicates whether the network interface is being managed by Amazon Web
Services.


=head2 SourceDestCheck => Bool

Indicates whether source/destination checking is enabled.


=head2 Status => Str

The status of the network interface.


=head2 SubnetId => Str

The ID of the subnet.


=head2 TagSet => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the network interface.


=head2 VpcId => Str

The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
