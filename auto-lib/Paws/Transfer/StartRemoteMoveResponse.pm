
package Paws::Transfer::StartRemoteMoveResponse;
  use Moose;
  has MoveId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartRemoteMoveResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MoveId => Str

Returns a unique identifier for the move/rename operation.


=head2 _request_id => Str


=cut

1;