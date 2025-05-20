
package Paws::EC2::DeleteLocalGatewayVirtualInterfaceGroupResult;
  use Moose;
  has LocalGatewayVirtualInterfaceGroup => (is => 'ro', isa => 'Paws::EC2::LocalGatewayVirtualInterfaceGroup', request_name => 'localGatewayVirtualInterfaceGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLocalGatewayVirtualInterfaceGroupResult

=head1 ATTRIBUTES


=head2 LocalGatewayVirtualInterfaceGroup => L<Paws::EC2::LocalGatewayVirtualInterfaceGroup>

Information about the deleted local gateway virtual interface group.


=head2 _request_id => Str


=cut

