
package Paws::Deadline::ListSessionsForWorkerResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::WorkerSessionSummary]', traits => ['NameInRequest'], request_name => 'sessions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListSessionsForWorkerResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.


=head2 B<REQUIRED> Sessions => ArrayRef[L<Paws::Deadline::WorkerSessionSummary>]

The sessions in the response.


=head2 _request_id => Str


=cut

