
package Paws::EC2::ModifySubnetAttribute;
  use Moose;
  has AssignIpv6AddressOnCreation => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has CustomerOwnedIpv4Pool => (is => 'ro', isa => 'Str');
  has DisableLniAtDeviceIndex => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has EnableDns64 => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has EnableLniAtDeviceIndex => (is => 'ro', isa => 'Int');
  has EnableResourceNameDnsAAAARecordOnLaunch => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has EnableResourceNameDnsARecordOnLaunch => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has MapCustomerOwnedIpOnLaunch => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has PrivateDnsHostnameTypeOnLaunch => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySubnetAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySubnetAttribute - Arguments for method ModifySubnetAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySubnetAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifySubnetAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySubnetAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To change a subnet's public IP addressing behavior
# This example modifies the specified subnet so that all instances launched into
# this subnet are assigned a public IP address.
    $ec2->ModifySubnetAttribute(
      'MapPublicIpOnLaunch' => {
        'Value' => 1
      },
      'SubnetId' => 'subnet-1a2b3c4d'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifySubnetAttribute>

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces created in the
specified subnet should be assigned an IPv6 address. This includes a
network interface that's created when launching an instance into the
subnet (the instance therefore receives an IPv6 address).

If you enable the IPv6 addressing feature for your subnet, your network
interface or instance only receives an IPv6 address if it's created
using version C<2016-11-15> or later of the Amazon EC2 API.



=head2 CustomerOwnedIpv4Pool => Str

The customer-owned IPv4 address pool associated with the subnet.

You must set this value when you specify C<true> for
C<MapCustomerOwnedIpOnLaunch>.



=head2 DisableLniAtDeviceIndex => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that local network interfaces at the
current position should be disabled.



=head2 EnableDns64 => L<Paws::EC2::AttributeBooleanValue>

Indicates whether DNS queries made to the Amazon-provided DNS Resolver
in this subnet should return synthetic IPv6 addresses for IPv4-only
destinations.

You must first configure a NAT gateway in a public subnet (separate
from the subnet containing the IPv6-only workloads). For example, the
subnet containing the NAT gateway should have a C<0.0.0.0/0> route
pointing to the internet gateway. For more information, see Configure
DNS64 and NAT64
(https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-nat64-dns64.html#nat-gateway-nat64-dns64-walkthrough)
in the I<Amazon VPC User Guide>.



=head2 EnableLniAtDeviceIndex => Int

Indicates the device position for local network interfaces in this
subnet. For example, C<1> indicates local network interfaces in this
subnet are the secondary network interface (eth1). A local network
interface cannot be the primary network interface (eth0).



=head2 EnableResourceNameDnsAAAARecordOnLaunch => L<Paws::EC2::AttributeBooleanValue>

Indicates whether to respond to DNS queries for instance hostnames with
DNS AAAA records.



=head2 EnableResourceNameDnsARecordOnLaunch => L<Paws::EC2::AttributeBooleanValue>

Indicates whether to respond to DNS queries for instance hostnames with
DNS A records.



=head2 MapCustomerOwnedIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces attached to
instances created in the specified subnet should be assigned a
customer-owned IPv4 address.

When this value is C<true>, you must specify the customer-owned IP pool
using C<CustomerOwnedIpv4Pool>.



=head2 MapPublicIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces attached to
instances created in the specified subnet should be assigned a public
IPv4 address.

Amazon Web Services charges for all public IPv4 addresses, including
public IPv4 addresses associated with running instances and Elastic IP
addresses. For more information, see the I<Public IPv4 Address> tab on
the Amazon VPC pricing page (http://aws.amazon.com/vpc/pricing/).



=head2 PrivateDnsHostnameTypeOnLaunch => Str

The type of hostname to assign to instances in the subnet at launch.
For IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS
name can be based on the instance IPv4 address (ip-name) or the
instance ID (resource-name). For IPv6 only subnets, an instance DNS
name must be based on the instance ID (resource-name).

Valid values are: C<"ip-name">, C<"resource-name">

=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySubnetAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

