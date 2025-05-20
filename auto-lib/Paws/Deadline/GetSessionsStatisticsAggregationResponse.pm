
package Paws::Deadline::GetSessionsStatisticsAggregationResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Statistics => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::Statistics]', traits => ['NameInRequest'], request_name => 'statistics');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetSessionsStatisticsAggregationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If Deadline Cloud returns C<nextToken>, then there are more results
available. The value of C<nextToken> is a unique pagination token for
each page. To retrieve the next page, call the operation again using
the returned token. Keep all other arguments unchanged. If no results
remain, then C<nextToken> is set to C<null>. Each pagination token
expires after 24 hours. If you provide a token that isn't valid, then
you receive an HTTP 400 C<ValidationException> error.


=head2 Statistics => ArrayRef[L<Paws::Deadline::Statistics>]

The statistics for the specified fleets or queues.


=head2 B<REQUIRED> Status => Str

The status of the aggregated results. An aggregation may fail or time
out if the results are too large. If this happens, you can call the
C<StartSessionsStatisticsAggregation> operation after you reduce the
aggregation time frame, reduce the number of queues or fleets in the
aggregation, or increase the period length.

If you call the C<StartSessionsStatisticsAggregation > operation when
the status is C<IN_PROGRESS>, you will receive a
C<ThrottlingException>.

Valid values are: C<"IN_PROGRESS">, C<"TIMEOUT">, C<"FAILED">, C<"COMPLETED">
=head2 StatusMessage => Str

A message that describes the status.


=head2 _request_id => Str


=cut

