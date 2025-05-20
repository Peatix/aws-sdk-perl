
package Paws::SSM::GetConnectionStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetConnectionStatusResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the connection to the managed node.

Valid values are: C<"connected">, C<"notconnected">
=head2 Target => Str

The ID of the managed node to check connection status.


=head2 _request_id => Str


=cut

1;