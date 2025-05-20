package Paws::EC2::IpamDiscoveredPublicAddress;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', request_name => 'address', traits => ['NameInRequest']);
  has AddressAllocationId => (is => 'ro', isa => 'Str', request_name => 'addressAllocationId', traits => ['NameInRequest']);
  has AddressOwnerId => (is => 'ro', isa => 'Str', request_name => 'addressOwnerId', traits => ['NameInRequest']);
  has AddressRegion => (is => 'ro', isa => 'Str', request_name => 'addressRegion', traits => ['NameInRequest']);
  has AddressType => (is => 'ro', isa => 'Str', request_name => 'addressType', traits => ['NameInRequest']);
  has AssociationStatus => (is => 'ro', isa => 'Str', request_name => 'associationStatus', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryId', traits => ['NameInRequest']);
  has NetworkBorderGroup => (is => 'ro', isa => 'Str', request_name => 'networkBorderGroup', traits => ['NameInRequest']);
  has NetworkInterfaceDescription => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceDescription', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PublicIpv4PoolId => (is => 'ro', isa => 'Str', request_name => 'publicIpv4PoolId', traits => ['NameInRequest']);
  has SampleTime => (is => 'ro', isa => 'Str', request_name => 'sampleTime', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamPublicAddressSecurityGroup]', request_name => 'securityGroupSet', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', request_name => 'service', traits => ['NameInRequest']);
  has ServiceResource => (is => 'ro', isa => 'Str', request_name => 'serviceResource', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::EC2::IpamPublicAddressTags', request_name => 'tags', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamDiscoveredPublicAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamDiscoveredPublicAddress object:

  $service_obj->Method(Att1 => { Address => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamDiscoveredPublicAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Address => Str

The IP address.


=head2 AddressAllocationId => Str

The allocation ID of the resource the IP address is assigned to.


=head2 AddressOwnerId => Str

The ID of the owner of the resource the IP address is assigned to.


=head2 AddressRegion => Str

The Region of the resource the IP address is assigned to.


=head2 AddressType => Str

The IP address type.


=head2 AssociationStatus => Str

The association status.


=head2 InstanceId => Str

The instance ID of the instance the assigned IP address is assigned to.


=head2 IpamResourceDiscoveryId => Str

The resource discovery ID.


=head2 NetworkBorderGroup => Str

The Availability Zone (AZ) or Local Zone (LZ) network border group that
the resource that the IP address is assigned to is in. Defaults to an
AZ network border group. For more information on available Local Zones,
see Local Zone availability
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#byoip-zone-avail)
in the I<Amazon EC2 User Guide>.


=head2 NetworkInterfaceDescription => Str

The description of the network interface that IP address is assigned
to.


=head2 NetworkInterfaceId => Str

The network interface ID of the resource with the assigned IP address.


=head2 PublicIpv4PoolId => Str

The ID of the public IPv4 pool that the resource with the assigned IP
address is from.


=head2 SampleTime => Str

The last successful resource discovery time.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::IpamPublicAddressSecurityGroup>]

Security groups associated with the resource that the IP address is
assigned to.


=head2 Service => Str

The Amazon Web Services service associated with the IP address.


=head2 ServiceResource => Str

The resource ARN or ID.


=head2 SubnetId => Str

The ID of the subnet that the resource with the assigned IP address is
in.


=head2 Tags => L<Paws::EC2::IpamPublicAddressTags>

Tags associated with the IP address.


=head2 VpcId => Str

The ID of the VPC that the resource with the assigned IP address is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
