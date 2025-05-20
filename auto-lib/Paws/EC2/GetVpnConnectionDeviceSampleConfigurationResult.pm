
package Paws::EC2::GetVpnConnectionDeviceSampleConfigurationResult;
  use Moose;
  has VpnConnectionDeviceSampleConfiguration => (is => 'ro', isa => 'Str', request_name => 'vpnConnectionDeviceSampleConfiguration', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetVpnConnectionDeviceSampleConfigurationResult

=head1 ATTRIBUTES


=head2 VpnConnectionDeviceSampleConfiguration => Str

Sample configuration file for the specified customer gateway device.


=head2 _request_id => Str


=cut

