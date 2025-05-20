
package Paws::EC2::AdvertiseByoipCidr;
  use Moose;
  has Asn => (is => 'ro', isa => 'Str');
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkBorderGroup => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdvertiseByoipCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AdvertiseByoipCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AdvertiseByoipCidr - Arguments for method AdvertiseByoipCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdvertiseByoipCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AdvertiseByoipCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdvertiseByoipCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AdvertiseByoipCidrResult = $ec2->AdvertiseByoipCidr(
      Cidr               => 'MyString',
      Asn                => 'MyString',    # OPTIONAL
      DryRun             => 1,             # OPTIONAL
      NetworkBorderGroup => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ByoipCidr = $AdvertiseByoipCidrResult->ByoipCidr;

    # Returns a L<Paws::EC2::AdvertiseByoipCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AdvertiseByoipCidr>

=head1 ATTRIBUTES


=head2 Asn => Str

The public 2-byte or 4-byte ASN that you want to advertise.



=head2 B<REQUIRED> Cidr => Str

The address range, in CIDR notation. This must be the exact range that
you provisioned. You can't advertise only a portion of the provisioned
range.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 NetworkBorderGroup => Str

If you have Local Zones
(https://docs.aws.amazon.com/local-zones/latest/ug/how-local-zones-work.html)
enabled, you can choose a network border group for Local Zones when you
provision and advertise a BYOIPv4 CIDR. Choose the network border group
carefully as the EIP and the Amazon Web Services resource it is
associated with must reside in the same network border group.

You can provision BYOIP address ranges to and advertise them in the
following Local Zone network border groups:

=over

=item *

us-east-1-dfw-2

=item *

us-west-2-lax-1

=item *

us-west-2-phx-2

=back

You cannot provision or advertise BYOIPv6 address ranges in Local Zones
at this time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdvertiseByoipCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

