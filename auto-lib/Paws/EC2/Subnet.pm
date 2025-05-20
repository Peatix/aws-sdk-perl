package Paws::EC2::Subnet;
  use Moose;
  has AssignIpv6AddressOnCreation => (is => 'ro', isa => 'Bool', request_name => 'assignIpv6AddressOnCreation', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', request_name => 'availableIpAddressCount', traits => ['NameInRequest']);
  has BlockPublicAccessStates => (is => 'ro', isa => 'Paws::EC2::BlockPublicAccessStates', request_name => 'blockPublicAccessStates', traits => ['NameInRequest']);
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest']);
  has CustomerOwnedIpv4Pool => (is => 'ro', isa => 'Str', request_name => 'customerOwnedIpv4Pool', traits => ['NameInRequest']);
  has DefaultForAz => (is => 'ro', isa => 'Bool', request_name => 'defaultForAz', traits => ['NameInRequest']);
  has EnableDns64 => (is => 'ro', isa => 'Bool', request_name => 'enableDns64', traits => ['NameInRequest']);
  has EnableLniAtDeviceIndex => (is => 'ro', isa => 'Int', request_name => 'enableLniAtDeviceIndex', traits => ['NameInRequest']);
  has Ipv6CidrBlockAssociationSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetIpv6CidrBlockAssociation]', request_name => 'ipv6CidrBlockAssociationSet', traits => ['NameInRequest']);
  has Ipv6Native => (is => 'ro', isa => 'Bool', request_name => 'ipv6Native', traits => ['NameInRequest']);
  has MapCustomerOwnedIpOnLaunch => (is => 'ro', isa => 'Bool', request_name => 'mapCustomerOwnedIpOnLaunch', traits => ['NameInRequest']);
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Bool', request_name => 'mapPublicIpOnLaunch', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrivateDnsNameOptionsOnLaunch => (is => 'ro', isa => 'Paws::EC2::PrivateDnsNameOptionsOnLaunch', request_name => 'privateDnsNameOptionsOnLaunch', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetArn => (is => 'ro', isa => 'Str', request_name => 'subnetArn', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Subnet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Subnet object:

  $service_obj->Method(Att1 => { AssignIpv6AddressOnCreation => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Subnet object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignIpv6AddressOnCreation

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => Bool

Indicates whether a network interface created in this subnet (including
a network interface created by RunInstances) receives an IPv6 address.


=head2 AvailabilityZone => Str

The Availability Zone of the subnet.


=head2 AvailabilityZoneId => Str

The AZ ID of the subnet.


=head2 AvailableIpAddressCount => Int

The number of unused private IPv4 addresses in the subnet. The IPv4
addresses for any stopped instances are considered unavailable.


=head2 BlockPublicAccessStates => L<Paws::EC2::BlockPublicAccessStates>

The state of VPC Block Public Access (BPA).


=head2 CidrBlock => Str

The IPv4 CIDR block assigned to the subnet.


=head2 CustomerOwnedIpv4Pool => Str

The customer-owned IPv4 address pool associated with the subnet.


=head2 DefaultForAz => Bool

Indicates whether this is the default subnet for the Availability Zone.


=head2 EnableDns64 => Bool

Indicates whether DNS queries made to the Amazon-provided DNS Resolver
in this subnet should return synthetic IPv6 addresses for IPv4-only
destinations.


=head2 EnableLniAtDeviceIndex => Int

Indicates the device position for local network interfaces in this
subnet. For example, C<1> indicates local network interfaces in this
subnet are the secondary network interface (eth1).


=head2 Ipv6CidrBlockAssociationSet => ArrayRef[L<Paws::EC2::SubnetIpv6CidrBlockAssociation>]

Information about the IPv6 CIDR blocks associated with the subnet.


=head2 Ipv6Native => Bool

Indicates whether this is an IPv6 only subnet.


=head2 MapCustomerOwnedIpOnLaunch => Bool

Indicates whether a network interface created in this subnet (including
a network interface created by RunInstances) receives a customer-owned
IPv4 address.


=head2 MapPublicIpOnLaunch => Bool

Indicates whether instances launched in this subnet receive a public
IPv4 address.

Amazon Web Services charges for all public IPv4 addresses, including
public IPv4 addresses associated with running instances and Elastic IP
addresses. For more information, see the I<Public IPv4 Address> tab on
the Amazon VPC pricing page (http://aws.amazon.com/vpc/pricing/).


=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the subnet.


=head2 PrivateDnsNameOptionsOnLaunch => L<Paws::EC2::PrivateDnsNameOptionsOnLaunch>

The type of hostnames to assign to instances in the subnet at launch.
An instance hostname is based on the IPv4 address or ID of the
instance.


=head2 State => Str

The current state of the subnet.


=head2 SubnetArn => Str

The Amazon Resource Name (ARN) of the subnet.


=head2 SubnetId => Str

The ID of the subnet.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the subnet.


=head2 VpcId => Str

The ID of the VPC the subnet is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
