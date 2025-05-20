
package Paws::MediaTailor::ListLiveSourcesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::LiveSource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListLiveSourcesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::LiveSource>]

Lists the live sources.


=head2 NextToken => Str

Pagination token returned by the list request when results exceed the
maximum allowed. Use the token to fetch the next page of results.


=head2 _request_id => Str


=cut

