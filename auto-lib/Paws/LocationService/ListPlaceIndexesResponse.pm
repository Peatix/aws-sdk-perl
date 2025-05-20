
package Paws::LocationService::ListPlaceIndexesResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::ListPlaceIndexesResponseEntry]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListPlaceIndexesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::LocationService::ListPlaceIndexesResponseEntry>]

Lists the place index resources that exist in your Amazon Web Services
account


=head2 NextToken => Str

A pagination token indicating that there are additional pages
available. You can use the token in a new request to fetch the next
page of results.


=head2 _request_id => Str


=cut

