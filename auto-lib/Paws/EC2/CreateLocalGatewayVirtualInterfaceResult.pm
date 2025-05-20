
package Paws::EC2::CreateLocalGatewayVirtualInterfaceResult;
  use Moose;
  has LocalGatewayVirtualInterface => (is => 'ro', isa => 'Paws::EC2::LocalGatewayVirtualInterface', request_name => 'localGatewayVirtualInterface', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLocalGatewayVirtualInterfaceResult

=head1 ATTRIBUTES


=head2 LocalGatewayVirtualInterface => L<Paws::EC2::LocalGatewayVirtualInterface>

Information about the local gateway virtual interface.


=head2 _request_id => Str


=cut

