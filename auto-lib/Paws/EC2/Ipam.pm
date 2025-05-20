package Paws::EC2::Ipam;
  use Moose;
  has DefaultResourceDiscoveryAssociationId => (is => 'ro', isa => 'Str', request_name => 'defaultResourceDiscoveryAssociationId', traits => ['NameInRequest']);
  has DefaultResourceDiscoveryId => (is => 'ro', isa => 'Str', request_name => 'defaultResourceDiscoveryId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EnablePrivateGua => (is => 'ro', isa => 'Bool', request_name => 'enablePrivateGua', traits => ['NameInRequest']);
  has IpamArn => (is => 'ro', isa => 'Str', request_name => 'ipamArn', traits => ['NameInRequest']);
  has IpamId => (is => 'ro', isa => 'Str', request_name => 'ipamId', traits => ['NameInRequest']);
  has IpamRegion => (is => 'ro', isa => 'Str', request_name => 'ipamRegion', traits => ['NameInRequest']);
  has MeteredAccount => (is => 'ro', isa => 'Str', request_name => 'meteredAccount', traits => ['NameInRequest']);
  has OperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamOperatingRegion]', request_name => 'operatingRegionSet', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrivateDefaultScopeId => (is => 'ro', isa => 'Str', request_name => 'privateDefaultScopeId', traits => ['NameInRequest']);
  has PublicDefaultScopeId => (is => 'ro', isa => 'Str', request_name => 'publicDefaultScopeId', traits => ['NameInRequest']);
  has ResourceDiscoveryAssociationCount => (is => 'ro', isa => 'Int', request_name => 'resourceDiscoveryAssociationCount', traits => ['NameInRequest']);
  has ScopeCount => (is => 'ro', isa => 'Int', request_name => 'scopeCount', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'stateMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Tier => (is => 'ro', isa => 'Str', request_name => 'tier', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ipam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ipam object:

  $service_obj->Method(Att1 => { DefaultResourceDiscoveryAssociationId => $value, ..., Tier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ipam object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultResourceDiscoveryAssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultResourceDiscoveryAssociationId => Str

The IPAM's default resource discovery association ID.


=head2 DefaultResourceDiscoveryId => Str

The IPAM's default resource discovery ID.


=head2 Description => Str

The description for the IPAM.


=head2 EnablePrivateGua => Bool

Enable this option to use your own GUA ranges as private IPv6
addresses. This option is disabled by default.


=head2 IpamArn => Str

The Amazon Resource Name (ARN) of the IPAM.


=head2 IpamId => Str

The ID of the IPAM.


=head2 IpamRegion => Str

The Amazon Web Services Region of the IPAM.


=head2 MeteredAccount => Str

A metered account is an Amazon Web Services account that is charged for
active IP addresses managed in IPAM. For more information, see Enable
cost distribution
(https://docs.aws.amazon.com/vpc/latest/ipam/ipam-enable-cost-distro.html)
in the I<Amazon VPC IPAM User Guide>.

Possible values:

=over

=item *

C<ipam-owner> (default): The Amazon Web Services account which owns the
IPAM is charged for all active IP addresses managed in IPAM.

=item *

C<resource-owner>: The Amazon Web Services account that owns the IP
address is charged for the active IP address.

=back



=head2 OperatingRegions => ArrayRef[L<Paws::EC2::IpamOperatingRegion>]

The operating Regions for an IPAM. Operating Regions are Amazon Web
Services Regions where the IPAM is allowed to manage IP address CIDRs.
IPAM only discovers and monitors resources in the Amazon Web Services
Regions you select as operating Regions.

For more information about operating Regions, see Create an IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 OwnerId => Str

The Amazon Web Services account ID of the owner of the IPAM.


=head2 PrivateDefaultScopeId => Str

The ID of the IPAM's default private scope.


=head2 PublicDefaultScopeId => Str

The ID of the IPAM's default public scope.


=head2 ResourceDiscoveryAssociationCount => Int

The IPAM's resource discovery association count.


=head2 ScopeCount => Int

The number of scopes in the IPAM. The scope quota is 5. For more
information on quotas, see Quotas in IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.


=head2 State => Str

The state of the IPAM.


=head2 StateMessage => Str

The state message.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The key/value combination of a tag assigned to the resource. Use the
tag key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key C<Owner>
and the value C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.


=head2 Tier => Str

IPAM is offered in a Free Tier and an Advanced Tier. For more
information about the features available in each tier and the costs
associated with the tiers, see Amazon VPC pricing E<gt> IPAM tab
(http://aws.amazon.com/vpc/pricing/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
