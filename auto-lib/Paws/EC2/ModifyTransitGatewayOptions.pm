package Paws::EC2::ModifyTransitGatewayOptions;
  use Moose;
  has AddTransitGatewayCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AmazonSideAsn => (is => 'ro', isa => 'Int');
  has AssociationDefaultRouteTableId => (is => 'ro', isa => 'Str');
  has AutoAcceptSharedAttachments => (is => 'ro', isa => 'Str');
  has DefaultRouteTableAssociation => (is => 'ro', isa => 'Str');
  has DefaultRouteTablePropagation => (is => 'ro', isa => 'Str');
  has DnsSupport => (is => 'ro', isa => 'Str');
  has PropagationDefaultRouteTableId => (is => 'ro', isa => 'Str');
  has RemoveTransitGatewayCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SecurityGroupReferencingSupport => (is => 'ro', isa => 'Str');
  has VpnEcmpSupport => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTransitGatewayOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ModifyTransitGatewayOptions object:

  $service_obj->Method(Att1 => { AddTransitGatewayCidrBlocks => $value, ..., VpnEcmpSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ModifyTransitGatewayOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AddTransitGatewayCidrBlocks

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddTransitGatewayCidrBlocks => ArrayRef[Str|Undef]

Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size
/24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger
for IPv6.


=head2 AmazonSideAsn => Int

A private Autonomous System Number (ASN) for the Amazon side of a BGP
session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to
4294967294 for 32-bit ASNs.

The modify ASN operation is not allowed on a transit gateway if it has
the following attachments:

=over

=item *

Dynamic VPN

=item *

Static VPN

=item *

Direct Connect Gateway

=item *

Connect

=back

You must first delete all transit gateway attachments configured prior
to modifying the ASN on the transit gateway.


=head2 AssociationDefaultRouteTableId => Str

The ID of the default association route table.


=head2 AutoAcceptSharedAttachments => Str

Enable or disable automatic acceptance of attachment requests.


=head2 DefaultRouteTableAssociation => Str

Enable or disable automatic association with the default association
route table.


=head2 DefaultRouteTablePropagation => Str

Enable or disable automatic propagation of routes to the default
propagation route table.


=head2 DnsSupport => Str

Enable or disable DNS support.


=head2 PropagationDefaultRouteTableId => Str

The ID of the default propagation route table.


=head2 RemoveTransitGatewayCidrBlocks => ArrayRef[Str|Undef]

Removes CIDR blocks for the transit gateway.


=head2 SecurityGroupReferencingSupport => Str

Enables you to reference a security group across VPCs attached to a
transit gateway to simplify security group management.

This option is disabled by default.

For more information about security group referencing, see Security
group referencing
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-vpc-attachments.html#vpc-attachment-security)
in the I<Amazon Web Services Transit Gateways Guide>.


=head2 VpnEcmpSupport => Str

Enable or disable Equal Cost Multipath Protocol support.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
