
package Paws::DirectConnect::UpdateDirectConnectGatewayResponse;
  use Moose;
  has DirectConnectGateway => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGateway', traits => ['NameInRequest'], request_name => 'directConnectGateway' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::UpdateDirectConnectGatewayResponse

=head1 ATTRIBUTES


=head2 DirectConnectGateway => L<Paws::DirectConnect::DirectConnectGateway>

Informaiton about a Direct Connect gateway, which enables you to
connect virtual interfaces and virtual private gateways or transit
gateways.


=head2 _request_id => Str


=cut

1;