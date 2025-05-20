
package Paws::Transfer::StartFileTransferResponse;
  use Moose;
  has TransferId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartFileTransferResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransferId => Str

Returns the unique identifier for the file transfer.


=head2 _request_id => Str


=cut

1;