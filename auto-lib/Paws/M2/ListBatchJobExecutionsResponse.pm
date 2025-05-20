
package Paws::M2::ListBatchJobExecutionsResponse;
  use Moose;
  has BatchJobExecutions => (is => 'ro', isa => 'ArrayRef[Paws::M2::BatchJobExecutionSummary]', traits => ['NameInRequest'], request_name => 'batchJobExecutions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListBatchJobExecutionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchJobExecutions => ArrayRef[L<Paws::M2::BatchJobExecutionSummary>]

Returns a list of batch job executions for an application.


=head2 NextToken => Str

A pagination token that's returned when the response doesn't contain
all batch job executions.


=head2 _request_id => Str


=cut

