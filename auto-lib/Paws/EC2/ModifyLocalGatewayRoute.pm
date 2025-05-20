
package Paws::EC2::ModifyLocalGatewayRoute;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str');
  has DestinationPrefixListId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has LocalGatewayVirtualInterfaceGroupId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLocalGatewayRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyLocalGatewayRouteResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyLocalGatewayRoute - Arguments for method ModifyLocalGatewayRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyLocalGatewayRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyLocalGatewayRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyLocalGatewayRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyLocalGatewayRouteResult = $ec2->ModifyLocalGatewayRoute(
      LocalGatewayRouteTableId => 'MyLocalGatewayRoutetableId',
      DestinationCidrBlock     => 'MyString',                     # OPTIONAL
      DestinationPrefixListId  => 'MyPrefixListResourceId',       # OPTIONAL
      DryRun                   => 1,                              # OPTIONAL
      LocalGatewayVirtualInterfaceGroupId =>
        'MyLocalGatewayVirtualInterfaceGroupId',                  # OPTIONAL
      NetworkInterfaceId => 'MyNetworkInterfaceId',               # OPTIONAL
    );

    # Results:
    my $Route = $ModifyLocalGatewayRouteResult->Route;

    # Returns a L<Paws::EC2::ModifyLocalGatewayRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyLocalGatewayRoute>

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

The CIDR block used for destination matches. The value that you provide
must match the CIDR of an existing route in the table.



=head2 DestinationPrefixListId => Str

The ID of the prefix list. Use a prefix list in place of
C<DestinationCidrBlock>. You cannot use C<DestinationPrefixListId> and
C<DestinationCidrBlock> in the same request.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LocalGatewayRouteTableId => Str

The ID of the local gateway route table.



=head2 LocalGatewayVirtualInterfaceGroupId => Str

The ID of the virtual interface group.



=head2 NetworkInterfaceId => Str

The ID of the network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyLocalGatewayRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

