
package Paws::EC2::GetVpnTunnelReplacementStatusResult;
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', request_name => 'customerGatewayId', traits => ['NameInRequest',]);
  has MaintenanceDetails => (is => 'ro', isa => 'Paws::EC2::MaintenanceDetails', request_name => 'maintenanceDetails', traits => ['NameInRequest',]);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest',]);
  has VpnConnectionId => (is => 'ro', isa => 'Str', request_name => 'vpnConnectionId', traits => ['NameInRequest',]);
  has VpnGatewayId => (is => 'ro', isa => 'Str', request_name => 'vpnGatewayId', traits => ['NameInRequest',]);
  has VpnTunnelOutsideIpAddress => (is => 'ro', isa => 'Str', request_name => 'vpnTunnelOutsideIpAddress', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetVpnTunnelReplacementStatusResult

=head1 ATTRIBUTES


=head2 CustomerGatewayId => Str

The ID of the customer gateway.


=head2 MaintenanceDetails => L<Paws::EC2::MaintenanceDetails>

Get details of pending tunnel endpoint maintenance.


=head2 TransitGatewayId => Str

The ID of the transit gateway associated with the VPN connection.


=head2 VpnConnectionId => Str

The ID of the Site-to-Site VPN connection.


=head2 VpnGatewayId => Str

The ID of the virtual private gateway.


=head2 VpnTunnelOutsideIpAddress => Str

The external IP address of the VPN tunnel.


=head2 _request_id => Str


=cut

