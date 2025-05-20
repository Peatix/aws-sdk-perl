
package Paws::EC2::AssociateNatGatewayAddress;
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AllocationId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has NatGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateNatGatewayAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateNatGatewayAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateNatGatewayAddress - Arguments for method AssociateNatGatewayAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateNatGatewayAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateNatGatewayAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateNatGatewayAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssociateNatGatewayAddressResult = $ec2->AssociateNatGatewayAddress(
      AllocationIds      => [ 'MyAllocationId', ... ],
      NatGatewayId       => 'MyNatGatewayId',
      DryRun             => 1,                           # OPTIONAL
      PrivateIpAddresses => [ 'MyString', ... ],         # OPTIONAL
    );

    # Results:
    my $NatGatewayAddresses =
      $AssociateNatGatewayAddressResult->NatGatewayAddresses;
    my $NatGatewayId = $AssociateNatGatewayAddressResult->NatGatewayId;

    # Returns a L<Paws::EC2::AssociateNatGatewayAddressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateNatGatewayAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllocationIds => ArrayRef[Str|Undef]

The allocation IDs of EIPs that you want to associate with your NAT
gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NatGatewayId => Str

The ID of the NAT gateway.



=head2 PrivateIpAddresses => ArrayRef[Str|Undef]

The private IPv4 addresses that you want to assign to the NAT gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateNatGatewayAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

