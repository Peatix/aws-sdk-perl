
package Paws::MediaTailor::ListPrefetchSchedulesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::PrefetchSchedule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListPrefetchSchedulesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::PrefetchSchedule>]

Lists the prefetch schedules. An empty C<Items> list doesn't mean there
aren't more items to fetch, just that that page was empty.


=head2 NextToken => Str

Pagination token returned by the list request when results exceed the
maximum allowed. Use the token to fetch the next page of results.


=head2 _request_id => Str


=cut

