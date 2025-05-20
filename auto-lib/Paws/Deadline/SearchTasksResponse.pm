
package Paws::Deadline::SearchTasksResponse;
  use Moose;
  has NextItemOffset => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextItemOffset');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::TaskSearchSummary]', traits => ['NameInRequest'], request_name => 'tasks', required => 1);
  has TotalResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::SearchTasksResponse

=head1 ATTRIBUTES


=head2 NextItemOffset => Int

The next incremental starting point after the defined C<itemOffset>.


=head2 B<REQUIRED> Tasks => ArrayRef[L<Paws::Deadline::TaskSearchSummary>]

Tasks in the search.


=head2 B<REQUIRED> TotalResults => Int

The total number of results in the search.


=head2 _request_id => Str


=cut

