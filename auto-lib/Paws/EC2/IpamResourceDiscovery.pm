package Paws::EC2::IpamResourceDiscovery;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IpamResourceDiscoveryArn => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryArn', traits => ['NameInRequest']);
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryId', traits => ['NameInRequest']);
  has IpamResourceDiscoveryRegion => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryRegion', traits => ['NameInRequest']);
  has IsDefault => (is => 'ro', isa => 'Bool', request_name => 'isDefault', traits => ['NameInRequest']);
  has OperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamOperatingRegion]', request_name => 'operatingRegionSet', traits => ['NameInRequest']);
  has OrganizationalUnitExclusions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamOrganizationalUnitExclusion]', request_name => 'organizationalUnitExclusionSet', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamResourceDiscovery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamResourceDiscovery object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamResourceDiscovery object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The resource discovery description.


=head2 IpamResourceDiscoveryArn => Str

The resource discovery Amazon Resource Name (ARN).


=head2 IpamResourceDiscoveryId => Str

The resource discovery ID.


=head2 IpamResourceDiscoveryRegion => Str

The resource discovery Region.


=head2 IsDefault => Bool

Defines if the resource discovery is the default. The default resource
discovery is the resource discovery automatically created when you
create an IPAM.


=head2 OperatingRegions => ArrayRef[L<Paws::EC2::IpamOperatingRegion>]

The operating Regions for the resource discovery. Operating Regions are
Amazon Web Services Regions where the IPAM is allowed to manage IP
address CIDRs. IPAM only discovers and monitors resources in the Amazon
Web Services Regions you select as operating Regions.


=head2 OrganizationalUnitExclusions => ArrayRef[L<Paws::EC2::IpamOrganizationalUnitExclusion>]

If your IPAM is integrated with Amazon Web Services Organizations and
you add an organizational unit (OU) exclusion, IPAM will not manage the
IP addresses in accounts in that OU exclusion.


=head2 OwnerId => Str

The ID of the owner.


=head2 State => Str

The lifecycle state of the resource discovery.

=over

=item *

C<create-in-progress> - Resource discovery is being created.

=item *

C<create-complete> - Resource discovery creation is complete.

=item *

C<create-failed> - Resource discovery creation has failed.

=item *

C<modify-in-progress> - Resource discovery is being modified.

=item *

C<modify-complete> - Resource discovery modification is complete.

=item *

C<modify-failed> - Resource discovery modification has failed.

=item *

C<delete-in-progress> - Resource discovery is being deleted.

=item *

C<delete-complete> - Resource discovery deletion is complete.

=item *

C<delete-failed> - Resource discovery deletion has failed.

=item *

C<isolate-in-progress> - Amazon Web Services account that created the
resource discovery has been removed and the resource discovery is being
isolated.

=item *

C<isolate-complete> - Resource discovery isolation is complete.

=item *

C<restore-in-progress> - Amazon Web Services account that created the
resource discovery and was isolated has been restored.

=back



=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
