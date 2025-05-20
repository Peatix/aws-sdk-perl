
package Paws::Outposts::StartConnectionResponse;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str');
  has UnderlayIpAddress => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::StartConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionId => Str

The ID of the connection.


=head2 UnderlayIpAddress => Str

The underlay IP address.


=head2 _request_id => Str


=cut

