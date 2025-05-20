package Paws::EC2::IpamPool;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', request_name => 'addressFamily', traits => ['NameInRequest']);
  has AllocationDefaultNetmaskLength => (is => 'ro', isa => 'Int', request_name => 'allocationDefaultNetmaskLength', traits => ['NameInRequest']);
  has AllocationMaxNetmaskLength => (is => 'ro', isa => 'Int', request_name => 'allocationMaxNetmaskLength', traits => ['NameInRequest']);
  has AllocationMinNetmaskLength => (is => 'ro', isa => 'Int', request_name => 'allocationMinNetmaskLength', traits => ['NameInRequest']);
  has AllocationResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceTag]', request_name => 'allocationResourceTagSet', traits => ['NameInRequest']);
  has AutoImport => (is => 'ro', isa => 'Bool', request_name => 'autoImport', traits => ['NameInRequest']);
  has AwsService => (is => 'ro', isa => 'Str', request_name => 'awsService', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IpamArn => (is => 'ro', isa => 'Str', request_name => 'ipamArn', traits => ['NameInRequest']);
  has IpamPoolArn => (is => 'ro', isa => 'Str', request_name => 'ipamPoolArn', traits => ['NameInRequest']);
  has IpamPoolId => (is => 'ro', isa => 'Str', request_name => 'ipamPoolId', traits => ['NameInRequest']);
  has IpamRegion => (is => 'ro', isa => 'Str', request_name => 'ipamRegion', traits => ['NameInRequest']);
  has IpamScopeArn => (is => 'ro', isa => 'Str', request_name => 'ipamScopeArn', traits => ['NameInRequest']);
  has IpamScopeType => (is => 'ro', isa => 'Str', request_name => 'ipamScopeType', traits => ['NameInRequest']);
  has Locale => (is => 'ro', isa => 'Str', request_name => 'locale', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PoolDepth => (is => 'ro', isa => 'Int', request_name => 'poolDepth', traits => ['NameInRequest']);
  has PublicIpSource => (is => 'ro', isa => 'Str', request_name => 'publicIpSource', traits => ['NameInRequest']);
  has PubliclyAdvertisable => (is => 'ro', isa => 'Bool', request_name => 'publiclyAdvertisable', traits => ['NameInRequest']);
  has SourceIpamPoolId => (is => 'ro', isa => 'Str', request_name => 'sourceIpamPoolId', traits => ['NameInRequest']);
  has SourceResource => (is => 'ro', isa => 'Paws::EC2::IpamPoolSourceResource', request_name => 'sourceResource', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'stateMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamPool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamPool object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamPool object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressFamily => Str

The address family of the pool.


=head2 AllocationDefaultNetmaskLength => Int

The default netmask length for allocations added to this pool. If, for
example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16
here, new allocations will default to 10.0.0.0/16.


=head2 AllocationMaxNetmaskLength => Int

The maximum netmask length possible for CIDR allocations in this IPAM
pool to be compliant. The maximum netmask length must be greater than
the minimum netmask length. Possible netmask lengths for IPv4 addresses
are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.


=head2 AllocationMinNetmaskLength => Int

The minimum netmask length required for CIDR allocations in this IPAM
pool to be compliant. The minimum netmask length must be less than the
maximum netmask length. Possible netmask lengths for IPv4 addresses are
0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.


=head2 AllocationResourceTags => ArrayRef[L<Paws::EC2::IpamResourceTag>]

Tags that are required for resources that use CIDRs from this IPAM
pool. Resources that do not have these tags will not be allowed to
allocate space from the pool. If the resources have their tags changed
after they have allocated space or if the allocation tagging
requirements are changed on the pool, the resource may be marked as
noncompliant.


=head2 AutoImport => Bool

If selected, IPAM will continuously look for resources within the CIDR
range of this pool and automatically import them as allocations into
your IPAM. The CIDRs that will be allocated for these resources must
not already be allocated to other resources in order for the import to
succeed. IPAM will import a CIDR regardless of its compliance with the
pool's allocation rules, so a resource might be imported and
subsequently marked as noncompliant. If IPAM discovers multiple CIDRs
that overlap, IPAM will import the largest CIDR only. If IPAM discovers
multiple CIDRs with matching CIDRs, IPAM will randomly import one of
them only.

A locale must be set on the pool for this feature to work.


=head2 AwsService => Str

Limits which service in Amazon Web Services that the pool can be used
in. "ec2", for example, allows users to use space for Elastic IP
addresses and VPCs.


=head2 Description => Str

The description of the IPAM pool.


=head2 IpamArn => Str

The ARN of the IPAM.


=head2 IpamPoolArn => Str

The Amazon Resource Name (ARN) of the IPAM pool.


=head2 IpamPoolId => Str

The ID of the IPAM pool.


=head2 IpamRegion => Str

The Amazon Web Services Region of the IPAM pool.


=head2 IpamScopeArn => Str

The ARN of the scope of the IPAM pool.


=head2 IpamScopeType => Str

In IPAM, a scope is the highest-level container within IPAM. An IPAM
contains two default scopes. Each scope represents the IP space for a
single network. The private scope is intended for all private IP
address space. The public scope is intended for all public IP address
space. Scopes enable you to reuse IP addresses across multiple
unconnected networks without causing IP address overlap or conflict.


=head2 Locale => Str

The locale of the IPAM pool.

The locale for the pool should be one of the following:

=over

=item *

An Amazon Web Services Region where you want this IPAM pool to be
available for allocations.

=item *

The network border group for an Amazon Web Services Local Zone where
you want this IPAM pool to be available for allocations (supported
Local Zones
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#byoip-zone-avail)).
This option is only available for IPAM IPv4 pools in the public scope.

=back

If you choose an Amazon Web Services Region for locale that has not
been configured as an operating Region for the IPAM, you'll get an
error.


=head2 OwnerId => Str

The Amazon Web Services account ID of the owner of the IPAM pool.


=head2 PoolDepth => Int

The depth of pools in your IPAM pool. The pool depth quota is 10. For
more information, see Quotas in IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 PublicIpSource => Str

The IP address source for pools in the public scope. Only used for
provisioning IP address CIDRs to pools in the public scope. Default is
C<BYOIP>. For more information, see Create IPv6 pools
(https://docs.aws.amazon.com/vpc/latest/ipam/intro-create-ipv6-pools.html)
in the I<Amazon VPC IPAM User Guide>. By default, you can add only one
Amazon-provided IPv6 CIDR block to a top-level IPv6 pool. For
information on increasing the default limit, see Quotas for your IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 PubliclyAdvertisable => Bool

Determines if a pool is publicly advertisable. This option is not
available for pools with AddressFamily set to C<ipv4>.


=head2 SourceIpamPoolId => Str

The ID of the source IPAM pool. You can use this option to create an
IPAM pool within an existing source pool.


=head2 SourceResource => L<Paws::EC2::IpamPoolSourceResource>

The resource used to provision CIDRs to a resource planning pool.


=head2 State => Str

The state of the IPAM pool.


=head2 StateMessage => Str

The state message.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The key/value combination of a tag assigned to the resource. Use the
tag key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key C<Owner>
and the value C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
