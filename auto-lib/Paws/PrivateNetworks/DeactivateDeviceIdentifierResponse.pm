
package Paws::PrivateNetworks::DeactivateDeviceIdentifierResponse;
  use Moose;
  has DeviceIdentifier => (is => 'ro', isa => 'Paws::PrivateNetworks::DeviceIdentifier', traits => ['NameInRequest'], request_name => 'deviceIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::DeactivateDeviceIdentifierResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceIdentifier => L<Paws::PrivateNetworks::DeviceIdentifier>

Information about the device identifier.


=head2 _request_id => Str


=cut

