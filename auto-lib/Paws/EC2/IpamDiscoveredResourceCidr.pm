package Paws::EC2::IpamDiscoveredResourceCidr;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryId', traits => ['NameInRequest']);
  has IpSource => (is => 'ro', isa => 'Str', request_name => 'ipSource', traits => ['NameInRequest']);
  has IpUsage => (is => 'ro', isa => 'Num', request_name => 'ipUsage', traits => ['NameInRequest']);
  has NetworkInterfaceAttachmentStatus => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceAttachmentStatus', traits => ['NameInRequest']);
  has ResourceCidr => (is => 'ro', isa => 'Str', request_name => 'resourceCidr', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceRegion => (is => 'ro', isa => 'Str', request_name => 'resourceRegion', traits => ['NameInRequest']);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceTag]', request_name => 'resourceTagSet', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SampleTime => (is => 'ro', isa => 'Str', request_name => 'sampleTime', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamDiscoveredResourceCidr

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamDiscoveredResourceCidr object:

  $service_obj->Method(Att1 => { AvailabilityZoneId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamDiscoveredResourceCidr object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZoneId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The Availability Zone ID.


=head2 IpamResourceDiscoveryId => Str

The resource discovery ID.


=head2 IpSource => Str

The source that allocated the IP address space. C<byoip> or C<amazon>
indicates public IP address space allocated by Amazon or space that you
have allocated with Bring your own IP (BYOIP). C<none> indicates
private space.


=head2 IpUsage => Num

The percentage of IP address space in use. To convert the decimal to a
percentage, multiply the decimal by 100. Note the following:

=over

=item *

For resources that are VPCs, this is the percentage of IP address space
in the VPC that's taken up by subnet CIDRs.

=item *

For resources that are subnets, if the subnet has an IPv4 CIDR
provisioned to it, this is the percentage of IPv4 address space in the
subnet that's in use. If the subnet has an IPv6 CIDR provisioned to it,
the percentage of IPv6 address space in use is not represented. The
percentage of IPv6 address space in use cannot currently be calculated.

=item *

For resources that are public IPv4 pools, this is the percentage of IP
address space in the pool that's been allocated to Elastic IP addresses
(EIPs).

=back



=head2 NetworkInterfaceAttachmentStatus => Str

For elastic network interfaces, this is the status of whether or not
the elastic network interface is attached.


=head2 ResourceCidr => Str

The resource CIDR.


=head2 ResourceId => Str

The resource ID.


=head2 ResourceOwnerId => Str

The resource owner ID.


=head2 ResourceRegion => Str

The resource Region.


=head2 ResourceTags => ArrayRef[L<Paws::EC2::IpamResourceTag>]

The resource tags.


=head2 ResourceType => Str

The resource type.


=head2 SampleTime => Str

The last successful resource discovery time.


=head2 SubnetId => Str

The subnet ID.


=head2 VpcId => Str

The VPC ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
