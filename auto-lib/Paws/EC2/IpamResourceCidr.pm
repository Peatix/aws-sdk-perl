package Paws::EC2::IpamResourceCidr;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has ComplianceStatus => (is => 'ro', isa => 'Str', request_name => 'complianceStatus', traits => ['NameInRequest']);
  has IpamId => (is => 'ro', isa => 'Str', request_name => 'ipamId', traits => ['NameInRequest']);
  has IpamPoolId => (is => 'ro', isa => 'Str', request_name => 'ipamPoolId', traits => ['NameInRequest']);
  has IpamScopeId => (is => 'ro', isa => 'Str', request_name => 'ipamScopeId', traits => ['NameInRequest']);
  has IpUsage => (is => 'ro', isa => 'Num', request_name => 'ipUsage', traits => ['NameInRequest']);
  has ManagementState => (is => 'ro', isa => 'Str', request_name => 'managementState', traits => ['NameInRequest']);
  has OverlapStatus => (is => 'ro', isa => 'Str', request_name => 'overlapStatus', traits => ['NameInRequest']);
  has ResourceCidr => (is => 'ro', isa => 'Str', request_name => 'resourceCidr', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceName => (is => 'ro', isa => 'Str', request_name => 'resourceName', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceRegion => (is => 'ro', isa => 'Str', request_name => 'resourceRegion', traits => ['NameInRequest']);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceTag]', request_name => 'resourceTagSet', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamResourceCidr

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamResourceCidr object:

  $service_obj->Method(Att1 => { AvailabilityZoneId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamResourceCidr object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZoneId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The Availability Zone ID.


=head2 ComplianceStatus => Str

The compliance status of the IPAM resource. For more information on
compliance statuses, see Monitor CIDR usage by resource
(https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 IpamId => Str

The IPAM ID for an IPAM resource.


=head2 IpamPoolId => Str

The pool ID for an IPAM resource.


=head2 IpamScopeId => Str

The scope ID for an IPAM resource.


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



=head2 ManagementState => Str

The management state of the resource. For more information about
management states, see Monitor CIDR usage by resource
(https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 OverlapStatus => Str

The overlap status of an IPAM resource. The overlap status tells you if
the CIDR for a resource overlaps with another CIDR in the scope. For
more information on overlap statuses, see Monitor CIDR usage by
resource
(https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 ResourceCidr => Str

The CIDR for an IPAM resource.


=head2 ResourceId => Str

The ID of an IPAM resource.


=head2 ResourceName => Str

The name of an IPAM resource.


=head2 ResourceOwnerId => Str

The Amazon Web Services account number of the owner of an IPAM
resource.


=head2 ResourceRegion => Str

The Amazon Web Services Region for an IPAM resource.


=head2 ResourceTags => ArrayRef[L<Paws::EC2::IpamResourceTag>]

The tags for an IPAM resource.


=head2 ResourceType => Str

The type of IPAM resource.


=head2 VpcId => Str

The ID of a VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
