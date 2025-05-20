
package Paws::Outposts::GetConnectionResponse;
  use Moose;
  has ConnectionDetails => (is => 'ro', isa => 'Paws::Outposts::ConnectionDetails');
  has ConnectionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionDetails => L<Paws::Outposts::ConnectionDetails>

Information about the connection.


=head2 ConnectionId => Str

The ID of the connection.


=head2 _request_id => Str


=cut

