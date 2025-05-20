
package Paws::Deadline::SearchStepsResponse;
  use Moose;
  has NextItemOffset => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextItemOffset');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::StepSearchSummary]', traits => ['NameInRequest'], request_name => 'steps', required => 1);
  has TotalResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::SearchStepsResponse

=head1 ATTRIBUTES


=head2 NextItemOffset => Int

The next incremental starting point after the defined C<itemOffset>.


=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::Deadline::StepSearchSummary>]

The steps in the search.


=head2 B<REQUIRED> TotalResults => Int

The total number of results in the search.


=head2 _request_id => Str


=cut

