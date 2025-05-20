
package Paws::SecurityHub::GetFindingHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::FindingHistoryRecord]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindingHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for pagination purposes. Provide this token in the subsequent
request to C<GetFindingsHistory> to get up to an additional 100 results
of history for the same finding that you specified in your initial
request.


=head2 Records => ArrayRef[L<Paws::SecurityHub::FindingHistoryRecord>]

A list of events that altered the specified finding during the
specified time period.


=head2 _request_id => Str


=cut

