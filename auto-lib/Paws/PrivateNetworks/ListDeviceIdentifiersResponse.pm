
package Paws::PrivateNetworks::ListDeviceIdentifiersResponse;
  use Moose;
  has DeviceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::PrivateNetworks::DeviceIdentifier]', traits => ['NameInRequest'], request_name => 'deviceIdentifiers');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListDeviceIdentifiersResponse

=head1 ATTRIBUTES


=head2 DeviceIdentifiers => ArrayRef[L<Paws::PrivateNetworks::DeviceIdentifier>]

Information about the device identifiers.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

