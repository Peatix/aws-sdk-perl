
package Paws::PrivateNetworks::GetDeviceIdentifierResponse;
  use Moose;
  has DeviceIdentifier => (is => 'ro', isa => 'Paws::PrivateNetworks::DeviceIdentifier', traits => ['NameInRequest'], request_name => 'deviceIdentifier');
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetDeviceIdentifierResponse

=head1 ATTRIBUTES


=head2 DeviceIdentifier => L<Paws::PrivateNetworks::DeviceIdentifier>

Information about the device identifier.


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The device identifier tags.


=head2 _request_id => Str


=cut

