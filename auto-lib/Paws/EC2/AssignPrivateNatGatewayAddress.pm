
package Paws::EC2::AssignPrivateNatGatewayAddress;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has NatGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateNatGatewayAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssignPrivateNatGatewayAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignPrivateNatGatewayAddress - Arguments for method AssignPrivateNatGatewayAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssignPrivateNatGatewayAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssignPrivateNatGatewayAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssignPrivateNatGatewayAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssignPrivateNatGatewayAddressResult =
      $ec2->AssignPrivateNatGatewayAddress(
      NatGatewayId          => 'MyNatGatewayId',
      DryRun                => 1,                      # OPTIONAL
      PrivateIpAddressCount => 1,                      # OPTIONAL
      PrivateIpAddresses    => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $NatGatewayAddresses =
      $AssignPrivateNatGatewayAddressResult->NatGatewayAddresses;
    my $NatGatewayId = $AssignPrivateNatGatewayAddressResult->NatGatewayId;

    # Returns a L<Paws::EC2::AssignPrivateNatGatewayAddressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssignPrivateNatGatewayAddress>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NatGatewayId => Str

The ID of the NAT gateway.



=head2 PrivateIpAddressCount => Int

The number of private IP addresses to assign to the NAT gateway. You
can't specify this parameter when also specifying private IP addresses.



=head2 PrivateIpAddresses => ArrayRef[Str|Undef]

The private IPv4 addresses you want to assign to the private NAT
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssignPrivateNatGatewayAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

