
package Paws::EC2::ModifyIpam;
  use Moose;
  has AddOperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'AddOperatingRegion' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EnablePrivateGua => (is => 'ro', isa => 'Bool');
  has IpamId => (is => 'ro', isa => 'Str', required => 1);
  has MeteredAccount => (is => 'ro', isa => 'Str');
  has RemoveOperatingRegions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RemoveIpamOperatingRegion]', traits => ['NameInRequest'], request_name => 'RemoveOperatingRegion' );
  has Tier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIpam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyIpamResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIpam - Arguments for method ModifyIpam on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIpam on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyIpam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIpam.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyIpamResult = $ec2->ModifyIpam(
      IpamId              => 'MyIpamId',
      AddOperatingRegions => [
        {
          RegionName => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description            => 'MyString',      # OPTIONAL
      DryRun                 => 1,               # OPTIONAL
      EnablePrivateGua       => 1,               # OPTIONAL
      MeteredAccount         => 'ipam-owner',    # OPTIONAL
      RemoveOperatingRegions => [
        {
          RegionName => 'MyString',              # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tier => 'free',    # OPTIONAL
    );

    # Results:
    my $Ipam = $ModifyIpamResult->Ipam;

    # Returns a L<Paws::EC2::ModifyIpamResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyIpam>

=head1 ATTRIBUTES


=head2 AddOperatingRegions => ArrayRef[L<Paws::EC2::AddIpamOperatingRegion>]

Choose the operating Regions for the IPAM. Operating Regions are Amazon
Web Services Regions where the IPAM is allowed to manage IP address
CIDRs. IPAM only discovers and monitors resources in the Amazon Web
Services Regions you select as operating Regions.

For more information about operating Regions, see Create an IPAM
(https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the
I<Amazon VPC IPAM User Guide>.



=head2 Description => Str

The description of the IPAM you want to modify.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnablePrivateGua => Bool

Enable this option to use your own GUA ranges as private IPv6
addresses. This option is disabled by default.



=head2 B<REQUIRED> IpamId => Str

The ID of the IPAM you want to modify.



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


Valid values are: C<"ipam-owner">, C<"resource-owner">

=head2 RemoveOperatingRegions => ArrayRef[L<Paws::EC2::RemoveIpamOperatingRegion>]

The operating Regions to remove.



=head2 Tier => Str

IPAM is offered in a Free Tier and an Advanced Tier. For more
information about the features available in each tier and the costs
associated with the tiers, see Amazon VPC pricing E<gt> IPAM tab
(http://aws.amazon.com/vpc/pricing/).

Valid values are: C<"free">, C<"advanced">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIpam in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

