package Paws::EC2::TransitGatewayVpcAttachmentOptions;
  use Moose;
  has ApplianceModeSupport => (is => 'ro', isa => 'Str', request_name => 'applianceModeSupport', traits => ['NameInRequest']);
  has DnsSupport => (is => 'ro', isa => 'Str', request_name => 'dnsSupport', traits => ['NameInRequest']);
  has Ipv6Support => (is => 'ro', isa => 'Str', request_name => 'ipv6Support', traits => ['NameInRequest']);
  has SecurityGroupReferencingSupport => (is => 'ro', isa => 'Str', request_name => 'securityGroupReferencingSupport', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayVpcAttachmentOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayVpcAttachmentOptions object:

  $service_obj->Method(Att1 => { ApplianceModeSupport => $value, ..., SecurityGroupReferencingSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayVpcAttachmentOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplianceModeSupport

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ApplianceModeSupport => Str

Indicates whether appliance mode support is enabled.


=head2 DnsSupport => Str

Indicates whether DNS support is enabled.


=head2 Ipv6Support => Str

Indicates whether IPv6 support is disabled.


=head2 SecurityGroupReferencingSupport => Str

Enables you to reference a security group across VPCs attached to a
transit gateway to simplify security group management.

This option is enabled by default.

For more information about security group referencing, see Security
group referencing
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-vpc-attachments.html#vpc-attachment-security)
in the I<Amazon Web Services Transit Gateways Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
