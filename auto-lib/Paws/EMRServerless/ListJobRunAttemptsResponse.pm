
package Paws::EMRServerless::ListJobRunAttemptsResponse;
  use Moose;
  has JobRunAttempts => (is => 'ro', isa => 'ArrayRef[Paws::EMRServerless::JobRunAttemptSummary]', traits => ['NameInRequest'], request_name => 'jobRunAttempts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::ListJobRunAttemptsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobRunAttempts => ArrayRef[L<Paws::EMRServerless::JobRunAttemptSummary>]

The array of the listed job run attempt objects.


=head2 NextToken => Str

The output displays the token for the next set of application results.
This is required for pagination and is available as a response of the
previous request.


=head2 _request_id => Str


=cut

