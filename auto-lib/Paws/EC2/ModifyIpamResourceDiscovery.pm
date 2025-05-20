
package Paws::EC2::ModifyIpamResourceDiscovery;
  use Moose;
  has AddOperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'AddOperatingRegion' );
  has AddOrganizationalUnitExclusions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddIpamOrganizationalUnitExclusion]', traits => ['NameInRequest'], request_name => 'AddOrganizationalUnitExclusion' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', required => 1);
  has RemoveOperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RemoveIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'RemoveOperatingRegion' );
  has RemoveOrganizationalUnitExclusions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RemoveIpamOrganizationalUnitExclusion]', traits => ['NameInRequest'], request_name => 'RemoveOrganizationalUnitExclusion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIpamResourceDiscovery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyIpamResourceDiscoveryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIpamResourceDiscovery - Arguments for method ModifyIpamResourceDiscovery on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIpamResourceDiscovery on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyIpamResourceDiscovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIpamResourceDiscovery.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyIpamResourceDiscoveryResult = $ec2->ModifyIpamResourceDiscovery(
      IpamResourceDiscoveryId => 'MyIpamResourceDiscoveryId',
      AddOperatingRegions     => [
        {
          RegionName => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AddOrganizationalUnitExclusions => [
        {
          OrganizationsEntityPath => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description            => 'MyString',    # OPTIONAL
      DryRun                 => 1,             # OPTIONAL
      RemoveOperatingRegions => [
        {
          RegionName => 'MyString',            # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RemoveOrganizationalUnitExclusions => [
        {
          OrganizationsEntityPath => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $IpamResourceDiscovery =
      $ModifyIpamResourceDiscoveryResult->IpamResourceDiscovery;

    # Returns a L<Paws::EC2::ModifyIpamResourceDiscoveryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyIpamResourceDiscovery>

=head1 ATTRIBUTES


=head2 AddOperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]

Add operating Regions to the resource discovery. Operating Regions are
Amazon Web Services Regions where the IPAM is allowed to manage IP
address CIDRs. IPAM only discovers and monitors resources in the Amazon
Web Services Regions you select as operating Regions.



=head2 AddOrganizationalUnitExclusions => ArrayRef[L<Paws::EC2::AddIpamOrganizationalUnitExclusion>]

Add an Organizational Unit (OU) exclusion to your IPAM. If your IPAM is
integrated with Amazon Web Services Organizations and you add an
organizational unit (OU) exclusion, IPAM will not manage the IP
addresses in accounts in that OU exclusion. There is a limit on the
number of exclusions you can create. For more information, see Quotas
for your IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.

The resulting set of exclusions must not result in "overlap", meaning
two or more OU exclusions must not exclude the same OU. For more
information and examples, see the Amazon Web Services CLI request
process in Add or remove OU exclusions
(https://docs.aws.amazon.com/vpc/latest/ipam/exclude-ous.html#exclude-ous-create-delete)
in the I<Amazon VPC User Guide>.



=head2 Description => Str

A resource discovery description.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamResourceDiscoveryId => Str

A resource discovery ID.



=head2 RemoveOperatingRegions => ArrayRef[L<Paws::EC2::RemoveIpamOperatingRegion>]

Remove operating Regions.



=head2 RemoveOrganizationalUnitExclusions => ArrayRef[L<Paws::EC2::RemoveIpamOrganizationalUnitExclusion>]

Remove an Organizational Unit (OU) exclusion to your IPAM. If your IPAM
is integrated with Amazon Web Services Organizations and you add an
organizational unit (OU) exclusion, IPAM will not manage the IP
addresses in accounts in that OU exclusion. There is a limit on the
number of exclusions you can create. For more information, see Quotas
for your IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the
I<Amazon VPC IPAM User Guide>.

The resulting set of exclusions must not result in "overlap", meaning
two or more OU exclusions must not exclude the same OU. For more
information and examples, see the Amazon Web Services CLI request
process in Add or remove OU exclusions
(https://docs.aws.amazon.com/vpc/latest/ipam/exclude-ous.html#exclude-ous-create-delete)
in the I<Amazon VPC User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIpamResourceDiscovery in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

