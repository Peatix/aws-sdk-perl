
package Paws::WorkSpacesThinClient::GetDeviceResponse;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::Device', traits => ['NameInRequest'], request_name => 'device');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::GetDeviceResponse

=head1 ATTRIBUTES


=head2 Device => L<Paws::WorkSpacesThinClient::Device>

Describes an device.


=head2 _request_id => Str


=cut

