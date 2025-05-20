
package Paws::EMRServerless::ListJobRunsResponse;
  use Moose;
  has JobRuns => (is => 'ro', isa => 'ArrayRef[Paws::EMRServerless::JobRunSummary]', traits => ['NameInRequest'], request_name => 'jobRuns', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::ListJobRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobRuns => ArrayRef[L<Paws::EMRServerless::JobRunSummary>]

The output lists information about the specified job runs.


=head2 NextToken => Str

The output displays the token for the next set of job run results. This
is required for pagination and is available as a response of the
previous request.


=head2 _request_id => Str


=cut

