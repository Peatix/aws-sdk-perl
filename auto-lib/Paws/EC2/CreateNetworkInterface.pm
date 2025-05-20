
package Paws::EC2::CreateNetworkInterface;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectionTrackingSpecification => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecificationRequest');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EnablePrimaryIpv6 => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has InterfaceType => (is => 'ro', isa => 'Str');
  has Ipv4PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecificationRequest]', traits => ['NameInRequest'], request_name => 'Ipv4Prefix' );
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ipv6AddressCount' );
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', traits => ['NameInRequest'], request_name => 'ipv6Addresses' );
  has Ipv6PrefixCount => (is => 'ro', isa => 'Int');
  has Ipv6Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6PrefixSpecificationRequest]', traits => ['NameInRequest'], request_name => 'Ipv6Prefix' );
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorRequest');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', traits => ['NameInRequest'], request_name => 'privateIpAddresses' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondaryPrivateIpAddressCount' );
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNetworkInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterface - Arguments for method CreateNetworkInterface on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkInterface on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkInterface.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a network interface
    # This example creates a network interface for the specified subnet.
    my $CreateNetworkInterfaceResult = $ec2->CreateNetworkInterface(
      'Description'      => 'my network interface',
      'Groups'           => ['sg-903004f8'],
      'PrivateIpAddress' => '10.0.2.17',
      'SubnetId'         => 'subnet-9d4a7b6c'
    );

    # Results:
    my $NetworkInterface = $CreateNetworkInterfaceResult->NetworkInterface;

    # Returns a L<Paws::EC2::CreateNetworkInterfaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkInterface>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>

A connection tracking specification for the network interface.



=head2 Description => Str

A description for the network interface.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnablePrimaryIpv6 => Bool

If youE<rsquo>re creating a network interface in a dual-stack or
IPv6-only subnet, you have the option to assign a primary IPv6 IP
address. A primary IPv6 address is an IPv6 GUA address associated with
an ENI that you have enabled to use a primary IPv6 address. Use this
option if the instance that this ENI will be attached to relies on its
IPv6 address not changing. Amazon Web Services will automatically
assign an IPv6 address associated with the ENI attached to your
instance to be the primary IPv6 address. Once you enable an IPv6 GUA
address to be a primary IPv6, you cannot disable it. When you enable an
IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made
the primary IPv6 address until the instance is terminated or the
network interface is detached. If you have multiple IPv6 addresses
associated with an ENI attached to your instance and you enable a
primary IPv6 address, the first IPv6 GUA address associated with the
ENI becomes the primary IPv6 address.



=head2 Groups => ArrayRef[Str|Undef]

The IDs of the security groups.



=head2 InterfaceType => Str

The type of network interface. The default is C<interface>.

If you specify C<efa-only>, do not assign any IP addresses to the
network interface. EFA-only network interfaces do not support IP
addresses.

The only supported values are C<interface>, C<efa>, C<efa-only>, and
C<trunk>.

Valid values are: C<"efa">, C<"efa-only">, C<"branch">, C<"trunk">

=head2 Ipv4PrefixCount => Int

The number of IPv4 prefixes that Amazon Web Services automatically
assigns to the network interface.

You can't specify a count of IPv4 prefixes if you've specified one of
the following: specific IPv4 prefixes, specific private IPv4 addresses,
or a count of private IPv4 addresses.



=head2 Ipv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecificationRequest>]

The IPv4 prefixes assigned to the network interface.

You can't specify IPv4 prefixes if you've specified one of the
following: a count of IPv4 prefixes, specific private IPv4 addresses,
or a count of private IPv4 addresses.



=head2 Ipv6AddressCount => Int

The number of IPv6 addresses to assign to a network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range.

You can't specify a count of IPv6 addresses using this parameter if
you've specified one of the following: specific IPv6 addresses,
specific IPv6 prefixes, or a count of IPv6 prefixes.

If your subnet has the C<AssignIpv6AddressOnCreation> attribute set,
you can override that setting by specifying 0 as the IPv6 address
count.



=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

The IPv6 addresses from the IPv6 CIDR block range of your subnet.

You can't specify IPv6 addresses using this parameter if you've
specified one of the following: a count of IPv6 addresses, specific
IPv6 prefixes, or a count of IPv6 prefixes.



=head2 Ipv6PrefixCount => Int

The number of IPv6 prefixes that Amazon Web Services automatically
assigns to the network interface.

You can't specify a count of IPv6 prefixes if you've specified one of
the following: specific IPv6 prefixes, specific IPv6 addresses, or a
count of IPv6 addresses.



=head2 Ipv6Prefixes => ArrayRef[L<Paws::EC2::Ipv6PrefixSpecificationRequest>]

The IPv6 prefixes assigned to the network interface.

You can't specify IPv6 prefixes if you've specified one of the
following: a count of IPv6 prefixes, specific IPv6 addresses, or a
count of IPv6 addresses.



=head2 Operator => L<Paws::EC2::OperatorRequest>

Reserved for internal use.



=head2 PrivateIpAddress => Str

The primary private IPv4 address of the network interface. If you don't
specify an IPv4 address, Amazon EC2 selects one for you from the
subnet's IPv4 CIDR range. If you specify an IP address, you cannot
indicate any IP addresses specified in C<privateIpAddresses> as primary
(only one IP address can be designated as primary).



=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

The private IPv4 addresses.

You can't specify private IPv4 addresses if you've specified one of the
following: a count of private IPv4 addresses, specific IPv4 prefixes,
or a count of IPv4 prefixes.



=head2 SecondaryPrivateIpAddressCount => Int

The number of secondary private IPv4 addresses to assign to a network
interface. When you specify a number of secondary IPv4 addresses,
Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR
range. You can't specify this option and specify more than one private
IP address using C<privateIpAddresses>.

You can't specify a count of private IPv4 addresses if you've specified
one of the following: specific private IPv4 addresses, specific IPv4
prefixes, or a count of IPv4 prefixes.



=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet to associate with the network interface.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the new network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkInterface in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

