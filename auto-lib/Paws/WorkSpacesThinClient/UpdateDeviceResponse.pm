
package Paws::WorkSpacesThinClient::UpdateDeviceResponse;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::DeviceSummary', traits => ['NameInRequest'], request_name => 'device');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::UpdateDeviceResponse

=head1 ATTRIBUTES


=head2 Device => L<Paws::WorkSpacesThinClient::DeviceSummary>

Describes a device.


=head2 _request_id => Str


=cut

