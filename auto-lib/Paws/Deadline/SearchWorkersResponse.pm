
package Paws::Deadline::SearchWorkersResponse;
  use Moose;
  has NextItemOffset => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextItemOffset');
  has TotalResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalResults', required => 1);
  has Workers => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::WorkerSearchSummary]', traits => ['NameInRequest'], request_name => 'workers', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::SearchWorkersResponse

=head1 ATTRIBUTES


=head2 NextItemOffset => Int

The next incremental starting point after the defined C<itemOffset>.


=head2 B<REQUIRED> TotalResults => Int

The total number of results in the search.


=head2 B<REQUIRED> Workers => ArrayRef[L<Paws::Deadline::WorkerSearchSummary>]

The workers for the search.


=head2 _request_id => Str


=cut

