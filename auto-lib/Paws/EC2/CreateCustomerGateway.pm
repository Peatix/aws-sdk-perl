
package Paws::EC2::CreateCustomerGateway;
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Int');
  has BgpAsnExtended => (is => 'ro', isa => 'Int');
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DeviceName => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has IpAddress => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomerGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateCustomerGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCustomerGateway - Arguments for method CreateCustomerGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomerGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateCustomerGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomerGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To create a customer gateway
 # This example creates a customer gateway with the specified IP address for its
 # outside interface.
    my $CreateCustomerGatewayResult = $ec2->CreateCustomerGateway(
      'BgpAsn'   => 65534,
      'PublicIp' => '12.1.2.3',
      'Type'     => 'ipsec.1'
    );

    # Results:
    my $CustomerGateway = $CreateCustomerGatewayResult->CustomerGateway;

    # Returns a L<Paws::EC2::CreateCustomerGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateCustomerGateway>

=head1 ATTRIBUTES


=head2 BgpAsn => Int

For customer gateway devices that support BGP, specify the device's
ASN. You must specify either C<BgpAsn> or C<BgpAsnExtended> when
creating the customer gateway. If the ASN is larger than
C<2,147,483,647>, you must use C<BgpAsnExtended>.

Default: 65000

Valid values: C<1> to C<2,147,483,647>



=head2 BgpAsnExtended => Int

For customer gateway devices that support BGP, specify the device's
ASN. You must specify either C<BgpAsn> or C<BgpAsnExtended> when
creating the customer gateway. If the ASN is larger than
C<2,147,483,647>, you must use C<BgpAsnExtended>.

Valid values: C<2,147,483,648> to C<4,294,967,295>



=head2 CertificateArn => Str

The Amazon Resource Name (ARN) for the customer gateway certificate.



=head2 DeviceName => Str

A name for the customer gateway device.

Length Constraints: Up to 255 characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 IpAddress => Str

IPv4 address for the customer gateway device's outside interface. The
address must be static. If C<OutsideIpAddressType> in your VPN
connection options is set to C<PrivateIpv4>, you can use an RFC6598 or
RFC1918 private IPv4 address. If C<OutsideIpAddressType> is set to
C<PublicIpv4>, you can use a public IPv4 address.



=head2 PublicIp => Str

I<This member has been deprecated.> The Internet-routable IP address
for the customer gateway's outside interface. The address must be
static.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the customer gateway.



=head2 B<REQUIRED> Type => Str

The type of VPN connection that this customer gateway supports
(C<ipsec.1>).

Valid values are: C<"ipsec.1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomerGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

