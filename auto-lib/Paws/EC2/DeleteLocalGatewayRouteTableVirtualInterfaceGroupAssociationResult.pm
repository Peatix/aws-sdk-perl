
package Paws::EC2::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;
  use Moose;
  has LocalGatewayRouteTableVirtualInterfaceGroupAssociation => (is => 'ro', isa => 'Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation', request_name => 'localGatewayRouteTableVirtualInterfaceGroupAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTableVirtualInterfaceGroupAssociation => L<Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation>

Information about the association.


=head2 _request_id => Str


=cut

