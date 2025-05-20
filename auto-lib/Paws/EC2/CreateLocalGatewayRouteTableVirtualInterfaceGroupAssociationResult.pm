
package Paws::EC2::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;
  use Moose;
  has LocalGatewayRouteTableVirtualInterfaceGroupAssociation => (is => 'ro', isa => 'Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation', request_name => 'localGatewayRouteTableVirtualInterfaceGroupAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTableVirtualInterfaceGroupAssociation => L<Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation>

Information about the local gateway route table virtual interface group
association.


=head2 _request_id => Str


=cut

