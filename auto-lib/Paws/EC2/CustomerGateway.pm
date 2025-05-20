package Paws::EC2::CustomerGateway;
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Str', request_name => 'bgpAsn', traits => ['NameInRequest']);
  has BgpAsnExtended => (is => 'ro', isa => 'Str', request_name => 'bgpAsnExtended', traits => ['NameInRequest']);
  has CertificateArn => (is => 'ro', isa => 'Str', request_name => 'certificateArn', traits => ['NameInRequest']);
  has CustomerGatewayId => (is => 'ro', isa => 'Str', request_name => 'customerGatewayId', traits => ['NameInRequest']);
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CustomerGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CustomerGateway object:

  $service_obj->Method(Att1 => { BgpAsn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CustomerGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->BgpAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BgpAsn => Str

The customer gateway device's Border Gateway Protocol (BGP) Autonomous
System Number (ASN).

Valid values: C<1> to C<2,147,483,647>


=head2 BgpAsnExtended => Str

The customer gateway device's Border Gateway Protocol (BGP) Autonomous
System Number (ASN).

Valid values: C<2,147,483,648> to C<4,294,967,295>


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) for the customer gateway certificate.


=head2 CustomerGatewayId => Str

The ID of the customer gateway.


=head2 DeviceName => Str

The name of customer gateway device.


=head2 IpAddress => Str

IPv4 address for the customer gateway device's outside interface. The
address must be static. If C<OutsideIpAddressType> in your VPN
connection options is set to C<PrivateIpv4>, you can use an RFC6598 or
RFC1918 private IPv4 address. If C<OutsideIpAddressType> is set to
C<PublicIpv4>, you can use a public IPv4 address.


=head2 State => Str

The current state of the customer gateway (C<pending | available |
deleting | deleted>).


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the customer gateway.


=head2 Type => Str

The type of VPN connection the customer gateway supports (C<ipsec.1>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
