
package Paws::EC2::DeleteLocalGatewayRouteTableResult;
  use Moose;
  has LocalGatewayRouteTable => (is => 'ro', isa => 'Paws::EC2::LocalGatewayRouteTable', request_name => 'localGatewayRouteTable', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLocalGatewayRouteTableResult

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTable => L<Paws::EC2::LocalGatewayRouteTable>

Information about the local gateway route table.


=head2 _request_id => Str


=cut

