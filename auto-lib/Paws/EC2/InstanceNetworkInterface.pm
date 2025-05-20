package Paws::EC2::InstanceNetworkInterface;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkInterfaceAssociation', request_name => 'association', traits => ['NameInRequest']);
  has Attachment => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkInterfaceAttachment', request_name => 'attachment', traits => ['NameInRequest']);
  has ConnectionTrackingConfiguration => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecificationResponse', request_name => 'connectionTrackingConfiguration', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str', request_name => 'interfaceType', traits => ['NameInRequest']);
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv4Prefix]', request_name => 'ipv4PrefixSet', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Prefix]', request_name => 'ipv6PrefixSet', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorResponse', request_name => 'operator', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstancePrivateIpAddress]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', request_name => 'sourceDestCheck', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::InstanceNetworkInterfaceAssociation>

The association information for an Elastic IPv4 associated with the
network interface.


=head2 Attachment => L<Paws::EC2::InstanceNetworkInterfaceAttachment>

The network interface attachment.


=head2 ConnectionTrackingConfiguration => L<Paws::EC2::ConnectionTrackingSpecificationResponse>

A security group connection tracking configuration that enables you to
set the timeout for connection tracking on an Elastic network
interface. For more information, see Connection tracking timeouts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
in the I<Amazon EC2 User Guide>.


=head2 Description => Str

The description.


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

The security groups.


=head2 InterfaceType => Str

The type of network interface.

Valid values: C<interface> | C<efa> | C<efa-only> | C<trunk>


=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::InstanceIpv4Prefix>]

The IPv4 delegated prefixes that are assigned to the network interface.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

The IPv6 addresses associated with the network interface.


=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::InstanceIpv6Prefix>]

The IPv6 delegated prefixes that are assigned to the network interface.


=head2 MacAddress => Str

The MAC address.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 Operator => L<Paws::EC2::OperatorResponse>

The service provider that manages the network interface.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that created the network
interface.


=head2 PrivateDnsName => Str

The private DNS name.


=head2 PrivateIpAddress => Str

The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::InstancePrivateIpAddress>]

The private IPv4 addresses associated with the network interface.


=head2 SourceDestCheck => Bool

Indicates whether source/destination checking is enabled.


=head2 Status => Str

The status of the network interface.


=head2 SubnetId => Str

The ID of the subnet.


=head2 VpcId => Str

The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
