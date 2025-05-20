
package Paws::Panorama::ListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::Device]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListDevicesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Devices => ArrayRef[L<Paws::Panorama::Device>]

A list of devices.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

