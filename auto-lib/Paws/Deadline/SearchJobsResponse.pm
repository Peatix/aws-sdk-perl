
package Paws::Deadline::SearchJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::JobSearchSummary]', traits => ['NameInRequest'], request_name => 'jobs', required => 1);
  has NextItemOffset => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextItemOffset');
  has TotalResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::SearchJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[L<Paws::Deadline::JobSearchSummary>]

The jobs in the search.


=head2 NextItemOffset => Int

The next incremental starting point after the defined C<itemOffset>.


=head2 B<REQUIRED> TotalResults => Int

The total number of results in the search.


=head2 _request_id => Str


=cut

