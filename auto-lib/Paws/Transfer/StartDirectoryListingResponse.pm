
package Paws::Transfer::StartDirectoryListingResponse;
  use Moose;
  has ListingId => (is => 'ro', isa => 'Str', required => 1);
  has OutputFileName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartDirectoryListingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListingId => Str

Returns a unique identifier for the directory listing call.


=head2 B<REQUIRED> OutputFileName => Str

Returns the file name where the results are stored. This is a
combination of the connector ID and the listing ID:
C<E<lt>connector-idE<gt>-E<lt>listing-idE<gt>.json>.


=head2 _request_id => Str


=cut

1;