
package Paws::Wisdom::SearchSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SessionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::SessionSummary]', traits => ['NameInRequest'], request_name => 'sessionSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::SearchSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 B<REQUIRED> SessionSummaries => ArrayRef[L<Paws::Wisdom::SessionSummary>]

Summary information about the sessions.


=head2 _request_id => Str


=cut

