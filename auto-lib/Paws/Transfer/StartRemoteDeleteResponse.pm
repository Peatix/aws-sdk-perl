
package Paws::Transfer::StartRemoteDeleteResponse;
  use Moose;
  has DeleteId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartRemoteDeleteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeleteId => Str

Returns a unique identifier for the delete operation.


=head2 _request_id => Str


=cut

1;