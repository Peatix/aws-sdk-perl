
package Paws::EC2::DisassociateNatGatewayAddress;
  use Moose;
  has AssociationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AssociationId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxDrainDurationSeconds => (is => 'ro', isa => 'Int');
  has NatGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateNatGatewayAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisassociateNatGatewayAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateNatGatewayAddress - Arguments for method DisassociateNatGatewayAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateNatGatewayAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisassociateNatGatewayAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateNatGatewayAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisassociateNatGatewayAddressResult =
      $ec2->DisassociateNatGatewayAddress(
      AssociationIds          => [ 'MyElasticIpAssociationId', ... ],
      NatGatewayId            => 'MyNatGatewayId',
      DryRun                  => 1,                                   # OPTIONAL
      MaxDrainDurationSeconds => 1,                                   # OPTIONAL
      );

    # Results:
    my $NatGatewayAddresses =
      $DisassociateNatGatewayAddressResult->NatGatewayAddresses;
    my $NatGatewayId = $DisassociateNatGatewayAddressResult->NatGatewayId;

    # Returns a L<Paws::EC2::DisassociateNatGatewayAddressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisassociateNatGatewayAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationIds => ArrayRef[Str|Undef]

The association IDs of EIPs that have been associated with the NAT
gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxDrainDurationSeconds => Int

The maximum amount of time to wait (in seconds) before forcibly
releasing the IP addresses if connections are still in progress.
Default value is 350 seconds.



=head2 B<REQUIRED> NatGatewayId => Str

The ID of the NAT gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateNatGatewayAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

